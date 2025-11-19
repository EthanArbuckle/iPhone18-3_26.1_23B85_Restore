uint64_t destroy for NavigableListModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 80) & 0xF8;
  v6 = v5 + 15;
  v7 = ~(v5 | 7);
  v8 = *(v3 + 64);
  v9 = ((((v5 + 15 + a1) & v7) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v9 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_30;
  }

  v10 = v4 == 0;
  v11 = ((v9 + v6) & v7);
  if (v10)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v8)
  {
    v12 = v8;
  }

  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v11 + v13);
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *v11;
      }

      else if (v16 == 3)
      {
        v17 = *v11 | (*(((v9 + v6) & v7) + 2) << 16);
      }

      else
      {
        v17 = *v11;
      }

LABEL_23:
      v18 = (v17 | (v15 << (8 * v13))) + 3;
      v14 = v17 + 3;
      if (v13 < 4)
      {
        v14 = v18;
      }

      goto LABEL_25;
    }

    if (v16)
    {
      v17 = *v11;
      goto LABEL_23;
    }
  }

LABEL_25:
  if (v14 == 2)
  {
LABEL_28:
    (*(v3 + 8))((v9 + v6) & v7, v2);
    goto LABEL_30;
  }

  if (v14 == 1)
  {
    if ((*(v3 + 48))((v9 + v6) & v7, 1, v2))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
}

uint64_t ToAnyListSelection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SelectionManagerBox();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return AnyListSelection.init<A>(_:)(v7, a2);
}

uint64_t AnyListSelection.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SelectionManagerBox();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = type metadata accessor for AnyListSelection.Storage();
  (*(v5 + 16))(v7, a1, v4);
  swift_allocObject();
  v9 = AnyListSelection.Storage.init(box:)(v7);
  a2[3] = v8;
  a2[4] = swift_getWitnessTable();
  *a2 = v9;
  return (*(v5 + 8))(a1, v4);
}

uint64_t type metadata completion function for AnyListSelection.Storage()
{
  result = type metadata accessor for SelectionManagerBox();
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

uint64_t AnyListSelection.Storage.init(box:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = type metadata accessor for SelectionManagerBox();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t instantiation function for generic protocol witness table for AnyListSelection.Storage<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for SelectionManagerBox(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = a1[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
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
        goto LABEL_22;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_22:
  if (v6 == 2)
  {
    v13 = *(v3 + 8);
LABEL_31:

    return v13(a1, v2);
  }

  if (v6 == 1)
  {
    v11 = a1;
    v14 = *(*(a2 + 16) - 8);
    result = (*(v3 + 48))();
    if (result)
    {
      return result;
    }

    v13 = *(v14 + 8);
    a1 = v11;
    goto LABEL_31;
  }
}

uint64_t View.optionalSelectionContainer<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v32 = a4;
  v33 = a6;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v31 = a2;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v11 + 16))(v13, a1, v10, v19);
  v22 = *(v9 - 8);
  if ((*(v22 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
  }

  else
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, v30, v23, v24);
    type metadata accessor for AsAnySelection();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();
    (*(v22 + 8))(v13, v9);
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  outlined assign with take of Binding<Selection>?(v36, v38);
  v25 = v32;
  MEMORY[0x18D00A570](v38, v31, &type metadata for PrimitiveSelectionContainerModifier, v32);
  outlined destroy of PrimitiveSelectionContainerModifier(v38);
  v34 = v25;
  v35 = &protocol witness table for PrimitiveSelectionContainerModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, WitnessTable);
  v27 = *(v15 + 8);
  v27(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v21, v14, WitnessTable);
  return (v27)(v21, v14);
}

uint64_t initializeWithCopy for ZoomPresentationTransitionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t Picker.init<A>(selection:content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a6;
  v44 = a9;
  v40 = a5;
  v41 = a4;
  v38 = a3;
  v39 = a2;
  v36 = a12;
  v42 = a10;
  v35 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v23 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v35 - v29;
  v31 = (*(v27 + 16))(&v35 - v29, a1, v26, v28);
  v39(v31);
  v32 = PickerBuilder.Content.init(_:)(v18, a7, a8, v35, v36);
  v33 = v37;
  v41(v32);
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v30, v25, v33, v43, v23, v44);
  return (*(v27 + 8))(a1, v26);
}

uint64_t getEnumTagSinglePayload for Toggle(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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

uint64_t AsAnySelection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 16);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void type metadata accessor for Binding<Selection>?()
{
  if (!lazy cache variable for type metadata for Binding<Selection>?)
  {
    _sSay7SwiftUI10Selectable_pGMaTm_0(255, &lazy cache variable for type metadata for Binding<Selection>, &lazy cache variable for type metadata for Selection, &protocol descriptor for Selection, MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Selection>?);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t outlined assign with take of Binding<Selection>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Selection>?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for [Selectable](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI10Selectable_pGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 initializeWithCopy for PrimitiveSelectionContainerModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 40);
    *(a1 + 40) = v3;
    v4 = v3;
    v5 = **(v3 - 8);

    v5(a1 + 16, a2 + 16, v4);
  }

  else
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<MenuStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t destroy for PrimitiveSelectionContainerModifier(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result + 16;

    return __swift_destroy_boxed_opaque_existential_1(v1);
  }

  return result;
}

void type metadata accessor for Binding<AnyListSelection>?()
{
  if (!lazy cache variable for type metadata for Binding<AnyListSelection>?)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyListSelection>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of Binding<AnyListSelection>?(uint64_t a1)
{
  type metadata accessor for Binding<AnyListSelection>?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ListValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for _ListValue() + 52);
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  v7 = type metadata accessor for _ListStyleConfiguration();
  return (*(*(v7 - 8) + 32))(a4 + v6, a2, v7);
}

uint64_t initializeWithCopy for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8 | 7;
  v11 = *(v6 + 48) + v10;
  v12 = ~v10;
  v13 = ((v11 + a1) & ~v10);
  v14 = ((v11 + a2) & ~v10);
  v15 = *(v8 + 64);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v16 < 0xFFFFFFFFuLL)
  {
    v26 = (v10 + 16) & v12;
    if (v9)
    {
      v27 = *(*(v7 - 8) + 64);
    }

    else
    {
      v27 = v15 + 1;
    }

    if (v27 > v15)
    {
      v15 = v27;
    }

    if (v15 <= 8)
    {
      v15 = 8;
    }

    memcpy(v13, v14, v15 + v26 + 1);
    return a1;
  }

  *v13 = *v14;
  v17 = (v13 + 15);
  *(v17 & 0xFFFFFFFFFFFFFFF8) = *v16;
  v18 = v10 + 8;
  v19 = ((v18 + (v17 & 0xFFFFFFFFFFFFFFF8)) & v12);
  v20 = ((v16 + v18) & v12);
  if (v9)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  if (v21 > v15)
  {
    v15 = v21;
  }

  if (v15 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v15;
  }

  v23 = *(v20 + v22);

  if (v23 >= 3)
  {
    if (v22 <= 3)
    {
      v24 = v22;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *v20;
      }

      else if (v24 == 3)
      {
        v25 = *v20 | (*(v20 + 2) << 16);
      }

      else
      {
        v25 = *v20;
      }

      goto LABEL_30;
    }

    if (v24)
    {
      v25 = *v20;
LABEL_30:
      v28 = (v25 | ((v23 - 3) << (8 * v22))) + 3;
      v29 = v25 + 3;
      if (v22 >= 4)
      {
        v23 = v29;
      }

      else
      {
        v23 = v28;
      }
    }
  }

  if (v23 == 2)
  {
    (*(v8 + 16))(v19, v20, v7);
    v30 = 2;
LABEL_41:
    *(v19 + v22) = v30;
    return a1;
  }

  if (v23 == 1)
  {
    if ((*(v8 + 48))(v20, 1, v7))
    {
      memcpy(v19, v20, v21);
    }

    else
    {
      (*(v8 + 16))(v19, v20, v7);
      (*(v8 + 56))(v19, 0, 1, v7);
    }

    v30 = 1;
    goto LABEL_41;
  }

  *v19 = *v20;
  *(v19 + v22) = 0;

  return a1;
}

uint64_t destroy for _ListValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  result = (*v4)();
  v6 = *(v4 + 56);
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((((v6 + a1 + v9) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 < 0xFFFFFFFFuLL)
  {
    return result;
  }

  v11 = *(v8 + 84);
  v22 = *(v7 - 8);
  v12 = *(v8 + 64);

  v13 = ((v10 + v9 + 8) & ~v9);
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 <= 8)
  {
    v14 = 8;
  }

  v15 = v13[v14];
  v16 = v15 - 3;
  if (v15 < 3)
  {
    v19 = v22;
    goto LABEL_25;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    v19 = v22;
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = *v13;
  }

  else
  {
    if (v17 == 2)
    {
      v18 = *v13;
    }

    else if (v17 == 3)
    {
      v18 = *v13 | (v13[2] << 16);
    }

    else
    {
      v18 = *v13;
    }

    v19 = v22;
  }

  v20 = (v18 | (v16 << (8 * v14))) + 3;
  v15 = v18 + 3;
  if (v14 < 4)
  {
    v15 = v20;
  }

LABEL_25:
  if (v15 == 2)
  {
LABEL_29:
    v21 = *(v19 + 8);

    return v21(v13, v7);
  }

  if (v15 == 1)
  {
    result = (*(v19 + 48))(v13, 1, v7);
    v19 = v22;
    if (result)
    {
      return result;
    }

    goto LABEL_29;
  }
}

uint64_t List<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  v4 = type metadata accessor for Binding();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for List();
  *(a2 + *(v5 + 56)) = 0;
  v6 = a2 + *(v5 + 60);
  *v6 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  swift_getWitnessTable();
  v8 = type metadata accessor for _ListStyleConfiguration();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t destroy for _ListStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~v4;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v6 + v4 + 8) & v5);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v6;
  if (*v6 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v6 + v4 + 8) & v5, v2);
  }

  return result;
}

uint64_t View.listStyle<A, B>(_:idiom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v26 = a5;
  v21[1] = a6;
  v22 = a1;
  v24 = a7;
  v25 = a3;
  v23 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListStyleWriter();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  type metadata accessor for InterfaceIdiomPredicate();
  v15 = type metadata accessor for StaticIf();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - v18;
  (*(v8 + 16))(v10, v22, a4, v17);
  (*(v8 + 32))(v14, v10, a4);
  ViewModifier.requiring<A>(_:)();
  (*(v12 + 8))(v14, v11);
  MEMORY[0x18D00A570](v19, v25, v15, v26);
  return (*(v16 + 8))(v19, v15);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdges:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = *(a4 + 16);
  v20[0] = a1;
  v20[1] = a2;
  v21 = a3;
  v22 = a6;
  v23 = a7;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v18[0] = v11;
  v18[1] = v12;
  v19 = v13;
  v14 = type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, v18, a5, 0, 1, 0, v14, v27);

  outlined copy of Environment<CGFloat?>.Content(v11, v12, v13);
  v15 = type metadata accessor for PopoverPresentationModifier();
  MEMORY[0x18D00A570](v27, a8, v15, a10);
  return (*(*(v15 - 8) + 8))(v27, v15);
}

unint64_t lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext()
{
  result = lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext);
  }

  return result;
}

uint64_t View.listStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v32 = a2;
  v33 = a7;
  v34 = a8;
  v35 = a3;
  v10 = *(a5 - 8);
  v30 = a1;
  v31 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ListStyleWriter();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  type metadata accessor for StyleContextAcceptsPredicate();
  v21 = type metadata accessor for StaticIf();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  (*(v13 + 16))(v16, v30, a4, v23);
  (*(v13 + 32))(v20, v16, a4);
  v26 = v31;
  v27 = v29;
  (*(v31 + 16))(v29, v32, a5);
  v38 = a5;
  v39 = v27;
  v37 = v33;
  ViewModifier.requiring<A>(_:)();
  (*(v18 + 8))(v20, v17);
  (*(v26 + 8))(v27, a5);
  MEMORY[0x18D00A570](v25, v35, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

uint64_t View.listStyle<A, B>(_:if:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22 = a4;
  v20[2] = a5;
  v21 = a2;
  v20[1] = a6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListStyleWriter();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for StaticIf();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v13, v10, a3);
  StaticIf<>.init<>(_:then:)();
  MEMORY[0x18D00A570](v18, v21, v14, v22);
  return (*(v15 + 8))(v18, v14);
}

uint64_t initializeWithCopy for PopoverConditionalStateProvider(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 72);
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
    (**(v6 - 8))(a1 + 40, a2 + 40, v6);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

uint64_t destroy for PopoverConditionalStateProvider(uint64_t a1)
{

  if (*(a1 + 64))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PopoverPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1608](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t _ListValue.Init2.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedList();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SidebarListBody.init(selection:options:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SidebarListBody();
  *(a4 + *(v9 + 52)) = a2;
  a3(v9, v10, v11, v12);
  v13 = a4 + *(v9 + 60);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t closure #1 in SidebarListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = closure #1 in closure #1 in SidebarListStyle.Body.value.getter(a1, a2, a3);
  *a4 = 0;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in SidebarListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for SidebarListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for SidebarListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  SidebarListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

void *initializeWithCopy for SidebarListBody(void *__dst, void *__src, uint64_t a3)
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
    v29 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v29 & v9, (v12 + v8 + 8) & v9, v6);
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
  v17 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 16;
  v21 = *(v19 + 80);
  v22 = (v17 + v21 + 8) & ~v21;
  v23 = (v18 + v21 + 8) & ~v21;
  (*(v19 + 16))(v22, v23);
  v24 = *(v20 + 48) + 7;
  v25 = (v24 + v22) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  LOBYTE(v23) = *(v26 + 8);
  outlined copy of Environment<Selector?>.Content(*v26, v23);
  *v25 = v27;
  *(v25 + 8) = v23;
  return __dst;
}

