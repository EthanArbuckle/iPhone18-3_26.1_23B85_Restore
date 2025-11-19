uint64_t outlined init with take of CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollapsibleWheelDatePickerStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)()
{
  type metadata accessor for CollapsibleWheelDatePickerStyle();

  return closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)();
}

void type metadata accessor for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)()
{
  if (!lazy cache variable for type metadata for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?))
  {
    type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?));
    }
  }
}

uint64_t outlined init with copy of CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Environment<Locale>.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FocusBridge.focusDidChange_PhoneWatch(rootResponder:)(uint64_t a1)
{
  result = FocusBridge.canAcceptFocus.getter();
  if (result)
  {
    memset(v20, 0, 48);
    v20[3] = xmmword_18CD6A6D0;
    if (a1)
    {
      MEMORY[0x1EEE9AC00](result);
      MEMORY[0x1EEE9AC00](v3);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    FocusBridge.focusedItem.getter(v19);
    outlined init with copy of FocusItem?(v20, v16);
    if (v16[5] || v16[6] != 1)
    {
      outlined init with take of FocusItem(v16, v17);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      *v18 = 0u;
      *&v18[16] = xmmword_18CD6A6D0;
    }

    FocusBridge.focusedItem.setter(v17);
    FocusBridge.focusedItem.getter(v17);
    v5 = *&v18[8];
    v4 = *&v18[16];
    outlined destroy of FocusItem?(v17);
    if (v5 || v4 != 1)
    {
      FocusBridge.focusedItem.getter(v17);
      v7 = FocusBridge.host.getter();
      v9 = v8;
      v11 = v10;
      outlined init with copy of FocusItem?(v17, v16);
      v12 = swift_allocObject();
      outlined init with take of FocusItem?(v16, (v12 + 2));
      v12[10] = v7;
      v12[11] = v9;
      v12[12] = v11;
      v13 = v7;
      onNextMainRunLoop(do:)();
    }

    else
    {
      outlined init with copy of FocusItem?(v19, v17);
      if (*&v18[8] != __PAIR128__(1, 0))
      {
        v6 = FocusItem.platformResponder.getter();
        outlined destroy of FocusItem(v17);
        if (v6)
        {

          outlined init with copy of FocusItem?(v19, v17);
          if (*&v18[8] == __PAIR128__(1, 0))
          {
            outlined destroy of FocusItem?(v17);
          }

          else
          {
            v14 = FocusItem.platformResponder.getter();
            outlined destroy of FocusItem(v17);
            if (v14)
            {
LABEL_21:
              [v14 resignFirstResponder];

              goto LABEL_16;
            }
          }

          v15 = FocusBridge.host.getter();
          if (v15)
          {
            v14 = v15;
            goto LABEL_21;
          }
        }

LABEL_16:
        outlined destroy of FocusItem?(v19);
        return outlined destroy of FocusItem?(v20);
      }
    }

    outlined destroy of FocusItem?(v17);
    goto LABEL_16;
  }

  return result;
}

uint64_t closure #1 in FocusBridge.focusDidChange_PhoneWatch(rootResponder:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  (*(a2 + 16))(v11, *a1);
  if (v11[5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v11[6] == 1;
  }

  if (v6)
  {
    result = outlined destroy of FocusItem?(v11);
  }

  else
  {
    outlined init with take of FocusItem(v11, v12);
    if (FocusItem.isFocusable.getter())
    {
      v7 = FocusItem.platformResponder.getter();
      if (v7 || (v7 = FocusBridge.host.getter()) != 0)
      {
        v8 = v7;
        v9 = [v7 isFirstResponder];

        if (v9)
        {
          outlined destroy of FocusItem?(a3);
          result = outlined init with take of FocusItem(v12, a3);
          *a4 = 2;
          return result;
        }
      }
    }

    result = outlined destroy of FocusItem(v12);
  }

  *a4 = 0;
  return result;
}

void closure #2 in FocusBridge.focusDidChange_PhoneWatch(rootResponder:)(uint64_t a1, void *a2)
{
  outlined init with copy of FocusItem?(a1, v5);
  if (v5[5])
  {
    v3 = 0;
  }

  else
  {
    v3 = v5[6] == 1;
  }

  if (v3)
  {
    outlined destroy of FocusItem?(v5);
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  v4 = FocusItem.platformResponder.getter();
  outlined destroy of FocusItem(v5);
  if (v4)
  {
LABEL_10:
    [v4 becomeFirstResponder];

    return;
  }

  if (a2)
  {
LABEL_9:
    v4 = a2;
    goto LABEL_10;
  }
}

unint64_t lazy protocol witness table accessor for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions()
{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlatformViewRepresentableLayoutOptions and conformance _PlatformViewRepresentableLayoutOptions);
  }

  return result;
}

uint64_t type metadata completion function for OrnamentModifierLegacy()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OrnamentModifierLegacy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = ((v7 + v12) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for OrnamentModifierLegacy(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v12 = *v13;
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for OrnamentModifierLegacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentModifierLegacy(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
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

_BYTE *storeEnumTagSinglePayload for OrnamentModifierLegacy(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

uint64_t type metadata completion function for OrnamentModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || v6 - ((-51 - v5) | v5) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v10 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    v11 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *v12 = v14;
    *(v12 + 9) = *(v13 + 9);
    v15 = (v12 + v5 + 10) & ~v5;
    v16 = (v13 + v5 + 10) & ~v5;
    (*(v4 + 16))(v15, v16);
    *(v15 + v6) = *(v16 + v6);
  }

  return v3;
}

unint64_t initializeWithCopy for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 9) = *(v7 + 9);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 10 + v6) & ~v11;
  v13 = (v11 + 10 + v7) & ~v11;
  (*(v9 + 16))(v12, v13);
  *(*(v10 + 48) + v12) = *(*(v10 + 48) + v13);
  return a1;
}

unint64_t assignWithCopy for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v5 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 10 + v7) & ~v12;
  v14 = (v12 + 10 + v8) & ~v12;
  (*(v10 + 24))(v13, v14);
  *(*(v11 + 40) + v13) = *(*(v11 + 40) + v14);
  return a1;
}

unint64_t initializeWithTake for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 9) = *(v7 + 9);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v11 + 10 + v6) & ~v11;
  v13 = (v11 + 10 + v7) & ~v11;
  (*(v9 + 32))(v12, v13);
  *(*(v10 + 32) + v12) = *(*(v10 + 32) + v13);
  return a1;
}

unint64_t assignWithTake for OrnamentModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v5 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 10 + v7) & ~v12;
  v14 = (v12 + 10 + v8) & ~v12;
  (*(v10 + 40))(v13, v14);
  *(*(v11 + 24) + v13) = *(*(v11 + 24) + v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentModifier(unint64_t a1, unsigned int a2, uint64_t a3)
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
  if (a2 > v7)
  {
    v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 50) & ~v6) + 1;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_7;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 >= 2)
    {
LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }
  }

LABEL_25:
  v14 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v5 > 0xFE)
  {
    return (*(v4 + 48))((v14 + v6 + 10) & ~v6);
  }

  v15 = *(v14 + 9);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for OrnamentModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 50) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 50) & ~v9) != -1)
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
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
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
        *(a1 + 2) = BYTE2(v18);
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
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0xFE)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 10) & ~v9);
  }

  else
  {
    *(v19 + 9) = a2 + 1;
  }
}

uint64_t OrnamentModifierLegacy.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

uint64_t OrnamentModifierLegacy.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a2 + 16);
  (*(v4 + 32))(v8 + v7, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v10 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>();
  v15 = WitnessTable;
  v16 = v10;
  swift_getWitnessTable();
  EnvironmentReader.init(_:)();
  v14 = v17[0];
  v11 = type metadata accessor for EnvironmentReader();
  v12 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v14, v11, v12);

  v17[0] = v17[1];
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v12);
}

uint64_t closure #1 in OrnamentModifierLegacy.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v9 = type metadata accessor for OrnamentModifierLegacy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v16 = *a1;
  v15 = a1[1];
  (*(v10 + 16))(v25 - v13, a2, v9, v12);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v14, v9);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v16;
  v19[1] = v15;

  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();

  v26 = v27[0];
  type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
  v21 = type metadata accessor for ModifiedContent();
  v22 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>();
  v25[2] = WitnessTable;
  v25[3] = v22;
  v23 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v26, v21, v23);

  v27[0] = v27[1];
  static ViewBuilder.buildExpression<A>(_:)(v27, v21, v23);
}

unint64_t closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrnamentModifierLegacy();
  result = OrnamentModifierLegacy.isPresented.getter();
  if (result)
  {
    v25 = Namespace.wrappedValue.getter();
    (*(v12 + 16))(v14, a2 + v15[9], a5);
    v17 = AnyView.init<A>(_:)();
    v18 = Namespace.wrappedValue.getter();
    v19 = v15[11];
    v24 = *(a2 + v15[10]);
    v23 = *(a2 + v19);
    v20 = implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(a2, a5, a6);
    v27 = 0;
    v28[0] = v17;
    v28[1] = v18;
    v29 = 1;
    v31 = v23;
    v30 = v24;
    v32 = 0;
    v33 = 0;
    v34 = a3;
    v35 = a4;
    v36 = v20;
    v37 = v21;
    v38 = 1;
    v39 = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v25, isUniquelyReferenced_nonNull_native);
    *a1 = v26;
  }

  return result;
}

uint64_t (*implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for OrnamentModifierLegacy();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in OrnamentModifierLegacy.body(content:);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OrnamentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance OrnamentPresentation.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static OrnamentPresentation.Key.defaultValue;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance OrnamentPresentation.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t partial apply for closure #1 in OrnamentModifierLegacy.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for OrnamentModifierLegacy() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in OrnamentModifierLegacy.body(content:)(a1, v8, v5, v6, a2);
}

void type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<OrnamentPresentation.Key>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<OrnamentPresentation.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<OrnamentPresentation.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<OrnamentPresentation.Key> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t partial apply for closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for OrnamentModifierLegacy() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return closure #1 in closure #1 in OrnamentModifierLegacy.body(content:)(a1, v1 + v6, v8, v9, v3, v4);
}

uint64_t destroy for OrnamentPresentation(uint64_t a1)
{

  result = *(a1 + 104);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for OrnamentPresentation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);

  if (v5 != 1)
  {
  }

  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for OrnamentPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;

  v6 = (a1 + 104);
  v7 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_9;
    }

    outlined destroy of Transaction(a1 + 104);
    v8 = *(a2 + 104);
  }

  *v6 = v8;
LABEL_9:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for OrnamentPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  v4 = (a1 + 104);
  v5 = *(a2 + 104);
  if (*(a1 + 104) != 1)
  {
    if (v5 != 1)
    {
      *v4 = v5;

      goto LABEL_6;
    }

    outlined destroy of Transaction(a1 + 104);
    v5 = 1;
  }

  *v4 = v5;
LABEL_6:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentPresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for OrnamentPresentation(uint64_t result, int a2, int a3)
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
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, int a4, void *a5)
{
  v82 = a4;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  while (1)
  {
    v21 = v8;
    v22 = v10;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v64 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = *(*(a1 + 48) + 8 * v26);
    v28 = *(a1 + 56) + 120 * v26;
    v29 = *(v28 + 48);
    v31 = *v28;
    v30 = *(v28 + 16);
    v68 = *(v28 + 32);
    v69 = v29;
    v66 = v31;
    v67 = v30;
    v33 = *(v28 + 80);
    v32 = *(v28 + 96);
    v34 = *(v28 + 64);
    v73 = *(v28 + 112);
    v71 = v33;
    v72 = v32;
    v70 = v34;
    v35 = *(v28 + 80);
    *&v65[72] = *(v28 + 64);
    *&v65[88] = v35;
    *&v65[104] = *(v28 + 96);
    v65[120] = *(v28 + 112);
    v36 = *(v28 + 16);
    *&v65[8] = *v28;
    *&v65[24] = v36;
    v37 = *(v28 + 48);
    *&v65[40] = *(v28 + 32);
    *&v65[56] = v37;
    *v65 = v27;
    outlined init with copy of OrnamentPresentation(&v66, &v74);
    a2(v81, v65);
    v78 = *&v65[64];
    v79 = *&v65[80];
    v80[0] = *&v65[96];
    *(v80 + 9) = *&v65[105];
    v74 = *v65;
    v75 = *&v65[16];
    v76 = *&v65[32];
    v77 = *&v65[48];
    outlined destroy of (key: Namespace.ID, value: OrnamentPresentation)(&v74);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v81, v38, v39, v40);
    v24 = v22;
LABEL_16:
    v78 = *&v81[64];
    v79 = *&v81[80];
    v80[0] = *&v81[96];
    *(v80 + 9) = *&v81[105];
    v74 = *v81;
    v75 = *&v81[16];
    v76 = *&v81[32];
    v77 = *&v81[48];
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v74) == 1)
    {
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v41 = *v81;
    *&v65[64] = *&v81[72];
    *&v65[80] = *&v81[88];
    *&v65[96] = *&v81[104];
    v65[112] = v81[120];
    *v65 = *&v81[8];
    *&v65[16] = *&v81[24];
    *&v65[32] = *&v81[40];
    *&v65[48] = *&v81[56];
    v42 = a5;
    v43 = *a5;
    v44 = specialized __RawDictionaryStorage.find<A>(_:)(*v81);
    v46 = *(v43 + 16);
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_31;
    }

    v50 = v45;
    if (*(v43 + 24) >= v49)
    {
      if (v82)
      {
        if (v45)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v59 = v44;
        specialized _NativeDictionary.copy()();
        v44 = v59;
        v42 = a5;
        if (v50)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v82 & 1);
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_33;
      }

      if (v50)
      {
LABEL_5:
        v11 = *(*v42 + 56) + 120 * v44;
        v12 = *(v11 + 48);
        v14 = *v11;
        v13 = *(v11 + 16);
        v68 = *(v11 + 32);
        v69 = v12;
        v66 = v14;
        v67 = v13;
        v16 = *(v11 + 80);
        v15 = *(v11 + 96);
        v17 = *(v11 + 64);
        v73 = *(v11 + 112);
        v71 = v16;
        v72 = v15;
        v70 = v17;
        v18 = *&v65[80];
        *(v11 + 64) = *&v65[64];
        *(v11 + 80) = v18;
        *(v11 + 96) = *&v65[96];
        *(v11 + 112) = v65[112];
        v19 = *&v65[16];
        *v11 = *v65;
        *(v11 + 16) = v19;
        v20 = *&v65[48];
        *(v11 + 32) = *&v65[32];
        *(v11 + 48) = v20;
        outlined destroy of OrnamentPresentation(&v66);
        goto LABEL_6;
      }
    }

    v52 = *v42;
    *(*v42 + 8 * (v44 >> 6) + 64) |= 1 << v44;
    *(v52[6] + 8 * v44) = v41;
    v53 = v52[7] + 120 * v44;
    v54 = *&v65[16];
    *v53 = *v65;
    *(v53 + 16) = v54;
    v55 = *&v65[48];
    *(v53 + 32) = *&v65[32];
    *(v53 + 48) = v55;
    *(v53 + 112) = v65[112];
    v56 = *&v65[96];
    *(v53 + 80) = *&v65[80];
    *(v53 + 96) = v56;
    *(v53 + 64) = *&v65[64];
    v57 = v52[2];
    v48 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v48)
    {
      goto LABEL_32;
    }

    v52[2] = v58;