uint64_t NavigationStackReader.ExtractedRoot.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v28[1] = a2;
  v28[5] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = v10;
  v39 = v10;
  v40 = v11;
  v28[3] = v12;
  v41 = v12;
  v42 = v13;
  v14 = type metadata accessor for NavigationStackReader.ExtractedRoot();
  type metadata accessor for ReadDestinationsModifier();
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
  v28[4] = v15;
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v28 - v18;
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a3);
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v22 = *(result + 8);
  if (v22 == 6)
  {
    __break(1u);
  }

  else
  {
    v23 = *(result + 16);
    v24 = *result;
    v39 = 0;
    v40 = v24;
    v41 = v22;
    v42 = v23;
    v43 = 0;
    v44 = 1;
    View.readNavigationDestinations<A>(position:isActive:reader:)(&v39, 1, v14, a3, v14, a4);
    (*(v7 + 8))(v9, a3);
    NavigationStackReader.ExtractedRoot.authority.getter(v35);
    if (v36 == 2)
    {
      outlined destroy of NavigationAuthority??(v35);
      v37 = xmmword_18CD633F0;
      v38 = 0;
    }

    else
    {
      outlined init with copy of NavigationAuthority?(v35, v29);
      if (v30 == 1)
      {
        v37 = xmmword_18CD633F0;
        v38 = 0;
      }

      else
      {
        outlined init with take of NavigationAuthority(v29, &v37);
      }

      outlined destroy of NavigationAuthority?(v35);
    }

    v33 = a4;
    v34 = &protocol witness table for ReadDestinationsModifier<A>;
    WitnessTable = swift_getWitnessTable();
    v26 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey);
    v31 = WitnessTable;
    v32 = v26;
    v27 = swift_getWitnessTable();
    View.processNavigationDestinations<A>(authority:processor:)(&v37, v14, v16, v14, v27);
    outlined destroy of NavigationAuthority?(&v37);
    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

unint64_t initializeWithCopy for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 16))((*(v9 + 80) + 17 + v5) & ~*(v9 + 80), (*(v9 + 80) + 17 + v6) & ~*(v9 + 80));
  return a1;
}

uint64_t destroy for SidebarListBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = (a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(*(a2 + 16) - 8);
  v13 = v12 + 8;
  v14 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  (*(v12 + 8))(v14);
  v15 = (*(v13 + 56) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);

  return outlined consume of Environment<Selector?>.Content(v16, v17);
}

uint64_t destroy for SidebarListStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *((a1 & 0xFFFFFFFFFFFFFFF8) + 16));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t protocol witness for Projection.get(base:) in conformance AnyNavigationPath.ToHeterogeneous@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *a2 = v9;
  outlined copy of NavigationPath.Representation(v3, v4, v5, v6);
}

uint64_t SidebarListBody.CollectionViewBody.init(content:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 113) = 0;
  v8 = type metadata accessor for SidebarListBody.CollectionViewBody();
  (*(*(a3 - 8) + 32))(a4 + *(v8 + 64), a1, a3);
  v9 = *(v8 + 68);
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  return (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
}

uint64_t SidebarListBody.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[3] = a2;
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v22[2] = v4;
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v22[0] = type metadata accessor for SidebarListBody.CollectionViewBody();
  v34 = v6;
  v35 = v5;
  v36 = v8;
  v37 = v7;
  type metadata accessor for SidebarListBody.TableViewRoot();
  v22[1] = type metadata accessor for _VariadicView.Tree();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v24 = v6;
  v25 = v5;
  v26 = v8;
  v27 = v7;
  v28 = v2;
  v22[6] = v6;
  v22[7] = v5;
  v22[8] = v8;
  v22[9] = v7;
  v23 = v2;
  v16 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = v8;
  v21 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v29 = v16;
  v30 = WitnessTable;
  v31 = v21;
  v18 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t closure #1 in SidebarListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a1;
  v34 = a6;
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v29 = a4;
  v16 = type metadata accessor for SidebarListBody.CollectionViewBody();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v23 = type metadata accessor for SidebarListBody();
  v24 = v31;
  (*(v12 + 16))(v15, v31 + *(v23 + 56), a2);
  v25 = v30;
  (*(v32 + 16))(v30, v24, v33);
  SidebarListBody.CollectionViewBody.init(content:selection:)(v15, v25, a2, v19);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v27 = *(v17 + 8);
  v27(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, WitnessTable);
  return (v27)(v22, v16);
}

uint64_t initializeWithCopy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v47 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v8 + 25);
  v10 = *(v8 + 24);
  outlined copy of Environment<CGFloat?>.Content(v9, v10, v5);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 25) = v5;
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 33) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  LOBYTE(v5) = *(v12 + 8);
  outlined copy of Environment<Selector?>.Content(*v12, v5);
  *v11 = v13;
  *(v11 + 8) = v5;
  v14 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 49) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  v22 = *(v15 + 48);
  v23 = *(v15 + 56);
  v44 = *(v15 + 64);
  v45 = *(v15 + 65);
  outlined copy of Environment<ListPadding>.Content(*v15, v17, v18, v19, v20, v21, v22, v23, v44, v45);
  *v14 = v16;
  *(v14 + 8) = v17;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  *(v14 + 48) = v22;
  *(v14 + 56) = v23;
  *(v14 + 64) = v44;
  *(v14 + 65) = v45;
  v24 = *(*(a3 + 16) - 8);
  v25 = v24 + 16;
  v26 = *(v24 + 80);
  v27 = (v26 + 66 + v14) & ~v26;
  v28 = (v26 + 66 + v15) & ~v26;
  (*(v24 + 16))(v27, v28);
  v29 = *(a3 + 24);
  v30 = *(v25 + 48);
  v31 = *(v29 - 8);
  v32 = *(v31 + 80);
  v33 = (v32 | 7) + v30;
  v34 = ((v33 + v27) & ~(v32 | 7));
  v35 = ((v33 + v28) & ~(v32 | 7));
  v36 = ~v32;
  v37 = *(v31 + 64);
  v38 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v31 + 84) & 0x80000000) == 0)
  {
    v39 = *v38;
    if (*v38 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    if (v39 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v34 = *v35;
    v40 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v38;
    v41 = v40 + v32 + 8;
    v42 = *(v31 + 16);

    v42(v41 & v36, (v38 + v32 + 8) & v36, v29);
    return v47;
  }

  if (!(*(v31 + 48))((v38 + v32 + 8) & v36))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v34, v35, ((v32 + 16) & ~v32) + v37);
  return v47;
}

uint64_t outlined copy of Environment<ListPadding>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

uint64_t PopoverConditionalStateProvider.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  _ss11AnyHashableVSgMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

uint64_t destroy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  outlined consume of Environment<Selector?>.Content(*((v3 + 33) & 0xFFFFFFFFFFFFFFF8), *(((v3 + 33) & 0xFFFFFFFFFFFFFFF8) + 8));
  v4 = (v3 + 49) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (v4 + *(v5 + 80) + 66) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(v6 + 56);
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + (v11 | 7)) & ~(v11 | 7);
  v13 = ~v11;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v10;
  if ((*(v10 + 84) & 0x80000000) != 0)
  {
    result = (*(v10 + 48))((v14 + v11 + 8) & v13);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v15 = *v14;
  if (*v14 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  result = (v15 + 1);
  if (v15 == -1)
  {
LABEL_7:

    v17 = *(v18 + 8);

    return v17((v14 + v11 + 8) & v13, v9);
  }

  return result;
}

uint64_t View.readNavigationDestinations<A>(position:isActive:reader:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DestinationsModifier = type metadata accessor for ReadDestinationsModifier();
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v17;
  v21 = v15;
  v22 = v16;
  v23 = a2;
  MEMORY[0x18D00A570](v20, a4, DestinationsModifier, a6);
  *(swift_allocObject() + 16) = a2;
  v19[0] = a6;
  v19[1] = &protocol witness table for ReadDestinationsModifier<A>;
  swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();

  return (*(v12 + 8))(v14, v11);
}

double NavigationStackReader.ExtractedRoot.authority.getter@<D0>(uint64_t a1@<X8>)
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

uint64_t outlined consume of Environment<ListPadding>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MenuStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #2 in SidebarListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v38 = a6;
  v32 = a3;
  type metadata accessor for Binding();
  v35 = type metadata accessor for Optional();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v31 - v11;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v13 = type metadata accessor for SidebarListBody.TableViewRoot();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = v37;
  (*(v10 + 16))(v12, v37, v35, v20);
  v24 = v12;
  v26 = v32;
  v25 = v33;
  v27 = v34;
  SidebarListBody.TableViewRoot.init(selection:)(v24, v15);
  v39 = a2;
  v40 = v26;
  v41 = v25;
  v42 = v27;
  v43 = v23;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v45 = v25;
  v28 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v16, v28);
  v29 = *(v36 + 8);
  v29(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, v28);
  return (v29)(v22, v16);
}

uint64_t SidebarListBody.TableViewRoot.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  v4 = *(type metadata accessor for SidebarListBody.TableViewRoot() + 60);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 32))(a2 + v4, a1, v5);
}

unint64_t lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  }

  return result;
}

uint64_t initializeWithCopy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v8, v7);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 9) = v7;
  v9 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v6) = *(v10 + 9);
  v12 = *(v10 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v10, v12, v6);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 9) = v6;
  v13 = (v9 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v10 + 17) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  LOBYTE(v6) = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v6);
  *v13 = v15;
  *(v13 + 8) = v6;
  v16 = *(a3 + 24);
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = (v18 | 7) + 9;
  v20 = ((v19 + v13) & ~(v18 | 7));
  v21 = ((v19 + v14) & ~(v18 | 7));
  v22 = ~v18;
  v23 = *(v17 + 64);
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v17 + 84) & 0x80000000) == 0)
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if (v25 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v20 = *v21;
    v26 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v24;
    v27 = v26 + v18 + 8;
    v28 = *(v17 + 16);

    v28(v27 & v22, (v24 + v18 + 8) & v22, v16);
    return a1;
  }

  if (!(*(v17 + 48))((v24 + v18 + 8) & v22))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v20, v21, ((v18 + 16) & ~v18) + v23);
  return a1;
}

uint64_t closure #1 in closure #2 in SidebarListBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for SidebarListBody();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 56), a2, a4);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

unint64_t instantiation function for generic protocol witness table for MenuStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v4, *(v4 + 8), *(v4 + 9));
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 9) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  }

  return result;
}

double EnvironmentValues.defaultMinListRowHeight.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v3 == 1)
  {
    return EnvironmentValues.systemDefaultMinListRowHeight.getter();
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t sub_18BF85A5C()
{
  lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

double EnvironmentValues.systemDefaultMinListRowHeight.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>, &type metadata for SystemDefaultMinListRowHeightKey, &protocol witness table for SystemDefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v6 != 1)
  {
    return v5;
  }

  v5 = v1;
  v6 = v2;
  EnvironmentValues.dynamicTypeSize.getter();
  specialized static ListMetrics.Row.scaledTextOnlyRowHeight(dynamicTypeSize:)(&v4);
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>, &type metadata for SystemDefaultMinListRowHeightKey, &protocol witness table for SystemDefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized static ListMetrics.Row.scaledTextOnlyRowHeight(dynamicTypeSize:)(unsigned __int8 *a1)
{
  v1 = *a1;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    if (v1 > 5)
    {
      v3 = MEMORY[0x1E69DDC50];
    }

    else
    {
      v3 = qword_1E7238660[v1];
    }

    v4 = *v3;
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    if (v6)
    {
      static _GraphInputs.defaultInterfaceIdiom.getter();
      static Solarium.isEnabled(for:)();
      [v6 _bodyLeading];

      return;
    }
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for MenuStyleModifier<PlatformItemListMenuStyle>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for MenuStyleModifier<PlatformItemListMenuStyle>()
{
  if (!lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>)
  {
    lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle();
    v0 = type metadata accessor for MenuStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle);
  }

  return result;
}

double EnvironmentValues.listPadding.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  LOBYTE(v17[0]) = 0;
  MEMORY[0x18D007050](v17 + 1);
  *v23 = *(v17 + 1);
  *&v23[16] = *(&v17[1] + 1);
  *&v23[32] = *(&v17[2] + 1);
  *&v23[48] = *(&v17[3] + 1);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListPaddingAnchorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = v22;
  v20 = v4;
  v21 = v3;
  v6 = EnvironmentValues.contentMarginProxy.getter(v17);
  v7 = MEMORY[0x18D007050](&v14, v6);
  v14 = v17[4];
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 9) = *(v19 + 9);
  v12[0] = v17[4];
  v12[1] = v18;
  v13[0] = v19[0];
  *(v13 + 9) = *(v19 + 9);
  MEMORY[0x18D007000](v11, v7);
  if (MEMORY[0x18D006FC0](v12, v11))
  {
    v14 = v17[0];
    v15 = v17[1];
    v16[0] = v17[2];
    *(v16 + 9) = *(&v17[2] + 9);
  }

  *&v23[7] = v14;
  *&v23[23] = v15;
  *&v23[39] = v16[0];
  *&v23[48] = *(v16 + 9);
  v8 = *&v23[16];
  *(a1 + 1) = *v23;
  *(a1 + 17) = v8;
  result = *&v23[32];
  v10 = *&v23[48];
  *(a1 + 33) = *&v23[32];
  *a1 = v5;
  *(a1 + 49) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle;
  if (!lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle;
  if (!lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedMenuStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t assignWithCopy for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

double static ToolbarAppearanceModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *v26 = *a2;
  *&v26[12] = *(a2 + 12);
  v5 = *(a2 + 28);
  v28 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v31 = *(a2 + 60);
  v32 = *(a2 + 76);
  v27 = v5;
  v29 = v6;
  v30 = v7;
  a3(&v17);
  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v25 = v8;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey>);
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v24 = v9;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey>);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v23 = v10;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey>);
  v11 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v22 = v11;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey>);
  v12 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v21 = v12;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey>);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v20 = v13;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey>);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey>);
  v14 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v19 = v14;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *a4 = v17;
  result = v18;
  a4[1] = v18;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t SidebarListBody.CollectionViewBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v74 = *(a1 + 24);
  v4 = v74;
  type metadata accessor for Binding();
  v75 = type metadata accessor for Optional();
  v72 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v57[-v5];
  v60 = *(a1 + 16);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = v8;
  *(&v9 + 1) = v4;
  v83 = *(a1 + 32);
  v95 = v9;
  v96 = v83;
  v10 = type metadata accessor for CollectionViewListRoot();
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v57[-v11];
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  v70 = v12;
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  v69 = v10;
  v67 = type metadata accessor for ModifiedContent();
  v73 = type metadata accessor for StaticIf();
  v81 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v57[-v13];
  v77 = type metadata accessor for ModifiedContent();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v57[-v16];
  v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57[-v22];
  v25 = *(v2 + 40);
  v59 = *(v2 + 32);
  v24 = v59;
  v58 = v25;
  v26 = specialized Environment.wrappedValue.getter(v59, v25);
  v65 = v18;
  v27 = *(v18 + 104);
  v28 = MEMORY[0x1E69DC258];
  if ((v26 & 1) == 0)
  {
    v28 = MEMORY[0x1E69DC238];
  }

  v29 = *v28;
  v30 = v23;
  v63 = v17;
  v64 = v23;
  v27(v23, v29, v17);
  if (specialized Environment.wrappedValue.getter(v24, v25))
  {
    v31 = 44.0;
  }

  else
  {
    v31 = 28.0;
  }

  v32 = v62;
  v33 = v60;
  (*(v61 + 16))(v62, v2 + *(a1 + 64), v60);
  (*(v18 + 16))(v20, v30, v17);
  v34 = specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  v35 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8)));
  if ((v36 & 1) == 0)
  {
    v31 = v35;
  }

  v37 = v71;
  (*(v72 + 16))(v71, v2 + *(a1 + 68), v75);
  v38 = *(v2 + 96);
  v97 = *(v2 + 80);
  v98 = v38;
  v99 = *(v2 + 112);
  v39 = *(v2 + 64);
  v95 = *(v2 + 48);
  v96 = v39;
  specialized Environment.wrappedValue.getter(v94);
  v40 = v68;
  v41 = v74;
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v32, v20, v37, v94, v33, v68, v34, v31);
  v84 = v33;
  v85 = v41;
  v86 = v83;
  v42 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  v43 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  v92 = &protocol witness table for CollectionViewListRoot<A, B>;
  v93 = v43;
  WitnessTable = swift_getWitnessTable();
  v44 = v66;
  v45 = v69;
  View.staticIf<A, B>(_:then:)();
  (*(v79 + 8))(v40, v45);
  LOBYTE(v41) = specialized Environment.wrappedValue.getter(v59, v58);
  v89 = v42;
  v90 = WitnessTable;
  v91 = &protocol witness table for CollectionViewListRoot<A, B>;
  v46 = v73;
  v47 = swift_getWitnessTable();
  LOBYTE(v94[0]) = AccessibilitySidebarListModifier.init(isInExpandedSplitView:)(v41 & 1) & 1;
  v48 = type metadata accessor for AccessibilitySidebarListModifier();
  v49 = swift_getWitnessTable();
  v87 = v47;
  v88 = &protocol witness table for AccessibilityAttachmentModifier;
  v50 = v77;
  v51 = swift_getWitnessTable();
  v52 = v76;
  View.accessibilityConfiguration<A>(_:)(v94, v46, v48, v47, v49);
  (*(v81 + 8))(v44, v46);
  (*(v65 + 8))(v64, v63);
  v53 = v78;
  static ViewBuilder.buildExpression<A>(_:)(v52, v50, v51);
  v54 = *(v80 + 8);
  v54(v52, v50);
  static ViewBuilder.buildExpression<A>(_:)(v53, v50, v51);
  return (v54)(v53, v50);
}

void type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ToolbarAppearanceModifier.PreferenceValue();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v22 = a4[2];
  v23 = a4[3];
  v24 = *(a4 + 64);
  v20 = *a4;
  v21 = a4[1];
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v13 = type metadata accessor for CollectionViewListRoot();
  v14 = v13[13];
  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  *(a6 + v13[14]) = a7;
  *(a6 + v13[15]) = a8;
  v16 = v13[16];
  type metadata accessor for Binding();
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 32))(a6 + v16, a3, v17);
  v18 = a6 + v13[17];
  *(v18 + 32) = v22;
  *(v18 + 48) = v23;
  *(v18 + 64) = v24;
  result = v21;
  *v18 = v20;
  *(v18 + 16) = v21;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>);
    }
  }
}

void specialized Environment.wrappedValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 65))
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    *(a1 + 49) = *(v1 + 49);
  }

  else
  {
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v6, &lazy cache variable for type metadata for Environment<ListPadding>, &type metadata for ListPadding, MEMORY[0x1E697DCC0]);
    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646461507473694CLL, 0xEB00000000676E69, &v6);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v1, &lazy cache variable for type metadata for Environment<ListPadding>, &type metadata for ListPadding);
  }
}

{
  v3 = *v1;
  if (*(v1 + 33) == 1)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 8);
    v6 = *(v1 + 32);
  }

  else
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F280, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v1, &lazy cache variable for type metadata for Environment<ToolbarItemMetrics?>, &lazy cache variable for type metadata for ToolbarItemMetrics?, &type metadata for ToolbarItemMetrics);

    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6 & 1;
}

void type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for Menu();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for AccessibilityLargeContentViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    }
  }
}

uint64_t AccessibilitySidebarListModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (one-time initialization token for sidebar != -1)
  {
    swift_once();
  }

  View.accessibilityLabel(_:isEnabled:)(static Text.Accessibility.sidebar, unk_1EAB09680, byte_1EAB09688, qword_1EAB09690, a2 & 1, a3, a4);
  v17[1] = a4;
  v17[2] = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

uint64_t one-time initialization function for sidebar()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  static Text.Accessibility.sidebar = result;
  unk_1EAB09680 = v3;
  byte_1EAB09688 = v4 & 1;
  qword_1EAB09690 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>()
{
  result = lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>;
  if (!lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>);
  }

  return result;
}

uint64_t View.accessibilityLabel(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3 & 1;
  v10 = a4;
  return View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityLabel(_:isEnabled:), v8, a6, a7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v22 + 8;
  v24 = *(v21 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v18 + v22 + 8) & v24);
  v26 = ((v19 + v22 + 8) & v24);
  v27 = ~v22;
  v28 = (v22 + 16) & ~v22;
  v29 = *(v21 + 64);
  v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v21 + 84) & 0x80000000) == 0)
  {
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v28 + v29;
    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v33 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v30;
    v41 = v33 + v23;
    v34 = *(v21 + 16);

    v34(v41 & v27, (v30 + v23) & v27, v20);
    goto LABEL_8;
  }

  v32 = v28 + v29;
  if (!(*(v21 + 48))((v30 + v23) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, v32);
LABEL_8:
  v35 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v35 = *v36;
  v37 = *(v36 + 16);
  v38 = *(v36 + 32);
  v39 = *(v36 + 48);
  *(v35 + 64) = *(v36 + 64);
  *(v35 + 32) = v38;
  *(v35 + 48) = v39;
  *(v35 + 16) = v37;
  return a1;
}

char *specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter()
{
  v0 = *(AGGraphGetValue() + 64);
  v1 = *(v0 + 2);
  if (v1)
  {
  }

  else
  {
    v21 = 0uLL;
    *v22 = 0;
    *&v22[8] = xmmword_18CD9F780;

    AGGraphGetValue();
    outlined init with copy of ToolbarPlacement.Storage(&v21, &v18);
    if (*(&v19 + 1) == 7)
    {
      outlined destroy of ToolbarPlacement(&v21);
      v2 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    else
    {
      outlined destroy of ToolbarPlacement.Storage(&v18);
      v14 = *v22;
      v15 = v21;
      v2 = *&v22[16];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
    }

    v4 = *(v0 + 2);
    v3 = *(v0 + 3);
    v1 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v0);
    }

    *(v0 + 2) = v1;
    v5 = &v0[40 * v4];
    *(v5 + 2) = v15;
    *(v5 + 3) = v14;
    *(v5 + 8) = v2;
  }

  v6 = (v0 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ToolbarPlacement(v6, &v21);
    v16[0] = v21;
    v16[1] = *v22;
    v17 = *&v22[16];
    if (*&v22[8] == 7)
    {
      outlined destroy of ToolbarPlacement.Storage(v16);
    }

    else
    {
      v18 = v21;
      v19 = *v22;
      v20 = *&v22[16];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v9 + 1;
      v10 = &v7[40 * v9];
      v11 = v18;
      v12 = v19;
      *(v10 + 8) = v20;
      *(v10 + 2) = v11;
      *(v10 + 3) = v12;
    }

    v6 += 40;
    --v1;
  }

  while (v1);

  return v7;
}

unint64_t lazy protocol witness table accessor for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>)
  {
    type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<DefaultMenuStyle>, lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle, &type metadata for DefaultMenuStyle, type metadata accessor for MenuStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>);
  }

  return result;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = a2 + 32; ; i += 40)
  {
    outlined init with copy of ToolbarPlacement.Role(i, v15);
    outlined init with copy of ToolbarPlacement.Role(v15, v10);
    outlined init with copy of ToolbarPlacement.Role(a1, &v12);
    if (v11 > 2)
    {
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          if (*(&v13 + 1) == 3)
          {
            goto LABEL_32;
          }
        }

        else if (*(&v13 + 1) == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v11 == 5)
      {
        if (*(&v13 + 1) == 5)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v11 == 6)
      {
        if (*(&v13 + 1) == 6)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (!v11)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (*(&v13 + 1) == 2)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_19:
    outlined init with copy of ToolbarPlacement.Role(v10, v9);
    if (*(&v13 + 1) < 7uLL)
    {
      outlined destroy of AnyHashable(v9);
LABEL_26:
      outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v10, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
      goto LABEL_27;
    }

    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x18D00E7E0](v9, v7);
    outlined destroy of AnyHashable(v7);
    outlined destroy of AnyHashable(v9);
    outlined destroy of ToolbarPlacement.Role(v10);
    if (v5)
    {
      goto LABEL_33;
    }

LABEL_27:
    outlined destroy of ToolbarPlacement.Role(v15);
    if (!--v2)
    {
      return 0;
    }
  }

  if (*(&v13 + 1) != 1)
  {
    goto LABEL_26;
  }

LABEL_32:
  outlined destroy of ToolbarPlacement.Role(v10);
LABEL_33:
  outlined destroy of ToolbarPlacement.Role(v15);
  return 1;
}