LABEL_6:
    v82 = 1;
    v10 = v24;
    v8 = v64;
  }

  if (v9 <= v10 + 1)
  {
    v23 = v10 + 1;
  }

  else
  {
    v23 = v9;
  }

  v24 = v23 - 1;
  v25 = v10;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= v9)
    {
      _s7SwiftUI9NamespaceV2IDV_AA20OrnamentPresentationVtSgWOi0_(&v74);
      v64 = 0;
      *&v81[64] = v78;
      *&v81[80] = v79;
      *&v81[96] = v80[0];
      *&v81[105] = *(v80 + 9);
      *v81 = v74;
      *&v81[16] = v75;
      *&v81[32] = v76;
      *&v81[48] = v77;
      goto LABEL_16;
    }

    v21 = *(v5 + 8 * v22);
    ++v25;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (1)
  {
    v52 = v9;
    v53 = v11;
    v144 = a4;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v108 = (v52 - 1) & v52;
    v57 = __clz(__rbit64(v52)) | (v53 << 6);
    v58 = *(*(a1 + 48) + 4 * v57);
    v59 = *(a1 + 56) + 248 * v57;
    v60 = *(v59 + 48);
    v62 = *v59;
    v61 = *(v59 + 16);
    v112 = *(v59 + 32);
    v113 = v60;
    v110 = v62;
    v111 = v61;
    v63 = *(v59 + 112);
    v65 = *(v59 + 64);
    v64 = *(v59 + 80);
    v116 = *(v59 + 96);
    v117 = v63;
    v114 = v65;
    v115 = v64;
    v66 = *(v59 + 176);
    v68 = *(v59 + 128);
    v67 = *(v59 + 144);
    v120 = *(v59 + 160);
    v121 = v66;
    v118 = v68;
    v119 = v67;
    v70 = *(v59 + 208);
    v69 = *(v59 + 224);
    v71 = *(v59 + 192);
    v125 = *(v59 + 240);
    v123 = v70;
    v124 = v69;
    v122 = v71;
    *&v126[196] = *(v59 + 192);
    *&v126[212] = *(v59 + 208);
    *&v126[228] = *(v59 + 224);
    *&v126[244] = *(v59 + 240);
    *&v126[132] = *(v59 + 128);
    *&v126[148] = *(v59 + 144);
    *&v126[164] = *(v59 + 160);
    *&v126[180] = *(v59 + 176);
    *&v126[68] = *(v59 + 64);
    *&v126[84] = *(v59 + 80);
    *&v126[100] = *(v59 + 96);
    *&v126[116] = *(v59 + 112);
    *&v126[4] = *v59;
    *&v126[20] = *(v59 + 16);
    *&v126[36] = *(v59 + 32);
    *&v126[52] = *(v59 + 48);
    *v109 = v58;
    *&v109[196] = *&v126[192];
    *&v109[212] = *&v126[208];
    *&v109[228] = *&v126[224];
    *&v109[240] = *&v126[236];
    *&v109[132] = *&v126[128];
    *&v109[148] = *&v126[144];
    *&v109[164] = *&v126[160];
    *&v109[180] = *&v126[176];
    *&v109[68] = *&v126[64];
    *&v109[84] = *&v126[80];
    *&v109[100] = *&v126[96];
    *&v109[116] = *&v126[112];
    *&v109[4] = *v126;
    *&v109[20] = *&v126[16];
    *&v109[36] = *&v126[32];
    *&v109[52] = *&v126[48];
    outlined init with copy of AlertStorage(&v110, &v127);
    a2(v143, v109);
    v140 = *&v109[208];
    v141 = *&v109[224];
    v142 = *&v109[240];
    v135 = *&v109[128];
    v136 = *&v109[144];
    v137 = *&v109[160];
    v138 = *&v109[176];
    v139 = *&v109[192];
    v131 = *&v109[64];
    v132 = *&v109[80];
    v133 = *&v109[96];
    v134 = *&v109[112];
    v127 = *v109;
    v128 = *&v109[16];
    v129 = *&v109[32];
    v130 = *&v109[48];
    outlined destroy of (key: ViewIdentity, value: AlertStorage)(&v127);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v143, v72, v73, v74);
    v107 = v53;
LABEL_16:
    v140 = *&v143[208];
    v141 = *&v143[224];
    v142 = *&v143[240];
    v135 = *&v143[128];
    v136 = *&v143[144];
    v137 = *&v143[160];
    v138 = *&v143[176];
    v139 = *&v143[192];
    v131 = *&v143[64];
    v132 = *&v143[80];
    v133 = *&v143[96];
    v134 = *&v143[112];
    v127 = *v143;
    v128 = *&v143[16];
    v129 = *&v143[32];
    v130 = *&v143[48];
    if (getEnumTag for AccessibilityActionCategory.Category(&v127) == 1)
    {
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v75 = *v143;
    *&v109[192] = *&v143[200];
    *&v109[208] = *&v143[216];
    *&v109[224] = *&v143[232];
    *&v109[240] = *&v143[248];
    *&v109[128] = *&v143[136];
    *&v109[144] = *&v143[152];
    *&v109[160] = *&v143[168];
    *&v109[176] = *&v143[184];
    *&v109[64] = *&v143[72];
    *&v109[80] = *&v143[88];
    *&v109[96] = *&v143[104];
    *&v109[112] = *&v143[120];
    *v109 = *&v143[8];
    *&v109[16] = *&v143[24];
    *&v109[32] = *&v143[40];
    *&v109[48] = *&v143[56];
    v76 = a5;
    v77 = *a5;
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(*v143);
    v80 = *(v77 + 16);
    v81 = (v79 & 1) == 0;
    v82 = __OFADD__(v80, v81);
    v83 = v80 + v81;
    if (v82)
    {
      goto LABEL_30;
    }

    v84 = v79;
    if (*(v77 + 24) < v83)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v83, v144 & 1);
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if ((v84 & 1) != (v85 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v84)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }

    if (v144)
    {
      goto LABEL_22;
    }

    v102 = v78;
    specialized _NativeDictionary.copy()();
    v78 = v102;
    v76 = a5;
    if (v84)
    {
LABEL_5:
      v12 = *v76;
      v13 = 248 * v78;
      v14 = *(*v76 + 56) + 248 * v78;
      v15 = *(v14 + 48);
      v17 = *v14;
      v16 = *(v14 + 16);
      v112 = *(v14 + 32);
      v113 = v15;
      v110 = v17;
      v111 = v16;
      v18 = *(v14 + 112);
      v20 = *(v14 + 64);
      v19 = *(v14 + 80);
      v116 = *(v14 + 96);
      v117 = v18;
      v114 = v20;
      v115 = v19;
      v21 = *(v14 + 176);
      v23 = *(v14 + 128);
      v22 = *(v14 + 144);
      v120 = *(v14 + 160);
      v121 = v21;
      v118 = v23;
      v119 = v22;
      v25 = *(v14 + 208);
      v24 = *(v14 + 224);
      v26 = *(v14 + 192);
      v125 = *(v14 + 240);
      v123 = v25;
      v124 = v24;
      v122 = v26;
      outlined init with copy of AlertStorage(&v110, v126);
      outlined destroy of AlertStorage(v109);
      v27 = *(v12 + 56) + v13;
      v28 = *(v27 + 192);
      v29 = *(v27 + 208);
      v30 = *(v27 + 224);
      *&v126[240] = *(v27 + 240);
      *&v126[208] = v29;
      *&v126[224] = v30;
      *&v126[192] = v28;
      v31 = *(v27 + 128);
      v32 = *(v27 + 144);
      v33 = *(v27 + 176);
      *&v126[160] = *(v27 + 160);
      *&v126[176] = v33;
      *&v126[128] = v31;
      *&v126[144] = v32;
      v34 = *(v27 + 64);
      v35 = *(v27 + 80);
      v36 = *(v27 + 112);
      *&v126[96] = *(v27 + 96);
      *&v126[112] = v36;
      *&v126[64] = v34;
      *&v126[80] = v35;
      v38 = *v27;
      v37 = *(v27 + 16);
      v39 = *(v27 + 48);
      *&v126[32] = *(v27 + 32);
      *&v126[48] = v39;
      *v126 = v38;
      *&v126[16] = v37;
      v40 = v110;
      v41 = v111;
      v42 = v113;
      *(v27 + 32) = v112;
      *(v27 + 48) = v42;
      *v27 = v40;
      *(v27 + 16) = v41;
      v43 = v114;
      v44 = v115;
      v45 = v117;
      *(v27 + 96) = v116;
      *(v27 + 112) = v45;
      *(v27 + 64) = v43;
      *(v27 + 80) = v44;
      v46 = v118;
      v47 = v119;
      v48 = v121;
      *(v27 + 160) = v120;
      *(v27 + 176) = v48;
      *(v27 + 128) = v46;
      *(v27 + 144) = v47;
      v49 = v122;
      v50 = v123;
      v51 = v124;
      *(v27 + 240) = v125;
      *(v27 + 208) = v50;
      *(v27 + 224) = v51;
      *(v27 + 192) = v49;
      outlined destroy of AlertStorage(v126);
      goto LABEL_6;
    }

LABEL_23:
    v86 = *v76;
    *(*v76 + 8 * (v78 >> 6) + 64) |= 1 << v78;
    *(v86[6] + 4 * v78) = v75;
    v87 = v86[7] + 248 * v78;
    v88 = *v109;
    v89 = *&v109[16];
    v90 = *&v109[48];
    *(v87 + 32) = *&v109[32];
    *(v87 + 48) = v90;
    *v87 = v88;
    *(v87 + 16) = v89;
    v91 = *&v109[64];
    v92 = *&v109[80];
    v93 = *&v109[112];
    *(v87 + 96) = *&v109[96];
    *(v87 + 112) = v93;
    *(v87 + 64) = v91;
    *(v87 + 80) = v92;
    v94 = *&v109[128];
    v95 = *&v109[144];
    v96 = *&v109[176];
    *(v87 + 160) = *&v109[160];
    *(v87 + 176) = v96;
    *(v87 + 128) = v94;
    *(v87 + 144) = v95;
    v97 = *&v109[192];
    v98 = *&v109[208];
    v99 = *&v109[224];
    *(v87 + 240) = *&v109[240];
    *(v87 + 208) = v98;
    *(v87 + 224) = v99;
    *(v87 + 192) = v97;
    v100 = v86[2];
    v82 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v82)
    {
      goto LABEL_31;
    }

    v86[2] = v101;
LABEL_6:
    a4 = 1;
    v11 = v107;
    v9 = v108;
  }

  if (v10 <= v11 + 1)
  {
    v54 = v11 + 1;
  }

  else
  {
    v54 = v10;
  }

  v55 = v54 - 1;
  v56 = v11;
  while (1)
  {
    v53 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v53 >= v10)
    {
      v107 = v55;
      _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v127);
      v108 = 0;
      *&v143[192] = v139;
      *&v143[208] = v140;
      *&v143[224] = v141;
      *&v143[240] = v142;
      *&v143[128] = v135;
      *&v143[144] = v136;
      *&v143[160] = v137;
      *&v143[176] = v138;
      *&v143[64] = v131;
      *&v143[80] = v132;
      *&v143[96] = v133;
      *&v143[112] = v134;
      *v143 = v127;
      *&v143[16] = v128;
      *&v143[32] = v129;
      *&v143[48] = v130;
      goto LABEL_16;
    }

    v52 = *(v6 + 8 * v53);
    ++v56;
    if (v52)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of (key: Namespace.ID, value: OrnamentPresentation)(uint64_t a1)
{
  type metadata accessor for (key: Namespace.ID, value: OrnamentPresentation)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (key: Namespace.ID, value: OrnamentPresentation)()
{
  if (!lazy cache variable for type metadata for (key: Namespace.ID, value: OrnamentPresentation))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Namespace.ID, value: OrnamentPresentation));
    }
  }
}

double _s7SwiftUI9NamespaceV2IDV_AA20OrnamentPresentationVtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ListKeyViewInputKey()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ListSelectionCanonicalIDKey()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance StackDepthModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ClearNavigationContextModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

double protocol witness for Rule.value.getter in conformance EnsureNavigationStateSeeds@<D0>(double *a1@<X8>)
{
  MEMORY[0x18D000B90]();
  Rule.withObservation<A>(observationCenter:do:)();

  result = v3;
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier()
{
  result = lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier;
  if (!lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18C6325D8()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

void protocol witness for TabContent.body.getter in conformance <> AuxiliaryContent<A, B>()
{
  protocol witness for TabContent.body.getter in conformance <> AuxiliaryContent<A, B>();
}

{
  swift_getWitnessTable();
  PrimitiveTabContent.body.getter();
}

void protocol witness for TabContent.body.getter in conformance <> TabGroup<A, B, C, D>()
{
  protocol witness for TabContent.body.getter in conformance <> TabGroup<A, B, C, D>();
}

{
  swift_getWitnessTable();
  PrimitiveTabContent.body.getter();
}

uint64_t TabContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return NestedDynamicProperties.init(wrappedValue:)(v6, a1, a2);
}

uint64_t _TabContentBodyAdaptor.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NestedDynamicProperties();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2, v6);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t _TabContentBodyAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 + 16);
  v22 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v21 - v5;
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  _TabContentBodyAdaptor.content.getter(a1, v9);
  (*(v22 + 64))(v3);
  (*(v23 + 8))(v9, v3);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v24 + 8))(v6, AssociatedTypeWitness);
  v18 = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v18);
  v19 = *(v12 + 8);
  v19(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v18);
  return (v19)(v17, v11);
}

uint64_t TabContentBuilder.Content.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NestedDynamicProperties();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2, v6);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t TabContentBuilder.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  TabContentBuilder.Content.content.getter(a1, v6);
  (*(v8 + 56))(v3, v8);
  (*(v4 + 8))(v6, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v10 + 8);
  v17(v12, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v17)(v15, AssociatedTypeWitness);
}

uint64_t ForEach<>.init<A>(_:id:liftedContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return ForEach<>.init<A>(_:id:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v16[1] = a6;
  v16[2] = a8;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

uint64_t ForEach<>.init<A>(_:liftedContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return ForEach<>.init<A>(_:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  v21[2] = a2;
  v21[3] = a3;
  v21[0] = a1;
  v21[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a8;
  v21[9] = a10;
  v21[10] = a11;
  v21[11] = a12;
  v21[13] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(v21[0], a4);
}

double ForEach<>.init<A>(_:liftedContent:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  return ForEach<>.init<A>(_:liftedContent:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a7 = v16;
  *(a7 + 16) = v17;
  result = *&v18;
  *(a7 + 32) = v18;
  *(a7 + 48) = v19;
  return result;
}

uint64_t _TupleTabContent._identifiedView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TupleView();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _TupleTabContent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  TupleView.init(_:)();
  return (*(v5 + 8))(a1, a3);
}

uint64_t sub_18C634120()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

void protocol witness for TabContent.body.getter in conformance AnyTabContent<A>()
{
  swift_getWitnessTable();

  PrimitiveTabContent.body.getter();
}

void specialized TabContent.bodyError()()
{
  _StringGuts.grow(_:)(31);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD43120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t associated type witness table accessor for View.Body : View in _TabContentBodyAdaptor<A>()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for TabContent._IdentifiedView : View in <> _ConditionalContent<A, B>()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for _TupleTabContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:)(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 88);
  v9 = *(v8 + 16);
  v11[3] = v3 + 16;
  v11[1] = v3 + 8;
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v2, v4);
    v10 = UTType.conforms(to:)();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      return;
    }
  }
}