uint64_t destroy for CollectionViewListRoot(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  v8 = v7 + 8;
  v9 = (v5 + a1 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v7 + 8))(v9, v6);
  v10 = (((*(v8 + 56) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a2 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ~v13;
  v15 = ((((v10 + (v13 | 7) + 8) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v12;
  if ((*(v12 + 84) & 0x80000000) != 0)
  {
    result = (*(v12 + 48))((v15 + v13 + 8) & v14);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v16 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_7:

    v18 = *(v19 + 8);

    return v18((v15 + v13 + 8) & v14, v11);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle()
{
  result = lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle;
  if (!lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle);
  }

  return result;
}

uint64_t CollectionViewListRoot.TransformContentEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a1);
  EnvironmentValues.systemDefaultMinListRowHeight.getter();
  type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>();
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>);

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *&v102 = 0;
  v100 = 0u;
  v101 = 0u;
  outlined init with copy of ViewGraphBridgeProperties?(&v100, &v95, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
  if (*(&v96 + 1) == 7)
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v100, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v15 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
    v16 = *(v15 + 2);
    if (!v16)
    {
    }
  }

  else
  {
    type metadata accessor for [ContentScrollViewBox](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    v18 = v95;
    v19 = v96;
    *(v17 + 16) = xmmword_18CD63400;
    *(v17 + 32) = v18;
    *(v17 + 48) = v19;
    *(v17 + 64) = v97;
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v100, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v15 = v17;
    v16 = *(v17 + 16);
    if (!v16)
    {
    }
  }

  v20 = 0;
  v21 = (v15 + 32);
  v78 = v16 - 1;
  v80 = a4;
  v79 = v15;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(v21, v112);
    v22 = *a1;
    if (*(*a1 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v112), (v24 & 1) != 0))
    {
      v25 = *(v22 + 56) + 80 * v23;
      v27 = *(v25 + 32);
      v26 = *(v25 + 48);
      v28 = *(v25 + 16);
      *&v103[9] = *(v25 + 57);
      v100 = *v25;
      v101 = v28;
      v102 = v27;
      *v103 = v26;
      v29 = *&v103[16];
      v31 = *(&v100 + 1);
      v30 = v28;
      v89 = v100;
      v32 = BYTE1(v100);
      v33 = *(v25 + 2);
      v111 = *(v25 + 6);
      v110 = v33;
      v34 = BYTE8(v28);
      v35 = *(v25 + 25);
      *(v109 + 3) = *(v25 + 28);
      v109[0] = v35;
      v87 = v27;
      v108 = BYTE8(v27);
      v36 = *(v25 + 41);
      *(v107 + 3) = *(v25 + 44);
      v107[0] = v36;
      v91 = v26;
      v106 = BYTE8(v26);
      v37 = BYTE9(v26);
      v38 = BYTE10(v26);
      v39 = *(v25 + 59);
      v105 = *(v25 + 63);
      v104 = v39;
      v84 = v103[24];
      outlined init with copy of ToolbarAppearanceConfiguration(&v100, &v95);
      v93 = v31;
      v94 = v29;
      v92 = v30;
      v40 = v87;
    }

    else
    {
      v84 = 0;
      v93 = 0;
      v94 = 0;
      v38 = 0;
      v91 = 0;
      v92 = 0;
      v40 = 0;
      v34 = 0;
      v32 = 0;
      v108 = 1;
      v89 = 1;
      v106 = 1;
      v37 = 2;
    }

    if (a3 == 3)
    {
      v41 = v32;
    }

    else
    {
      v41 = a3;
    }

    v88 = v41;
    if (v80)
    {

      v92 = v80;
    }

    if (a5 == 4)
    {
      v42 = v34;
    }

    else
    {
      v42 = a5;
    }

    if ((a7 & 1) == 0)
    {
      v108 = 0;
      v40 = a6;
    }

    if ((a9 & 1) == 0)
    {
      v106 = 0;
      v91 = a8;
    }

    if (a10 == 2)
    {
      v43 = v37;
    }

    else
    {
      v43 = a10;
    }

    if (a11 == 3)
    {
      v44 = v38;
    }

    else
    {
      v44 = a11;
    }

    v85 = v44;
    v86 = v43;
    if (a12)
    {

      v93 = a12;
    }

    if (a13)
    {

      v94 = a13;
    }

    v45 = a14 == 3 ? v84 : a14;
    outlined init with copy of ToolbarPlacement.Role(v112, v99);
    LOBYTE(v100) = v89;
    BYTE1(v100) = v88;
    *(&v100 + 2) = v110;
    WORD3(v100) = v111;
    *(&v100 + 1) = v93;
    *&v101 = v92;
    v46 = v42;
    BYTE8(v101) = v42;
    *(&v101 + 9) = v109[0];
    HIDWORD(v101) = *(v109 + 3);
    v47 = v40;
    *&v102 = v40;
    v48 = v108;
    BYTE8(v102) = v108;
    HIDWORD(v102) = *(v107 + 3);
    *(&v102 + 9) = v107[0];
    *v103 = v91;
    v49 = v106;
    v103[8] = v106;
    v103[9] = v86;
    v103[10] = v85;
    *&v103[11] = v104;
    v103[15] = v105;
    *&v103[16] = v94;
    v103[24] = v45;
    outlined init with copy of ToolbarAppearanceConfiguration(&v100, &v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *a1;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
    v54 = v51[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      break;
    }

    v58 = v53;
    if (v51[3] < v57)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_51;
      }

LABEL_40:
      if (v58)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v67 = v52;
    specialized _NativeDictionary.copy()();
    v52 = v67;
    if (v58)
    {
LABEL_41:
      v60 = (v51[7] + 80 * v52);
      v95 = *v60;
      v61 = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      *&v98[9] = *(v60 + 57);
      v97 = v62;
      *v98 = v63;
      v96 = v61;
      v65 = v102;
      v64 = *v103;
      v66 = v101;
      *(v60 + 57) = *&v103[9];
      v60[2] = v65;
      v60[3] = v64;
      v60[1] = v66;
      *v60 = v100;
      outlined destroy of ToolbarAppearanceConfiguration(&v95);
      outlined destroy of ToolbarPlacement.Role(v99);
      outlined destroy of ToolbarPlacement.Role(v112);
      goto LABEL_45;
    }

LABEL_43:
    v51[(v52 >> 6) + 8] |= 1 << v52;
    v68 = v52;
    outlined init with copy of ToolbarPlacement.Role(v99, v51[6] + 40 * v52);
    v69 = (v51[7] + 80 * v68);
    v70 = *&v103[9];
    v72 = v102;
    v71 = *v103;
    v69[1] = v101;
    v69[2] = v72;
    v69[3] = v71;
    *(v69 + 57) = v70;
    *v69 = v100;
    outlined destroy of ToolbarPlacement.Role(v99);
    outlined destroy of ToolbarPlacement.Role(v112);
    v73 = v51[2];
    v56 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v56)
    {
      goto LABEL_50;
    }

    v51[2] = v74;
LABEL_45:
    *a1 = v51;
    LOBYTE(v95) = v89;
    BYTE1(v95) = v88;
    *(&v95 + 2) = v110;
    WORD3(v95) = v111;
    *(&v95 + 1) = v93;
    *&v96 = v92;
    BYTE8(v96) = v46;
    *(&v96 + 9) = v109[0];
    HIDWORD(v96) = *(v109 + 3);
    *&v97 = v47;
    BYTE8(v97) = v48;
    HIDWORD(v97) = *(v107 + 3);
    *(&v97 + 9) = v107[0];
    *v98 = v91;
    v98[8] = v49;
    v98[9] = v86;
    v98[10] = v85;
    v98[15] = v105;
    *&v98[11] = v104;
    *&v98[16] = v94;
    v98[24] = v45;
    outlined destroy of ToolbarAppearanceConfiguration(&v95);
    if (v78 == v20)
    {
    }

    ++v20;
    v21 += 40;
    if (v20 >= *(v79 + 2))
    {
      __break(1u);
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t *a1)
{
  return specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 73), HIBYTE(*(v1 + 73)), *(v1 + 80), *(v1 + 88), *(v1 + 96));
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD90770);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD9F780);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD6A6D0);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD79D60);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD7DD20);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD79540);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MenuStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>);
    }
  }
}

uint64_t SidebarListStyle.BodyContent.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  if (*v1 == 1)
  {
    specialized Environment.wrappedValue.getter(*(v1 + 8), *(v1 + 16));
  }

  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(a1 + 40);
  v19 = *(a1 + 24);
  static ViewBuilder.buildExpression<A>(_:)(v1 + v18, v3, v19);
  sub_18BF89A3C(v16, v13);
  v24[0] = v13;
  (*(v4 + 16))(v6, v9, v3);
  v24[1] = v6;
  v23[0] = v11;
  v23[1] = v3;
  v22[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?();
  v22[1] = v19;
  static ViewBuilder.buildBlock<each A>(_:)(v24, 2uLL, v23);
  v20 = *(v4 + 8);
  v20(v9, v3);
  sub_18BF89AA0(v16);
  v20(v6, v3);
  return sub_18BF89AA0(v13);
}

uint64_t sub_18BF89A3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BF89AA0(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_18BF89C18()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<PlatformFallbackMenuStyle>, lazy protocol witness table accessor for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>);
    }
  }
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t NavigationLink<>.init<A>(value:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a6;
  v22 = a5;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v15);
  (*(v11 + 16))(v13, a1, v10);
  NavigationLinkPresentedValue.init<A>(_:)(v13, a4, v23);
  v18 = NavigationLink.init<>(label:presentedValue:)(v17, v23, a3, v21);
  return (*(v11 + 8))(a1, v10, v18);
}

uint64_t NavigationLinkPresentedValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    v18 = *(v7 + 8);
    v18(a1, v6);
    result = (v18)(v9, v6);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v10 + 32))(v17, v9, a2);
    (*(v10 + 16))(v13, v17, a2);
    AnyNavigationLinkPresentedValue.init<A>(_:)(v13, a2, a3);
    (*(v7 + 8))(a1, v6);
    return (*(v10 + 8))(v17, a2);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ToolbarMenuStyle>, lazy protocol witness table accessor for type ToolbarMenuStyle and conformance ToolbarMenuStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for MenuStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t AnyNavigationLinkPresentedValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyNavigationLinkPresentedValueStorage();
  (*(v6 + 16))(v8, a1, a2);
  v10 = AnyNavigationLinkPresentedValueStorage.__allocating_init(_:)(v8);
  a3[3] = v9;
  a3[4] = swift_getWitnessTable();
  *a3 = v10;
  return (*(v6 + 8))(a1, a2);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for AnyNavigationLinkCodablePresentedValueStorage();
  (*(v6 + 16))(v8, a1, a2);
  v14 = AnyNavigationLinkCodablePresentedValueStorage.__allocating_init(_:)(v8);
  a3[3] = v13;
  a3[4] = swift_getWitnessTable();
  *a3 = v14;
  return (*(v6 + 8))(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarMenuStyle and conformance ToolbarMenuStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle;
  if (!lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>, lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t type metadata completion function for AnyNavigationLinkPresentedValueStorage()
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

unint64_t lazy protocol witness table accessor for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle);
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyNavigationLinkPresentedValueStorage<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 NavigationLink.init<>(label:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = type metadata accessor for NavigationLink();
  v9 = v8[14];
  *(a4 + v8[15]) = 1;
  v10 = a4 + v8[16];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = xmmword_18CD6A6D0;
  v11 = a4 + v8[17];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(a4 + v8[18]) = 0;
  v12 = a4 + v8[19];
  *v12 = 0;
  *(v12 + 8) = 0;
  (*(*(a3 - 8) + 32))(a4 + v8[13], a1, a3);
  *(a4 + v9) = 1;
  outlined destroy of NavigationLinkPresentedValue?(v10);
  result = *a2;
  v14 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v14;
  *(v10 + 32) = *(a2 + 32);
  return result;
}

void type metadata accessor for NavigationLinkPresentedValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined destroy of NavigationLinkPresentedValue?(uint64_t a1)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PresentationTransitionOutputs.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for NavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 17);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = *a2;
    v7 = *(a2 + 8);
  }

  *(a1 + 8) = v7;
  *(a1 + 17) = v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + a1) & ~v11;
  v13 = (v11 + 18 + a2) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(v10 + 48);
  v15 = *(a3 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v18 + v12) & ~v17);
  v20 = ((v18 + v13) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = &v19[v26];
  v28 = &v20[v26];
  *v27 = *v28;
  v29 = v27 & 0xFFFFFFFFFFFFFFF8;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = *((v28 & 0xFFFFFFFFFFFFFFF8) + 32);
  v32 = -1;
  if (v31 < 0xFFFFFFFF)
  {
    v32 = v31;
  }

  v33 = v32 + 1;
  if (v31)
  {
    v34 = v33 > 1;
  }

  else
  {
    v34 = 0;
  }

  if (v34 || v33)
  {
    v35 = *(v30 + 8);
    v36 = *(v30 + 24);
    *(v29 + 40) = *(v30 + 40);
    *(v29 + 24) = v36;
    *(v29 + 8) = v35;
  }

  else
  {
    *(v29 + 32) = v31;
    *(v29 + 40) = *(v30 + 40);
    (**(v31 - 8))(v29 + 8, v30 + 8);
  }

  v37 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  *(v37 + 8) = *(v38 + 8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);

  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>();
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

uint64_t type metadata completion function for PrimitiveNavigationLink()
{
  return type metadata completion function for PrimitiveNavigationLink();
}

{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NavigationDestinationPayload();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ButtonMenuStyle>, lazy protocol witness table accessor for type ButtonMenuStyle and conformance ButtonMenuStyle, &type metadata for ButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>);
    }
  }
}

uint64_t type metadata completion function for NavigationDestinationPayload()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ButtonMenuStyle and conformance ButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle);
  }

  return result;
}