void static DocumentUtils.contentType(of:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v8;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = URL.pathExtension.getter();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v54 = v23;
    v50 = v11;
    v57 = a2;
    type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    v28 = *(v16 + 72);
    v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v55 = swift_allocObject();
    v30 = v55 + v29;
    static UTType.data.getter();
    static UTType.package.getter();
    v60 = a1;
    URL.pathExtension.getter();
    v53 = *(v16 + 16);
    v53(v20, v30, v15);
    UTType.init(filenameExtension:conformingTo:)();
    v56 = v16;
    v32 = *(v16 + 48);
    v31 = v16 + 48;
    v33 = (v16 + 32);
    v49 = (v16 + 8);
    v52 = v32;
    if (v32(v14, 1, v15) == 1)
    {
      v48 = (v16 + 32);
      v34 = v15;
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v14, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    }

    else
    {
      v35 = *v33;
      v36 = v54;
      (*v33)(v54, v14, v15);
      if ((UTType.isDynamic.getter() & 1) == 0)
      {
        a2 = v57;
        goto LABEL_21;
      }

      v48 = (v31 - 16);
      v34 = v15;
      (*v49)(v36, v15);
    }

    URL.pathExtension.getter();
    v53(v20, v30 + v28, v34);
    v15 = v34;
    UTType.init(filenameExtension:conformingTo:)();
    if (v52(v14, 1, v34) == 1)
    {
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v14, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      a2 = v57;
LABEL_12:
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v16 = v56;
      v11 = v50;
      goto LABEL_13;
    }

    v35 = *v48;
    v36 = v54;
    (*v48)(v54, v14, v34);
    v37 = UTType.isDynamic.getter();
    a2 = v57;
    if (v37)
    {
      (*v49)(v36, v15);
      goto LABEL_12;
    }

LABEL_21:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35(a2, v36, v15);
    (*(v56 + 56))(a2, 0, 1, v15);
    return;
  }

LABEL_13:
  if (!URL.startAccessingSecurityScopedResource()())
  {
    (*(v16 + 56))(a2, 1, 1, v15);
    return;
  }

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>, type metadata accessor for NSURLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v39 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v40 = v39;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
  v41 = v58;
  URL.resourceValues(forKeys:)();
  v42 = v59;

  v43 = type metadata accessor for URLResourceValues();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v41, 0, 1, v43);
  outlined init with copy of URLResourceValues?(v41, v42);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    v45 = MEMORY[0x1E69688C8];
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v41, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8]);
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v42, &lazy cache variable for type metadata for URLResourceValues?, v45);
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  else
  {
    URLResourceValues.contentType.getter();
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v41, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8]);
    (*(v44 + 8))(v42, v43);
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      v46 = *(v16 + 32);
      v47 = v51;
      v46(v51, v11, v15);
      v46(a2, v47, v15);
      (*(v16 + 56))(a2, 0, 1, v15);
      goto LABEL_23;
    }
  }

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v11, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  (*(v16 + 56))(a2, 1, 1, v15);
LABEL_23:
  URL.stopAccessingSecurityScopedResource()();
}

id specialized static DocumentUtils.serializationFailed.getter()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v13._object = 0x800000018CD4BEC0;
  v2.value._countAndFlagsBits = 0x746E656D75636F44;
  v3._object = 0x800000018CD4BE90;
  v4._object = 0x800000018CD4BE90;
  v13._countAndFlagsBits = 0xD00000000000007DLL;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v13);

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v7;
  *(inited + 48) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for (String, Any));
  v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v9 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD4BF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithDomain:v9 code:101 userInfo:isa];

  return v11;
}

id specialized static DocumentUtils.contentTypeNotRegisteredError()()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v19._object = 0x800000018CD4BFA0;
  v2.value._countAndFlagsBits = 0x746E656D75636F44;
  v3._object = 0x800000018CD4BF60;
  v4._object = 0x800000018CD4BF60;
  v19._countAndFlagsBits = 0xD000000000000068;
  v3._countAndFlagsBits = 0xD000000000000030;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0xD000000000000030;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v19);

  v5 = MEMORY[0x1E69E6F90];
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  v7 = currentAppName()();
  v8 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  v9 = String.init(format:_:)();
  v11 = v10;

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v5);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v8;
  *(inited + 40) = v13;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for (String, Any));
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD4BF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithDomain:v15 code:100 userInfo:isa];

  return v17;
}

uint64_t _sSS_yptWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of URLResourceValues?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for URLResourceValues?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for URLResourceValues?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LegacyNavigationLinkModifier.$deprecated_isActive.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 25))
  {
  }

  else
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v3;
  }

  return v1;
}

BOOL LegacyNavigationLinkModifier.isContextuallyDisabled.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  v3 = *(v2 + 40);
  if (v3 == 1)
  {
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v4 = *(v2 + 32);
  outlined init with copy of NavigationLinkPresentedValue?(v1 + *(a1 + 56), &v12);
  if (*(&v13 + 1) == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(&v12);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  outlined init with copy of NavigationLinkPresentedValue(v15, &v12);
  if (!*(&v13 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(v15);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v9 = v12;
  v10 = v13;
  v11 = v14;
  if ((v4 & 1) == 0)
  {
    outlined destroy of NavigationLinkPresentedValue(v15);
    goto LABEL_11;
  }

  v5 = *(&v10 + 1);
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  v7 = (*(v6 + 16))(v5, v6);
  outlined destroy of NavigationLinkPresentedValue(v15);
  if (!v3)
  {
LABEL_11:
    outlined destroy of AnyNavigationLinkPresentedValue(&v9);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  outlined destroy of AnyNavigationLinkPresentedValue(&v9);
  if (v7 == v3)
  {
    return 0;
  }

  return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
}

uint64_t LegacyNavigationLinkModifier.init(payload:legacy_updateSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 45) = 0;
  *(a6 + 56) = swift_getKeyPath();
  *(a6 + 64) = 0;
  v12 = type metadata accessor for LegacyNavigationLinkModifier();
  v13 = a6 + v12[14];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = xmmword_18CD6A6D0;
  v14 = type metadata accessor for NavigationDestinationPayload();
  v15 = a1 + v14[10];
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 17);
  *(a6 + 8) = *v15;
  *(a6 + 16) = v17;
  v19 = *(v15 + 16);
  *(a6 + 24) = v19;
  *(a6 + 25) = v18;
  if (!a3)
  {
    a2 = 0;
    a4 = 0;
  }

  *(a6 + 65) = *(a1 + v14[9]);
  outlined copy of StateOrBinding<Bool>(v16, v17, v19, v18);
  *(a6 + v12[15]) = NavigationDestinationPayload.alwaysDisableLink.getter(v14);
  (*(*(a5 - 8) + 16))(a6 + v12[13], a1, a5);
  outlined assign with copy of NavigationLinkPresentedValue?(a1 + v14[7], v13);
  v20 = (a1 + v14[12]);
  v21 = (a6 + v12[16]);
  v22 = v20[1];
  *v21 = *v20;
  v21[1] = v22;
  v21[2] = v20[2];
  v23 = *(a1 + v14[8]);
  (*(*(v14 - 1) + 8))(a1, v14);
  *a6 = v23;
  result = outlined consume of StateOrBinding<Bool>(*(a6 + 32), *(a6 + 40), *(a6 + 48), *(a6 + 52));
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 52) = a3 != 0;
  return result;
}

uint64_t outlined assign with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LegacyNavigationLinkModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LegacyNavigationLinkModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 66) & ~v6) + 55) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v11 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 17);
    if (v14 >= 2)
    {
      v14 = *v13 + 2;
    }

    if (v14 == 1)
    {
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 8);
      *(v12 + 16) = *(v13 + 16);

      v15 = 1;
    }

    else
    {
      v15 = 0;
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 8);
    }

    *(v12 + 17) = v15;
    v16 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v16 + 20);
    if (v17 >= 2)
    {
      v17 = *v16 + 2;
    }

    v42 = a1;
    v18 = ~v6;
    v19 = (v12 + 25) & 0xFFFFFFFFFFFFFFF8;
    if (v17 == 1)
    {
      *v19 = *v16;
      *(v19 + 8) = *(v16 + 8);
      *(v19 + 16) = *(v16 + 16);

      v20 = 1;
    }

    else
    {
      v20 = 0;
      *v19 = *v16;
      *(v19 + 8) = *(v16 + 8);
    }

    *(v19 + 20) = v20;
    v21 = (v12 + 53) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v13 + 53) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Selector?>.Content(*v22, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 9) = *(v22 + 9);
    (*(v5 + 16))((v21 + v6 + 10) & v18, (v22 + v6 + 10) & v18, v4);
    v25 = ((v21 + v6 + 10) & v18) + v7;
    v26 = ((v22 + v6 + 10) & v18) + v7;
    v27 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v28 + 24);
    LODWORD(v30) = -1;
    if (v29 < 0xFFFFFFFF)
    {
      v30 = *(v28 + 24);
    }

    v31 = v30 + 1;
    if (v29)
    {
      v32 = v31 > 1;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      v35 = *v28;
      v36 = *(v28 + 16);
      *(v27 + 32) = *(v28 + 32);
      *v27 = v35;
      *(v27 + 16) = v36;
      v11 = v42;
    }

    else
    {
      v11 = v42;
      if (v31)
      {
        v33 = *v28;
        v34 = *(v28 + 16);
        *(v27 + 32) = *(v28 + 32);
        *v27 = v33;
        *(v27 + 16) = v34;
      }

      else
      {
        *(v27 + 24) = v29;
        *(v27 + 32) = *(v28 + 32);
        (**(v29 - 8))(v27, (v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    *(v27 + 40) = *(v28 + 40);
    v37 = ((v25 + 55) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
    v39 = *v38;
    v40 = v38[2];
    v37[1] = v38[1];
    v37[2] = v40;
    *v37 = v39;
  }

  return v11;
}

unint64_t destroy for LegacyNavigationLinkModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v3 + 17);
  if (v4 >= 2)
  {
    v4 = *v3 + 2;
  }

  if (v4 == 1)
  {
  }

  v5 = (v3 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 20);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
  }

  v7 = (v3 + 53) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v7, *(v7 + 8));
  v8 = *(*(a2 + 16) - 8);
  v9 = v8 + 8;
  v10 = (v7 + *(v8 + 80) + 10) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  result = (*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

void *initializeWithCopy for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 17);
  if (v7 >= 2)
  {
    v7 = *v6 + 2;
  }

  if (v7 == 1)
  {
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
    *(v5 + 16) = *(v6 + 16);

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
  }

  *(v5 + 17) = v8;
  v9 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 20);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  v11 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v10 == 1)
  {
    *v11 = *v9;
    *(v11 + 8) = *(v9 + 8);
    *(v11 + 16) = *(v9 + 16);

    v12 = 1;
  }

  else
  {
    v12 = 0;
    *v11 = *v9;
    *(v11 + 8) = *(v9 + 8);
  }

  *(v11 + 20) = v12;
  v13 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v16);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 9) = *(v14 + 9);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = (v19 + 10 + v13) & ~v19;
  v21 = (v19 + 10 + v14) & ~v19;
  (*(v17 + 16))(v20, v21);
  v27 = *(v18 + 48);
  v22 = v27 + v20;
  v23 = v27 + v21;
  v24 = (v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v27 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  LODWORD(v27) = -1;
  if (v26 < 0xFFFFFFFF)
  {
    v27 = *(v25 + 24);
  }

  v28 = v27 + 1;
  if (v26)
  {
    v29 = v28 > 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29 || v28)
  {
    v30 = *v25;
    v31 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v30;
    *(v24 + 16) = v31;
  }

  else
  {
    *(v24 + 24) = v26;
    *(v24 + 32) = *(v25 + 32);
    (**(v26 - 8))(v24, v25);
  }

  *(v24 + 40) = *(v25 + 40);
  v32 = ((v22 + 55) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8);
  v34 = *v33;
  v35 = v33[2];
  v32[1] = v33[1];
  v32[2] = v35;
  *v32 = v34;
  return a1;
}

void *assignWithCopy for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v5 != v6)
  {
    v7 = *(v5 + 17);
    if (v7 >= 2)
    {
      v7 = *v5 + 2;
    }

    if (v7 == 1)
    {
    }

    v8 = *(v6 + 17);
    if (v8 >= 2)
    {
      v8 = *v6 + 2;
    }

    if (v8 == 1)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 16) = *(v6 + 16);
      *(v5 + 17) = 1;
    }

    else
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 17) = 0;
    }
  }

  v9 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v10)
  {
    v11 = *(v9 + 20);
    if (v11 >= 2)
    {
      v11 = *v9 + 2;
    }

    if (v11 == 1)
    {
    }

    v12 = *(v10 + 20);
    if (v12 >= 2)
    {
      v12 = *v10 + 2;
    }

    if (v12 == 1)
    {
      *v9 = *v10;
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 16) = *(v10 + 16);
      *(v9 + 20) = 1;
    }

    else
    {
      *v9 = *v10;
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 20) = 0;
    }
  }

  v13 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v16);
  v17 = *v13;
  v18 = *(v13 + 8);
  *v13 = v15;
  *(v13 + 8) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  *(v13 + 9) = *(v14 + 9);
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = (v21 + 10 + v13) & ~v21;
  v23 = (v21 + 10 + v14) & ~v21;
  (*(v19 + 24))(v22, v23);
  v29 = *(v20 + 40);
  v24 = v29 + v22;
  v25 = v29 + v23;
  v26 = (v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v29 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v26 + 24);
  LODWORD(v29) = -1;
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  else
  {
    v30 = *(v26 + 24);
  }

  v31 = v30 + 1;
  v32 = *(v27 + 24);
  if (v32 < 0xFFFFFFFF)
  {
    v29 = *(v27 + 24);
  }

  v33 = v29 + 1;
  if (v32)
  {
    v34 = v33 >= 2;
  }

  else
  {
    v34 = 0;
  }

  v35 = !v34;
  if (v28)
  {
    v36 = v31 > 1;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (!v35)
  {
    if (!v31)
    {
      v37 = v26;
      goto LABEL_47;
    }

LABEL_48:
    v38 = *v27;
    v39 = *(v27 + 16);
    *(v26 + 32) = *(v27 + 32);
    *v26 = v38;
    *(v26 + 16) = v39;
    goto LABEL_49;
  }

  if (v31)
  {
LABEL_43:
    if (!v33)
    {
      *(v26 + 24) = v32;
      *(v26 + 32) = *(v27 + 32);
      (**(v32 - 8))(v26, v27);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v37 = v26;
  if (v33)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_48;
  }

  __swift_assign_boxed_opaque_existential_1(v26, v27);
LABEL_49:
  *(v26 + 40) = *(v27 + 40);
  v40 = ((v24 + 55) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v25 + 55) & 0xFFFFFFFFFFFFFFF8);
  v42 = *v41;
  v43 = v41[2];
  v40[1] = v41[1];
  v40[2] = v43;
  *v40 = v42;
  return a1;
}