uint64_t type metadata completion function for SecondaryNavigationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t type metadata completion function for RelationshipModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BF8BEF0()
{
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for PrimitiveNavigationLink();
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationSelectionModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SecondaryNavigationModifier();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  type metadata accessor for RelationshipModifier<String>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for RelationshipModifier<String>()
{
  if (!lazy cache variable for type metadata for RelationshipModifier<String>)
  {
    v0 = type metadata accessor for RelationshipModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RelationshipModifier<String>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier()
{
  result = lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation()
{
  result = lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation;
  if (!lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RelationshipModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance WantsSecondaryNavigation()
{
  lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
  lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
  return static StyleContextAcceptsAnyPredicate.evaluate(inputs:)() & 1;
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance SidebarListStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_18BF8C5BC()
{
  type metadata accessor for NavigationSelectionModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ShouldUseNavigationLinkV4();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL static ShouldUseNavigationLinkV4.evaluate(inputs:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  result = 1;
  if ((v5 & 1) == 0 && a2 != MEMORY[0x1E69E73E0])
  {
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Never?, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6720]);
    return v4 == a2;
  }

  return result;
}

void type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>()
{
  if (!lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>)
  {
    type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Menu();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>);
    lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LinkValueTraitKey> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<NavigationLinkTraitValueModifier>)
  {
    lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationLinkTraitValueModifier>);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_PlainButtonMenuStyle>, lazy protocol witness table accessor for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle, &type metadata for _PlainButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>();
    type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<LinkValueTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<LinkValueTraitKey>);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle);
  }

  return result;
}

uint64_t static PrimitiveNavigationLink._makeViewList(view:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (v12 = a2[1], v32 = *a2, v33 = v12, v34 = a2[2], (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0))
  {
    type metadata accessor for PrimitiveNavigationLink();
    return static _ViewListOutputs.unaryViewList<A>(view:inputs:)();
  }

  else
  {
    v13 = a2[1];
    v31[0] = *a2;
    v31[1] = v13;
    v15 = *a2;
    v14 = a2[1];
    v31[2] = a2[2];
    v28 = v15;
    v29 = v14;
    v30 = a2[2];
    outlined init with copy of _GraphInputs(v31, v27);
    v16 = static ShouldUseNavigationLinkV4.evaluate(inputs:)(&v28, a4);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    outlined destroy of _GraphInputs(&v32);
    LODWORD(v21) = v11;
    v17 = a2[1];
    v27[0] = *a2;
    v27[1] = v17;
    v19 = *a2;
    v18 = a2[1];
    v27[2] = a2[2];
    v25 = v19;
    *v26 = v18;
    *&v26[16] = a2[2];
    outlined init with copy of _GraphInputs(v27, &v28);
    if (v16)
    {
      static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(&v21, a3, &v35);
      v28 = v25;
      v29 = *v26;
      v30 = *&v26[16];
      outlined destroy of _GraphInputs(&v28);
      *&v25 = a3;
      *(&v25 + 1) = a4;
      *v26 = a5;
      *&v26[8] = a6;
      type metadata accessor for StyledNavigationLinkButton();
      v25 = v35;
      *v26 = *v36;
      *&v26[9] = *&v36[9];
      v21 = a3;
      v22 = a4;
      v23 = a5;
      v24 = a6;
      type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
      swift_getWitnessTable();
      _GraphValue.init<A>(_:)();
    }

    else
    {
      static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)(&v21, &v35);
      v28 = v25;
      v29 = *v26;
      v30 = *&v26[16];
      outlined destroy of _GraphInputs(&v28);
      *&v25 = a3;
      *(&v25 + 1) = a4;
      *v26 = a5;
      *&v26[8] = a6;
      type metadata accessor for LegacyNavigationLinkButton();
      v25 = v35;
      *v26 = *v36;
      *&v26[16] = *&v36[16];
      v21 = a3;
      v22 = a4;
      v23 = a5;
      v24 = a6;
      type metadata accessor for PrimitiveNavigationLink.LegacyNavigationLinkViewRule();
      swift_getWitnessTable();
      _GraphValue.init<A>(_:)();
    }

    swift_getWitnessTable();
    return static View.makeViewList(view:inputs:)();
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance SidebarListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

unint64_t instantiation function for generic protocol witness table for SidebarListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for NavigationLink(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 17);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 18) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(a2 + 24);
  v9 = *(v8 - 8);
  v10 = (v7 + *(v6 + 56) + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(v9 + 48))(v10, 1, v8))
  {
    (*(v9 + 8))(v10, v8);
  }

  v11 = *(v9 + 64) + v10;
  if (!*(v9 + 84))
  {
    ++v11;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFFF8) + 32) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 17);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    v7 = *(a2 + 17);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 17) = 0;
    }
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v10 + 18 + a1) & ~v10;
  v12 = (v10 + 18 + a2) & ~v10;
  (*(v8 + 24))(v11, v12);
  v13 = *(v9 + 40);
  v14 = *(a3 + 24);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16;
  v18 = ((v17 + v11) & ~v16);
  v19 = ((v17 + v12) & ~v16);
  v20 = *(v15 + 48);
  LODWORD(v12) = v20(v18, 1, v14);
  v21 = v20(v19, 1, v14);
  if (v12)
  {
    if (!v21)
    {
      (*(v15 + 16))(v18, v19, v14);
      (*(v15 + 56))(v18, 0, 1, v14);
      goto LABEL_23;
    }

    v22 = *(v15 + 84);
    v23 = *(v15 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v15 + 24))(v18, v19, v14);
      goto LABEL_23;
    }

    (*(v15 + 8))(v18, v14);
    v22 = *(v15 + 84);
    v23 = *(v15 + 64);
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  memcpy(v18, v19, v24);
LABEL_23:
  if (*(v15 + 84))
  {
    v25 = *(v15 + 64);
  }

  else
  {
    v25 = *(v15 + 64) + 1;
  }

  v26 = &v18[v25];
  v30 = &v19[v25];
  *v26 = *v30;
  v27 = v26 & 0xFFFFFFFFFFFFFFF8;
  v28 = v30 & 0xFFFFFFFFFFFFFFF8;
  v29 = *((v26 & 0xFFFFFFFFFFFFFFF8) + 32);
  LODWORD(v30) = -1;
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  else
  {
    v31 = *((v26 & 0xFFFFFFFFFFFFFFF8) + 32);
  }

  v32 = v31 + 1;
  v33 = *(v28 + 32);
  if (v33 < 0xFFFFFFFF)
  {
    v30 = *(v28 + 32);
  }

  v34 = v30 + 1;
  if (v33)
  {
    v35 = v34 >= 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = !v35;
  if (v29)
  {
    v37 = v32 > 1;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    if (!v36)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  if (!v36)
  {
    if (!v32)
    {
      v38 = (v27 + 8);
      goto LABEL_50;
    }

LABEL_51:
    v39 = *(v28 + 8);
    v40 = *(v28 + 24);
    *(v27 + 40) = *(v28 + 40);
    *(v27 + 24) = v40;
    *(v27 + 8) = v39;
    goto LABEL_52;
  }

  if (v32)
  {
LABEL_46:
    if (!v34)
    {
      *(v27 + 32) = v33;
      *(v27 + 40) = *(v28 + 40);
      (**(v33 - 8))(v27 + 8, v28 + 8);
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v38 = (v27 + 8);
  if (v34)
  {
LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v38);
    goto LABEL_51;
  }

  __swift_assign_boxed_opaque_existential_1(v38, (v28 + 8));
LABEL_52:
  v41 = (v27 + 55) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v28 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);

  v43 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v43 = *v44;
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v45 = *v46;
  *(v45 + 8) = *(v46 + 8);

  return a1;
}

uint64_t DeferredFetchRequest.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>);
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t NavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v145 = *(a1 + 40);
  WitnessTable = swift_getWitnessTable();
  v123 = WitnessTable;
  v8 = type metadata accessor for SecondaryNavigationModifier();
  v114 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v88 - v9;
  v117 = v10;
  v11 = type metadata accessor for StaticIf();
  v116 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v88 - v12;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v88 - v15;
  v16 = *(a1 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v20;
  v115 = *(a1 + 32);
  v140[0] = v16;
  v140[1] = v6;
  v89 = v16;
  v141 = v115;
  v142 = WitnessTable;
  v21 = type metadata accessor for PrimitiveNavigationLink();
  v94 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v88 - v22;
  v95 = v23;
  v24 = type metadata accessor for ModifiedContent();
  v97 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v88 - v25;
  v111 = v5;
  v26 = type metadata accessor for NavigationSelectionModifier();
  v98 = v24;
  v99 = v26;
  v27 = type metadata accessor for ModifiedContent();
  v101 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v88 - v28;
  v102 = v29;
  v118 = v11;
  v30 = type metadata accessor for ModifiedContent();
  v107 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v88 - v31;
  type metadata accessor for RelationshipModifier<String>();
  v108 = v30;
  v110 = type metadata accessor for ModifiedContent();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v104 = &v88 - v35;
  (*(v17 + 16))(v20, v3 + *(a1 + 52), v16, v34);
  v36 = *(v13 + 16);
  v37 = v120;
  v93 = v3 + *(a1 + 56);
  v106 = v13 + 16;
  v92 = v36;
  (v36)(v120);
  v38 = v3 + *(a1 + 64);
  outlined init with copy of NavigationLinkPresentedValue?(v38, v140);
  v88 = Namespace.wrappedValue.getter();
  v39 = *(v3 + 8);
  v40 = *(v3 + 17);
  v41 = *(v3 + 16);
  v135 = *v3;
  v136 = v39;
  LOBYTE(v137) = v41;
  BYTE1(v137) = v40;
  LOBYTE(v24) = *(v3 + *(a1 + 60));
  outlined copy of StateOrBinding<Bool>(v135, v39, v41, v40);
  updated = NavigationLink.$triggerUpdateSeed.getter();
  v44 = v43;
  LODWORD(v13) = v45;
  v121 = a1;
  v46 = v91;
  v122 = v3;
  v47 = NavigationLink.$isPresentingViewDestinationView.getter();
  v115 = v6;
  v49 = updated;
  v50 = v38;
  PrimitiveNavigationLink.init(label:destination:presentedValue:id:deprecated_isActive:isDetail:legacy_updateSeed:isPresentingViewDestinationView:)(v90, v37, v140, v88, &v135, v24, v49, v44, v46, v13, v47, v51, v48 & 1, v89, v6);
  outlined init with copy of NavigationLinkPresentedValue?(v38, v140);
  if (v142 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(v140);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(v140, &v135);
    v52 = v138;
    if (v138)
    {
      v55 = v135;
      v54 = v136;
      v53 = v137;
      v56 = v139;
    }

    else
    {
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
    }

    outlined destroy of NavigationLinkPresentedValue(v140);
  }

  v57 = Namespace.wrappedValue.getter();
  v140[0] = v55;
  v140[1] = v54;
  v141 = v53;
  v142 = v52;
  v143 = v56;
  v144 = v57;
  v58 = v96;
  v59 = v95;
  MEMORY[0x18D00A570](v140, v95, &type metadata for NavigationLinkTraitValueModifier, &protocol witness table for PrimitiveNavigationLink<A, B>);
  outlined destroy of NavigationLinkTraitValueModifier(v140);
  (*(v94 + 8))(v46, v59);
  v60 = NavigationLink.deprecated_isActive.getter();
  outlined init with copy of NavigationLinkPresentedValue?(v50, &v135);
  NavigationSelectionModifier.init(isActive:presentedValue:)(v60 & 1, &v135, v140);
  v61 = lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
  v133 = &protocol witness table for PrimitiveNavigationLink<A, B>;
  v134 = v61;
  v62 = v98;
  v63 = swift_getWitnessTable();
  v64 = v100;
  v65 = v99;
  MEMORY[0x18D00A570](v140, v62, v99, v63);
  (*(*(v65 - 8) + 8))(v140, v65);
  (*(v97 + 8))(v58, v62);
  v66 = v120;
  v67 = v115;
  v92(v120, v93, v115);
  outlined init with copy of NavigationLinkPresentedValue?(v50, v140);
  v68 = v112;
  SecondaryNavigationModifier.init(destination:presentedValue:)(v66, v140, v67, v112);
  v69 = v117;
  v70 = swift_getWitnessTable();
  v71 = lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation();
  v72 = v113;
  ViewModifier.requiring<A>(_:)(&type metadata for WantsSecondaryNavigation, v69);
  (*(v114 + 8))(v68, v69);
  v73 = swift_getWitnessTable();
  v131 = v63;
  v132 = v73;
  v74 = v102;
  v75 = swift_getWitnessTable();
  v76 = v105;
  v77 = v118;
  MEMORY[0x18D00A570](v72, v74, v118, v75);
  (*(v116 + 8))(v72, v77);
  (*(v101 + 8))(v64, v74);
  strcpy(v140, "navigationLink");
  HIBYTE(v140[1]) = -18;
  v78 = Namespace.wrappedValue.getter();
  v128 = v71;
  v129 = v70;
  v130 = MEMORY[0x1E697E100];
  v79 = swift_getWitnessTable();
  v126 = v75;
  v127 = v79;
  v80 = v108;
  v81 = swift_getWitnessTable();
  v82 = v103;
  View.accessibilityLinkedGroup<A>(id:in:)(v140, v78, v80, MEMORY[0x1E69E6158], v81);
  (*(v107 + 8))(v76, v80);
  v124 = v81;
  v125 = &protocol witness table for RelationshipModifier<A>;
  v83 = v110;
  v84 = swift_getWitnessTable();
  v85 = v104;
  static ViewBuilder.buildExpression<A>(_:)(v82, v83, v84);
  v86 = *(v109 + 8);
  v86(v82, v83);
  static ViewBuilder.buildExpression<A>(_:)(v85, v83, v84);
  return (v86)(v85, v83);
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _PresentationTransitionOutputs.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t outlined copy of StateOrBinding<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

uint64_t Observer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v81 = v69 - v5;
  v85 = *(v4 - 8);
  v6 = v85;
  MEMORY[0x1EEE9AC00](v7);
  v84 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v69 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v69 - v13;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[1] = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v69 - v19;
  v21 = Observer.modifier.getter(a1, type metadata accessor for EnvironmentChangeModifier);
  v77 = v22;
  v86 = v23;
  WindowSceneList.MakeList.environment.getter(&v93);
  v92 = v93;
  v87 = v21;
  swift_getAtKeyPath();

  v78 = v1;
  v79 = a1;
  v24 = *(a1 + 44);
  v76 = v6;
  v25 = *(v6 + 16);
  v74 = v24;
  v25(v14, v1 + v24, v4);
  v26 = v15[2];
  v88 = v20;
  v89 = v26;
  v26(v11, v20, v3);
  v27 = v15[7];
  v73 = v15 + 7;
  v72 = v27;
  v27(v11, 0, 1, v3);
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v81;
  v83 = v14;
  v25(v81, v14, v4);
  v80 = v28;
  v30 = &v29[v28];
  v31 = v29;
  v32 = v4;
  v25(v30, v11, v4);
  v90 = v15;
  v33 = v15[6];
  v34 = v31;
  v82 = v3;
  v35 = v33(v31, 1, v3);
  v75 = v15 + 2;
  if (v35 == 1)
  {
    v36 = *(v85 + 8);
    v36(v11, v32);
    v36(v83, v32);
    v37 = &v31[v80];
    v38 = v82;
    v39 = v34;
    if (v33(v37, 1, v82) == 1)
    {
      v36(v34, v32);
      (v90[1])(v88, v38);
LABEL_13:
    }

    v43 = v32;
    v44 = v87;
    v45 = v89;
    goto LABEL_7;
  }

  v69[0] = v11;
  v39 = v31;
  v40 = v32;
  v25(v84, v31, v32);
  v41 = v80;
  v42 = v82;
  if (v33(&v31[v80], 1, v82) == 1)
  {
    v36 = *(v85 + 8);
    v36(v69[0], v32);
    v43 = v32;
    v36(v83, v32);
    (v90[1])(v84, v42);
    v44 = v87;
    v45 = v89;
    v38 = v42;
LABEL_7:
    (*(v70 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v63 = v90;
  v64 = v71;
  (v90[4])(v71, &v39[v41], v42);
  v65 = v84;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = v63;
  v38 = v42;
  v68 = v67[1];
  v68(v64, v38);
  v36 = *(v85 + 8);
  v36(v69[0], v40);
  v36(v83, v40);
  v68(v65, v38);
  v43 = v40;
  v36(v39, v40);
  v44 = v87;
  v45 = v89;
  if (v66)
  {
    v68(v88, v38);
    goto LABEL_13;
  }

LABEL_8:
  v46 = v44;
  v47 = v78;
  v48 = v74;
  v49 = v43;
  v50 = v46;
  v36((v78 + v74), v49);
  v51 = v88;
  v45(v47 + v48, v88, v38);
  v52 = v72(v47 + v48, 0, 1, v38);
  MEMORY[0x1EEE9AC00](v52);
  v53 = *(v79 + 24);
  v69[-6] = v38;
  v69[-5] = v53;
  v54 = v77;
  v69[-4] = v50;
  v69[-3] = v54;
  v55 = v86;
  v69[-2] = v86;
  if (UpdateCycleDetector.dispatch(label:isDebug:)())
  {
    AGGraphClearUpdate();
    v56 = swift_allocObject();
    v56[2] = v38;
    v56[3] = v53;
    v56[4] = v54;
    v56[5] = v55;

    AGGraphSetUpdate();
    v57 = swift_allocObject();
    v57[2] = v38;
    v57[3] = v53;
    v57[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
    v57[5] = v56;
    LOBYTE(v93) = 17;
    v58 = v71;
    v89(v71, v51, v38);
    v59 = v90;
    v60 = (*(v90 + 80) + 48) & ~*(v90 + 80);
    v61 = swift_allocObject();
    *(v61 + 2) = v38;
    *(v61 + 3) = v53;
    *(v61 + 4) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
    *(v61 + 5) = v57;
    (v59[4])(&v61[v60], v58, v38);

    static Update.enqueueAction(reason:_:)();

    return (v59[1])(v51, v38);
  }

  (v90[1])(v51, v38);
}

uint64_t sub_18BF8F674()
{

  return swift_deallocObject();
}

uint64_t sub_18BF8F6AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t Observer.modifier.getter(uint64_t a1, void (*a2)(void, void, void))
{
  a2(0, *(a1 + 16), *(a1 + 24));
  v2 = *AGGraphGetValue();

  return v2;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

uint64_t NavigationLink.$triggerUpdateSeed.getter()
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

uint64_t NavigationLink.$isPresentingViewDestinationView.getter()
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  return v1;
}

void PrimitiveNavigationLink.init(label:destination:presentedValue:id:deprecated_isActive:isDetail:legacy_updateSeed:isPresentingViewDestinationView:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v17 = *a5;
  v18 = *(a5 + 8);
  v19 = *(a5 + 16);
  v20 = *(a5 + 17);
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v31[0] = v17;
  v31[1] = v18;
  v32 = v19;
  v33 = v20;
  v29 = xmmword_18CD633F0;
  v30 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v36 = 1;
  v21 = type metadata accessor for PrimitiveNavigationLink();
  NavigationDestinationPayload.init(destination:presentedValue:linkID:isDetail:deprecated_isActiveStateOrBinding:authority:listKey:stackKey:)(a2, a3, a4, a6, v31, &v29, v34, 0, a9 + v21[13], 6, 0, a15);
  v22 = a9 + v21[14];
  *v22 = a11;
  *(v22 + 8) = a12;
  *(v22 + 16) = a13;
  v23 = a9 + v21[15];
  *v23 = a7;
  *(v23 + 8) = a8;
  *(v23 + 16) = a10;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

__n128 NavigationDestinationPayload.init(destination:presentedValue:linkID:isDetail:deprecated_isActiveStateOrBinding:authority:listKey:stackKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a5;
  v18 = a5[1];
  v19 = *(a5 + 16);
  v20 = *(a5 + 17);
  (*(*(a12 - 8) + 32))(a9, a1, a12);
  v21 = type metadata accessor for NavigationDestinationPayload();
  v22 = a9 + v21[7];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  *(a9 + v21[8]) = a3;
  *(a9 + v21[9]) = a4;
  v24 = a9 + v21[10];
  *v24 = v17;
  *(v24 + 8) = v18;
  *(v24 + 16) = v19;
  *(v24 + 17) = v20;
  outlined init with take of NavigationAuthority?(a6, a9 + v21[11]);
  v25 = a9 + v21[12];
  v26 = *(a7 + 16);
  *v25 = *a7;
  *(v25 + 16) = v26;
  result = *(a7 + 32);
  *(v25 + 32) = result;
  v28 = (a9 + v21[13]);
  *v28 = a8;
  v28[1] = a10;
  v28[2] = a11;
  return result;
}

BOOL static ButtonStylePredicate.evaluate(inputs:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ButtonStyleInput and conformance ButtonStyleInput();
  PropertyList.subscript.getter();
  return v4 == a2;
}

uint64_t initializeWithCopy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  LODWORD(v18) = -1;
  if (v17 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v19 = v18 + 1;
  if (v17)
  {
    v20 = v19 > 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 || v19)
  {
    v21 = *v16;
    v22 = *(v16 + 16);
    *(v15 + 32) = *(v16 + 32);
    *v15 = v21;
    *(v15 + 16) = v22;
  }

  else
  {
    *(v15 + 24) = v17;
    *(v15 + 32) = *(v16 + 32);
    (**(v17 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v25 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 17);
  if (v27 >= 2)
  {
    v27 = *v26 + 2;
  }

  if (v27 == 1)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  *(v25 + 17) = v28;
  v29 = (v25 + 25) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 25) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if (v31 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);
  }

  else
  {
    v32 = *v30;
    *(v29 + 16) = *(v30 + 16);
    *v29 = v32;
  }

  v33 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  v40 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = v40 + v12;
  v42 = v40 + v13;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);
  *(v41 + 16) = *(v42 + 16);
  *(v41 + 24) = *(v42 + 24);
  *(v41 + 32) = *(v42 + 32);
  *(v41 + 40) = *(v42 + 40);

  return a1;
}

uint64_t initializeWithCopy for NavigationLinkTraitValueModifier(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v3;
    *(result + 32) = v4;
    v5 = result;
    (**(v3 - 8))();
    result = v5;
  }

  else
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

uint64_t initializeWithTake for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 17);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 17) = v25;
  v26 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (*(v27 + 8) >= 0xFFFFFFFFuLL)
  {
    v28 = -1;
  }

  if (v28 - 1 < 0)
  {
    v26 = swift_weakTakeInit();
    *(v26 + 8) = *(v27 + 8);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  v33 = v31[2];
  v30[1] = v31[1];
  v30[2] = v33;
  *v30 = v32;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v38 = v37 + v12;
  v39 = v37 + v13;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = *(v39 + 24);
  *(v38 + 40) = *(v39 + 40);
  *(v38 + 24) = v41;
  return a1;
}

uint64_t type metadata completion function for UIKitMenuButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = (v5 + v8) & ~v8;
  (*(v6 + 8))(v9);
  v10 = *(v7 + 56) + 7;
  v11 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  }

  v12 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 17);
  if (v13 >= 2)
  {
    v13 = *v12 + 2;
  }

  if (v13 == 1)
  {
  }

  v14 = *(((v12 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 - 1 < 0)
  {
    swift_weakDestroy();
  }
}

uint64_t NavigationLink.deprecated_isActive.getter()
{
  if (*(v0 + 17))
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v2);
  }

  else
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  return v2;
}