void *initializeWithTake for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 17);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
    v7 = *v5;
    *(v4 + 16) = *(v5 + 16);
    *v4 = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *v4 = *v5;
  }

  *(v4 + 17) = v8;
  v9 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 20);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  v11 = (v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v10 == 1)
  {
    v12 = *v9;
    *(v11 + 16) = *(v9 + 16);
  }

  else
  {
    LOBYTE(v10) = 0;
    v12 = *v9;
  }

  *v11 = v12;
  *(v11 + 20) = v10;
  v13 = (v4 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  *(v13 + 9) = *(v14 + 9);
  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 32;
  v18 = *(v16 + 80);
  v19 = (v18 + 10 + v13) & ~v18;
  v20 = (v18 + 10 + v14) & ~v18;
  (*(v16 + 32))(v19, v20);
  v21 = *(v17 + 32);
  v22 = v21 + v19;
  v23 = v21 + v20;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  *(v24 + 40) = *(v25 + 40);
  v28 = ((v22 + 55) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v29;
  v31 = v29[2];
  v28[1] = v29[1];
  v28[2] = v31;
  *v28 = v30;
  return a1;
}

void *assignWithTake for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v5 != v6)
  {
    v7 = *(v5 + 17);
    if (v7 >= 2)
    {
      v7 = *v5 + 2;
    }

    if (v7 == 1)
    {
    }

    v8 = *(v6 + 17);
    if (v8 >= 2)
    {
      v8 = *v6 + 2;
    }

    if (v8 == 1)
    {
      v9 = *v6;
      *(v5 + 16) = *(v6 + 16);
      *v5 = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *v5 = *v6;
    }

    *(v5 + 17) = v10;
  }

  v11 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v11 != v12)
  {
    v13 = *(v11 + 20);
    if (v13 >= 2)
    {
      v13 = *v11 + 2;
    }

    if (v13 == 1)
    {
    }

    v14 = *(v12 + 20);
    if (v14 >= 2)
    {
      v14 = *v12 + 2;
    }

    if (v14 == 1)
    {
      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      *v11 = *v12;
    }

    *(v11 + 20) = v16;
  }

  v17 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  *(v17 + 9) = *(v18 + 9);
  v22 = *(*(a3 + 16) - 8);
  v23 = v22 + 40;
  v24 = *(v22 + 80);
  v25 = (v24 + 10 + v17) & ~v24;
  v26 = (v24 + 10 + v18) & ~v24;
  (*(v22 + 40))(v25, v26);
  v27 = *(v23 + 24);
  v28 = v27 + v25;
  v29 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v29 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = (v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  v32 = *(v30 + 16);
  *(v29 + 32) = *(v30 + 32);
  *v29 = v31;
  *(v29 + 16) = v32;
  *(v29 + 40) = *(v30 + 40);
  v33 = ((v28 + 55) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v27 + v26 + 55) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyNavigationLinkModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v8 = 2147483645;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v7 + ((v6 + 66) & ~v6) + 55) & 0xFFFFFFFFFFFFFFF8) + 48;
  v10 = a2 - v8;
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
    v18 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 53) & 0xFFFFFFFFFFFFFFF8) + v6 + 10) & ~v6;
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) < 2)
    {
      LODWORD(v19) = 0;
    }

    if (v19 >= 2)
    {
      return (v19 - 1);
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

double storeEnumTagSinglePayload for LegacyNavigationLinkModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) == 0xFFFFFFD0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
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
      v20 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 53) & 0xFFFFFFFFFFFFFFF8) + v8 + 10) & ~v8;
      if (v6 < 0x7FFFFFFD)
      {
        v22 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFD)
        {
          *(v22 + 32) = 0;
          result = 0.0;
          *v22 = 0u;
          *(v22 + 16) = 0u;
          *v22 = a2 - 2147483646;
        }

        else
        {
          *(v22 + 24) = a2 + 1;
        }
      }

      else
      {
        v21 = *(v5 + 56);

        v21(v20);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFFFFFFFFFF8) + 48);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }

  return result;
}

uint64_t LegacyNavigationLinkModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = *(v9 + 24);
  v10 = type metadata accessor for LegacyBaseModifier();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35[-v11];
  swift_getWitnessTable();
  v38 = type metadata accessor for _ViewModifier_Content();
  v44 = v10;
  v13 = type metadata accessor for ModifiedContent();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35[-v18];
  v37 = *v3;
  v20 = *(v6 + 16);
  v21 = v3 + *(a2 + 52);
  v40 = v8;
  v41 = v5;
  v20(v8, v21, v5, v17);
  v50 = xmmword_18CD6A6D0;
  v36 = *(v3 + 65);
  v22 = 1;
  if ((*(v3 + *(a2 + 60)) & 1) == 0)
  {
    v22 = LegacyNavigationLinkModifier.isContextuallyDisabled.getter(a2);
  }

  v23 = LegacyNavigationLinkModifier.$deprecated_isActive.getter();
  v25 = v24;
  v27 = v26;
  outlined init with copy of NavigationLinkPresentedValue?(v3 + *(a2 + 56), v49);
  v48 = 1;
  LegacyBaseModifier.init(namespaceID:destination:environment:updateSeed:isDetail:alwaysDisable:isPresented:presentedValue:)(v37, v40, &v50, 0x100000000, v36, v22, v23, v25, v12, v27 & 1, v49, v41);
  v28 = v38;
  WitnessTable = swift_getWitnessTable();
  v30 = v28;
  v31 = v44;
  MEMORY[0x18D00A570](v12, v30, v44, WitnessTable);
  (*(v43 + 8))(v12, v31);
  v46 = WitnessTable;
  v47 = &protocol witness table for LegacyBaseModifier<A>;
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v13, v32);
  v33 = *(v42 + 8);
  v33(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v32);
  return (v33)(v19, v13);
}

__n128 LegacyBaseModifier.init(namespaceID:destination:environment:updateSeed:isDetail:alwaysDisable:isPresented:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  v17 = a3[1];
  *a9 = a1;
  v18 = type metadata accessor for LegacyBaseModifier();
  (*(*(a12 - 8) + 32))(&a9[v18[9]], a2, a12);
  v19 = &a9[v18[10]];
  *v19 = v16;
  *(v19 + 1) = v17;
  v20 = &a9[v18[11]];
  *v20 = a4;
  v20[4] = BYTE4(a4) & 1;
  a9[v18[12]] = a5;
  a9[v18[13]] = a6;
  v21 = &a9[v18[14]];
  *v21 = a7;
  *(v21 + 1) = a8;
  v21[16] = a10;
  v22 = &a9[v18[15]];
  result = *a11;
  v24 = *(a11 + 16);
  *v22 = *a11;
  *(v22 + 1) = v24;
  *(v22 + 4) = *(a11 + 32);
  return result;
}

uint64_t type metadata completion function for LegacyBaseModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LegacyBaseModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((((v6 + ((v5 + 8) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 8) & ~v5;
    v11 = (a2 + v5 + 8) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = ((v6 + v10) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v14) = -1;
    if (*v13 < 0xFFFFFFFF)
    {
      v14 = *v13;
    }

    if (v14 - 1 < 0)
    {
      *v12 = *v13;
      v12[1] = v13[1];
    }

    else
    {
      *v12 = *v13;
    }

    v15 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 4) = *(v16 + 4);
    *v15 = v17;
    *(v15 + 5) = *(v16 + 5);
    *(v15 + 6) = *(v16 + 6);
    v24 = (v12 + 19) | 7;
    v18 = (v13 + 19) | 7;
    v19 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
    v21 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v22 + 24);
    LODWORD(v24) = -1;
    if (v23 < 0xFFFFFFFF)
    {
      v24 = *(v22 + 24);
    }

    v25 = v24 + 1;

    if (v23)
    {
      v26 = v25 > 1;
    }

    else
    {
      v26 = 0;
    }

    if (v26 || v25)
    {
      v27 = *v22;
      v28 = *(v22 + 16);
      *(v21 + 32) = *(v22 + 32);
      *v21 = v27;
      *(v21 + 16) = v28;
    }

    else
    {
      *(v21 + 24) = v23;
      *(v21 + 32) = *(v22 + 32);
      (**(v23 - 8))(v21, v22, v23);
    }
  }

  return v3;
}

void *initializeWithCopy for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 16))(v7, v8);
  v11 = *(v5 + 48) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v10 < 0xFFFFFFFF)
  {
    v11 = *v10;
  }

  if (v11 - 1 < 0)
  {
    *v9 = *v10;
    v9[1] = v10[1];
  }

  else
  {
    *v9 = *v10;
  }

  v12 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 4) = *(v13 + 4);
  *v12 = v14;
  *(v12 + 5) = *(v13 + 5);
  *(v12 + 6) = *(v13 + 6);
  v21 = (v9 + 19) | 7;
  v15 = (v10 + 19) | 7;
  v16 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  v18 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 24);
  LODWORD(v21) = -1;
  if (v20 < 0xFFFFFFFF)
  {
    v21 = *(v19 + 24);
  }

  v22 = v21 + 1;

  if (v20)
  {
    v23 = v22 > 1;
  }

  else
  {
    v23 = 0;
  }

  if (v23 || v22)
  {
    v24 = *v19;
    v25 = *(v19 + 16);
    *(v18 + 32) = *(v19 + 32);
    *v18 = v24;
    *(v18 + 16) = v25;
  }

  else
  {
    *(v18 + 24) = v20;
    *(v18 + 32) = *(v19 + 32);
    (**(v20 - 8))(v18, v19, v20);
  }

  return a1;
}

void *assignWithCopy for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 24))(v7, v8);
  v11 = *(v5 + 40) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v9 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  else
  {
    v12 = *v9;
  }

  v13 = v12 - 1;
  v14 = *v10;
  if (*v10 < 0xFFFFFFFF)
  {
    v11 = *v10;
  }

  v15 = v11 - 1;
  if ((v13 & 0x80000000) == 0)
  {
    if (v15 < 0)
    {
      *v9 = v14;
      v9[1] = v10[1];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v15 & 0x80000000) == 0)
  {

LABEL_11:
    *v9 = *v10;
    goto LABEL_12;
  }

  *v9 = v14;

  v9[1] = v10[1];

LABEL_12:
  v16 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = v10 + 19;
  v18 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v16 + 4) = *(v18 + 4);
  *v16 = v19;
  *(v16 + 5) = *(v18 + 5);
  *(v16 + 6) = *(v18 + 6);
  v20 = (v9 + 19) | 7;
  v21 = v17 | 7;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v17 | 7) + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);

  *(v22 + 16) = *(v23 + 16);
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 24);
  LODWORD(v27) = -1;
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  else
  {
    v28 = *(v24 + 24);
  }

  v29 = v28 + 1;
  v30 = *(v25 + 24);
  if (v30 < 0xFFFFFFFF)
  {
    v27 = *(v25 + 24);
  }

  v31 = v27 + 1;
  if (v30)
  {
    v32 = v31 >= 2;
  }

  else
  {
    v32 = 0;
  }

  v33 = !v32;
  if (v26)
  {
    v34 = v29 > 1;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v33)
  {
    if (!v29)
    {
      goto LABEL_35;
    }

LABEL_36:
    v35 = *v25;
    v36 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v35;
    *(v24 + 16) = v36;
    return a1;
  }

  if (v29)
  {
LABEL_32:
    if (!v31)
    {
      *(v24 + 24) = v30;
      *(v24 + 32) = *(v25 + 32);
      (**(v30 - 8))(v24, (v21 + 31) & 0xFFFFFFFFFFFFFFF8);
      return a1;
    }

    goto LABEL_36;
  }

  if (v31)
  {
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_36;
  }

  __swift_assign_boxed_opaque_existential_1(v24, ((v21 + 31) & 0xFFFFFFFFFFFFFFF8));
  return a1;
}

void *initializeWithTake for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 19;
  *v10 = v12;
  v10 += 19;
  v13 = v10 & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 4) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v13 = v14;
  *(v13 + 5) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 5);
  *(v13 + 6) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 6);
  v10 |= 7uLL;
  v11 |= 7uLL;
  v15 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 16) = *(v16 + 16);
  *v15 = v17;
  v18 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v19;
  v20 = *(v19 + 16);
  *(v18 + 32) = *(v19 + 32);
  *v18 = v21;
  *(v18 + 16) = v20;
  return a1;
}

void *assignWithTake for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 40))(v7, v8);
  v11 = *(v5 + 24) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v9 < 0xFFFFFFFF)
  {
    v11 = *v9;
  }

  if (v11 - 1 >= 0)
  {
    goto LABEL_8;
  }

  LODWORD(v12) = -1;
  if (*v10 < 0xFFFFFFFF)
  {
    v12 = *v10;
  }

  if (v12 - 1 >= 0)
  {

LABEL_8:
    *v9 = *v10;
    goto LABEL_9;
  }

  *v9 = *v10;

  v9[1] = v10[1];

LABEL_9:
  v13 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 4) = *(v14 + 4);
  *v13 = v15;
  *(v13 + 5) = *(v14 + 5);
  *(v13 + 6) = *(v14 + 6);
  v16 = (v9 + 19) | 7;
  v17 = (v10 + 19) | 7;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);

  *(v18 + 16) = *(v19 + 16);
  v20 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v20 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v21 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyBaseModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for LegacyBaseModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 0x10) = 0;
          *(((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) = a2 & 0x7FFFFFFF;
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = 0;
        }

        else
        {
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t LegacyBaseModifier.isPresented.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  return v6;
}

double static LegacyBaseModifier._makeView(modifier:inputs:body:)@<D0>(double *a1@<X8>)
{
  type metadata accessor for LegacyBaseModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v2 = _GraphValue.value.getter();
  type metadata accessor for LegacyBaseModifier.Transform();
  LODWORD(v4) = v5;
  type metadata accessor for LegacyBaseModifier.Wrapper();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  result = v4;
  *a1 = __PAIR64__(v2, v5);
  a1[1] = v4;
  return result;
}

uint64_t static LegacyBaseModifier._makeViewList(modifier:inputs:body:)()
{
  type metadata accessor for LegacyBaseModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  _GraphValue.value.getter();
  type metadata accessor for LegacyBaseModifier.Transform();
  type metadata accessor for LegacyBaseModifier.Wrapper();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t closure #1 in static LegacyBaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyBaseModifier();
  v7 = *(v6 + 52);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, a4, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static LegacyBaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyBaseModifier();
  v7 = *(v6 + 60);
  v13[2] = v6;
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, a4, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v13[5];
}

uint64_t LegacyBaseModifier.Wrapper.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LegacyBaseModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t LegacyBaseModifier.Wrapper.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LegacyBaseModifier();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-v3 - 8];
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationLinkPresentedValue?(Value, v9);
  if (v10)
  {
    if (v10 != 1)
    {
      outlined destroy of NavigationLinkPresentedValue(v9);
      MEMORY[0x18D009810](0xD00000000000008BLL, 0x800000018CD4C010);
      LegacyBaseModifier.Wrapper.modifier.getter(v4);
      v6 = 1;
      return LegacyBaseModifier.Transform.init(modifier:shouldDisable:)(v4, v6, a1);
    }

    outlined destroy of NavigationLinkPresentedValue?(v9);
  }

  else
  {
    outlined destroy of NavigationLinkPresentedValue(v9);
  }

  LegacyBaseModifier.Wrapper.modifier.getter(v4);
  v6 = *AGGraphGetValue();
  return LegacyBaseModifier.Transform.init(modifier:shouldDisable:)(v4, v6, a1);
}