__n128 NavigationSelectionModifier.init(isActive:presentedValue:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t initializeWithCopy for NavigationSelectionModifier(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 32);
  if (v2 > 1)
  {
    v4 = *(a2 + 40);
    *(result + 32) = v2;
    *(result + 40) = v4;
    v5 = result;
    (**(v2 - 8))(result + 8, a2 + 8);
    return v5;
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v3;
    *(result + 40) = *(a2 + 40);
  }

  return result;
}

uint64_t sub_18BF9089C(uint64_t result)
{
  if (*(result + 32) >= 2uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 8);
  }

  return result;
}

__n128 SecondaryNavigationModifier.init(destination:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for SecondaryNavigationModifier() + 36);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = *(a2 + 32);
  return result;
}

uint64_t initializeWithCopy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v9 = *(v5 + 48) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  LODWORD(v9) = -1;
  if (v8 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v10 = v9 + 1;
  if (v8)
  {
    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || v10)
  {
    v12 = *v7;
    v13 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v12;
    *(v6 + 16) = v13;
  }

  else
  {
    *(v6 + 24) = v8;
    *(v6 + 32) = *(v7 + 32);
    (**(v8 - 8))(v6);
  }

  return a1;
}

void type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>);
    }
  }
}

unint64_t destroy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  result = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t View.accessibilityRelationship<A>(_:id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v20 = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RelationshipModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a2, a5, v15);
  *v17 = v9;
  (*(v10 + 32))(&v17[*(v13 + 36)], v12, a5);
  *&v17[*(v13 + 40)] = a3;
  MEMORY[0x18D00A570](v17, v20, v13, v21);
  return (*(v14 + 8))(v17, v13);
}

_BYTE *initializeWithCopy for RelationshipModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  *((*(v5 + 48) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t outlined init with copy of AnyNavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double protocol witness for ViewModifier.body(content:) in conformance NavigationLinkTraitValueModifier@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of AnyNavigationLinkPresentedValue?(v1, a1);
  v3 = *(v1 + 40);
  result = 0.0;
  *(a1 + 40) = xmmword_18CD633F0;
  *(a1 + 56) = v3;
  return result;
}

void type metadata accessor for AnyNavigationLinkPresentedValue?()
{
  if (!lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?);
    }
  }
}

uint64_t initializeWithTake for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ZoomPresentationTransitionStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ZoomPresentationTransitionStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationLinkSelectionIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 48);
  if (v7 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v7;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for SceneStorage.Box(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for SceneStorage.Box(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t destroy for NavigationLinkSelectionIdentifier(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  result = *(a1 + 48);
  if (result != 1)
  {
  }

  return result;
}

void ListSectionInfo.updateItemDerivedState()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of SectionAccumulator.Item(v3, &v40);
      v5 = v42;

      outlined destroy of SectionAccumulator.Item(&v40);
      v6 = *(v5 + 16);
      v7 = *(v4 + 2);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v10 = v7 + v6;
        }

        else
        {
          v10 = v7;
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
        if (*(v5 + 16))
        {
LABEL_14:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v6)
          {
            v11 = *(v4 + 2);
            v12 = __OFADD__(v11, v6);
            v13 = v11 + v6;
            if (v12)
            {
              goto LABEL_51;
            }

            *(v4 + 2) = v13;
          }

          goto LABEL_4;
        }
      }

      if (v6)
      {
        goto LABEL_47;
      }

LABEL_4:
      v3 += 152;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v14 = 0;
  v15 = *(v4 + 2);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v14)
    {

      *(v39 + 72) = v16;
      v23 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
      v24 = *(v1 + 16);
      if (!v24)
      {
LABEL_44:

        *(v39 + 80) = v23;
        return;
      }

      v25 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v25 >= *(v1 + 16))
        {
          goto LABEL_48;
        }

        *&v40 = v25;
        outlined init with copy of SectionAccumulator.Item(v1 + 32 + 152 * v25, &v40 + 8);
        v28 = SectionAccumulator.Item.numberOfIndexLabels.getter();
        if (v28 < 0)
        {
          goto LABEL_49;
        }

        v29 = v28;
        if (v28)
        {
          v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v27 = v30;
          *(v30 + 16) = v29;
          v31 = (v30 + 32);
          if (v29 > 3)
          {
            v32 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            v31 += v29 & 0x7FFFFFFFFFFFFFFCLL;
            v33 = vdupq_n_s64(v25);
            v34 = (v30 + 48);
            v35 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v34[-1] = v33;
              *v34 = v33;
              v34 += 2;
              v35 -= 4;
            }

            while (v35);
            if (v29 == v32)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v32 = 0;
          }

          v36 = v29 - v32;
          do
          {
            *v31++ = v25;
            --v36;
          }

          while (v36);
        }

        else
        {
          v27 = v26;
        }