uint64_t LegacyBaseModifier.Transform.init(modifier:shouldDisable:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LegacyBaseModifier();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for LegacyBaseModifier.Transform();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance LegacyBaseModifier<A>.Wrapper@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LegacyBaseModifier.Transform();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL LegacyBaseModifier.Transform.isViewDestinationLink.getter()
{
  v1 = type metadata accessor for LegacyBaseModifier();
  outlined init with copy of NavigationLinkPresentedValue?(v0 + *(v1 + 60), v4);
  v2 = v5 == 1;
  outlined destroy of NavigationLinkPresentedValue?(v4);
  return v2;
}

uint64_t LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.disabled(_:)();
  v17 = v25;
  *&v18 = v26;
  (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a2 + 16);
  (*(v5 + 32))(v9 + v8, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v10 = type metadata accessor for ModifiedContent();
  v11 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v20 = WitnessTable;
  v21 = v11;
  v12 = swift_getWitnessTable();
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationDestinationsKey, partial apply for closure #1 in LegacyBaseModifier.Transform.body(content:), v9, v10, &type metadata for NavigationDestinationsKey, v12);

  v17 = v22;
  v18 = v23;
  v19 = v24;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>();
  v13 = type metadata accessor for ModifiedContent();
  v16[0] = v12;
  v16[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v14 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v17, v13, v14);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  static ViewBuilder.buildExpression<A>(_:)(&v22, v13, v14);
}

unint64_t closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + *(type metadata accessor for LegacyBaseModifier.Transform() + 36)) & 1) == 0 && LegacyBaseModifier.Transform.isViewDestinationLink.getter() && (v12 = type metadata accessor for LegacyBaseModifier(), (LegacyBaseModifier.isPresented.getter(v12)))
  {
    v28 = *a3;
    (*(v9 + 16))(v11, a3 + v12[9], a4);
    v13 = v12[11];
    v27 = *(a3 + v12[12]);
    v14 = (a3 + v12[10]);
    v16 = v14[1];
    v29[0] = *v14;
    v15 = v29[0];
    v29[1] = v16;
    v17 = *(a3 + v13 + 4);
    v18 = implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:)(a3, a4, a5);
    v26 = v19;

    outlined copy of EnvironmentValues?(v15);
    LOBYTE(v30[0]) = v17;
    v24 = a4;
    v20 = v28;
    NavigationDestinationContent.init<A>(id:content:isDetail:transaction:environment:updateSeed:onDismiss:)(v28, v11, v27, a2, v29, v18, v26, v30, v24, a5);
    v31 = 0;
    v21 = v20;
  }

  else
  {
    v22 = *a3;
    v30[0] = v22;
    v30[1] = a2;
    v31 = 1;

    v21 = v22;
  }

  return specialized Dictionary.subscript.setter(v30, v21);
}

uint64_t (*implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for LegacyBaseModifier.Transform();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return partial apply for implicit closure #4 in implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:);
}

uint64_t type metadata completion function for LegacyBaseModifier.Transform()
{
  result = type metadata accessor for LegacyBaseModifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = (((((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 + 41 > 0x18)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = (a1 + v6 + 8) & ~v6;
    v13 = (a2 + v6 + 8) & ~v6;
    (*(v5 + 16))(v12, v13);
    v14 = ((v7 + v12) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v16) = -1;
    if (*v15 < 0xFFFFFFFF)
    {
      v16 = *v15;
    }

    if (v16 - 1 < 0)
    {
      *v14 = *v15;
      v14[1] = v15[1];
    }

    else
    {
      *v14 = *v15;
    }

    v17 = v8 + 40;
    v18 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    *(v18 + 4) = *(v19 + 4);
    *v18 = v20;
    *(v18 + 5) = *(v19 + 5);
    *(v18 + 6) = *(v19 + 6);
    v27 = (v14 + 19) | 7;
    v21 = (v15 + 19) | 7;
    v22 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
    v24 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 24);
    LODWORD(v27) = -1;
    if (v26 < 0xFFFFFFFF)
    {
      v27 = *(v25 + 24);
    }

    v28 = v27 + 1;

    if (v26)
    {
      v29 = v28 > 1;
    }

    else
    {
      v29 = 0;
    }

    if (v29 || v28)
    {
      v30 = *v25;
      v31 = *(v25 + 16);
      *(v24 + 32) = *(v25 + 32);
      *v24 = v30;
      *(v24 + 16) = v31;
    }

    else
    {
      *(v24 + 24) = v26;
      *(v24 + 32) = *(v25 + 32);
      (**(v26 - 8))(v24, v25, v26);
    }

    *(v4 + v17) = *(a2 + v17);
  }

  return v4;
}

unint64_t destroy for LegacyBaseModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 8) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = ((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v6) = -1;
  if (*v5 < 0xFFFFFFFF)
  {
    v6 = *v5;
  }

  if (v6 - 1 < 0)
  {
  }

  result = (((v5 + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 0x18) >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

void *initializeWithCopy for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 16))(v9, v10);
  v11 = *(v6 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v13 < 0xFFFFFFFF)
  {
    v14 = *v13;
  }

  if (v14 - 1 < 0)
  {
    *v12 = *v13;
    v12[1] = v13[1];
  }

  else
  {
    *v12 = *v13;
  }

  v15 = ~v7;
  v16 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 4) = *(v17 + 4);
  *v16 = v18;
  *(v16 + 5) = *(v17 + 5);
  *(v16 + 6) = *(v17 + 6);
  v25 = (v12 + 19) | 7;
  v19 = (v13 + 19) | 7;
  v20 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 16) = *(v21 + 16);
  v22 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v23 + 24);
  LODWORD(v25) = -1;
  if (v24 < 0xFFFFFFFF)
  {
    v25 = *(v23 + 24);
  }

  v26 = v25 + 1;

  if (v24)
  {
    v27 = v26 > 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 || v26)
  {
    v28 = *v23;
    v29 = *(v23 + 16);
    *(v22 + 32) = *(v23 + 32);
    *v22 = v28;
    *(v22 + 16) = v29;
  }

  else
  {
    *(v22 + 24) = v24;
    *(v22 + 32) = *(v23 + 32);
    (**(v24 - 8))(v22, v23, v24);
  }

  v30 = ((((((v11 + (v8 & v15)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v30) = *(a2 + v30);
  return a1;
}

void *assignWithCopy for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 24))(v9, v10);
  v11 = *(v6 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v12 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  else
  {
    v15 = *v12;
  }

  v16 = v15 - 1;
  v17 = *v13;
  if (*v13 < 0xFFFFFFFF)
  {
    v14 = *v13;
  }

  v18 = v14 - 1;
  if ((v16 & 0x80000000) == 0)
  {
    if (v18 < 0)
    {
      *v12 = v17;
      v12[1] = v13[1];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v18 & 0x80000000) == 0)
  {

LABEL_11:
    *v12 = *v13;
    goto LABEL_12;
  }

  *v12 = v17;

  v12[1] = v13[1];

LABEL_12:
  v19 = ~v7;
  v20 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v21 = v13 + 19;
  v22 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v20 + 4) = *(v22 + 4);
  *v20 = v23;
  *(v20 + 5) = *(v22 + 5);
  *(v20 + 6) = *(v22 + 6);
  v24 = (v12 + 19) | 7;
  v25 = v21 | 7;
  v26 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = ((v21 | 7) + 7) & 0xFFFFFFFFFFFFFFF8;
  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

  *(v26 + 16) = *(v27 + 16);
  v28 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v28 + 24);
  LODWORD(v31) = -1;
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  else
  {
    v32 = *(v28 + 24);
  }

  v33 = v32 + 1;
  v34 = *(v29 + 24);
  if (v34 < 0xFFFFFFFF)
  {
    v31 = *(v29 + 24);
  }

  v35 = v31 + 1;
  if (v34)
  {
    v36 = v35 >= 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = !v36;
  if (v30)
  {
    v38 = v33 > 1;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    if (!v37)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v37)
  {
    if (!v33)
    {
      goto LABEL_35;
    }

LABEL_36:
    v39 = *v29;
    v40 = *(v29 + 16);
    *(v28 + 32) = *(v29 + 32);
    *v28 = v39;
    *(v28 + 16) = v40;
    goto LABEL_37;
  }

  if (v33)
  {
LABEL_32:
    if (!v35)
    {
      *(v28 + 24) = v34;
      *(v28 + 32) = *(v29 + 32);
      (**(v34 - 8))(v28, (v25 + 31) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v35)
  {
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_36;
  }

  __swift_assign_boxed_opaque_existential_1(v28, ((v25 + 31) & 0xFFFFFFFFFFFFFFF8));
LABEL_37:
  v41 = ((((((v11 + (v8 & v19)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v41) = *(a2 + v41);
  return a1;
}

void *initializeWithTake for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32) + 7;
  v11 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v12 += 19;
  *v11 = v13;
  v11 += 19;
  v14 = v11 & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 4) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v14 = v15;
  *(v14 + 5) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 5);
  *(v14 + 6) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 6);
  v11 |= 7uLL;
  v12 |= 7uLL;
  v16 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 16) = *(v17 + 16);
  *v16 = v18;
  v19 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v20;
  v21 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v22;
  *(v19 + 16) = v21;
  v23 = ((((((v10 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

void *assignWithTake for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 40))(v9, v10);
  v11 = *(v6 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v12 < 0xFFFFFFFF)
  {
    v14 = *v12;
  }

  if (v14 - 1 >= 0)
  {
    goto LABEL_8;
  }

  LODWORD(v15) = -1;
  if (*v13 < 0xFFFFFFFF)
  {
    v15 = *v13;
  }

  if (v15 - 1 >= 0)
  {

LABEL_8:
    *v12 = *v13;
    goto LABEL_9;
  }

  *v12 = *v13;

  v12[1] = v13[1];

LABEL_9:
  v16 = ~v7;
  v17 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *v17 = v19;
  *(v17 + 5) = *(v18 + 5);
  *(v17 + 6) = *(v18 + 6);
  v20 = (v12 + 19) | 7;
  v21 = (v13 + 19) | 7;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);

  *(v22 + 16) = *(v23 + 16);
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v24 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = ((((((v11 + (v8 & v16)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v28) = *(a2 + v28);
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyBaseModifier.Transform(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 8] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void storeEnumTagSinglePayload for LegacyBaseModifier.Transform(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
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

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 8] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 0x10) = 0;
          *((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) = a2 & 0x7FFFFFFF;
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = 0;
        }

        else
        {
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t partial apply for closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LegacyBaseModifier.Transform() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return closure #1 in LegacyBaseModifier.Transform.body(content:)(a1, a2, v8, v5, v6);
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>()
{
  if (!lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>)
  {
    v0 = type metadata accessor for TransactionalPreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority()
{
  result = lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority;
  if (!lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority);
  }

  return result;
}

unint64_t destroy for ToolbarItemVisibilityPriority(unint64_t *a1)
{
  result = *a1;
  if (result >= 3)
  {
  }

  return result;
}

unint64_t *assignWithCopy for ToolbarItemVisibilityPriority(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;
    }

    else
    {

      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v4;
    if (v4 >= 3)
    {
    }
  }

  return a1;
}

unint64_t *assignWithTake for ToolbarItemVisibilityPriority(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result >= 3)
  {
    if (v2 >= 3)
    {
      *result = v2;
      v4 = result;

      return v4;
    }

    else
    {
      v3 = result;

      result = v3;
      *v3 = v2;
    }
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemVisibilityPriority(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemVisibilityPriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t *assignWithTake for ToolbarItemVisibilityPriority.Storage(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage()
{
  result = lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage;
  if (!lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SecondaryNavigationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
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
    v12 = *(v11 + 24);
    LODWORD(v13) = -1;
    if (v12 < 0xFFFFFFFF)
    {
      v13 = *(v11 + 24);
    }

    v14 = v13 + 1;
    if (v12)
    {
      v15 = v14 > 1;
    }

    else
    {
      v15 = 0;
    }

    if (v15 || v14)
    {
      v16 = *v11;
      v17 = *(v11 + 16);
      *(v10 + 32) = *(v11 + 32);
      *v10 = v16;
      *(v10 + 16) = v17;
    }

    else
    {
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v11 + 32);
      (**(v12 - 8))();
    }
  }

  return v3;
}

uint64_t assignWithCopy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v9 = *(v5 + 40) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 24);
  LODWORD(v9) = -1;
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  else
  {
    v10 = *(v6 + 24);
  }

  v11 = v10 + 1;
  v12 = *(v7 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v13 = v9 + 1;
  if (v12)
  {
    v14 = v13 >= 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  if (v8)
  {
    v16 = v11 > 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_25:
    v17 = *v7;
    v18 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v17;
    *(v6 + 16) = v18;
    return a1;
  }

  if (v11)
  {
LABEL_21:
    if (!v13)
    {
      *(v6 + 24) = v12;
      *(v6 + 32) = *(v7 + 32);
      (**(v12 - 8))(v6, v7);
      return a1;
    }

    goto LABEL_25;
  }

  if (v13)
  {
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_25;
  }

  __swift_assign_boxed_opaque_existential_1(v6, v7);
  return a1;
}

uint64_t initializeWithTake for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithTake for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  }

  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for SecondaryNavigationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) < 2)
    {
      LODWORD(v17) = 0;
    }

    if (v17 >= 2)
    {
      return (v17 - 1);
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

double storeEnumTagSinglePayload for SecondaryNavigationModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
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
  if (v6 < 0x7FFFFFFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      *(v19 + 32) = 0;
      result = 0.0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *v19 = a2 - 2147483646;
    }

    else
    {
      *(v19 + 24) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t SecondaryNavigationModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationLinkPresentedValue?(v2 + *(a2 + 36), &v14);
  if (v15 == 1)
  {
    outlined destroy of AnyAccessibilityValue?(&v14, &lazy cache variable for type metadata for NavigationLinkPresentedValue?);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(&v14, &v16);
    v4.i64[0] = 0;
    v5 = v17;
    if (!*(&v17 + 1))
    {
      v5 = 0;
    }

    *&v17 = v5;
    v3.i64[0] = *(&v17 + 1);
    v6 = vandq_s8(v16, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v3, v4)).i64[0], 0));
    v7 = v18;
    if (!*(&v17 + 1))
    {
      v7 = 0;
    }

    v16 = v6;
    v18 = v7;
    outlined destroy of NavigationLinkPresentedValue(&v14);
  }

  swift_getWitnessTable();
  v8 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.onPlatformContainerSecondaryNavigation(value:action:)(&v16, 0, 0, v8, WitnessTable);
  outlined destroy of AnyAccessibilityValue?(&v16, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?);
  v10 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier();
  v11 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v14, v10, v11);
  v12 = *(*(v10 - 8) + 8);
  v12(&v14, v10);
  static ViewBuilder.buildExpression<A>(_:)(&v16, v10, v11);
  return v12(&v16, v10);
}

void *initializeBufferWithCopyOfBuffer for BridgedListState.ScrollTarget(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = a1 + v8;
    v11 = a2 + v8;
    *v10 = *v11;
    v10[16] = v11[16];
    *(a1 + v9) = *(a2 + v9);
  }

  return a1;
}

uint64_t destroy for BridgedListState.ScrollTarget(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithCopy for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = *v9;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithTake for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for BridgedListState(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
      memcpy(v8, v9, *(*(v12 - 8) + 64));
    }

    else
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 16))(v8, v9, v14);
      v15 = *(v10 + 20);
      v16 = &v8[v15];
      v17 = &v9[v15];
      *v16 = *v17;
      v16[16] = v17[16];
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    v18 = a3[6];
    v19 = a3[7];
    v20 = v4 + v18;
    v21 = a2 + v18;
    v20[112] = v21[112];
    v22 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v22;
    v23 = *(v21 + 4);
    v24 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v24;
    v25 = *(v21 + 3);
    *(v20 + 2) = *(v21 + 2);
    *(v20 + 3) = v25;
    *(v20 + 4) = v23;
    *(v4 + v19) = *(a2 + v19);
  }

  return v4;
}

void *assignWithCopy for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v30 = type metadata accessor for IndexPath();
      (*(*(v30 - 8) + 24))(v7, v8, v30);
      v31 = *(v9 + 20);
      v32 = &v7[v31];
      v33 = &v8[v31];
      v34 = *v33;
      v32[16] = v33[16];
      *v32 = v34;
      v7[*(v9 + 24)] = v8[*(v9 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v7, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 16))(v7, v8, v14);
  v15 = *(v9 + 20);
  v16 = &v7[v15];
  v17 = &v8[v15];
  v18 = *v17;
  v16[16] = v17[16];
  *v16 = v18;
  v7[*(v9 + 24)] = v8[*(v9 + 24)];
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_7:
  v20 = a3[6];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v25;
  *v21 = v23;
  *(v21 + 1) = v24;
  v26 = *(v22 + 4);
  v27 = *(v22 + 5);
  v28 = *(v22 + 6);
  v21[112] = v22[112];
  *(v21 + 5) = v27;
  *(v21 + 6) = v28;
  *(v21 + 4) = v26;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void *initializeWithTake for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = *(v9 + 20);
    v14 = &v7[v13];
    v15 = &v8[v13];
    *v14 = *v15;
    v14[16] = v15[16];
    v7[*(v9 + 24)] = v8[*(v9 + 24)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = a3[7];
  v18 = a1 + v16;
  v19 = a2 + v16;
  v18[112] = v19[112];
  v20 = *(v19 + 6);
  *(v18 + 5) = *(v19 + 5);
  *(v18 + 6) = v20;
  v21 = *(v19 + 4);
  v22 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v22;
  v23 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v23;
  *(v18 + 4) = v21;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

void *assignWithTake for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 40))(v7, v8, v28);
      v29 = *(v9 + 20);
      v30 = &v7[v29];
      v31 = &v8[v29];
      *v30 = *v31;
      v30[16] = v31[16];
      v7[*(v9 + 24)] = v8[*(v9 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v7, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 32))(v7, v8, v14);
  v15 = *(v9 + 20);
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[16] = v17[16];
  v7[*(v9 + 24)] = v8[*(v9 + 24)];
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_7:
  v19 = a3[6];
  v20 = a3[7];
  v21 = a1 + v19;
  v22 = a2 + v19;
  v21[112] = v22[112];
  v23 = *(v22 + 6);
  *(v21 + 5) = *(v22 + 5);
  *(v21 + 6) = v23;
  v24 = *(v22 + 4);
  v25 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v25;
  v26 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v26;
  *(v21 + 4) = v24;
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 48;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for ListScrollable();
  v12 = v11[9];
  v13 = type metadata accessor for ListScrollable.DataSourceProvider();
  result = (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  *&a6[v11[10]] = a3;
  *&a6[v11[11]] = a4;
  *&a6[v11[12]] = a5;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListCoreOptions and conformance ListCoreOptions()
{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ListScrollViewProvider@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BridgedListState.commit(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BridgedListState.CommitMutation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v8 = AGGraphGetAttributeGraph();
    AGGraphRef.viewGraph()();

    outlined init with copy of BridgedListState(v2, v6 + *(v4 + 20));
    *v6 = a1;
    v9[15] = 1;
    lazy protocol witness table accessor for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();

    return outlined destroy of BridgedListState.ScrollTarget(v6, type metadata accessor for BridgedListState.CommitMutation);
  }

  return result;
}

uint64_t closure #1 in BridgedListState.CommitMutation.apply()(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BridgedListState.CommitMutation(0);
  outlined init with copy of BridgedListState(a2 + *(v6 + 20), v5);
  AGGraphSetValue();
  return outlined destroy of BridgedListState.ScrollTarget(v5, type metadata accessor for BridgedListState);
}

uint64_t BridgedListState.CommitMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.CommitMutation?, type metadata accessor for BridgedListState.CommitMutation);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BridgedListState.CommitMutation(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, a2, v19);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v17);
    outlined destroy of TableRowList?(v12, &lazy cache variable for type metadata for BridgedListState.CommitMutation?, type metadata accessor for BridgedListState.CommitMutation, type metadata accessor for BridgedListState.ScrollTarget?);
    return 0;
  }

  v23(v12, 0, 1, v17);
  outlined init with take of BridgedListState(v12, v21, type metadata accessor for BridgedListState.CommitMutation);
  v24 = v32[1];
  v25 = type metadata accessor for BridgedListState(0);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    outlined destroy of BridgedListState.ScrollTarget(v21, type metadata accessor for BridgedListState.CommitMutation);
    return 0;
  }

  v26 = v24 + *(v17 + 20);
  v27 = *(v25 + 20);
  outlined init with copy of TableRowList?(v26 + v27, v9, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
  outlined assign with take of BridgedListState(&v21[*(v17 + 20)], v26);
  v28 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v9, 1, v28) != 1)
  {
    outlined init with copy of TableRowList?(v26 + v27, v6, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    v30 = v29(v6, 1, v28);
    outlined destroy of TableRowList?(v6, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    if (v30 == 1)
    {
      outlined assign with copy of BridgedListState.ScrollTarget?(v9, v26 + v27);
    }
  }

  outlined destroy of TableRowList?(v9, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
  return 1;
}

uint64_t ListScrollable.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of BridgedListState(WeakValue, a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(*(v2 - 8) + 56);

  return v5(a1, v4, 1, v2);
}

uint64_t ListScrollable.scrollView.getter()
{
  type metadata accessor for UIScrollView?(0, &lazy cache variable for type metadata for UIScrollView?, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8, type metadata accessor for NSObject);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 1;
  }

  v1 = *WeakValue;
  v2 = *WeakValue;
  return v1;
}

uint64_t ListScrollable.children.getter()
{
  type metadata accessor for [Scrollable]();
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

void *protocol witness for GraphMutation.apply() in conformance BridgedListState.CommitMutation()
{
  Attribute = AGWeakAttributeGetAttribute();
  v2 = Attribute == *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    v3 = Attribute;
  }

  v5[2] = v0;
  v6 = v2;
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI23AccessibilityAttachmentVAGE4TreeOG_s5NeverOytTg5(partial apply for closure #1 in BridgedListState.CommitMutation.apply(), v5, v3 | (v2 << 32));
}

uint64_t ListScrollable.dataSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ListScrollable.DataSourceProvider();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, v2 + *(a1 + 36), v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Optional();
    return (*(*(v11 - 8) + 32))(a2, v9, v11);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v14 = *(v5 - 8);
      (*(v14 + 16))(a2, WeakValue, v5);
      return (*(v14 + 56))(a2, 0, 1, v5);
    }

    else
    {
      return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
    }
  }
}

BOOL ListScrollable.scrollToIndex(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for BridgedListState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ListScrollable.state.getter(v10);
  v15 = (*(v12 + 48))(v10, 1, v11);
  if (v15 == 1)
  {
    outlined destroy of TableRowList?(v10, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, type metadata accessor for BridgedListState.ScrollTarget?);
  }

  else
  {
    outlined init with take of BridgedListState(v10, v14, type metadata accessor for BridgedListState);
    static Transaction.current.getter();
    v16 = type metadata accessor for IndexPath();
    (*(*(v16 - 8) + 16))(v7, a1, v16);
    v17 = Transaction.scrollTargetAnchor.getter();
    v28 = a2;
    v19 = v18;
    v21 = v20;
    v22 = Transaction.isAnimated.getter();
    v23 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v24 = &v7[*(v23 + 20)];
    *v24 = v17;
    *(v24 + 1) = v19;
    v24[16] = v21 & 1;
    v7[*(v23 + 24)] = v22 & 1;
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
    outlined assign with take of AnyHashable?(v7, &v14[*(v11 + 20)], &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    v25 = *(v2 + *(v28 + 48));
    swift_beginAccess();
    v26 = *(v25 + 16) + 1;
    *(v25 + 16) = v26;
    *&v14[*(v11 + 28)] = v26;
    BridgedListState.commit(to:)(*v2);

    outlined destroy of BridgedListState.ScrollTarget(v14, type metadata accessor for BridgedListState);
  }

  return v15 != 1;
}

BOOL ListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v29 = a3;
  v6 = *(a2 + 16);
  v28 = type metadata accessor for Optional();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v27 - v8;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v4;
  ListScrollable.dataSource.getter(a2, v9);
  v17 = *(v6 - 8);
  if ((*(v17 + 48))(v9, 1, v6) == 1)
  {
    (*(v7 + 8))(v9, v28);
    (*(v14 + 56))(v12, 1, 1, v13);
    v18 = v31;
  }

  else
  {
    v18 = v31;
    (*(*(a2 + 24) + 136))(v30, v29, v31, v6);
    (*(v17 + 8))(v9, v6);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      v25 = ListScrollable.scrollToIndex(_:)(v16, a2);
      (*(v14 + 8))(v16, v13);
      return v25;
    }
  }

  outlined destroy of TableRowList?(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
  v19 = ListScrollable.children.getter();
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v19);
    v20 = v29;
    *(&v27 - 6) = v6;
    *(&v27 - 5) = v20;
    *(&v27 - 4) = *(a2 + 24);
    *(&v27 - 3) = v18;
    *(&v27 - 2) = v30;
    v33 = 0;
    v22 = (v21 + 32);
    v23 = *(v21 + 16) + 1;
    while (--v23)
    {
      v24 = v22 + 5;
      partial apply for closure #1 in ListScrollable.scroll<A>(to:)(&v33, v22);
      v22 = v24;
    }

    v25 = v33;
  }

  else
  {
    return 0;
  }

  return v25;
}