LABEL_31:
        ++v25;
        outlined destroy of (offset: Int, element: SectionAccumulator.Item)(&v40);
        specialized Array.append<A>(contentsOf:)(v27);
        if (v25 == v24)
        {
          v23 = v43;
          goto LABEL_44;
        }
      }
    }

    if (v14 >= *(v4 + 2))
    {
      break;
    }

    v46 = *&v4[8 * v14 + 32];
    v17 = v14 + 1;
    v43 = 0;
    v44 = 0;
    v45 = xmmword_18CD67BD0;
    swift_bridgeObjectRetain_n();
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of SectionIndexLabel?(v43, v44, v45);
    swift_bridgeObjectRelease_n();
    v14 = v17;
    if (v41 >> 1 != 0xFFFFFFFF)
    {
      v38 = v41;
      v37 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v38;
      if (v19 >= v18 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
        v20 = v38;
        v16 = v22;
      }

      *(v16 + 2) = v19 + 1;
      v21 = &v16[32 * v19];
      *(v21 + 2) = v37;
      *(v21 + 3) = v20;
      v14 = v17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA07ToolbarcD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SectionIndexLabel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t outlined consume of SectionIndexLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of SectionIndexLabel(a1, a2, a3);
  }

  return a1;
}

uint64_t SectionAccumulator.Item.numberOfIndexLabels.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 144);
  v4 = *(v3 + 16);
  while (1)
  {
    if (v4 == v2)
    {
      return v1;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of SectionIndexLabel?(0, 0, 0x1FFFFFFFELL);

    v7 = 0;
    if (v10 >> 1 != 0xFFFFFFFF)
    {
      result = outlined consume of SectionIndexLabel?(v8, v9, v10);
      v7 = 1;
    }

    ++v2;
    v5 = __OFADD__(v1, v7);
    v1 += v7;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t outlined destroy of (offset: Int, element: SectionAccumulator.Item)(uint64_t a1)
{
  type metadata accessor for (offset: Int, element: SectionAccumulator.Item)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, a2);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I19ButtonLabelModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(255, a2);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (offset: Int, element: SectionAccumulator.Item)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: SectionAccumulator.Item))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: SectionAccumulator.Item));
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UIKitButtonStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t UpdateCollectionViewListCoordinator.selection.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding();
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SelectionManagerBox.allowsMultipleSelection.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = 1u >> (swift_getEnumCaseMultiPayload() & 7);
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t initializeWithCopy for ListSectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  *(a1 + 72) = v8;
  *(a1 + 80) = v7;
  v9 = v5;

  return a1;
}

uint64_t UpdateCollectionViewListCoordinator.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t CollectionViewListDataSource.init(sectionInfo:style:allowsMultipleSelection:minRowHeight:minHeaderHeight:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = *a4;
  v14 = a4[1];
  v15 = type metadata accessor for CollectionViewListDataSource();
  v16 = a5 + v15[10];
  *v16 = xmmword_18CD633F0;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 63) = 0;
  v17 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v17;
  *(a5 + 80) = *(a1 + 80);
  v18 = *(a1 + 64);
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 64) = v18;
  *(a5 + 32) = *(a1 + 32);
  v19 = v15[9];
  v20 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  result = (*(*(v20 - 8) + 32))(a5 + v19, a2, v20);
  *(a5 + v15[12]) = a3;
  *(a5 + v15[13]) = a6;
  *(a5 + v15[14]) = a7;
  v22 = (a5 + v15[11]);
  *v22 = v13;
  v22[1] = v14;
  return result;
}

uint64_t initializeWithCopy for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;
  v10 = a3[9];
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v28 = *(*(v11 - 8) + 16);
  v12 = v7;

  v28(a1 + v10, a2 + v10, v11);
  v13 = a3[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(a2 + v13 + 8);
  if (!v16)
  {
    *v14 = *v15;
    *(v14 + 16) = *(v15 + 16);
    v19 = *(v15 + 64);
    if ((v19 & 1) == 0)
    {
LABEL_7:
      v20 = *(v15 + 48);
      *(v14 + 48) = v20;
      (**(v20 - 8))(v14 + 24, v15 + 24);
      goto LABEL_8;
    }

LABEL_5:
    *(v14 + 24) = *(v15 + 24);

LABEL_8:
    *(v14 + 64) = v19;
    *(v14 + 65) = *(v15 + 65);
    goto LABEL_9;
  }

  if (v16 != 1)
  {
    *v14 = *v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = *(v15 + 16);

    v19 = *(v15 + 64);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v17 = *(v15 + 48);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 48) = v17;
  *(v14 + 63) = *(v15 + 63);
  v18 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v18;
LABEL_9:
  v21 = a3[11];
  v22 = a3[12];
  v23 = (a1 + v21);
  v24 = (a2 + v21);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  *(a1 + v22) = *(a2 + v22);
  v26 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v26) = *(a2 + v26);

  return a1;
}

uint64_t (*NavigationDestinationModifier.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = NavigationDestinationModifier.PreferenceTransform.seededResolver.getter();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  return partial apply for closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter;
}

uint64_t sub_18BF924F0()
{

  return swift_deallocObject();
}

uint64_t UpdateCollectionViewListCoordinator.editMode.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<EditMode>?();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);

  return outlined copy of Binding<Int>?(v4, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance NavigationDestinationModifier<A, B>.PreferenceTransform@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = NavigationDestinationModifier.PreferenceTransform.value.getter(*v2, a1[2], a1[3], a1[4], a1[5]);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BF925F8()
{

  return swift_deallocObject();
}

void type metadata accessor for EnvironmentPropertyKey<EditModeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>);
    }
  }
}

uint64_t NavigationDestinationModifier.PreferenceTransform.seededResolver.getter()
{
  type metadata accessor for NavigationDestinationModifier.SeededResolver();
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

uint64_t NavigationDestinationModifier.MakeSeededResolver.updateValue()(uint64_t a1)
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 8);
  v18 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  v19 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v9 = v8;
  v11 = *Value;
  v10 = Value[1];
  v20 = v5;
  v21 = v19;
  v22 = v6;
  v12 = type metadata accessor for NavigationDestinationModifier.SeededResolver();
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for NavigationDestinationResolver();
    v15 = NavigationDestinationResolver.__allocating_init(transform:)(v11, v10);
    swift_retain_n();

    *(v2 + 8) = v15;
    v4 = v15;
    goto LABEL_7;
  }

  if ((v9 & 1) == 0)
  {

LABEL_7:
    result = AGGraphGetOutputValue();
    if (result && (v9 & 1) == 0)
    {
    }

    if (v4)
    {
      v14 = v18;
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  swift_retain_n();

  v14 = v18 + 1;
  *(v2 + 16) = v18 + 1;
LABEL_12:
  v20 = v4;
  LODWORD(v21) = v14;
  MEMORY[0x1EEE9AC00](result);
  v17[2] = a1;
  v17[3] = swift_getWitnessTable();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, partial apply for closure #1 in StatefulRule.value.setter, v17, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
}

id specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v68 = a2;
  v64 = a1;
  v7 = *v5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  v58 = *(v10 - 8);
  v11 = v58;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v56 - v12;
  v69 = *((v9 & v7) + 0x70);
  v13 = *(v69 + 8);
  v62 = type metadata accessor for ShadowListDataSource();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - v14;
  v15 = a3[1];
  v66 = *a3;
  v65 = v15;
  v67 = *(a3 + 16);
  *(v5 + *((v9 & v7) + 0x80)) = MEMORY[0x1E69E7CD0];
  v16 = *((*v8 & *v5) + 0x90);
  *(v5 + v16) = closure #1 in variable initialization expression of UICollectionViewListCoordinatorBase.helper();
  v17 = (v5 + *((*v8 & *v5) + 0x98));
  *v17 = 0;
  v17[1] = 0;
  v63 = *((*v8 & *v5) + 0xA0);
  *(v5 + v63) = 1;
  *(v5 + *((*v8 & *v5) + 0xA8)) = 0;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_weakInit();

  v18 = *((*v8 & *v5) + 0xB8);
  v56 = v13;
  ListCoreBatchUpdates.init()(v5 + v18);
  *(v5 + *((*v8 & *v5) + 0xC0)) = 1;
  *(v5 + *((*v8 & *v5) + 0xC8)) = 0;
  (*(v11 + 56))(v5 + *((*v8 & *v5) + 0xD0), 1, 1, v10);
  *(v5 + *((*v8 & *v5) + 0xD8)) = 0;
  v19 = *((*v8 & *v5) + 0xE0);
  v20 = type metadata accessor for IndexPath();
  v21 = *(*(v20 - 8) + 56);
  v21(v5 + v19, 1, 1, v20);
  v21(v5 + *((*v8 & *v5) + 0xE8), 1, 1, v20);
  v22 = v5 + *((*v8 & *v5) + 0xF0);
  *v22 = 0;
  *(v22 + 4) = 256;
  swift_unknownObjectWeakInit();
  v23 = v5 + *((*v8 & *v5) + 0x100);
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0x1FFFFFFFALL;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  v24 = v5 + *((*v8 & *v5) + 0x108);
  *v24 = 0;
  v24[8] = 1;
  v57 = *((*v8 & *v5) + 0x110);
  v25 = v57;
  v26 = *((v9 & v7) + 0x68);
  v27 = type metadata accessor for Binding();
  (*(*(v27 - 8) + 56))(v5 + v25, 1, 1, v27);
  v28 = (*(*(v26 - 8) + 56))(v5 + *((*v8 & *v5) + 0x118), 1, 1, v26);
  v29 = v5 + *((*v8 & *v5) + 0x120);
  LOBYTE(v74[0]) = 0;
  MEMORY[0x18D007050](v74 + 1, v28);
  v30 = v74[3];
  *(v29 + 2) = v74[2];
  *(v29 + 3) = v30;
  v29[64] = v75;
  v31 = v74[1];
  *v29 = v74[0];
  *(v29 + 1) = v31;
  v32 = v5 + *((*v8 & *v5) + 0x128);
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = (v5 + *((*v8 & *v5) + 0x130));
  swift_getAssociatedTypeWitness();
  v34 = *((v9 & v7) + 0x78);
  swift_getAssociatedConformanceWitness();
  *v33 = WeakSelectionBasedStorage.init()();
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  *(v5 + *((*v8 & *v5) + 0x138)) = 0;
  *(v5 + *((*v8 & *v5) + 0x140)) = 0;
  v38 = v5 + *((*v8 & *v5) + 0x148);
  *v38 = 0;
  *(v38 + 4) = 256;
  v39 = v5 + *((*v8 & *v5) + 0x150);
  *v39 = 0;
  v39[8] = 1;
  v40 = v5 + *((*v8 & *v5) + 0x158);
  *v40 = 0;
  v40[8] = 1;
  *(v5 + *((*v8 & *v5) + 0x160)) = 0;
  *(v5 + *((*v8 & *v5) + 0x168)) = 0;
  *(v5 + *((*v8 & *v5) + 0x170)) = 0;
  v41 = v5 + *((*v8 & *v5) + 0x178);
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 4) = 0;
  v42 = v61;
  (*(v58 + 16))(v61, v64, v10);
  v43 = v59;
  ShadowListDataSource.init(_:)(v42, v10, v59);
  (*(v60 + 32))(v5 + *((*v8 & *v5) + 0x88), v43, v62);
  v44 = v57;
  swift_beginAccess();
  v45 = type metadata accessor for Optional();
  (*(*(v45 - 8) + 24))(v5 + v44, v68, v45);
  swift_endAccess();
  v46 = *v32;
  v47 = *(v32 + 1);
  v48 = v65;
  *v32 = v66;
  *(v32 + 1) = v48;
  v32[16] = v67;
  outlined consume of Binding<NavigationSplitViewColumn>?(v46, v47);
  v49 = v63;
  swift_beginAccess();
  v50 = *(v5 + v49);
  v51 = v70;
  *(v5 + v49) = v70;
  outlined copy of Transaction?(v51);
  outlined consume of ListItemTint?(v50);
  *&v52 = v10;
  *(&v52 + 1) = v26;
  *&v53 = v69;
  *(&v53 + 1) = v34;
  v72 = v53;
  v71 = v52;
  v54 = type metadata accessor for UICollectionViewListCoordinatorBase();
  v73.receiver = v5;
  v73.super_class = v54;
  return objc_msgSendSuper2(&v73, sel_init);
}