uint64_t ListScrollable.runScrollTest(_:scrollMode:)(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = ListScrollable.scrollView.getter();
  if (v4 >= 2)
  {
    v8[0] = v2;
    v8[1] = v3;
    v6 = v4;
    v5 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v4, v8, 0, 0);
    outlined consume of SheetBridge<SheetPreference.Key>??(v6);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t ListScrollable.runScrollTest(_:scrollMode:onComplete:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = ListScrollable.scrollView.getter();
  if (v8 >= 2)
  {
    v12[0] = v6;
    v12[1] = v7;
    v10 = v8;
    v9 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v8, v12, a3, a4);
    outlined consume of SheetBridge<SheetPreference.Key>??(v10);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t ListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = ListScrollable.scrollView.getter();
  if (v12 >= 2)
  {
    v18[0] = v10;
    v18[1] = v11;
    v14 = v12;
    outlined init with copy of PPTTestCase(a1, v17);
    v15 = swift_allocObject();
    outlined init with take of PPTTestCase(v17, (v15 + 2));
    v15[7] = v9;
    v15[8] = v8;
    v15[9] = a4;
    v15[10] = a5;

    outlined copy of AppIntentExecutor?(a4);
    v13 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v14, v18, partial apply for closure #1 in PPTTestCase.runScrollSubTest(_:subTestName:scrollMode:onComplete:), v15);

    outlined consume of SheetBridge<SheetPreference.Key>??(v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ListScrollable.mapFirstChild<A, B>(ofType:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a6;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v14 + 16))(v17, v6, a3, v19);
  v22 = swift_dynamicCast();
  (*(*(a4 - 8) + 56))(v13, v22 ^ 1u, 1, a4);
  v23 = *(a3 + 24);
  v36 = *(a3 + 16);
  v37 = a4;
  v38 = a5;
  v39 = v23;
  v40 = v32;
  v41 = v33;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v35, MEMORY[0x1E69E73E0], a5, v24, v21);
  (*(v11 + 8))(v13, v10);
  v25 = *(a5 - 8);
  v26 = *(v25 + 48);
  if (v26(v21, 1, a5) == 1)
  {
    (*(v25 + 56))(v34, 1, 1, a5);
    result = v26(v21, 1, a5);
    if (result != 1)
    {
      return (*(v30 + 8))(v21, v31);
    }
  }

  else
  {
    v28 = v34;
    (*(v25 + 32))(v34, v21, a5);
    return (*(v25 + 56))(v28, 0, 1, a5);
  }

  return result;
}

unint64_t ListScrollable.visibleHeaderFooterIDs.getter()
{
  v0 = type metadata accessor for IndexPath();
  v91 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v90 = v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v86 - v3;
  v96 = ListScrollable.scrollView.getter();
  if (v96 < 2)
  {
    goto LABEL_35;
  }

  type metadata accessor for UpdateCoalescingTableView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    outlined consume of SheetBridge<SheetPreference.Key>??(v96);
LABEL_35:
    v38 = ListScrollable.scrollView.getter();
    if (v38 < 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v39 = v38;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      v62 = v39;
LABEL_59:
      outlined consume of SheetBridge<SheetPreference.Key>??(v62);
      return MEMORY[0x1E69E7CC0];
    }

    v41 = v40;
    v87 = v39;
    v42 = &selRef_bundleIdentifier;
    v95 = *MEMORY[0x1E69DDC08];
    v43 = [v40 indexPathsForVisibleSupplementaryElementsOfKind_];
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = *(v44 + 16);
    v96 = v41;
    if (v45)
    {
      v46 = *(v91 + 16);
      v47 = *(v91 + 80);
      v86[1] = v44;
      v48 = v44 + ((v47 + 32) & ~v47);
      v92 = *(v91 + 72);
      v93 = v46;
      v94 = (v91 + 16);
      v49 = (v91 + 8);
      v10 = MEMORY[0x1E69E7CC0];
      v46(v4, v48, v0);
      while (1)
      {
        v50 = v95;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v52 = [v41 supplementaryViewForElementKind:v50 atIndexPath:isa];

        if (!v52)
        {
          goto LABEL_40;
        }

        type metadata accessor for ListCollectionViewCell(0);
        v53 = swift_dynamicCastClass();
        if (!v53)
        {
          break;
        }

        v54 = (v53 + direct field offset for ListCollectionViewCellBase.viewListID);
        v55 = *(v53 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
        if (v55)
        {
          v56 = v54[1];
          LODWORD(v89) = *v54;
          v57 = *(v55 + 16);
          swift_bridgeObjectRetain_n();
          if (v57)
          {
            v58 = *(v55 + 52);
            v88 = *(v55 + 32);

            swift_bridgeObjectRelease_n();
            if (v58)
            {
              v56 = -1;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
            v88 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          }

          v60 = *(v10 + 2);
          v59 = *(v10 + 3);
          if (v60 >= v59 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v10);
          }

          (*v49)(v4, v0);
          *(v10 + 2) = v60 + 1;
          v61 = &v10[16 * v60];
          *(v61 + 8) = v89;
          *(v61 + 9) = v56;
          *(v61 + 5) = v88;
          v41 = v96;
        }

        else
        {
          (*v49)(v4, v0);
        }

LABEL_41:
        v48 += v92;
        if (!--v45)
        {

          v42 = &selRef_bundleIdentifier;
          goto LABEL_62;
        }

        v93(v4, v48, v0);
      }

LABEL_40:
      (*v49)(v4, v0);
      goto LABEL_41;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_62:
    v63 = v42[407];
    v95 = *MEMORY[0x1E69DDC00];
    v64 = [v41 v63];
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = *(v65 + 16);
    v67 = v90;
    if (!v66)
    {
LABEL_81:

      v37 = v87;
LABEL_82:
      outlined consume of SheetBridge<SheetPreference.Key>??(v37);
      return v10;
    }

    v68 = *(v91 + 16);
    v69 = *(v91 + 80);
    v89 = v65;
    v70 = v65 + ((v69 + 32) & ~v69);
    v93 = *(v91 + 72);
    v94 = v68;
    v71 = (v91 + 8);
    v91 += 16;
    v68(v90, v70, v0);
    while (1)
    {
      v72 = v95;
      v73 = IndexPath._bridgeToObjectiveC()().super.isa;
      v74 = [v96 supplementaryViewForElementKind:v72 atIndexPath:v73];

      if (!v74)
      {
        goto LABEL_65;
      }

      type metadata accessor for ListCollectionViewCell(0);
      v75 = swift_dynamicCastClass();
      if (!v75)
      {
        break;
      }

      v76 = (v75 + direct field offset for ListCollectionViewCellBase.viewListID);
      v77 = *(v75 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
      if (v77)
      {
        v78 = v76[1];
        LODWORD(v92) = *v76;
        v79 = *(v77 + 16);
        swift_bridgeObjectRetain_n();
        if (v79)
        {
          v80 = *(v77 + 32);
          v81 = *(v77 + 52);

          swift_bridgeObjectRelease_n();
          if (v81)
          {
            v78 = -1;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v80 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v83 = *(v10 + 2);
        v82 = *(v10 + 3);
        if (v83 >= v82 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v10);
        }

        v84 = v90;
        (*v71)(v90, v0);
        *(v10 + 2) = v83 + 1;
        v85 = &v10[16 * v83];
        v67 = v84;
        *(v85 + 8) = v92;
        *(v85 + 9) = v78;
        *(v85 + 5) = v80;
      }

      else
      {
        (*v71)(v67, v0);
      }

LABEL_66:
      v70 += v93;
      if (!--v66)
      {
        goto LABEL_81;
      }

      v94(v67, v70, v0);
    }

LABEL_65:
    (*v71)(v67, v0);
    goto LABEL_66;
  }

  v6 = v5;
  result = [v5 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    if (result)
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = &selRef_bundleIdentifier;
      v12 = &selRef_bundleIdentifier;
      do
      {
        v13 = [v6 v11[112]];
        if (v13)
        {
          v14 = v13;
          type metadata accessor for ListTableViewHeaderFooter();
          v15 = swift_dynamicCastClass();
          if (v15 && (v16 = (v15 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID), (v17 = *(v15 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8)) != 0))
          {
            v18 = *v16;
            v19 = v16[1];
            v20 = *(v17 + 16);
            swift_bridgeObjectRetain_n();
            if (v20)
            {
              v20 = *(v17 + 32);
              v21 = *(v17 + 52);

              swift_bridgeObjectRelease_n();
              if (v21)
              {
                v19 = -1;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            }

            v23 = *(v10 + 2);
            v22 = *(v10 + 3);
            if (v23 >= v22 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v10);
            }

            *(v10 + 2) = v23 + 1;
            v24 = &v10[16 * v23];
            *(v24 + 8) = v18;
            *(v24 + 9) = v19;
            *(v24 + 5) = v20;
            v11 = &selRef_bundleIdentifier;
            v12 = &selRef_bundleIdentifier;
          }

          else
          {
          }
        }

        v25 = [v6 v12[113]];
        if (v25)
        {
          v26 = v25;
          type metadata accessor for ListTableViewHeaderFooter();
          v27 = swift_dynamicCastClass();
          if (v27 && (v28 = (v27 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID), (v29 = *(v27 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8)) != 0))
          {
            v30 = *v28;
            v31 = v28[1];
            v32 = *(v29 + 16);
            swift_bridgeObjectRetain_n();
            if (v32)
            {
              v32 = *(v29 + 32);
              v33 = *(v29 + 52);

              swift_bridgeObjectRelease_n();
              if (v33)
              {
                v31 = -1;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            }

            v35 = *(v10 + 2);
            v34 = *(v10 + 3);
            if (v35 >= v34 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v10);
            }

            *(v10 + 2) = v35 + 1;
            v36 = &v10[16 * v35];
            *(v36 + 8) = v30;
            *(v36 + 9) = v31;
            *(v36 + 5) = v32;
            v11 = &selRef_bundleIdentifier;
            v12 = &selRef_bundleIdentifier;
          }

          else
          {
          }
        }

        ++v9;
      }

      while (v8 != v9);
      v37 = v96;
      goto LABEL_82;
    }

    v62 = v96;
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

uint64_t ListScrollable.indexPathForHeaderFooterID(_:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for IndexPath();
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v82 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 1);
  v92 = ListScrollable.scrollView.getter();
  v93 = v3;
  if (v92 < 2)
  {
    goto LABEL_7;
  }

  type metadata accessor for UpdateCoalescingTableView();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    outlined consume of SheetBridge<SheetPreference.Key>??(v92);
LABEL_7:
    v18 = ListScrollable.scrollView.getter();
    if (v18 < 2)
    {
      return (*(v95 + 56))(v88, 1, 1, v3);
    }

    v19 = v18;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      v62 = v19;
      goto LABEL_99;
    }

    v21 = v20;
    v83 = v5;
    v84 = v19;
    v85 = v9;
    v22 = &selRef_bundleIdentifier;
    v92 = *MEMORY[0x1E69DDC08];
    v23 = [v20 indexPathsForVisibleSupplementaryElementsOfKind_];
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v24 + 16);
    v86 = v10;
    v91 = v25;
    v94 = v21;
    if (v25)
    {
      v26 = 0;
      result = v95;
      v90 = v24 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v89 = v95 + 16;
      v87 = v10 | (v85 << 32);
      v27 = (v95 + 8);
      while (1)
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          return result;
        }

        (*(v95 + 16))(v8, v90 + *(v95 + 72) * v26, v3);
        v28 = v92;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v30 = [v94 supplementaryViewForElementKind:v28 atIndexPath:isa];

        if (v30)
        {
          type metadata accessor for ListCollectionViewCell(0);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = *(v31 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
            if (!v32)
            {
              goto LABEL_22;
            }

            v33 = *(v31 + direct field offset for ListCollectionViewCellBase.viewListID);
            v34 = *(v32 + 16);
            swift_bridgeObjectRetain_n();
            if (v34)
            {
              v34 = *(v32 + 32);
              v35 = *(v32 + 52);

              swift_bridgeObjectRelease_n();
              v36 = v35 == 0;
              v3 = v93;
              if (v36)
              {
                v37 = v33 & 0xFFFFFFFF00000000;
              }

              else
              {
                v37 = 0xFFFFFFFF00000000;
              }

              v32 = v37 & 0xFFFFFFFF00000000 | v33;
              if (v34 == 1)
              {
LABEL_22:

                if (v11 == 1)
                {

                  outlined consume of SheetBridge<SheetPreference.Key>??(v84);
                  outlined consume of Text.LineStyle?(v32, 1);
                  goto LABEL_110;
                }

                v34 = 1;
LABEL_27:
                outlined consume of Text.LineStyle?(v32, v34);
                outlined consume of Text.LineStyle?(v87, v11);
                goto LABEL_12;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
              v32 = v33;
            }

            v99 = v32;
            v100 = v34;
            if (v11 != 1)
            {
              v96 = v86;
              v97 = v85;
              v98 = v11;

              outlined copy of Text.LineStyle?(v32, v34);
              v38 = MEMORY[0x18D003E10](&v99, &v96);

              outlined consume of Text.LineStyle?(v32, v34);
              if (v38)
              {

                outlined consume of SheetBridge<SheetPreference.Key>??(v84);
LABEL_110:
                v81 = v88;
                (*(v95 + 32))(v88, v8, v3);
                return (*(v95 + 56))(v81, 0, 1, v3);
              }

              goto LABEL_12;
            }

            outlined copy of Text.LineStyle?(v32, v34);

            goto LABEL_27;
          }
        }

LABEL_12:
        ++v26;
        result = (*v27)(v8, v3);
        if (v91 == v26)
        {

          v10 = v86;
          v21 = v94;
          v22 = &selRef_bundleIdentifier;
          goto LABEL_77;
        }
      }
    }

LABEL_77:
    v63 = v22[407];
    v92 = *MEMORY[0x1E69DDC00];
    v64 = [v21 v63];
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v83;
    v91 = *(v65 + 16);
    if (!v91)
    {
LABEL_98:

      v62 = v84;
      goto LABEL_99;
    }

    v67 = 0;
    result = v95;
    v90 = v65 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v89 = v95 + 16;
    v87 = v10 | (v85 << 32);
    v68 = (v95 + 8);
    while (1)
    {
      if (v67 >= *(v65 + 16))
      {
        goto LABEL_115;
      }

      (*(v95 + 16))(v66, v90 + *(v95 + 72) * v67, v3);
      v69 = v92;
      v70 = IndexPath._bridgeToObjectiveC()().super.isa;
      v71 = [v94 supplementaryViewForElementKind:v69 atIndexPath:v70];

      if (v71)
      {
        type metadata accessor for ListCollectionViewCell(0);
        v72 = swift_dynamicCastClass();
        if (v72)
        {
          v73 = *(v72 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
          if (!v73)
          {
            goto LABEL_90;
          }

          v74 = *(v72 + direct field offset for ListCollectionViewCellBase.viewListID);
          v75 = *(v73 + 16);
          swift_bridgeObjectRetain_n();
          if (v75)
          {
            v75 = *(v73 + 32);
            v76 = *(v73 + 52);

            swift_bridgeObjectRelease_n();
            v36 = v76 == 0;
            LODWORD(v10) = v86;
            if (v36)
            {
              v77 = v74 & 0xFFFFFFFF00000000;
            }

            else
            {
              v77 = 0xFFFFFFFF00000000;
            }

            v73 = v77 & 0xFFFFFFFF00000000 | v74;
            if (v75 == 1)
            {
LABEL_90:

              if (v11 == 1)
              {

                outlined consume of SheetBridge<SheetPreference.Key>??(v84);
                outlined consume of Text.LineStyle?(v73, 1);
                v3 = v93;
LABEL_112:
                v81 = v88;
                (*(v95 + 32))(v88, v66, v3);
                return (*(v95 + 56))(v81, 0, 1, v3);
              }

              v75 = 1;
              goto LABEL_95;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
            v73 = v74;
          }

          v99 = v73;
          v100 = v75;
          if (v11 == 1)
          {

            outlined copy of Text.LineStyle?(v73, v75);

LABEL_95:
            outlined consume of Text.LineStyle?(v73, v75);
            outlined consume of Text.LineStyle?(v87, v11);
            v3 = v93;
            goto LABEL_80;
          }

          v96 = v10;
          v97 = v85;
          v98 = v11;

          outlined copy of Text.LineStyle?(v73, v75);
          v78 = MEMORY[0x18D003E10](&v99, &v96);

          outlined consume of Text.LineStyle?(v73, v75);
          v3 = v93;
          if (v78)
          {

            outlined consume of SheetBridge<SheetPreference.Key>??(v84);
            goto LABEL_112;
          }
        }

        else
        {
        }
      }

LABEL_80:
      ++v67;
      result = (*v68)(v66, v3);
      if (v91 == v67)
      {
        goto LABEL_98;
      }
    }
  }

  v13 = v12;
  result = [v12 numberOfSections];
  if (result < 0)
  {
    goto LABEL_116;
  }

  v94 = result;
  if (!result)
  {
LABEL_73:
    v62 = v92;
LABEL_99:
    outlined consume of SheetBridge<SheetPreference.Key>??(v62);
    return (*(v95 + 56))(v88, 1, 1, v3);
  }

  v15 = 0;
  v16 = v10 | (v9 << 32);
  v17 = v94;
  while (1)
  {
    v41 = [v13 headerViewForSection_];
    if (!v41)
    {
      goto LABEL_55;
    }

    v42 = v41;
    type metadata accessor for ListTableViewHeaderFooter();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v44 = (v43 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID);
      v45 = *(v43 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8);
      if (!v45)
      {

        if (v11 == 1)
        {
LABEL_101:
          outlined consume of Text.LineStyle?(v16, 1);
LABEL_102:
          v79 = v88;
          IndexPath.init(index:)();
          goto LABEL_106;
        }

        v51 = 0;
LABEL_45:
        outlined copy of Text.LineStyle?(v16, v11);

        v49 = 1;
        v3 = v93;
LABEL_49:
        outlined consume of Text.LineStyle?(v16, v11);
        outlined consume of Text.LineStyle?(v51, v49);
        goto LABEL_55;
      }

      v46 = *v44;
      v47 = HIDWORD(*v44);
      v48 = *(v45 + 16);
      swift_bridgeObjectRetain_n();

      if (v48)
      {
        v49 = *(v45 + 32);
        v50 = *(v45 + 52);

        swift_bridgeObjectRelease_n();
        if (v50)
        {
          LODWORD(v47) = -1;
        }

        v51 = v46 | (v47 << 32);
        if (v11 == 1)
        {
          v3 = v93;
          v17 = v94;
          if (v49 == 1)
          {
            goto LABEL_101;
          }

          goto LABEL_48;
        }

        v99 = v16;
        v100 = v11;
        v17 = v94;
        if (v49 == 1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        if (v11 == 1)
        {
          v49 = 0;
          v51 = v46;
          v3 = v93;
LABEL_48:

          goto LABEL_49;
        }

        v49 = 0;
        v99 = v16;
        v100 = v11;
      }

      v96 = v46;
      v97 = v47;
      v98 = v49;
      outlined copy of Text.LineStyle?(v16, v11);
      v52 = MEMORY[0x18D003E10](&v99, &v96);

      outlined consume of Text.LineStyle?(v16, v11);
      v3 = v93;
      if (v52)
      {
        goto LABEL_102;
      }
    }

LABEL_55:
    v53 = [v13 footerViewForSection_];
    if (!v53)
    {
      goto LABEL_33;
    }

    v42 = v53;
    type metadata accessor for ListTableViewHeaderFooter();
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      break;
    }

LABEL_32:

LABEL_33:
    if (v17 == ++v15)
    {
      goto LABEL_73;
    }
  }

  v55 = (v54 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID);
  v56 = *(v54 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8);
  if (v56)
  {
    v57 = *v55;
    v58 = HIDWORD(*v55);
    v59 = *(v56 + 16);
    swift_bridgeObjectRetain_n();

    if (v59)
    {
      v39 = *(v56 + 32);
      v60 = *(v56 + 52);

      swift_bridgeObjectRelease_n();
      if (v60)
      {
        LODWORD(v58) = -1;
      }

      v61 = v57 | (v58 << 32);
      if (v11 == 1)
      {
        v3 = v93;
        v17 = v94;
        if (v39 == 1)
        {
          goto LABEL_103;
        }

LABEL_69:

LABEL_70:
        outlined consume of Text.LineStyle?(v16, v11);
        outlined consume of Text.LineStyle?(v61, v39);
        goto LABEL_33;
      }

      v99 = v16;
      v100 = v11;
      v17 = v94;
      if (v39 == 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      if (v11 == 1)
      {
        v39 = 0;
        v61 = v57;
        v3 = v93;
        v17 = v94;
        goto LABEL_69;
      }

      v39 = 0;
      v99 = v16;
      v100 = v11;
      v17 = v94;
    }

    v96 = v57;
    v97 = v58;
    v98 = v39;
    outlined copy of Text.LineStyle?(v16, v11);
    v40 = MEMORY[0x18D003E10](&v99, &v96);

    outlined consume of Text.LineStyle?(v16, v11);
    v3 = v93;
    if (v40)
    {
      goto LABEL_104;
    }

    goto LABEL_32;
  }

  if (v11 != 1)
  {
    v61 = 0;
LABEL_66:
    outlined copy of Text.LineStyle?(v16, v11);

    v39 = 1;
    v3 = v93;
    goto LABEL_70;
  }

LABEL_103:
  outlined consume of Text.LineStyle?(v16, 1);
LABEL_104:
  result = [v13 numberOfRowsInSection_];
  if (__OFSUB__(result, 1))
  {
    goto LABEL_117;
  }

  v79 = v88;
  MEMORY[0x18D000680]((result - 1) & ~((result - 1) >> 63), v15);
LABEL_106:

  outlined consume of SheetBridge<SheetPreference.Key>??(v92);
  v80 = *(v95 + 56);

  return v80(v79, 0, 1, v3);
}

char *ListScrollable.visibleCollectionViewIDs.getter()
{
  v0 = ListScrollable.scrollView.getter();
  if (v0 >= 2)
  {
    v1 = v0;
    type metadata accessor for UpdateCoalescingTableView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 visibleCells];
      outlined consume of SheetBridge<SheetPreference.Key>??(v1);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
LABEL_61:
        v6 = __CocoaSet.count.getter();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = MEMORY[0x1E69E7CC0];
          do
          {
            v50 = v8;
            v9 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x18D00E9C0](v9, v4);
              }

              else
              {
                if (v9 >= *(v5 + 16))
                {
                  goto LABEL_58;
                }

                v10 = *(v4 + 8 * v9 + 32);
              }

              v11 = v10;
              v7 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              type metadata accessor for ListTableViewCell();
              v12 = swift_dynamicCastClass();
              if (v12)
              {
                v13 = (v12 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID);
                v14 = *(v12 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID + 8);
                if (v14)
                {
                  break;
                }
              }

              ++v9;
              if (v7 == v6)
              {
                goto LABEL_54;
              }
            }

            v15 = v13[1];
            v46 = *v13;
            v16 = *(v14 + 16);
            swift_bridgeObjectRetain_n();
            if (v16)
            {
              v17 = *(v14 + 52);
              v45 = *(v14 + 32);

              swift_bridgeObjectRelease_n();
              if (v17)
              {
                v15 = -1;
              }

              v48 = v15;
            }

            else
            {
              v48 = v15;

              swift_bridgeObjectRelease_n();
              v45 = 0;
            }

            v8 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
            }

            v19 = *(v8 + 2);
            v18 = *(v8 + 3);
            v20 = v48;
            if (v19 >= v18 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              v20 = v48;
              v8 = v22;
            }

            *(v8 + 2) = v19 + 1;
            v21 = &v8[16 * v19];
            *(v21 + 8) = v46;
            *(v21 + 9) = v20;
            *(v21 + 5) = v45;
          }

          while (v7 != v6);
          goto LABEL_65;
        }
      }

      else
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