uint64_t type metadata completion function for ShadowListDataSource()
{
  result = type metadata accessor for ShadowListUpdateRecorder();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t NavigationDestinationResolver.__allocating_init(transform:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_18BF93424(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t ListCoreBatchUpdates.init()@<X0>(uint64_t a1@<X8>)
{
  IndexSet.init()();
  v2 = type metadata accessor for ListCoreBatchUpdates();
  IndexSet.init()();
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[11]) = v3;
  *(a1 + v2[12]) = v3;
  *(a1 + v2[13]) = v3;
  IndexSet.init()();
  return ListBatchUpdates.init()((a1 + v2[15]));
}

uint64_t closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[5] = a2;
  v11 = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a1;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  type metadata accessor for NavigationDestinationModifier.SeededResolver();
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v10);
}

uint64_t ListBatchUpdates.init()@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CountingIndex();
  v1 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v1);
  type metadata accessor for ListUpdate();
  *a1 = static Array._allocateUninitialized(_:)();
  type metadata accessor for CollectionChanges.Element();
  v2 = Array.init()();
  v3 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = specialized Dictionary.init(dictionaryLiteral:)(v6, AssociatedTypeWitness, TupleTypeMetadata2, AssociatedConformanceWitness);

  a1[3] = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = specialized Dictionary.init(dictionaryLiteral:)(v11, v9, v10, v12);

  a1[4] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>)
  {
    type metadata accessor for LazyMapSequence<[SectionAccumulator.Item], UInt32>();
    lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](&lazy protocol witness table cache variable for type [SectionAccumulator.Item] and conformance [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationModifier.SeededResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for NavigationDestinationModifier.SeededResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[SectionAccumulator.Item], UInt32>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[SectionAccumulator.Item], UInt32>)
  {
    _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(255, &lazy cache variable for type metadata for [SectionAccumulator.Item], MEMORY[0x1E697F490], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](&lazy protocol witness table cache variable for type [SectionAccumulator.Item] and conformance [A]);
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<[SectionAccumulator.Item], UInt32>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>);
    lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

unint64_t _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(unint64_t result, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      outlined init with copy of NavigationColumnState(a2 + 360 * result + 32, v13);
      if (v14 > 2u)
      {
        if (v14 - 3 >= 2)
        {
          outlined destroy of NavigationColumnState(v13);
          v10 = 1;
          return v10 & 1;
        }
      }

      else if (v14)
      {
        if (v14 != 1)
        {
          v11 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(a3, v13, v4, a2);
          outlined destroy of NavigationColumnState(v13);
          v10 = v11 ^ 1;
          return v10 & 1;
        }

        v6 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(a3, v13, v4, a2);
        if ((v6 & 1) == 0)
        {
          MEMORY[0x1EEE9AC00](v6);
          v12[2] = &v15;
          v12[3] = a3;
          v9 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSbTg5(_s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSbSiXEfU_SayACG_Tt2G5TA, v12, v7, v8);
          outlined destroy of NavigationColumnState(v13);
          v10 = (v9 == 2) | v9;
          return v10 & 1;
        }
      }

      outlined destroy of NavigationColumnState(v13);
      v10 = 0;
      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  result = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(*a2, *a3, a4);
  if (result)
  {
    v10 = 0;
LABEL_6:
    if (!__OFADD__(v6, v10))
    {
      *a5 = v6 + v10;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 < *(v8 + 16))
  {
    outlined init with copy of NavigationColumnState(v8 + 360 * v7 + 32, v11);
    v10 = NavigationColumnState.ColumnContent.count.getter();
    result = outlined destroy of NavigationColumnState(v11);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

void type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for (ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t NavigationColumnState.ColumnContent.count.getter()
{
  v1 = outlined init with copy of NavigationColumnState.ColumnContent(v0, v8);
  if (v9)
  {
    v2 = 1;
LABEL_5:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return v2;
  }

  v3 = v8[13];
  v4 = (*(*v8[12] + 88))(v1);

  v6 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);

    v2 = v6 + v7;
    if (!__OFADD__(v6, v7))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of NavigationColumnState.ReplacedRoot?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for NavigationColumnState.ReplacedRoot?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for NavigationColumnState.ReplacedRoot?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>();
    lazy protocol witness table accessor for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>();
    lazy protocol witness table accessor for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate();
    lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate()
{
  result = lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate;
  if (!lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier()
{
  result = lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier;
  if (!lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t requiresNew #1 (_:) in NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if ((a3 & 1) == 0)
  {

    return 0;
  }

  v13 = result;
  v14 = [a1 navigationController];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;

  if (v13 != v15)
  {
LABEL_9:

    return 0;
  }

  static Log.navigation.getter();
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {

    outlined destroy of Logger?(v11);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = a5;
      v28 = v25;
      *v20 = 136315138;
      v26 = a4;
      v21 = NavigationContentAbstractPosition.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v18, v19, "<NavigationHostingControllerCache>: HIT at %s, ignoring to avoid UINavigationController exception", v20, 0xCu);
      v24 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v20, -1, -1);
    }

    (*(v17 + 8))(v11, v16);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for VStack<TableHeaderViewCore>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>)
  {
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Set<NavigationStackHostingController<AnyView>> and conformance Set<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>)
  {
    type metadata accessor for PartialRangeFrom<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void type metadata accessor for PartialRangeFrom<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<Int>)
  {
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<Int>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>);
    lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(void *a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  if (!*a3)
  {
    v27 = MEMORY[0x1E69E7CD0];
    specialized Set._Variant.insert(_:)(v26, a1);

    _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(UINavigationController, Set<NavigationStackHostingController<AnyView>>)>, type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    *(inited + 32) = a2;
    *(inited + 40) = v27;
    v21 = a2;
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22UINavigationControllerC_Shy7SwiftUI022NavigationStackHostingD0CyAE7AnyViewVGGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(inited + 32, type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>));
    swift_beginAccess();
    *a3 = v22;
LABEL_13:

    return;
  }

  if (!*(*a3 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) == 0))
  {
    v27 = MEMORY[0x1E69E7CD0];
    specialized Set._Variant.insert(_:)(v26, a1);

    v17 = v27;
    swift_beginAccess();
    if (!*a3)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a3;
    *a3 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v18, isUniquelyReferenced_nonNull_native);

    *a3 = v25;
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  if (!*a3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a3;
  v24 = *a3;
  *a3 = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v10;
  if (*(v9 + 24) < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v8);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) != (v16 & 1))
    {
LABEL_26:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINavigationController);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v15;
    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if ((v8 & 1) == 0)
  {
LABEL_22:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v23 = *(*(v24 + 56) + 8 * v11);
  specialized Set._Variant.insert(_:)(&v27, a1);
  if (v23)
  {
    *(*(v24 + 56) + 8 * v11) = v23;
  }

  else
  {

    specialized _NativeDictionary._delete(at:)(v11, v24);
  }

  *a3 = v24;
  swift_endAccess();
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7SwiftUI32NavigationStackHostingControllerCyAG7AnyViewVG_Tt1g5(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      specialized _NativeSet.resize(capacity:)();
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16UIOpenURLContextC_Tt1g5Tm(v7, result + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v5 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      v11 = a2;
      v12 = v10;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

        v14 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_14;
      }
    }

LABEL_7:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_14:
  *a1 = v14;
  v18 = v14;
  return 0;
}

unint64_t lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>()
{
  if (!lazy cache variable for type metadata for _SetStorage<NavigationStackHostingController<AnyView>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<NavigationStackHostingController<AnyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>)()
{
  if (!lazy cache variable for type metadata for (UINavigationController, Set<NavigationStackHostingController<AnyView>>))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController);
    type metadata accessor for Set<NavigationStackHostingController<AnyView>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UINavigationController, Set<NavigationStackHostingController<AnyView>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for Set<NavigationStackHostingController<AnyView>>()
{
  if (!lazy cache variable for type metadata for Set<NavigationStackHostingController<AnyView>>)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<NavigationStackHostingController<AnyView>>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22UINavigationControllerC_Shy7SwiftUI022NavigationStackHostingD0CyAE7AnyViewVGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

void type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController);
    type metadata accessor for Set<NavigationStackHostingController<AnyView>>();
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UINavigationController and conformance NSObject, &lazy cache variable for type metadata for UINavigationController);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>);
    }
  }
}

uint64_t outlined destroy of (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>, lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle, &type metadata for DefaultSectionStyle, type metadata accessor for SectionStyleModifier);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for _UIHostingView<AnyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>()
{
  if (!lazy cache variable for type metadata for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>);
    type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>();
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>);
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>)
  {
    type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>();
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<PlainSectionStyle>, lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle, &type metadata for PlainSectionStyle, type metadata accessor for SectionStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>();
    lazy protocol witness table accessor for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = __CocoaSet.count.getter();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController);

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = __CocoaSet.count.getter();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = __CocoaSet.count.getter();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

void type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>()
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>)
  {
    type metadata accessor for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>);
    }
  }
}

void specialized FlattenSequence.Iterator.next()()
{
  v1 = v0;
  v2 = v0[7];
  v3 = MEMORY[0x1E6981910];
  v4 = MEMORY[0x1E6981900];
  while (1)
  {
    if ((~v2 & 0xF000000000000007) == 0)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
      goto LABEL_23;
    }

    v30 = v15;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v3, v4, type metadata accessor for NavigationStackHostingController);
    swift_dynamicCast();
    v16 = v31[0];
LABEL_22:
    if (v16)
    {
      return;
    }

LABEL_23:
    v22 = v1[3];
    v23 = v1[4];
    if (!v23)
    {
      v25 = (v1[2] + 64) >> 6;
      v26 = v1[3];
      while (1)
      {
        v24 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v24 >= v25)
        {
          break;
        }

        v23 = *(v1[1] + 8 * v24);
        ++v26;
        if (v23)
        {
          goto LABEL_29;
        }
      }

      if (v25 <= v22 + 1)
      {
        v29 = v22 + 1;
      }

      else
      {
        v29 = (v1[2] + 64) >> 6;
      }

      v1[3] = v29 - 1;
      v1[4] = 0;
      return;
    }

    v24 = v1[3];
LABEL_29:
    v27 = *(*(*v1 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    v1[3] = v24;
    v1[4] = (v23 - 1) & v23;
    v28 = v1[5];
    v31[0] = v27;

    v28(&v30, v31);

    v2 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v3, v4, type metadata accessor for NavigationStackHostingController);
      lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v2 = v31[1];
      v7 = v31[2];
      v8 = v31[3];
      v5 = v31[4];
      v11 = v31[5];
    }

    else
    {
      v5 = 0;
      v6 = -1 << *(v30 + 32);
      v7 = v30 + 56;
      v8 = ~v6;
      v9 = -v6;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v30 + 56);
    }

    outlined consume of Set<NavigationStackHostingController<AnyView>>.Iterator?(v1[7]);
    v1[7] = v2;
    v1[8] = v7;
    v1[9] = v8;
    v1[10] = v5;
    v1[11] = v11;
  }

  v12 = v1[10];
  v13 = v1[11];
  if (v13)
  {
    v14 = v1[10];
LABEL_20:
    v20 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    v21 = v16;
    v19 = v14;
LABEL_21:
    v1[10] = v19;
    v1[11] = v20;
    goto LABEL_22;
  }

  v17 = (v1[9] + 64) >> 6;
  if (v17 <= v12 + 1)
  {
    v18 = v12 + 1;
  }

  else
  {
    v18 = (v1[9] + 64) >> 6;
  }

  v19 = v18 - 1;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v17)
    {
      v16 = 0;
      v20 = 0;
      goto LABEL_21;
    }

    v13 = *(v1[8] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_20;
    }
  }

LABEL_38:
  __break(1u);
}

void type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>, lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle, &type metadata for DefaultSectionStyle, type metadata accessor for SectionStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>))
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>();
    type metadata accessor for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>));
    }
  }
}

void type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined consume of Set<NavigationStackHostingController<AnyView>>.Iterator?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of Set<UIPress>.Iterator._Variant();
  }

  return result;
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsMoveDisabledTraitKey>, &type metadata for IsMoveDisabledTraitKey, &protocol witness table for IsMoveDisabledTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>();
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>)
  {
    type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>();
    lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>();
    lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UINavigationController and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UINavigationController and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UINavigationController and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationController and conformance NSObject);
  }

  return result;
}

void specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(a1 + 48) + (v11 | (v9 << 6)));
    if (v12 < 3)
    {
      swift_beginAccess();
      v13 = *(v2 + 16);
      if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();
        if (!*(a1 + 16))
        {
          goto LABEL_20;
        }

        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }

        outlined init with copy of NavigationState.StackContent.PositionedView(*(a1 + 56) + 96 * v17, v30);
        v19 = v30[0];
        v20 = v16;
        v29 = v19;

        outlined destroy of NavigationState.StackContent.PositionedView(v30);
        v21 = [v20 viewIfLoaded];
        v22 = [v21 window];

        if (v22)
        {

          v23 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x400);
          swift_beginAccess();
          *(v20 + v23) = v29;
        }

        else
        {
          v28 = direct field offset for UIHostingController.host;
          v24 = *(v20 + direct field offset for UIHostingController.host);
          v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x60);
          swift_beginAccess();
          *(v24 + v25) = v29;
          v27 = v24;

          type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);

          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          v26 = *(v20 + v28);
          ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}