LABEL_64:
      v8 = MEMORY[0x1E69E7CC0];
LABEL_65:

      v51 = v8;
      goto LABEL_66;
    }

    outlined consume of SheetBridge<SheetPreference.Key>??(v1);
  }

  v23 = ListScrollable.scrollView.getter();
  if (v23 >= 2)
  {
    v24 = v23;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = [v25 visibleCells];
      outlined consume of SheetBridge<SheetPreference.Key>??(v24);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
        v27 = __CocoaSet.count.getter();
        if (!v27)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v27 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_64;
        }
      }

      v28 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v50 = v8;
        v29 = v28;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x18D00E9C0](v29, v4);
          }

          else
          {
            if (v29 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v30 = *(v4 + 8 * v29 + 32);
          }

          v31 = v30;
          v28 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          type metadata accessor for ListCollectionViewCell(0);
          v32 = swift_dynamicCastClass();
          if (v32)
          {
            v33 = (v32 + direct field offset for ListCollectionViewCellBase.viewListID);
            v34 = *(v32 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
            if (v34)
            {
              break;
            }
          }

          ++v29;
          if (v28 == v27)
          {
LABEL_54:
            v8 = v50;
            goto LABEL_65;
          }
        }

        v35 = v33[1];
        v49 = *v33;
        v36 = *(v34 + 16);
        swift_bridgeObjectRetain_n();
        if (v36)
        {
          v37 = *(v34 + 52);
          v47 = *(v34 + 32);

          swift_bridgeObjectRelease_n();
          if (v37)
          {
            v35 = -1;
          }
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v47 = 0;
        }

        v8 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v39 = *(v8 + 2);
        v38 = *(v8 + 3);
        if (v39 >= v38 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v8);
          v40 = v35;
          v8 = v42;
        }

        else
        {
          v40 = v35;
        }

        *(v8 + 2) = v39 + 1;
        v41 = &v8[16 * v39];
        *(v41 + 8) = v49;
        *(v41 + 9) = v40;
        *(v41 + 5) = v47;
      }

      while (v28 != v27);
      goto LABEL_65;
    }

    outlined consume of SheetBridge<SheetPreference.Key>??(v24);
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v43 = ListScrollable.visibleHeaderFooterIDs.getter();
  specialized Array.append<A>(contentsOf:)(v43);
  return v51;
}

double ListScrollable.subviewClosestTo(rect:)@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI27ScrollableCollectionSubviewVSgWOi0_(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t ListScrollable.firstCollectionViewIndex(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = *a1;
  v10 = a1[1];
  ListScrollable.dataSource.getter(a2, v14 - v7);
  v11 = *(v4 - 8);
  if ((*(v11 + 48))(v8, 1, v4) == 1)
  {
    v12 = 0;
  }

  else
  {
    v14[0] = v9;
    v14[1] = v10;
    v12 = (*(*(a2 + 24) + 152))(v14, v4);
    v6 = v11;
    v5 = v4;
  }

  (*(v6 + 8))(v8, v5);
  return v12;
}

uint64_t ListScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  ListScrollable.dataSource.getter(a4, &v16 - v11);
  v13 = *(v8 - 8);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(*(a4 + 24) + 160))(a1, a2, a3, v8);
    v10 = v13;
    v9 = v8;
  }

  (*(v10 + 8))(v12, v9);
  return v14 & 1;
}

uint64_t ListScrollable.scroll(toCollectionViewID:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v54 = *(a5 + 16);
  v52 = type metadata accessor for Optional();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v49 - v7;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v59 = *(a1 + 4);
  v60 = v20;
  v67 = v20;
  v68 = v59;
  v58 = v21;
  v69 = v21;
  ListScrollable.indexPathForHeaderFooterID(_:)(&v67, v13);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    outlined destroy of TableRowList?(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
    ListScrollable.dataSource.getter(a5, v8);
    v23 = *(v54 - 8);
    if ((*(v23 + 48))(v8, 1) == 1)
    {
      (*(v51 + 8))(v8, v52);
      v24 = v53;
      (*(v15 + 56))(v53, 1, 1, v14);
    }

    else
    {
      v67 = v60;
      v68 = v59;
      v69 = v58;
      v26 = *(*(a5 + 24) + 144);
      v24 = v53;
      v52 = a5;
      v27 = v54;
      v26(&v67, v54);
      v28 = v52;
      (*(v23 + 8))(v8, v27);
      if (v22(v24, 1, v14) != 1)
      {
        v47 = v50;
        (*(v15 + 32))(v50, v24, v14);
        v25 = ListScrollable.scrollToIndex(_:)(v47, v28);
        (*(v15 + 8))(v47, v14);
        return v25 & 1;
      }
    }

    outlined destroy of TableRowList?(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
    v29 = ListScrollable.children.getter();
    if (!v29)
    {
      goto LABEL_18;
    }

    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v25 = 0;
      v32 = 0;
      v33 = v29 + 32;
      v34 = &lazy cache variable for type metadata for Scrollable;
      v35 = MEMORY[0x1E697DAE0];
      v36 = v31 - 1;
      v37 = MEMORY[0x1E697FA60];
      v38 = &lazy cache variable for type metadata for ScrollableCollection;
      v54 = v29;
      do
      {
        outlined init with copy of _Benchmark(v33, &v67);
        if (v25)
        {
          __swift_destroy_boxed_opaque_existential_1(&v67);
          v25 = 1;
          if (v36 == v32)
          {
            goto LABEL_21;
          }
        }

        else
        {
          outlined init with copy of _Benchmark(&v67, v63);
          type metadata accessor for CVarArg(0, v34);
          type metadata accessor for CVarArg(0, v38);
          if (swift_dynamicCast())
          {
            v39 = v36;
            v40 = v38;
            v41 = v37;
            v42 = v35;
            v43 = v34;
            v44 = *(&v65 + 1);
            v45 = v66;
            __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
            v61[0] = v60;
            v61[1] = v59;
            v62 = v58;
            v46 = v44;
            v34 = v43;
            v35 = v42;
            v37 = v41;
            v38 = v40;
            v36 = v39;
            v30 = v54;
            v25 = (*(v45 + 80))(v61, v55, v56, v57 & 1, v46, v45);
            __swift_destroy_boxed_opaque_existential_1(&v67);
            __swift_destroy_boxed_opaque_existential_1(&v64);
            if (v36 == v32)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v66 = 0;
            v64 = 0u;
            v65 = 0u;
            __swift_destroy_boxed_opaque_existential_1(&v67);
            outlined destroy of ScrollableCollection?(&v64);
            v25 = 0;
            if (v36 == v32)
            {
              goto LABEL_21;
            }
          }
        }

        ++v32;
        v33 += 40;
      }

      while (v32 < *(v30 + 16));
      __break(1u);
LABEL_18:
      v25 = 0;
      return v25 & 1;
    }

    v25 = 0;
LABEL_21:
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v25 = ListScrollable.scrollToIndex(_:)(v19, a5);
    (*(v15 + 8))(v19, v14);
  }

  return v25 & 1;
}

BOOL ExplicitIDFromViewListIDVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 60);
  v4 = *(a1 + 64);
  v5 = *(v4 + 16);

  if (v5)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 52);

    if (v6)
    {
      v3 = -1;
    }
  }

  else
  {
  }

  v10[0] = v2;
  v10[1] = v3;
  v11 = v5;
  v7 = v1[1];
  v12[0] = *v1;
  v12[1] = v7;

  v8 = MEMORY[0x18D003E10](v10, v12);

  if (v8)
  {
    _ViewList_View.viewID.getter();
    outlined assign with take of AnyHashable?(v10, (v1 + 2), &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], type metadata accessor for AnyAccessibilityValue?);
  }

  return (v8 & 1) == 0;
}

BOOL ExplicitIDOffsetVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *v1 + 1;
  *v1 = v2;
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(a1 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {
  }

  v12[0] = v3;
  v12[1] = v4;
  v13 = v6;
  v8 = *(v1 + 16);
  v11[0] = *(v1 + 8);
  v11[1] = v8;

  v9 = MEMORY[0x18D003E10](v12, v11);

  if (v9)
  {
    *(v1 + 24) = v2;
    *(v1 + 32) = 0;
  }

  return (v9 & 1) == 0;
}

BOOL ApplyCollectionViewIDsVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(a1 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {
  }

  v9[0] = v3;
  v9[1] = v4;
  v10 = v6;
  v2(v9, v1 + 16);

  return (*(v1 + 16) & 1) == 0;
}

uint64_t partial apply for closure #1 in ListScrollable.scroll<A>(to:)(_BYTE *a1, void *a2)
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    v5 = v2[3];
    v7 = v2[5];
    v6 = v2[6];
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    result = (*(v9 + 8))(v6, v5, v7, v8, v9);
  }

  *a1 = result & 1;
  return result;
}

uint64_t outlined assign with take of AnyHashable?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation()
{
  result = lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation;
  if (!lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation)
  {
    type metadata accessor for BridgedListState.CommitMutation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation);
  }

  return result;
}

uint64_t outlined destroy of BridgedListState.ScrollTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ScrollableCollection?(uint64_t a1)
{
  type metadata accessor for UIScrollView?(0, &lazy cache variable for type metadata for ScrollableCollection?, &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], type metadata accessor for CVarArg);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIScrollView?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for ResolvedTableRowIDs.RowIDVisitor, &protocol witness table for ResolvedTableRowIDs.RowIDVisitor, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for TableSections.Accumulator, &protocol witness table for TableSections.Accumulator, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for CollectionViewTableHeaderVisitor, &protocol witness table for CollectionViewTableHeaderVisitor, v4, v5);
}

{
  v9 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  type metadata accessor for TableContentVisitor<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableSections.FindMatchingID<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, MEMORY[0x1E697DE08], type metadata accessor for TableSections.FindMatchingID);
  return v6(a3, &v9, v7, &protocol witness table for TableSections.FindMatchingID<A>, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for ApplyCollectionViewIDsVisitor, &protocol witness table for ApplyCollectionViewIDsVisitor, v4, v5);
}

{
  v9 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  type metadata accessor for TableContentVisitor<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableContentVisitor<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for TableContentVisitor);
  return v6(a3, &v9, v7, &protocol witness table for TableContentVisitor<A>, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for TableSections.FindMatchingRow, &protocol witness table for TableSections.FindMatchingRow, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for AccessibilityRowAccumulator, &protocol witness table for AccessibilityRowAccumulator, v4, v5);
}

uint64_t _ViewList_ID.Canonical.init(id:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {

    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v6;
  return result;
}

double _s7SwiftUI27ScrollableCollectionSubviewVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
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

BOOL specialized ApplyCollectionViewIDsVisitor.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v9, 1, a4) == 1)
  {
    (*(v7 + 8))(v9, v6);
    outlined init with copy of TableRowList?(v29, &v31, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, type metadata accessor for AnyAccessibilityValue?);
    if (*(&v32 + 1))
    {
      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      v19 = v30;
      v20 = v30[1];
      *&v31 = *v30;
      *(&v31 + 1) = v20;
      LOBYTE(v32) = 0;
      MEMORY[0x1EEE9AC00](v20);
      *(&v29 - 4) = 0;
      *(&v29 - 3) = v34;
      *(&v29 - 2) = &v31;

      static Update.ensure<A>(_:)();
      outlined destroy of TableRowList(v34);
      v21 = *(v19 + 16) | v32;

      *(v19 + 16) = v21 & 1;
    }

    else
    {
      outlined destroy of TableRowList?(&v31, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, type metadata accessor for AnyAccessibilityValue?);
      v19 = v30;
    }
  }

  else
  {
    dispatch thunk of Identifiable.id.getter();
    (*(v18 + 8))(v9, a4);
    (*(v11 + 32))(v17, v13, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    static _ViewList_ID.explicit<A>(_:)();
    v22 = v34[0];
    v23 = DWORD1(v34[0]);
    v24 = *(&v34[0] + 1);
    v25 = *(*(&v34[0] + 1) + 16);

    if (v25)
    {
      v25 = *(v24 + 32);
      v26 = *(v24 + 52);

      swift_bridgeObjectRelease_n();
      if (v26)
      {
        v23 = -1;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v19 = v30;
    v27 = *v30;
    *&v34[0] = __PAIR64__(v23, v22);
    *(&v34[0] + 1) = v25;
    v27(v34, v30 + 2);
    (*(v11 + 8))(v17, AssociatedTypeWitness);
  }

  return (v19[2] & 1) == 0;
}

uint64_t _s7SwiftUI12TableRowListV9visitRows8applying4fromyxz_SitAA0cD7VisitorRzlFyyXEfU_AA022ApplyCollectionViewIDsJ0V_Tg5TA_0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v7 = v2;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(v5 + 8))(v3, &v7, &type metadata for ApplyCollectionViewIDsVisitor, &protocol witness table for ApplyCollectionViewIDsVisitor, v4, v5);
}

uint64_t type metadata completion function for ListScrollable.DataSourceProvider()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ListScrollable.DataSourceProvider(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v5 + 80) & 0xFC;
  if (v8 > 7 || (*(v5 + 80) & 0x100000) != 0 || (v7 + 1) > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v8 + 19) & ~v8 & 0x1FC));

    return v3;
  }

  v12 = *(a2 + v7);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v7 <= 3)
    {
      v14 = v7;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_28:
      v16 = (v15 | (v13 << (8 * v7))) + 2;
      v12 = v15 + 2;
      if (v7 < 4)
      {
        v12 = v16;
      }

      goto LABEL_30;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_28;
    }
  }

LABEL_30:
  if (v12 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(v3, a2, v6);
    }

    else
    {
      (*(v5 + 16))(v3, a2, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
    }

    *(v3 + v7) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v7) = 0;
  }

  return v3;
}

unsigned __int8 *destroy for ListScrollable.DataSourceProvider(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = result[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_20:
  if (v6 == 1)
  {
    v12 = *(*(a2 + 16) - 8);
    result = (*(v4 + 48))(result, 1, v3);
    if (!result)
    {
      v11 = *(v12 + 8);

      return v11(v2, v3);
    }
  }

  return result;
}

void *initializeWithCopy for ListScrollable.DataSourceProvider(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_21;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
      v14 = 1;
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      v14 = 1;
      (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
  }

  *(a1 + v7) = v14;
  return a1;
}

unsigned __int8 *assignWithCopy for ListScrollable.DataSourceProvider(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v19 = 0;
    *a1 = *a2;
  }

  a1[v8] = v19;
  return a1;
}