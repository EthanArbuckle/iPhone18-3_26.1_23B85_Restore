uint64_t TupleCommandContent.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 16);
  v12 = a3;
  v13 = a4;
  v14 = a1;
  return _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in TupleCommandContent.Visitor.visit<A>(type:), &v10, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

void closure #1 in TupleCommandContent.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v15 = type metadata accessor for TupleCommandContent.Visitor();
    (*(v11 + 16))(v13, a1 + *(a3 + *(v15 + 32)), a6);
    (*(a7 + 40))(a3 + *(v15 + 28), a6, a7);
    (*(v11 + 8))(v13, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t static Group<A>._makeCommands(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v10 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 32))(v9, v11, a3, a4);
}

uint64_t type metadata completion function for TupleCommandContent.Visitor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TupleCommandContent.Visitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
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
    v10[1] = v11[1];
    v10[2] = v11[2];
    *((v10 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for TupleCommandContent.Visitor(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for TupleCommandContent.Visitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TupleCommandContent.Visitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TupleCommandContent.Visitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TupleCommandContent.Visitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TupleCommandContent.Visitor(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for TupleCommandContent.Visitor(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
          v19[2] = 0;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
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

uint64_t EnvironmentValues.menuSectionsControlSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t View.menuSectionsControlSize(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.menuSectionsControlSize : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuSectionsControlSize : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for MenuSectionStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v3, v4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t EnvironmentValues.presentationKind.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.presentationKind : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.presentationKind : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.presentationKind.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationKind.Tag and conformance PresentationKind.Tag()
{
  result = lazy protocol witness table cache variable for type PresentationKind.Tag and conformance PresentationKind.Tag;
  if (!lazy protocol witness table cache variable for type PresentationKind.Tag and conformance PresentationKind.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationKind.Tag and conformance PresentationKind.Tag);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.buttonBorderShape : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>, &type metadata for ButtonBorderShapeKey, &protocol witness table for ButtonBorderShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>, &type metadata for ButtonBorderShapeKey, &protocol witness table for ButtonBorderShapeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>, &type metadata for ButtonBorderShapeKey, &protocol witness table for ButtonBorderShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>, &type metadata for ButtonBorderShapeKey, &protocol witness table for ButtonBorderShapeKey);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues.effectiveLabelStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.effectiveLabelStyle : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t PasteButton.init(supportedContentTypes:payloadAction:)@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BOOL8 *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *a4 = a1;
  a4[1] = partial apply for closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:);
  a4[2] = v8;
  type metadata accessor for PasteboardEventObserver();
  swift_allocObject();

  v9 = specialized PasteboardEventObserver.init(_:)(a1, partial apply for closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:), v8);

  a4[3] = 0;
  a4[4] = v9;
  return result;
}

uint64_t type metadata accessor for PasteboardEventObserver()
{
  result = type metadata singleton initialization cache for PasteboardEventObserver;
  if (!type metadata singleton initialization cache for PasteboardEventObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PasteButton.init<A>(payloadType:onPaste:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{

  v10 = PasteHelper.init<A>(onPaste:)(a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;
  *a5 = v10;
  a5[1] = v11;
  a5[2] = v13;
  type metadata accessor for PasteboardEventObserver();
  swift_allocObject();

  v15 = specialized PasteboardEventObserver.init(_:)(v10, v12, v14);

  a5[3] = 0;
  a5[4] = v15;
  return result;
}

void PasteButton.pasteButton.getter(_BYTE *a1@<X8>)
{
  v3 = v1[1];
  v25 = *v1;
  *v26 = v3;
  *&v26[16] = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 4);
  *a1 = 4;
  type metadata accessor for Button<Label<Text, Image>>();
  v7 = v6;
  v8 = &a1[*(v6 + 36)];
  *v8 = partial apply for closure #1 in PasteButton.pasteButton.getter;
  v8[1] = v4;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v9 = &a1[*(v7 + 40)];
  outlined init with copy of PasteButton(&v25, v24);

  v10 = static Text.System.paste.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  specialized Image.init(systemName:)(0xD000000000000010, 0x800000018CD5B9E0);
  v18 = v17;

  *v9 = v10;
  *(v9 + 1) = v12;
  v9[16] = v14 & 1;
  *(v9 + 3) = v16;
  *(v9 + 4) = v18;
  v24[0] = *&v26[8];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();
  outlined destroy of ObservedObject<PasteboardEventObserver>(v24);

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v23 & 1) == 0;
  type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>();
  v22 = &a1[*(v21 + 36)];
  *v22 = KeyPath;
  v22[1] = partial apply for closure #1 in View.disabled(_:);
  v22[2] = v20;
}

void (*closure #1 in PasteButton.pasteButton.getter(uint64_t a1))(void)
{
  result = PasteHelper.validatedPasteHandler.getter(*a1, *(a1 + 8), *(a1 + 16));
  if (result)
  {
    v2 = result;
    result();

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
  }

  return result;
}

uint64_t PasteButton.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  PasteButton.pasteButton.getter(a1);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>();
  v11 = &a1[*(v10 + 36)];
  *v11 = partial apply for closure #1 in View.platformItemIdentifier(_:);
  v11[1] = v9;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl>();
  v13 = &a1[*(v12 + 44)];
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  *v13 = KeyPath;
  v13[8] = 0;
  *(v13 + 2) = v15;
  v13[24] = 0;
  v13[25] = 0;
  *(v13 + 4) = v16;
  v13[40] = 0;
  *(v13 + 6) = v17;
  v13[56] = 0;
  *(v13 + 8) = v3;
  *(v13 + 9) = v4;
  *(v13 + 10) = v5;
}

void PasteButton.init(supportedTypes:payloadAction:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void PasteButton.init<A>(supportedContentTypes:validator:payloadAction:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  PasteButton.init<A>(supportedTypes:validator:payloadAction:)();
}

uint64_t PasteboardEventObserver.canPaste.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PasteboardEventObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for uiPasteboardChangedSyncNotification != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.uiPasteboardChangedSyncNotification object:0];

  v2 = OBJC_IVAR____TtC7SwiftUIP33_B62A21EA259929D05882C7658D395AEF23PasteboardEventObserver__canPaste;
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(0, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PasteboardEventObserver@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PasteboardEventObserver();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for uiPasteboardChangedSyncNotification()
{
  result = MEMORY[0x18D00C850](0xD000000000000024, 0x800000018CD5B9B0);
  static NSNotificationName.uiPasteboardChangedSyncNotification = result;
  return result;
}

uint64_t key path getter for PasteboardEventObserver.canPaste : PasteboardEventObserver@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PasteboardEventObserver.canPaste : PasteboardEventObserver()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *specialized PasteboardEventObserver.init(_:)(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(0, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC7SwiftUIP33_B62A21EA259929D05882C7658D395AEF23PasteboardEventObserver__canPaste;
  v16[15] = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v3[v12], v11, v8);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  *(v3 + 4) = a3;

  v17.value._rawValue = 0;
  v17.is_nil = a1;
  LOBYTE(a3) = PasteHelper.canPaste(_:)(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v16[14] = a3 & 1;

  static Published.subscript.setter();
  v13 = [objc_opt_self() defaultCenter];
  v14 = one-time initialization token for uiPasteboardChangedSyncNotification;

  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v3 selector:sel_invalidateEnabledState name:static NSNotificationName.uiPasteboardChangedSyncNotification object:0];

  return v3;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>();
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for Button<Label<Text, Image>>();
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl>)
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E69808E8]);
    type metadata accessor for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl>);
    }
  }
}

uint64_t initializeWithCopy for PasteButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for PasteButton(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for PasteButton(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

void type metadata completion function for PasteboardEventObserver()
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_2(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>, UIKitPasteControl> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>();
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_3(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, type metadata accessor for Button<Label<Text, Image>>);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ObservedObject<PasteboardEventObserver>(uint64_t a1)
{
  type metadata accessor for ObservedObject<PasteboardEventObserver>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ObservedObject<PasteboardEventObserver>()
{
  if (!lazy cache variable for type metadata for ObservedObject<PasteboardEventObserver>)
  {
    type metadata accessor for PasteboardEventObserver();
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_3(&lazy protocol witness table cache variable for type PasteboardEventObserver and conformance PasteboardEventObserver, type metadata accessor for PasteboardEventObserver);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<PasteboardEventObserver>);
    }
  }
}

void static AccessibilityNodeProxy.makeProxyForIdentifiedView(with:environment:)(id **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  *v86 = *a2;
  *&v86[8] = v6;
  if ((EnvironmentValues.accessibilityEnabled.getter() & 1) == 0 || !v4)
  {
    goto LABEL_6;
  }

  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != 1)
    {
      goto LABEL_5;
    }

LABEL_40:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x18D00E9C0](0, v4);
      v60 = MEMORY[0x18D00E9C0](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v60 = v4[4];
      v61 = v60;
    }

    v62 = specialized static AccessibilityCore.queryChildren(element:options:)(v60, 3);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v64 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
      v65 = Strong;
      swift_beginAccess();
      v66 = *&v65[v64];
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC0];
    }

    *v86 = v62;
    specialized Array.append<A>(contentsOf:)(v66);

    static AccessibilityNodeProxy.makeProxyForIdentifiedView(for:children:depth:)(v61, v62, 1, v81);

    v88 = v81[8];
    v89[0] = v81[9];
    v89[1] = v81[10];
    *&v89[2] = v82;
    *&v86[64] = v81[4];
    *&v86[80] = v81[5];
    *&v86[96] = v81[6];
    v87 = v81[7];
    *v86 = v81[0];
    *&v86[16] = v81[1];
    *&v86[32] = v81[2];
    *&v86[48] = v81[3];
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v86, v67, v68, v69);
    goto LABEL_7;
  }

  v7 = __CocoaSet.count.getter();
  if (v7 == 1)
  {
    goto LABEL_40;
  }

LABEL_5:
  if (!v7)
  {
LABEL_6:
    _s7SwiftUI22AccessibilityNodeProxyVSgWOi0_(v86);
LABEL_7:
    v8 = v89[0];
    *(a3 + 128) = v88;
    *(a3 + 144) = v8;
    *(a3 + 160) = v89[1];
    *(a3 + 176) = *&v89[2];
    v9 = *&v86[80];
    *(a3 + 64) = *&v86[64];
    *(a3 + 80) = v9;
    v10 = v87;
    *(a3 + 96) = *&v86[96];
    *(a3 + 112) = v10;
    v11 = *&v86[16];
    *a3 = *v86;
    *(a3 + 16) = v11;
    v12 = *&v86[48];
    *(a3 + 32) = *&v86[32];
    *(a3 + 48) = v12;
    return;
  }

  *&v81[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v78 = v6;
  v80 = v5;
  v76 = a3;
  v13 = *&v81[0];
  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      v15 = *(MEMORY[0x18D00E9C0](i, v4) + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v15);
      v16 = Hasher._finalize()();
      swift_unknownObjectRelease();
      *&v81[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v13 = *&v81[0];
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
    }
  }

  else
  {
    v19 = v4 + 4;
    v20 = v7;
    do
    {
      v21 = *(*v19 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v21);
      v22 = Hasher._finalize()();
      *&v81[0] = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        v25 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v25;
        v13 = *&v81[0];
      }

      *(v13 + 16) = v24 + 1;
      *(v13 + 8 * v24 + 32) = v22;
      ++v19;
      --v20;
    }

    while (v20);
  }

  v75 = Array<A>.hashValue.getter();

  *v86 = v80;
  *&v86[8] = v78;
  EnvironmentValues.layoutDirection.getter();
  a3 = MEMORY[0x1E69E7CC0];
  *&v81[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache]);
  Dictionary.reserveCapacity(_:)(v7);

  v83[0] = specialized Array._copyToContiguousArray()(v26);
  v4 = 0;
  specialized MutableCollection<>.sort(by:)(v83, v85, 0, 4, v81);
  v7 = v83[0];

  if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
LABEL_50:
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_51:

    v29 = MEMORY[0x1E69E7CC0];
LABEL_52:
    LOBYTE(v85) = 1;
    *v86 = v75;
    *&v86[8] = 1;
    *&v86[12] = 0x200000002;
    memset(&v86[24], 0, 81);
    *&v87 = 0;
    BYTE8(v87) = 1;
    v88 = 0uLL;
    *&v89[0] = v29;
    memset(v89 + 8, 0, 32);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v86, v57, v58, v59);
    v70 = v89[0];
    *(v76 + 128) = v88;
    *(v76 + 144) = v70;
    *(v76 + 160) = v89[1];
    *(v76 + 176) = *&v89[2];
    v71 = *&v86[80];
    *(v76 + 64) = *&v86[64];
    *(v76 + 80) = v71;
    v72 = v87;
    *(v76 + 96) = *&v86[96];
    *(v76 + 112) = v72;
    v73 = *&v86[16];
    *v76 = *v86;
    *(v76 + 16) = v73;
    v74 = *&v86[48];
    *(v76 + 32) = *&v86[32];
    *(v76 + 48) = v74;
    return;
  }

  v27 = *(v7 + 16);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_22:
  v85 = a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    v29 = v85;
    v77 = v27 - 1;
    v79 = v7 & 0xC000000000000001;
    v30 = MEMORY[0x1E69E7CC0];
    if ((v7 & 0xC000000000000001) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    for (j = MEMORY[0x18D00E9C0](v28, v7); ; j = *(v7 + 8 * v28 + 32))
    {
      v32 = j;
      v33 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
      swift_beginAccess();
      v34 = *&v32[v33];
      *v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(v30);
      v35 = v34 >> 62 ? __CocoaSet.count.getter() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

      Dictionary.reserveCapacity(_:)(v35);

      v84 = specialized Array._copyToContiguousArray()(v36);
      specialized MutableCollection<>.sort(by:)(&v84, 2u, 0, 2, v86);
      if (v4)
      {
        break;
      }

      v37 = v84;

      v38 = specialized static AccessibilityCore.queryFilter(elements:options:)(v37, 3);

      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
        v41 = v7;
        v42 = v30;
        v43 = v39;
        swift_beginAccess();
        v44 = *&v43[v40];

        v30 = v42;
        v7 = v41;
      }

      else
      {
        v44 = v30;
      }

      v84 = v38;
      specialized Array.append<A>(contentsOf:)(v44);
      static AccessibilityNodeProxy.makeProxyForIdentifiedView(for:children:depth:)(v32, v84, 1, v86);

      v85 = v29;
      v46 = *(v29 + 16);
      v45 = *(v29 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v29 = v85;
      }

      *(v29 + 16) = v46 + 1;
      v47 = v29 + 184 * v46;
      v48 = *v86;
      v49 = *&v86[16];
      v50 = *&v86[48];
      *(v47 + 64) = *&v86[32];
      *(v47 + 80) = v50;
      *(v47 + 32) = v48;
      *(v47 + 48) = v49;
      v51 = *&v86[64];
      v52 = *&v86[80];
      v53 = v87;
      *(v47 + 128) = *&v86[96];
      *(v47 + 144) = v53;
      *(v47 + 96) = v51;
      *(v47 + 112) = v52;
      v54 = v88;
      v55 = v89[0];
      v56 = v89[1];
      *(v47 + 208) = *&v89[2];
      *(v47 + 176) = v55;
      *(v47 + 192) = v56;
      *(v47 + 160) = v54;
      if (v77 == v28)
      {

        goto LABEL_52;
      }

      ++v28;
      if (v79)
      {
        goto LABEL_24;
      }

LABEL_25:
      ;
    }
  }

  __break(1u);

  __break(1u);
}

double AccessibilityNodeProxy.visibility.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 12);
  *a1 = result;
  return result;
}

double AccessibilityNodeProxy.visibility.setter(double *a1)
{
  result = *a1;
  *(v1 + 12) = *a1;
  return result;
}

uint64_t AccessibilityNodeProxy.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AccessibilityNodeProxy.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AccessibilityNodeProxy.value.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AccessibilityNodeProxy.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AccessibilityNodeProxy.hint.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccessibilityNodeProxy.hint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t AccessibilityNodeProxy.identifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t AccessibilityNodeProxy.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 AccessibilityNodeProxy.traits.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 88);
  *a1 = result;
  return result;
}

__n128 AccessibilityNodeProxy.traits.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 88) = *a1;
  return result;
}

uint64_t AccessibilityNodeProxy.sortPriority.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t AccessibilityNodeProxy.actions.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t AccessibilityNodeProxy.customContent.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t AccessibilityNodeProxy.children.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t AccessibilityNodeProxy.inputLabels.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t AccessibilityNodeProxy.url.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t AccessibilityNodeProxy.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t AccessibilityNodeProxy.metadata.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t AccessibilityNodeProxy.serializedData.getter()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy();
  v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v0;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy()
{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy);
  }

  return result;
}

double static AccessibilityNodeProxy.deserialize(_:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  lazy protocol witness table accessor for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v11, v2, v3, v4);
  v5 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v21;
  *(a1 + 176) = v22;
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  v7 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v7;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = *&v13;
  v10 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v10;
  return result;
}

__n128 AccessibilityNodeProxy.init(id:isOpaque:isPlatformNode:visibility:label:value:hint:identifier:traits:isDisabled:sortPriority:actions:customContent:children:inputLabels:url:metadata:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, _OWORD *a13, char a14, uint64_t a15, char a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 12) = *a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = *a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16 & 1;
  *(a9 + 128) = a17;
  *(a9 + 144) = a18;
  *(a9 + 160) = a19;
  *(a9 + 176) = a20;
  return result;
}

uint64_t static AccessibilityNodeProxy.makeProxyForIdentifiedView(for:children:depth:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v221 = a3;
  v230 = a2;
  v219 = a4;
  v7 = type metadata accessor for URL();
  v208 = *(v7 - 8);
  v209 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v207 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_1(0, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v218 = &v206 - v10;
  v228 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v220 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v224 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_1(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v223 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v206 - v15;
  v225 = a1;
  AccessibilityNode.attachment.getter(&v241);
  outlined init with copy of AccessibilityProperties(&v241, v253);
  outlined destroy of AccessibilityAttachment(&v241);
  v232 = AccessibilityProperties.inputLabels.getter();
  v233 = v16;
  if (v232)
  {
    v231 = *(v232 + 16);
    if (v231)
    {
      v17 = 0;
      v18 = &v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
      v19 = v232 + 56;
      v234 = MEMORY[0x1E69E7CC0];
      while (v17 < *(v232 + 16))
      {
        v20 = *(v19 - 8);
        v22 = *(v19 - 24);
        v21 = *(v19 - 16);
        v23 = *(v18 + 1);
        *&v241 = *v18;
        *(&v241 + 1) = v23;
        v238 = 0uLL;
        outlined copy of Text.Storage(v22, v21, v20);

        MEMORY[0x18D009CB0](v235, v24);
        v4 = Text.resolveString(in:with:idiom:)();
        v26 = v25;
        outlined consume of Text.Storage(v22, v21, v20);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v234 + 2) + 1, 1, v234);
        }

        v28 = *(v234 + 2);
        v27 = *(v234 + 3);
        v5 = (v28 + 1);
        if (v28 >= v27 >> 1)
        {
          v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v234);
        }

        ++v17;
        v29 = v234;
        *(v234 + 2) = v5;
        v30 = &v29[16 * v28];
        *(v30 + 4) = v4;
        *(v30 + 5) = v26;
        v19 += 32;
        v16 = v233;
        if (v231 == v17)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v234 = MEMORY[0x1E69E7CC0];
LABEL_13:
  }

  else
  {
    v234 = 0;
  }

  if (!*(AccessibilityProperties.customContentList.getter() + 16))
  {

    v5 = 0;
    goto LABEL_48;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v31 = *&v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
  *&v241 = *&v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
  *(&v241 + 1) = v31;

  v4 = Array<A>.resolve(in:)();

  if (!(v4 >> 62))
  {
    v32 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_17;
  }

LABEL_46:
  v32 = __CocoaSet.count.getter();
  if (!v32)
  {
    goto LABEL_47;
  }

LABEL_17:
  v16 = 0;
  v229 = v4 & 0xC000000000000001;
  v222 = v4 & 0xFFFFFFFFFFFFFF8;
  v226 = v32;
  v227 = v4;
  do
  {
    if (v229)
    {
      v33 = MEMORY[0x18D00E9C0](v16, v4);
      v34 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v16 >= *(v222 + 16))
      {
        goto LABEL_44;
      }

      v33 = *(v4 + 8 * v16 + 32);
      v34 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_42;
      }
    }

    if (!v5)
    {

      goto LABEL_19;
    }

    v231 = v34;
    v35 = v33;
    v36 = [v33 label];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = v35;
    v40 = [v35 value];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v232 = v42;

    v43 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v241 = v5;
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v38);
    v47 = v5[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_43;
    }

    v50 = v45;
    if (v43[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v45 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v50 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v38);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_171;
      }

      v46 = v51;
      if ((v50 & 1) == 0)
      {
LABEL_31:
        v5 = v241;
        *(v241 + 8 * (v46 >> 6) + 64) |= 1 << v46;
        v53 = (v5[6] + 16 * v46);
        *v53 = v4;
        v53[1] = v38;
        v54 = (v5[7] + 16 * v46);
        v55 = v232;
        *v54 = v41;
        v54[1] = v55;

        v56 = v5[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_45;
        }

        v5[2] = v58;
        goto LABEL_36;
      }
    }

    v5 = v241;
    v59 = (*(v241 + 56) + 16 * v46);
    v60 = v232;
    *v59 = v41;
    v59[1] = v60;

LABEL_36:
    v32 = v226;
    v4 = v227;
    v34 = v231;
LABEL_19:
    ++v16;
  }

  while (v34 != v32);

  v16 = v233;
LABEL_48:
  v226 = v5;
  LOBYTE(v238) = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v238, &v241);
  v61 = dword_18CDFE1C0[v241];
  v232 = v221 - 1;
  v217 = v61;
  if (v221 < 1)
  {
    v216 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (v230 >> 62)
    {
      v62 = __CocoaSet.count.getter();
    }

    else
    {
      v62 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v62)
    {
      *&v238 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 & ~(v62 >> 63), 0);
      if (v62 < 0)
      {
        __break(1u);

        __break(1u);
LABEL_171:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v63 = 0;
      v64 = v230;
      v231 = v230 & 0xC000000000000001;
      v65 = v238;
      do
      {
        if (v231)
        {
          v66 = MEMORY[0x18D00E9C0](v63);
        }

        else
        {
          v66 = *(v64 + 8 * v63 + 32);
        }

        v67 = v66;
        v68 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
        swift_beginAccess();
        v69 = *&v67[v68];
        *&v241 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        if (v69 >> 62)
        {
          v70 = __CocoaSet.count.getter();
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache]);

        Dictionary.reserveCapacity(_:)(v70);

        *&v237 = specialized Array._copyToContiguousArray()(v71);
        specialized MutableCollection<>.sort(by:)(&v237, 2u, 0, 2, &v241);

        v72 = v237;

        v73 = specialized static AccessibilityCore.queryFilter(elements:options:)(v72, 3);

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v75 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
          v76 = Strong;
          swift_beginAccess();
          v77 = *&v76[v75];
        }

        else
        {
          v77 = MEMORY[0x1E69E7CC0];
        }

        *&v241 = v73;
        specialized Array.append<A>(contentsOf:)(v77);
        static AccessibilityNodeProxy.makeProxyForIdentifiedView(for:children:depth:)(&v241, v67, v241, v232);

        *&v238 = v65;
        v79 = *(v65 + 16);
        v78 = *(v65 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v65 = v238;
        }

        ++v63;
        *(v65 + 16) = v79 + 1;
        v80 = v65 + 184 * v79;
        v81 = v241;
        v82 = v242;
        v83 = v244;
        *(v80 + 64) = v243;
        *(v80 + 80) = v83;
        *(v80 + 32) = v81;
        *(v80 + 48) = v82;
        v84 = v245;
        v85 = v246;
        v86 = v248;
        *(v80 + 128) = v247;
        *(v80 + 144) = v86;
        *(v80 + 96) = v84;
        *(v80 + 112) = v85;
        v87 = v249;
        v88 = v250;
        v89 = v251;
        *(v80 + 208) = v252;
        *(v80 + 176) = v88;
        *(v80 + 192) = v89;
        *(v80 + 160) = v87;
        v64 = v230;
      }

      while (v62 != v63);
      v216 = v65;
    }

    else
    {
      v216 = MEMORY[0x1E69E7CC0];
    }

    v16 = v233;
  }

  v90 = AccessibilityNode.resolvedLabels.getter();
  if (one-time initialization token for comma != -1)
  {
    goto LABEL_168;
  }

LABEL_71:
  v91 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v90);
  v93 = v92;

  v94 = AccessibilityNode.resolvedPlainTextValue.getter();
  v214 = v93;
  v215 = v91;
  if (v95)
  {
    v212 = v95;
    v213 = v94;
    goto LABEL_79;
  }

  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(v258, &v241, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v242 + 1) == 1)
  {
    v96 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
    v97 = MEMORY[0x1E69804E0];
    v98 = &v241;
    goto LABEL_78;
  }

  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(&v241, &v238, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  outlined destroy of AccessibilityValueStorage(&v241);
  if (*(&v239 + 1))
  {
    v99 = AnyAccessibilityValue.displayDescription.getter();
    v212 = v100;
    v213 = v99;
    outlined destroy of AnyAccessibilityValue(&v238);
  }

  else
  {
    v96 = &lazy cache variable for type metadata for AnyAccessibilityValue?;
    v97 = MEMORY[0x1E697FBB0];
    v98 = &v238;
LABEL_78:
    outlined destroy of AccessibilityValueStorage?(v98, v96, v97);
    v212 = 0;
    v213 = 0;
  }

LABEL_79:
  AccessibilityNode.attachment.getter(&v241);
  outlined init with copy of AccessibilityProperties(&v241, &v238);
  outlined destroy of AccessibilityAttachment(&v241);
  v101 = AccessibilityProperties.hints.getter();
  outlined destroy of AccessibilityProperties(&v238);
  v102 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v101);
  v210 = v103;
  v211 = v102;

  if (v257)
  {
    v104 = 0;
  }

  else
  {
    v104 = v255;
  }

  if (v257)
  {
    v105 = 0;
  }

  else
  {
    v105 = v256;
  }

  *&v237 = v104;
  *(&v237 + 1) = v105;
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v106 = *(v241 + 16);
  if (v106)
  {
    v232 = v241;
    v107 = v241 + 32;
    v108 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of AnyAccessibilityAction(v107, &v241);
      v110 = *(&v242 + 1);
      v111 = v243;
      __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
      *&v238 = v104;
      *(&v238 + 1) = v105;
      v112 = (*(v111 + 48))(&v238, v110, v111);
      v114 = v113;
      v116 = v115;
      outlined destroy of AnyAccessibilityAction(&v241);
      if ((v116 & 0x100) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
        }

        v118 = *(v108 + 2);
        v117 = *(v108 + 3);
        v119 = v108;
        if (v118 >= v117 >> 1)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v108);
        }

        *(v119 + 2) = v118 + 1;
        v108 = v119;
        v109 = &v119[24 * v118];
        *(v109 + 4) = v112;
        *(v109 + 5) = v114;
        v109[48] = v116 & 1;
      }

      v107 += 48;
      --v106;
    }

    while (v106);

    v16 = v233;
  }

  else
  {

    v108 = MEMORY[0x1E69E7CC0];
  }

  v120 = *(v108 + 2);
  v121 = v223;
  if (v120)
  {
    v122 = (v108 + 32);
    do
    {
      v124 = *v122;
      v122 += 3;
      v123 = v124;
      if (v124)
      {
        if ((v105 & 1) == 0)
        {
          v105 |= 1uLL;
          *(&v237 + 1) = v105;
        }

        if ((v104 & 1) == 0)
        {
          v104 |= 1uLL;
          *&v237 = v104;
        }
      }

      if ((~v123 & 0x10000) == 0)
      {
        if ((v105 & 2) == 0)
        {
          v105 |= 2uLL;
          *(&v237 + 1) = v105;
        }

        if ((v104 & 2) == 0)
        {
          v104 |= 2uLL;
          *&v237 = v104;
        }
      }

      --v120;
    }

    while (v120);
  }

  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(v258, &v241, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v242 + 1) == 1)
  {
    outlined destroy of AccessibilityValueStorage?(&v241, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  }

  else
  {
    v238 = v237;
    v125 = AccessibilityValueStorage.impliedRole(for:)(&v238);
    v127 = v126;
    outlined destroy of AccessibilityValueStorage(&v241);
    if ((v127 & 0x100) == 0)
    {
      AccessibilityRole.update(traits:)(&v237, v125);
    }
  }

  v90 = MEMORY[0x1E69E7CC8];
  if (!isAppleInternalBuild()())
  {
    goto LABEL_139;
  }

  *&v241 = [v225 accessibilityTraits];
  v128 = v90;
  v129 = dispatch thunk of CustomStringConvertible.description.getter();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  *&v241 = v128;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, v131, 0x737469617254, 0xE600000000000000, v132);
  v90 = v241;
  AccessibilityProperties.customAttributes.getter();
  v133 = v241;
  if (!v241)
  {
    goto LABEL_139;
  }

  v231 = v90;
  v134 = AccessibilityCustomAttributes.attributeNames.getter();
  v135 = v134;
  v230 = *(v134 + 16);
  if (v230)
  {
    v136 = 0;
    v229 = v220 + 56;
    v227 = (v220 + 48);
    v137 = (v134 + 40);
    v138 = v228;
    v221 = v134;
    v222 = v133;
    while (1)
    {
      if (v136 >= *(v135 + 16))
      {
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        swift_once();
        goto LABEL_71;
      }

      v90 = v121;
      v140 = *(v137 - 1);
      v139 = *v137;
      v141 = *(v133 + 16);
      v232 = v140;
      if (v141)
      {

        v142 = specialized __RawDictionaryStorage.find<A>(_:)(v140, v139);
        if (v143)
        {
          v144 = v220;
          outlined init with copy of AccessibilityCustomAttributes.Value(*(v133 + 56) + *(v220 + 72) * v142, v16);
          v145 = *(v144 + 56);
          v138 = v228;
          v145(v16, 0, 1, v228);
        }

        else
        {
          v138 = v228;
          (*v229)(v16, 1, 1, v228);
        }
      }

      else
      {
        (*v229)(v16, 1, 1, v138);
      }

      v121 = v90;
      outlined init with copy of AccessibilityCustomAttributes.Value?(v16, v90);
      if ((*v227)(v90, 1, v138) != 1)
      {
        break;
      }

      outlined destroy of AccessibilityCustomAttributes.Value?(v16, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920]);

LABEL_118:
      ++v136;
      v137 += 2;
      if (v230 == v136)
      {
        goto LABEL_138;
      }
    }

    outlined init with take of AccessibilityCustomAttributes.Value(v90, v224);
    v146 = AccessibilityCustomAttributes.Value.displayDescription.getter();
    v148 = v147;
    v149 = v231;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v241 = v149;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v232, v139);
    v151 = *(v149 + 16);
    v152 = (v150 & 1) == 0;
    v153 = v151 + v152;
    if (__OFADD__(v151, v152))
    {
      goto LABEL_166;
    }

    v154 = v150;
    if (*(v149 + 24) >= v153)
    {
      v138 = v228;
      if ((v90 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        goto LABEL_130;
      }

      v157 = v232;
      if (v150)
      {
        goto LABEL_135;
      }

LABEL_131:
      v90 = v241;
      *(v241 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      v158 = (*(v90 + 48) + 16 * v16);
      *v158 = v157;
      v158[1] = v139;
      v159 = (*(v90 + 56) + 16 * v16);
      *v159 = v146;
      v159[1] = v148;
      outlined destroy of AccessibilityCustomAttributes.Value(v224, MEMORY[0x1E6980920]);
      v16 = v233;
      outlined destroy of AccessibilityCustomAttributes.Value?(v233, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920]);
      v160 = *(v90 + 16);
      v57 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v57)
      {
        goto LABEL_167;
      }

      v231 = v90;
      *(v90 + 16) = v161;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v153, v90);
      v155 = specialized __RawDictionaryStorage.find<A>(_:)(v232, v139);
      if ((v154 & 1) != (v156 & 1))
      {
        goto LABEL_171;
      }

      v16 = v155;
LABEL_130:
      v138 = v228;
      v157 = v232;
      if ((v154 & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_135:

      v231 = v241;
      v162 = (*(v241 + 56) + 16 * v16);
      *v162 = v146;
      v162[1] = v148;

      outlined destroy of AccessibilityCustomAttributes.Value(v224, MEMORY[0x1E6980920]);
      v16 = v233;
      outlined destroy of AccessibilityCustomAttributes.Value?(v233, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920]);
    }

    v133 = v222;
    v121 = v223;
    v135 = v221;
    goto LABEL_118;
  }

LABEL_138:

  v90 = v231;
LABEL_139:
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(v258, &v238, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v239 + 1) == 1)
  {
    v163 = v90;
    outlined destroy of AccessibilityValueStorage?(&v238, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
    goto LABEL_155;
  }

  v241 = v238;
  v242 = v239;
  v243 = v240;
  if (AccessibilityValueStorage.isBounded.getter())
  {
    AccessibilityValueStorage.platformMinValue.getter();
    v164 = MEMORY[0x1E69E7CA0];
    if (*(&v239 + 1))
    {
      type metadata accessor for NSNumber();
      v165 = v90;
      if (swift_dynamicCast())
      {
        v166 = v236;
        v167 = [v166 stringValue];
        v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v169;

        goto LABEL_148;
      }
    }

    else
    {
      v165 = v90;
      outlined destroy of AccessibilityValueStorage?(&v238, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

    v168 = 0;
    v170 = 0xE000000000000000;
LABEL_148:
    v171 = swift_isUniquelyReferenced_nonNull_native();
    *&v238 = v165;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v168, v170, 0x756C6156206E694DLL, 0xE900000000000065, v171);
    v172 = v238;
    AccessibilityValueStorage.platformMaxValue.getter();
    if (*(&v239 + 1))
    {
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v173 = v236;
        v174 = [v173 stringValue];
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        goto LABEL_153;
      }
    }

    else
    {
      outlined destroy of AccessibilityValueStorage?(&v238, &lazy cache variable for type metadata for Any?, v164 + 8);
    }

    v175 = 0;
    v177 = 0xE000000000000000;
LABEL_153:
    v178 = swift_isUniquelyReferenced_nonNull_native();
    *&v238 = v172;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v175, v177, 0x756C61562078614DLL, 0xE900000000000065, v178);
    v163 = v238;
  }

  else
  {
    v163 = v90;
  }

  outlined destroy of AccessibilityValueStorage(&v241);
LABEL_155:
  v179 = *&v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v179);
  v180 = Hasher._finalize()();
  v181 = AccessibilityNode.isPlatformNode.getter();
  v182 = 0;
  v233 = v180;
  LODWORD(v232) = v181;
  if (v253[1])
  {
    v183 = 0;
    if (v254 <= 1u)
    {
      v182 = v253[0];
    }
  }

  else
  {
    v183 = 0;
  }

  v230 = *(&v237 + 1);
  v231 = v237;
  v184 = *&v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
  *&v241 = *&v225[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
  *(&v241 + 1) = v184;

  LODWORD(v229) = EnvironmentValues.isEnabled.getter();

  v185 = AccessibilityProperties.sortPriority.getter();
  v187 = v186;
  v188 = AccessibilityNode.actionNames.getter();

  v189 = v218;
  AccessibilityProperties.linkDestination.getter();
  v190 = v189;
  v191 = type metadata accessor for LinkDestination.Configuration();
  if ((*(*(v191 - 8) + 48))(v189, 1, v191) == 1)
  {
    outlined destroy of AccessibilityProperties(v253);
    outlined destroy of AccessibilityCustomAttributes.Value?(v189, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
    v192 = 0;
    v193 = 0;
  }

  else
  {
    v194 = v207;
    LinkDestination.Configuration.url.getter();
    outlined destroy of AccessibilityCustomAttributes.Value(v190, MEMORY[0x1E697E810]);
    v192 = URL.absoluteString.getter();
    v193 = v195;
    (*(v208 + 8))(v194, v209);
    outlined destroy of AccessibilityProperties(v253);
  }

  v196 = *(v163 + 16);

  if (!v196)
  {

    v163 = 0;
  }

  v198 = v219;
  *v219 = v233;
  *(v198 + 8) = 0;
  *(v198 + 9) = v232 & 1;
  v199 = v217;
  *(v198 + 3) = v217;
  *(v198 + 4) = v199;
  v200 = v214;
  v198[3] = v215;
  v198[4] = v200;
  v201 = v212;
  v198[5] = v213;
  v198[6] = v201;
  v202 = v210;
  v198[7] = v211;
  v198[8] = v202;
  v198[9] = v182;
  v198[10] = v183;
  v203 = v230;
  v198[11] = v231;
  v198[12] = v203;
  *(v198 + 104) = (v229 & 1) == 0;
  v198[14] = v185;
  *(v198 + 120) = v187 & 1;
  v204 = v226;
  v198[16] = v188;
  v198[17] = v204;
  v205 = v234;
  v198[18] = v216;
  v198[19] = v205;
  v198[20] = v192;
  v198[21] = v193;
  v198[22] = v163;
  return result;
}

uint64_t AccessibilityNodeProxy.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65757161704F7369;
      break;
    case 2:
      result = 0x6F6674616C507369;
      break;
    case 3:
      result = 0x696C696269736976;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
      result = 0x65756C6176;
      break;
    case 6:
      result = 1953393000;
      break;
    case 7:
      result = 0x696669746E656469;
      break;
    case 8:
      result = 0x737469617274;
      break;
    case 9:
      result = 0x6C62617369447369;
      break;
    case 10:
      result = 0x6F69725074726F73;
      break;
    case 11:
      result = 0x736E6F69746361;
      break;
    case 12:
      result = 0x6F436D6F74737563;
      break;
    case 13:
      result = 0x6E6572646C696863;
      break;
    case 14:
      result = 0x62614C7475706E69;
      break;
    case 15:
      result = 7107189;
      break;
    case 16:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityNodeProxy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AccessibilityNodeProxy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityNodeProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityNodeProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityNodeProxy.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityNodeProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityNodeProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *(v1 + 8);
  v46 = *(v1 + 9);
  v47 = v8;
  v9 = *(v1 + 12);
  v10 = *(v1 + 24);
  v44 = *(v1 + 32);
  v45 = v10;
  v11 = *(v1 + 40);
  v42 = *(v1 + 48);
  v43 = v11;
  v12 = *(v1 + 64);
  v40 = *(v1 + 56);
  v41 = v12;
  v13 = *(v1 + 80);
  v38 = *(v1 + 72);
  v39 = v13;
  v14 = *(v1 + 96);
  v36 = *(v1 + 88);
  v37 = v14;
  LODWORD(v11) = *(v1 + 104);
  v15 = *(v1 + 112);
  v34 = *(v1 + 120);
  v35 = v11;
  v16 = *(v1 + 136);
  v32 = *(v1 + 128);
  v33 = v15;
  v17 = *(v1 + 152);
  v30 = *(v1 + 144);
  v31 = v16;
  v29 = v17;
  v18 = *(v1 + 168);
  v27 = *(v1 + 160);
  v28 = v18;
  v19 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v49) = 0;
  v20 = v48;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v20 || (v26 = v19, LOBYTE(v49) = 1, KeyedEncodingContainer.encode(_:forKey:)(), LOBYTE(v49) = 2, KeyedEncodingContainer.encode(_:forKey:)(), v48 = 0, v49 = v9, v51 = 3, lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy(), v20 = v48, KeyedEncodingContainer.encode<A>(_:forKey:)(), v20) || (LOBYTE(v49) = 4, KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), LOBYTE(v49) = 5, KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), LOBYTE(v49) = 6, KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), LOBYTE(v49) = 7, KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), v48 = 0, v49 = v36, v50 = v37, v51 = 8, lazy protocol witness table accessor for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy(), v20 = v48, KeyedEncodingContainer.encode<A>(_:forKey:)(), v20))
  {
    v48 = v20;
  }

  else
  {
    LOBYTE(v49) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v48 = 0;
    LOBYTE(v49) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = 0;
    v49 = v32;
    v51 = 11;
    _sSaySSGMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v21 = v48;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v48 = v21;
    if (!v21)
    {
      v49 = v31;
      v51 = 12;
      _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [String : String]);
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      v22 = v48;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v48 = v22;
      if (!v22)
      {
        v49 = v30;
        v51 = 13;
        _sSaySSGMaTm_0(0, &lazy cache variable for type metadata for [AccessibilityNodeProxy], &type metadata for AccessibilityNodeProxy, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [AccessibilityNodeProxy] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityNodeProxy] and conformance <A> [A], lazy protocol witness table accessor for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy);
        v23 = v48;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v48 = v23;
        if (!v23)
        {
          v49 = v29;
          v51 = 14;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v48 = 0;
          LOBYTE(v49) = 15;
          KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          v48 = 0;
          v49 = v26;
          v51 = 16;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v48 = 0;
        }
      }
    }
  }

  return (*(v5 + 8))(v7, v4);
}

void AccessibilityNodeProxy.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v6 = *(v1 + 12);
  v5 = *(v1 + 16);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v36 = *(v1 + 64);
  v37 = *(v1 + 88);
  v38 = *(v1 + 96);
  v35 = *(v1 + 112);
  v39 = *(v1 + 104);
  v40 = *(v1 + 120);
  v10 = *(v1 + 128);
  v41 = *(v1 + 136);
  v42 = *(v1 + 144);
  v43 = *(v1 + 152);
  v44 = *(v1 + 168);
  v45 = *(v1 + 176);
  MEMORY[0x18D00F6F0](*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v11 = v9;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v11 = v9;
    if (v8)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v36)
      {
        goto LABEL_4;
      }

LABEL_8:
      Hasher._combine(_:)(0);
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (!v36)
  {
    goto LABEL_8;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v11)
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_10;
  }

LABEL_9:
  Hasher._combine(_:)(0);
LABEL_10:
  MEMORY[0x18D00F730](v37);
  MEMORY[0x18D00F730](v38);
  Hasher._combine(_:)(v39);
  if (v40)
  {
    Hasher._combine(_:)(0);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v35;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x18D00F730](v15);
    if (v10)
    {
LABEL_12:
      Hasher._combine(_:)(1u);
      MEMORY[0x18D00F6F0](*(v10 + 16));
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = v10 + 40;
        do
        {

          String.hash(into:)();

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      v14 = v41;
      if (v41)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
  v14 = v41;
  if (v41)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v14);
    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
LABEL_23:
  MEMORY[0x18D00F6F0](*(v42 + 16));
  v16 = *(v42 + 16);
  if (v16)
  {
    v17 = (v42 + 32);
    do
    {
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[3];
      v46[2] = v17[2];
      v46[3] = v20;
      v46[0] = v18;
      v46[1] = v19;
      v21 = v17[4];
      v22 = v17[5];
      v23 = v17[7];
      v46[6] = v17[6];
      v46[7] = v23;
      v46[4] = v21;
      v46[5] = v22;
      v24 = v17[8];
      v25 = v17[9];
      v26 = v17[10];
      v47 = *(v17 + 22);
      v46[9] = v25;
      v46[10] = v26;
      v46[8] = v24;
      v27 = v17[9];
      v58 = v17[8];
      v59 = v27;
      v60 = v17[10];
      v61 = *(v17 + 22);
      v28 = v17[5];
      v54 = v17[4];
      v55 = v28;
      v29 = v17[7];
      v56 = v17[6];
      v57 = v29;
      v30 = v17[1];
      v50 = *v17;
      v51 = v30;
      v31 = v17[3];
      v52 = v17[2];
      v53 = v31;
      outlined init with copy of AccessibilityNodeProxy(v46, v48);
      AccessibilityNodeProxy.hash(into:)(a1);
      v48[8] = v58;
      v48[9] = v59;
      v48[10] = v60;
      v49 = v61;
      v48[4] = v54;
      v48[5] = v55;
      v48[6] = v56;
      v48[7] = v57;
      v48[0] = v50;
      v48[1] = v51;
      v48[2] = v52;
      v48[3] = v53;
      outlined destroy of AccessibilityNodeProxy(v48);
      v17 = (v17 + 184);
      --v16;
    }

    while (v16);
  }

  if (!v43)
  {
    Hasher._combine(_:)(0);
    if (v44)
    {
      goto LABEL_31;
    }

LABEL_34:
    Hasher._combine(_:)(0);
    v34 = v45;
    if (v45)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x18D00F6F0](*(v43 + 16));
  v32 = *(v43 + 16);
  if (v32)
  {
    v33 = v43 + 40;
    do
    {

      String.hash(into:)();

      v33 += 16;
      --v32;
    }

    while (v32);
  }

  if (!v44)
  {
    goto LABEL_34;
  }

LABEL_31:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  v34 = v45;
  if (v45)
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v34);
    return;
  }

LABEL_35:
  Hasher._combine(_:)(0);
}

Swift::Int AccessibilityNodeProxy.hashValue.getter()
{
  Hasher.init(_seed:)();
  AccessibilityNodeProxy.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AccessibilityNodeProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityNodeProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityNodeProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  v10 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v120 = v2;
LABEL_5:
    v77 = 0;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v11 = v7;
  LOBYTE(v90) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v90) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v90) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v120 = 0;
  v74 = v14;
  LOBYTE(v78) = 3;
  lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy();
  v16 = v120;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v16)
  {
    v120 = v16;
    (*(v11 + 8))(v9, v6);
    goto LABEL_5;
  }

  v72 = v13;
  v73 = v90;
  v17 = HIDWORD(v90);
  LOBYTE(v90) = 4;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v17;
  v71 = v18;
  LOBYTE(v90) = 5;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v20;
  LOBYTE(v90) = 6;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = v21;
  LOBYTE(v90) = 7;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v120 = 0;
  v64 = v22;
  v65 = v19;
  v24 = v23;
  LOBYTE(v78) = 8;
  lazy protocol witness table accessor for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy();
  v25 = v120;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v120 = v25;
  if (v25 || (v26 = v12, v62 = v91, v63 = v90, LOBYTE(v90) = 9, v61 = KeyedDecodingContainer.decode(_:forKey:)(), v120 = 0, LOBYTE(v90) = 10, v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v120 = 0, v118 = v27 & 1, _sSaySSGMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]), LOBYTE(v78) = 11, v77 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]), v28 = v120, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v120 = v28) != 0) || (v59 = v90, _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [String : String]), v30 = v29, LOBYTE(v78) = 12, v57 = lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]), v58 = v30, v31 = v120, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v120 = v31) != 0) || (v56 = v90, _sSaySSGMaTm_0(0, &lazy cache variable for type metadata for [AccessibilityNodeProxy], &type metadata for AccessibilityNodeProxy, MEMORY[0x1E69E62F8]), LOBYTE(v78) = 13, lazy protocol witness table accessor for type [AccessibilityNodeProxy] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityNodeProxy] and conformance <A> [A], lazy protocol witness table accessor for type AccessibilityNodeProxy and conformance AccessibilityNodeProxy), v32 = v120, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v120 = v32) != 0))
  {
    (*(v11 + 8))(v9, v6);
    v77 = 0;
    goto LABEL_6;
  }

  v75 = v90;
  LOBYTE(v78) = 14;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v120 = 0;
  v77 = v90;
  LOBYTE(v90) = 15;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v120 = 0;
  v34 = v33;
  v115 = 16;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v120 = 0;
  v72 &= 1u;
  v35 = v72;
  LODWORD(v57) = v74 & 1;
  v74 = v61 & 1;
  (*(v11 + 8))(v9, v6);
  v36 = v116;
  v53 = v26;
  *&v78 = v26;
  BYTE8(v78) = v35;
  v37 = v57;
  BYTE9(v78) = v57;
  HIDWORD(v78) = v73;
  LODWORD(v79) = v70;
  *(&v79 + 1) = v69;
  *&v80 = v71;
  *(&v80 + 1) = v65;
  *&v81 = v68;
  *(&v81 + 1) = v66;
  *&v82 = v67;
  *(&v82 + 1) = v64;
  *&v83 = v24;
  v54 = v24;
  *(&v83 + 1) = v63;
  *&v84 = v62;
  BYTE8(v84) = v74;
  HIDWORD(v84) = *(v119 + 3);
  *(&v84 + 9) = v119[0];
  v38 = v59;
  *&v85 = v60;
  v61 = v118;
  BYTE8(v85) = v118;
  *(&v85 + 9) = *v117;
  HIDWORD(v85) = *&v117[3];
  v39 = v55;
  v40 = v56;
  *&v86 = v59;
  *(&v86 + 1) = v56;
  v41 = v75;
  v42 = v77;
  *&v87 = v75;
  *(&v87 + 1) = v77;
  *&v88 = v55;
  *(&v88 + 1) = v34;
  v58 = v116;
  v89 = v116;
  v43 = v78;
  v44 = v79;
  v45 = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = v45;
  *a2 = v43;
  *(a2 + 16) = v44;
  v46 = v86;
  v47 = v87;
  v48 = v88;
  *(a2 + 176) = v36;
  *(a2 + 144) = v47;
  *(a2 + 160) = v48;
  v49 = v82;
  v50 = v83;
  v51 = v84;
  *(a2 + 112) = v85;
  *(a2 + 128) = v46;
  *(a2 + 80) = v50;
  *(a2 + 96) = v51;
  *(a2 + 64) = v49;
  outlined init with copy of AccessibilityNodeProxy(&v78, &v90);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v90 = v53;
  LOBYTE(v91) = v72;
  BYTE1(v91) = v37;
  HIDWORD(v91) = v73;
  v92 = v70;
  v93 = v69;
  v94 = v71;
  v95 = v65;
  v96 = v68;
  v97 = v66;
  v98 = v67;
  v99 = v64;
  v100 = v54;
  v101 = v63;
  v102 = v62;
  v103 = v74;
  *v104 = v119[0];
  *&v104[3] = *(v119 + 3);
  v105 = v60;
  v106 = v61;
  *&v107[3] = *&v117[3];
  *v107 = *v117;
  v108 = v38;
  v109 = v40;
  v110 = v41;
  v111 = v42;
  v112 = v39;
  v113 = v34;
  v114 = v58;
  return outlined destroy of AccessibilityNodeProxy(&v90);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityNodeProxy()
{
  Hasher.init(_seed:)();
  AccessibilityNodeProxy.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityNodeProxy()
{
  Hasher.init(_seed:)();
  AccessibilityNodeProxy.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x18D00F6F0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static AccessibilityNodeProxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a1 + 32);
    v131 = *(a1 + 40);
    v138 = *(a1 + 48);
    v127 = *(a1 + 56);
    v5 = *(a1 + 72);
    v136 = *(a1 + 64);
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(a1 + 120);
    v12 = *(a1 + 128);
    v11 = *(a1 + 136);
    v14 = *(a1 + 144);
    v13 = *(a1 + 152);
    v15 = *(a1 + 160);
    v16 = *(a1 + 168);
    v17 = *(a1 + 176);
    v18 = *(a2 + 32);
    v129 = *(a2 + 40);
    v19 = *(a2 + 48);
    v126 = *(a2 + 56);
    v134 = *(a2 + 64);
    v123 = *(a2 + 72);
    v128 = *(a2 + 80);
    v20 = *(a2 + 96);
    v21 = *(a2 + 104);
    v22 = *(a2 + 112);
    v23 = *(a2 + 120);
    v25 = *(a2 + 128);
    v24 = *(a2 + 136);
    v27 = *(a2 + 144);
    v26 = *(a2 + 152);
    v29 = *(a2 + 160);
    v28 = *(a2 + 168);
    v30 = *(a2 + 176);
    if (v4)
    {
      if (!v18)
      {
        return 0;
      }

      v124 = *(a2 + 88);
      v122 = *(a1 + 80);
      if (*(a1 + 24) != *(a2 + 24) || v4 != v18)
      {
        v108 = *(a2 + 104);
        v111 = *(a1 + 104);
        v115 = *(a1 + 144);
        v85 = *(a1 + 136);
        v87 = *(a1 + 152);
        v98 = *(a2 + 168);
        v101 = *(a2 + 160);
        v92 = *(a1 + 160);
        v95 = *(a1 + 168);
        v104 = *(a2 + 176);
        v31 = *(a1 + 176);
        v32 = *(a2 + 152);
        v33 = *(a2 + 144);
        v83 = *(a2 + 136);
        v34 = *(a1 + 128);
        v35 = *(a1 + 120);
        v36 = *(a2 + 128);
        v37 = *(a2 + 120);
        v38 = *(a1 + 96);
        v89 = *(a1 + 88);
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v7 = v38;
        v23 = v37;
        v25 = v36;
        v21 = v108;
        v8 = v111;
        v10 = v35;
        v12 = v34;
        v24 = v83;
        v11 = v85;
        v27 = v33;
        v26 = v32;
        v17 = v31;
        v29 = v101;
        v30 = v104;
        v6 = v89;
        v15 = v92;
        v16 = v95;
        v28 = v98;
        v13 = v87;
        v14 = v115;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v124 = *(a2 + 88);
      v122 = *(a1 + 80);
      if (v18)
      {
        return 0;
      }
    }

    if (v138)
    {
      if (!v19)
      {
        return 0;
      }

      if (v131 != v129 || v138 != v19)
      {
        v112 = v8;
        v116 = v14;
        v139 = v17;
        v40 = v26;
        v119 = v20;
        v41 = v11;
        v102 = v29;
        v105 = v30;
        v93 = v15;
        v96 = v16;
        v42 = v27;
        v43 = v24;
        v44 = v12;
        v45 = v10;
        v132 = v25;
        v99 = v28;
        v46 = v23;
        v47 = v7;
        v90 = v6;
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v7 = v47;
        v23 = v46;
        v8 = v112;
        v25 = v132;
        v10 = v45;
        v12 = v44;
        v24 = v43;
        v27 = v42;
        v6 = v90;
        v15 = v93;
        v16 = v96;
        v28 = v99;
        v29 = v102;
        v30 = v105;
        v11 = v41;
        v14 = v116;
        v20 = v119;
        v26 = v40;
        v17 = v139;
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v136)
    {
      v49 = v124;
      if (!v134)
      {
        return 0;
      }

      if (v127 != v126 || v136 != v134)
      {
        v113 = v8;
        v117 = v14;
        v140 = v17;
        v50 = v26;
        v120 = v20;
        v51 = v11;
        v103 = v29;
        v106 = v30;
        v94 = v15;
        v97 = v16;
        v52 = v27;
        v53 = v24;
        v109 = v21;
        v54 = v12;
        v55 = v10;
        v56 = v25;
        v100 = v28;
        v57 = v23;
        v58 = v7;
        v91 = v6;
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v49 = v124;
        v7 = v58;
        v23 = v57;
        v25 = v56;
        v10 = v55;
        v12 = v54;
        v21 = v109;
        v8 = v113;
        v24 = v53;
        v27 = v52;
        v6 = v91;
        v15 = v94;
        v16 = v97;
        v28 = v100;
        v29 = v103;
        v30 = v106;
        v11 = v51;
        v14 = v117;
        v20 = v120;
        v26 = v50;
        v17 = v140;
        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v49 = v124;
      if (v134)
      {
        return 0;
      }
    }

    if (!v122)
    {
      result = 0;
      if (v128)
      {
        return result;
      }

LABEL_33:
      if (v6 != v49 || v7 != v20 || ((v8 ^ v21) & 1) != 0)
      {
        return result;
      }

      goto LABEL_41;
    }

    if (!v128)
    {
      return 0;
    }

    if (v5 == v123 && v122 == v128)
    {
      result = 0;
      goto LABEL_33;
    }

    v125 = v49;
    v121 = v20;
    v110 = v21;
    v114 = v8;
    v60 = v6;
    v61 = v7;
    v130 = v23;
    v133 = v25;
    v137 = v10;
    v141 = v12;
    v84 = v24;
    v86 = v11;
    v62 = v27;
    v135 = v26;
    v118 = v14;
    v63 = v13;
    v64 = v17;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v65 & 1) != 0 && v60 == v125 && v61 == v121)
    {
      v27 = v62;
      v17 = v64;
      v13 = v63;
      v14 = v118;
      v25 = v133;
      v26 = v135;
      v24 = v84;
      v11 = v86;
      v12 = v141;
      v10 = v137;
      v23 = v130;
      if (((v114 ^ v110) & 1) == 0)
      {
LABEL_41:
        if (v10)
        {
          if (!v23)
          {
            return 0;
          }
        }

        else
        {
          if (v9 == v22)
          {
            v66 = v23;
          }

          else
          {
            v66 = 1;
          }

          if (v66)
          {
            return 0;
          }
        }

        if (v12)
        {
          if (!v25)
          {
            return 0;
          }

          v88 = v13;
          v67 = v17;
          v68 = v26;
          v69 = v11;
          v107 = v30;
          v70 = v29;
          v71 = v16;
          v72 = v15;
          v73 = v27;
          v74 = v24;
          v75 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v12, v25);
          v24 = v74;
          v27 = v73;
          v15 = v72;
          v16 = v71;
          v29 = v70;
          v30 = v107;
          v11 = v69;
          v26 = v68;
          v17 = v67;
          if ((v75 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v88 = v13;
          if (v25)
          {
            return 0;
          }
        }

        if (v11)
        {
          if (!v24)
          {
            return 0;
          }

          v76 = v26;
          v77 = v14;
          v78 = v28;
          v142 = v17;
          v79 = v11;
          v80 = v27;
          v81 = v24;

          LOBYTE(v79) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v79, v81);

          v27 = v80;
          if ((v79 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v76 = v26;
          v77 = v14;
          v78 = v28;
          v142 = v17;
          if (v24)
          {
            return 0;
          }
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22AccessibilityNodeProxyV_Tt1g5(v77, v27))
        {
          if (v88)
          {
            if (!v76 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v88, v76) & 1) == 0)
            {
              return 0;
            }
          }

          else if (v76)
          {
            return 0;
          }

          if (v16)
          {
            if (!v78 || (v15 != v29 || v16 != v78) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v78)
          {
            return 0;
          }

          if (v142)
          {
            if (!v30)
            {
              return 0;
            }

            v82 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v142, v30);

            return (v82 & 1) != 0;
          }

          if (!v30)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy()
{
  result = lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitStorageProxy and conformance AccessibilityTraitStorageProxy);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityNodeProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AccessibilityNodeProxy.CodingKeys and conformance AccessibilityNodeProxy.CodingKeys();
    v7 = a3(a1, &unk_1F0010B40, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSaySSGMaTm_0(255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AccessibilityNodeProxy] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _sSaySSGMaTm_0(255, &lazy cache variable for type metadata for [AccessibilityNodeProxy], &type metadata for AccessibilityNodeProxy, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t destroy for AccessibilityNodeProxy()
{
}

uint64_t initializeWithCopy for AccessibilityNodeProxy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  v8 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v8;
  v9 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v9;
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t assignWithCopy for AccessibilityNodeProxy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t assignWithTake for AccessibilityNodeProxy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityNodeProxy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityNodeProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityNodeProxy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityNodeProxy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized AccessibilityNodeProxy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65757161704F7369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6674616C507369 && a2 == 0xEE0065646F4E6D72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C62617369447369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F69725074726F73 && a2 == 0xEC00000079746972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F436D6F74737563 && a2 == 0xED0000746E65746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x62614C7475706E69 && a2 == 0xEB00000000736C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomAttributes.Value?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_1(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View._fileMover(isPresented:file:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a9;
  v57 = a8;
  v58 = a6;
  v53 = a5;
  v59 = a11;
  v61 = a10;
  v54 = type metadata accessor for FileExportOperation.Move(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileExportOperation?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v53 - v18;
  type metadata accessor for FileExportOperation?(0, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v53 - v21;
  v23 = a1;
  v63 = a1;
  v64 = a2;
  v24 = a3 & 1;
  v65 = a3;
  type metadata accessor for Binding<Bool>();
  v26 = v25;
  MEMORY[0x18D00ACC0](&v62);
  if (v62 == 1)
  {
    v27 = type metadata accessor for URL();
    v28 = a4;
    if ((*(*(v27 - 8) + 48))(a4, 1, v27) == 1)
    {
      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      v56 = a2;
      v30 = v29;
      os_log(_:dso:log:_:_:)();

      a2 = v56;
    }
  }

  else
  {
    v28 = a4;
  }

  v63 = v23;
  v64 = a2;
  v65 = a3 & 1;
  MEMORY[0x18D00ACC0](&v62, v26);
  if (v62 == 1 && (v56 = a2, _s10Foundation3URLVSgWOcTm_2(v28, v19, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]), v31 = type metadata accessor for URL(), v32 = *(v31 - 8), (*(v32 + 48))(v19, 1, v31) != 1))
  {
    v34 = a7;
    v35 = v55;
    (*(v32 + 32))(v55, v19, v31);
    v36 = swift_allocObject();
    v37 = v56;
    *(v36 + 16) = v23;
    *(v36 + 24) = v37;
    *(v36 + 32) = v24;
    v38 = v58;
    *(v36 + 40) = v53;
    *(v36 + 48) = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    *(v39 + 24) = v37;
    *(v39 + 32) = v24;
    v40 = v57;
    *(v39 + 40) = v34;
    *(v39 + 48) = v40;
    v41 = v54;
    v42 = (v35 + *(v54 + 20));
    *v42 = partial apply for closure #1 in closure #1 in View._fileMover(isPresented:file:onCompletion:onCancellation:);
    v42[1] = v36;
    v43 = (v35 + *(v41 + 24));
    *v43 = partial apply for closure #2 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
    v43[1] = v39;
    v44 = type metadata accessor for FileExportOperation(0);
    v45 = &v22[v44[5]];
    *v45 = 0;
    *(v45 + 1) = 0;
    (*(v32 + 56))(&v22[v44[6]], 1, 1, v31);
    v46 = &v22[v44[7]];
    *v46 = 0u;
    *(v46 + 1) = 0u;
    v47 = &v22[v44[8]];
    *v47 = 0u;
    *(v47 + 1) = 0u;
    v48 = &v22[v44[9]];
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v49 = v44[10];
    type metadata accessor for Predicate<Pack{URL}>();
    (*(*(v50 - 8) + 56))(&v22[v49], 1, 1, v50);
    v22[v44[11]] = 2;
    v51 = &v22[v44[12]];
    *v51 = 0;
    v51[8] = 1;
    outlined init with take of FileExportOperation.Move(v35, v22, type metadata accessor for FileExportOperation.Move);
    type metadata accessor for FileExportOperation.Mode(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v44 - 1) + 56))(v22, 0, 1, v44);
    swift_retain_n();
    swift_retain_n();
  }

  else
  {
    v33 = type metadata accessor for FileExportOperation(0);
    (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  }

  View.preference<A>(key:value:)();
  return outlined destroy of Result<URL, Error>?(v22, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation);
}

uint64_t View._fileMover<A>(isPresented:files:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a6;
  v47 = a8;
  v44 = a5;
  v45 = a7;
  v51 = a9;
  v50 = a10;
  v43 = *(a11 - 8);
  v49 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileExportOperation?(0, &lazy cache variable for type metadata for FileExportOperation?, type metadata accessor for FileExportOperation);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v42 - v18);
  type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>();
  v48 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a1;
  v55 = a1;
  v56 = a2;
  v52 = a3 & 1;
  v57 = a3;
  type metadata accessor for Binding<Bool>();
  v24 = v23;
  MEMORY[0x18D00ACC0](&v54);
  if (v54 == 1)
  {
    v25 = a4;
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    v25 = a4;
  }

  v55 = v53;
  v56 = a2;
  v57 = v52;
  MEMORY[0x18D00ACC0](&v54, v24);
  if (v54 == 1 && (dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    (*(v43 + 16))(v42, v25, a11);
    v28 = type metadata accessor for URL();
    v29 = Array.init<A>(_:)();
    v30 = swift_allocObject();
    *(v30 + 16) = v53;
    *(v30 + 24) = a2;
    *(v30 + 32) = v52;
    v31 = v46;
    *(v30 + 40) = v44;
    *(v30 + 48) = v31;
    v32 = type metadata accessor for FileExportOperation(0);
    v33 = (v19 + v32[5]);
    *v33 = 0;
    v33[1] = 0;
    (*(*(v28 - 8) + 56))(v19 + v32[6], 1, 1, v28);
    v34 = (v19 + v32[7]);
    *v34 = 0u;
    v34[1] = 0u;
    v35 = (v19 + v32[8]);
    *v35 = 0u;
    v35[1] = 0u;
    v36 = (v19 + v32[9]);
    *v36 = 0u;
    v36[1] = 0u;
    v37 = v32[10];
    type metadata accessor for Predicate<Pack{URL}>();
    (*(*(v38 - 8) + 56))(v19 + v37, 1, 1, v38);
    *(v19 + v32[11]) = 2;
    v39 = v19 + v32[12];
    *v39 = 0;
    v39[8] = 1;
    *v19 = v29;
    v19[1] = partial apply for closure #1 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
    v40 = v45;
    v19[2] = v30;
    v19[3] = v40;
    v19[4] = v47;
    type metadata accessor for FileExportOperation.Mode(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 1) + 56))(v19, 0, 1, v32);
  }

  else
  {
    v27 = type metadata accessor for FileExportOperation(0);
    (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  }

  _s7SwiftUI23FileDialogConfigurationV13preferenceKey9operationACyxq_Gxm_q_SgtcfCAA0C15ExportOperationV0G0V_AITt0t2g5(v19, v22);
  MEMORY[0x18D00A570](v22, v50, v48, v49);
  return outlined destroy of FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>(v22, type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>);
}

void type metadata accessor for _PreferenceWritingModifier<FileExportOperation.Key>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<FileExportOperation.Key>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<FileExportOperation.Key>);
    }
  }
}

void type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>()
{
  if (!lazy cache variable for type metadata for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>)
  {
    type metadata accessor for FileExportOperation(255);
    v0 = type metadata accessor for FileDialogConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in closure #1 in View._fileMover(isPresented:file:onCompletion:onCancellation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v15 = a5;
  type metadata accessor for FileExportOperation?(0, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  type metadata accessor for Result<URL, Error>();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s10Foundation3URLVSgWOcTm_2(a1, v8, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return outlined destroy of Result<URL, Error>?(v8, &lazy cache variable for type metadata for Result<URL, Error>?, type metadata accessor for Result<URL, Error>);
  }

  outlined init with take of FileExportOperation.Move(v8, v13, type metadata accessor for Result<URL, Error>);
  v15(v13);
  return outlined destroy of FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>(v13, type metadata accessor for Result<URL, Error>);
}

uint64_t outlined destroy of Result<URL, Error>?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for FileExportOperation?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for FileExportOperation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s10Foundation3URLVSgWOcTm_2(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for FileExportOperation?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for NavigationListState()
{
}

uint64_t initializeWithCopy for NavigationListState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for NavigationListState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for NavigationListState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationListState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t storeEnumTagSinglePayload for NavigationListState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall NavigationListState.isAnyEditing()()
{
  v1 = 0;
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + (v8 | (v7 << 6))) == 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall NavigationListState.clearAllSelections()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  if (!*(v2 + 16) && !*(*(v0 + 16) + 16))
  {
    return 0;
  }

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v45 = *(v0 + 8);

  v9 = 0;
  v46 = v7;
  while (v6)
  {
    v14 = v9;
LABEL_20:
    v17 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v18 = v17 | (v14 << 6);
    v19 = *(v45 + 48) + 48 * v18;
    v47 = *v19;
    v48 = *(v19 + 16);
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    outlined init with copy of NavigationListState.Selection(*(v45 + 56) + 72 * v18, v52);
    v23 = v47;
    v22 = v48;
    v24 = v52[0];
    v25 = *&v52[1];
    v26 = *&v52[3];
    v27 = *&v52[5];
    v28 = *&v52[7];
LABEL_21:
    v53 = v23;
    v54 = v22;
    *&v55 = v20;
    *(&v55 + 1) = v21;
    v56 = v24;
    v57 = v25;
    v58 = v26;
    v59 = v27;
    v60 = v28;
    if (!v25)
    {

      v34 = *(v1 + 16);
      v37 = *(v34 + 64);
      v36 = v34 + 64;
      v35 = v37;
      v38 = 1 << *(*(v1 + 16) + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v40 = v39 & v35;
      v41 = (v38 + 63) >> 6;

      v42 = 0;
      if (v40)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_41;
        }

        if (v43 >= v41)
        {
          break;
        }

        v40 = *(v36 + 8 * v43);
        ++v42;
        if (v40)
        {
          v42 = v43;
          do
          {
LABEL_35:
            v40 &= v40 - 1;

            specialized closure #1 in NavigationListState.clearAllSelections()(v44);
          }

          while (v40);
          continue;
        }
      }

      *(v1 + 16) = MEMORY[0x1E69E7CC8];
      return 1;
    }

    v29 = v3;
    v61[0] = v53;
    v61[1] = v54;
    v61[2] = v55;
    v30 = MEMORY[0x1E6981948];
    outlined init with copy of NavigationSplitViewState?(&v56, v52, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    outlined destroy of NavigationListState.Selection(&v56);
    type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v30);
    MEMORY[0x18D00ACC0](v49);
    v31 = v50;
    v32 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    LOBYTE(v31) = (*(v32 + 72))(v31, v32);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AnyListSelection(v49);
    outlined destroy of NavigationRequest.TargetedRequest?(v52, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v30);
    if ((v31 & 1) == 0)
    {

      return 0;
    }

    v33 = *(v1 + 48);
    v3 = v29;
    v7 = v46;
    if (v33 != -1)
    {
      if (v33)
      {
        v10 = ((v33 << 32) - 0x100000000) ^ (((v33 << 32) - 0x100000000) >> 22);
        v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
        v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
        v13 = (v12 >> 31) ^ v12;
      }

      else
      {
        v13 = 1;
      }

      *(v1 + 48) = v13;
    }

    memset(v52, 0, 40);
    result = specialized Dictionary.subscript.setter(v52, v61);
  }

  if (v7 <= v9 + 1)
  {
    v15 = v9 + 1;
  }

  else
  {
    v15 = v7;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
      v20 = 0;
      v24 = 0;
      v21 = 0;
      v6 = 0;
      v25 = 0uLL;
      v26 = 0uLL;
      v9 = v16;
      v27 = 0uLL;
      v28 = 0uLL;
      v23 = 0uLL;
      v22 = 0uLL;
      goto LABEL_21;
    }

    v6 = *(v3 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall NavigationListState.dismissLegacyLinks()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v20 = *(v1 + 16);
    v3 = v1 + 64;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    v21 = v8;
    while (v6)
    {
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = *(v8 + 56);
      v13 = (*(v8 + 48) + 48 * v11);
      v14 = v13[1];
      v22[0] = *v13;
      v22[1] = v14;
      v22[2] = v13[2];
      v15 = *(v12 + 8 * v11);
      v16 = *(v15 + 16);

      if (v16)
      {
        v17 = 0;
        v18 = v15 + 40;
        while (v17 < *(v15 + 16))
        {
          ++v17;

          dispatch thunk of AnyLocation.set(_:transaction:)();

          v18 += 24;
          if (v16 == v17)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_5:
      v6 &= v6 - 1;

      specialized Dictionary.subscript.setter(0, v22);
      v8 = v21;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v2 = v20;
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
    LOBYTE(v8) = v2 != 0;
  }

  return v8;
}

Swift::Bool __swiftcall NavigationListState.wouldDeselect()()
{
  v1 = *(v0 + 8);
  if (!*(v1 + 16) && !*(*(v0 + 16) + 16))
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_16:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(v1 + 48) + 48 * v12;
    v27 = *v13;
    v28 = *(v13 + 16);
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    outlined init with copy of NavigationListState.Selection(*(v1 + 56) + 72 * v12, &v32);
    v17 = v27;
    v16 = v28;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v22 = v35;
    v21 = v36;
LABEL_17:
    v37 = v17;
    v38 = v16;
    v39 = v14;
    v40 = v15;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v22;
    v45 = v21;
    if (!v19)
    {

      return 1;
    }

    v23 = MEMORY[0x1E6981948];
    outlined init with copy of NavigationSplitViewState?(&v41, &v32, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    outlined destroy of NavigationListState.Selection(&v41);
    type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v23);
    MEMORY[0x18D00ACC0](v29);
    outlined destroy of NavigationRequest.TargetedRequest?(&v32, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v23);
    v24 = v30;
    v25 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v26 = (*(v25 + 40))(v24, v25);
    result = outlined destroy of AnyListSelection(v29);
    if ((v26 & 1) == 0)
    {

      return 0;
    }
  }

  if (v5 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v14 = 0;
      v18 = 0;
      v15 = 0;
      v4 = 0;
      v19 = 0uLL;
      v20 = 0uLL;
      v7 = v10;
      v22 = 0uLL;
      v21 = 0uLL;
      v17 = 0uLL;
      v16 = 0uLL;
      goto LABEL_17;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall NavigationListState.applyPendingDeselections()()
{
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;

  result = 0;
  v7 = 0;
  while (1)
  {
    v8 = result;
    if (!v4)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = (*(v1 + 48) + 48 * (v10 | (v7 << 6)));
    v12 = v11[1];
    v13[0] = *v11;
    v13[1] = v12;
    v13[2] = v11[2];
    result = 1;
    if (!v8)
    {
      result = NavigationListState.clearListSelections(for:)(v13);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      *(v0 + 40) = MEMORY[0x1E69E7CD0];
      return v8;
    }

    v4 = *(v1 + 56 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NavigationListState.removePendingDeselections()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = (*(v2 + 48) + 48 * (__clz(__rbit64(v5)) | (v7 << 6)));
    v10 = v9[1];
    v22[0] = *v9;
    v22[1] = v10;
    v22[2] = v9[2];
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if (v12)
    {
      v13 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v1 + 24);
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      v16 = *(v15 + 56) + 40 * v13;
      v17 = *(v16 + 32);
      v18 = *(v16 + 16);
      v19 = *v16;
      v20 = v18;
      v21 = v17;
      specialized _NativeDictionary._delete(at:)(v13, v15);
      *(v1 + 24) = v15;
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    v5 &= v5 - 1;
    outlined destroy of NavigationRequest.TargetedRequest?(&v19, &lazy cache variable for type metadata for AnyListSelection?, &type metadata for AnyListSelection, MEMORY[0x1E69E6720]);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      *(v1 + 40) = MEMORY[0x1E69E7CD0];
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t NavigationListState.presentValue(_:activeBinding:selectionPopsSubsequentColumn:request:splitViewState:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  if (*(a6 + 168) != 6)
  {
    v29 = *(a6 + 120);
    v69[0] = *(a6 + 104);
    v69[1] = v29;
    v69[2] = *(a6 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v7 + 16);
    *&__dst[0] = *(v8 + 16);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      __break(1u);
      goto LABEL_41;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v8 + 16) = v31;
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v31 = *&__dst[0];
        *(v8 + 16) = *&__dst[0];
        if (v37)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
      v31 = *&__dst[0];
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
      if ((v37 & 1) != (v39 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v33 = v38;
      *(v8 + 16) = *&__dst[0];
      if (v37)
      {
LABEL_16:
        v8 = v31[7];
        v31 = *(v8 + 8 * v33);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + 8 * v33) = v31;
        if (v40)
        {
LABEL_17:
          v42 = v31[2];
          v41 = v31[3];
          if (v42 >= v41 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v31);
            *(v8 + 8 * v33) = v31;
          }

          v31[2] = v42 + 1;
          v43 = &v31[3 * v42];
          v43[4] = a2;
          v43[5] = a3;
          *(v43 + 48) = a4 & 1;
          *(a7 + 136) = 0u;
          *(a7 + 120) = 0u;
          *(a7 + 104) = 0u;
          *(a7 + 88) = 0u;
          *(a7 + 72) = 0u;
          *(a7 + 56) = 0u;
          *(a7 + 40) = 0u;
          *(a7 + 24) = 0u;
          *(a7 + 152) = 0;
          *(a7 + 160) = 0x1FFFFFFFCLL;
          *(a7 + 184) = 0u;
          *(a7 + 200) = 0u;
          *(a7 + 216) = 0u;
          *(a7 + 232) = 0u;
          *(a7 + 248) = 0u;
          *(a7 + 168) = 0u;
          *(a7 + 264) = 0u;
          *(a7 + 280) = 0u;
          *(a7 + 296) = 0u;
          *(a7 + 312) = 0u;
          *(a7 + 321) = 0u;
          *a7 = xmmword_18CD6A6D0;
          *(a7 + 16) = 2;
          *(a7 + 340) = 0;
        }

LABEL_41:
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        *(v8 + 8 * v33) = v31;
        goto LABEL_17;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v33, v69, MEMORY[0x1E69E7CC0], v31);
    goto LABEL_16;
  }

  v12 = *(a6 + 120);
  v70 = *(a6 + 104);
  v71 = v12;
  v72 = *(a6 + 136);
  v13 = *(v7 + 8);
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v70);
  if ((v15 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of NavigationListState.Selection(*(v13 + 56) + 72 * v14, v67);
  v16 = v68;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  if (v16 != (*(v18 + 16))(v17, v18))
  {
    outlined destroy of NavigationListState.Selection(v67);
LABEL_6:
    v19 = v71;
    if (v71 == 6)
    {
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      *&__dst[0] = (*(v21 + 16))(v20, v21);
      type metadata accessor for Any.Type();
      v22 = String.init<A>(describing:)();
      v24 = v23;
      lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
      swift_allocError();
      *v25 = v22;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 1;
      return swift_willThrow();
    }

    v44 = *(&v70 + 1);
    v45 = *(&v71 + 1);
    v46 = *(a6 + 152);
    outlined init with copy of NavigationRequest.Action(a6, a7 + 24);
    *(a7 + 128) = v44;
    *(a7 + 136) = v19;
    *(a7 + 144) = v45;
    *(a7 + 152) = 0;
    *(a7 + 160) = 0;
    *(a7 + 168) = 0;
    *(a7 + 176) = v46;
    *(a7 + 184) = 0;
    memset(__dst, 0, 96);
    LOBYTE(__dst[6]) = -1;
    *(a7 + 256) = 0u;
    *(a7 + 272) = 0u;
    *(a7 + 288) = 0u;
    *(a7 + 304) = 0u;
    *(a7 + 320) = 0u;
    *(a7 + 240) = 0u;
    *(a7 + 336) = -1;
    *(a7 + 192) = 0u;
    *(a7 + 208) = 0u;
    *(a7 + 224) = xmmword_18CD67BD0;
    result = outlined assign with take of NavigationRequest.Action?(__dst, a7 + 240);
    goto LABEL_21;
  }

  v47 = swift_allocObject();
  type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  outlined init with copy of AnyListSelection((v47 + 2), __dst);
  v48 = *(&__dst[1] + 1);
  v49 = *&__dst[2];
  __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
  LOBYTE(v48) = (*(v49 + 56))(a1, v48, v49);
  outlined destroy of AnyListSelection(__dst);
  if ((v48 & 1) == 0)
  {
    outlined destroy of NavigationListState.Selection(v67);
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    *(a7 + 88) = 0u;
    *(a7 + 104) = 0u;
    *(a7 + 120) = 0u;
    *(a7 + 136) = 0u;
    *(a7 + 152) = 0;
    *(a7 + 160) = 0x1FFFFFFFELL;
    *(a7 + 184) = 0u;
    *(a7 + 200) = 0u;
    *(a7 + 216) = 0u;
    *(a7 + 232) = 0u;
    *(a7 + 168) = 0u;
    *(a7 + 248) = 0u;
    *(a7 + 264) = 0u;
    *(a7 + 280) = 0u;
    *(a7 + 296) = 0u;
    *(a7 + 312) = 0u;
    *(a7 + 321) = 0u;

LABEL_21:
    *a7 = xmmword_18CD6A6D0;
    *(a7 + 16) = 2;
    *(a7 + 340) = 0;
    return result;
  }

  v50 = *(v8 + 32);
  if (*(v50 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(&v70), (v52 & 1) != 0) && *(*(v50 + 56) + v51) == 1)
  {
    v53 = v47[5];
    v54 = v47[6];
    __swift_project_boxed_opaque_existential_1(v47 + 2, v53);
    (*(v54 + 88))(a1, v53, v54);
  }

  else
  {
    v55 = v47[5];
    v56 = v47[6];
    __swift_project_boxed_opaque_existential_1(v47 + 2, v55);
    (*(v56 + 80))(a1, v55, v56);
  }

  outlined init with copy of AnyListSelection((v47 + 2), __dst);
  v57 = NavigationListState.updateSelection(_:for:)(__dst, &v70);
  outlined destroy of AnyListSelection(__dst);
  if ((v57 & 1) == 0)
  {
    if (a5)
    {
      outlined destroy of NavigationListState.Selection(v67);
      v62 = 0;
      goto LABEL_38;
    }

    v62 = 0;
LABEL_37:
    outlined destroy of NavigationListState.Selection(v67);
    goto LABEL_38;
  }

  LOBYTE(__src[0]) = 17;
  outlined init with copy of NavigationListState.Selection(v67, __dst);
  v58 = swift_allocObject();
  v59 = __dst[3];
  *(v58 + 48) = __dst[2];
  *(v58 + 64) = v59;
  v60 = *&__dst[4];
  v61 = __dst[1];
  *(v58 + 16) = __dst[0];
  *(v58 + 32) = v61;
  *(v58 + 80) = v60;
  *(v58 + 88) = v47;

  static Update.enqueueAction(reason:_:)();

  if ((a5 & 1) == 0)
  {
    v62 = 1;
    goto LABEL_37;
  }

  NavigationListState.requestToPopSubsequentColumn(original:popReplacedRoots:)(a6, 1, __src);

  outlined destroy of NavigationListState.Selection(v67);
  if (__src[17] >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
    v62 = 1;
LABEL_38:
    *(a7 + 136) = 0u;
    *(a7 + 120) = 0u;
    *(a7 + 104) = 0u;
    *(a7 + 88) = 0u;
    *(a7 + 72) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 24) = 0u;
    *(a7 + 152) = 0;
    *(a7 + 160) = 0x1FFFFFFFCLL;
    *(a7 + 184) = 0u;
    *(a7 + 200) = 0u;
    *(a7 + 216) = 0u;
    *(a7 + 232) = 0u;
    *(a7 + 168) = 0u;
    *(a7 + 248) = 0u;
    *(a7 + 264) = 0u;
    *(a7 + 280) = 0u;
    *(a7 + 296) = 0u;
    *(a7 + 312) = 0u;
    *(a7 + 321) = 0u;

    *a7 = xmmword_18CD6A6D0;
    *(a7 + 16) = 2;
    *(a7 + 340) = v62;
    *(a7 + 344) = 0;
    return result;
  }

  memcpy(__dst, __src, 0x139uLL);
  memcpy((a7 + 24), __dst, 0x139uLL);

  *a7 = xmmword_18CD6A6D0;
  *(a7 + 16) = 2;
  *(a7 + 340) = 1;
  return result;
}

uint64_t NavigationListState.clearListSelections(for:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v31 = *(v1 + 8);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_16:
    v15 = __clz(__rbit64(v6)) | (v8 << 6);
    v16 = *(v31 + 48) + 48 * v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    outlined init with copy of NavigationListState.Selection(*(v31 + 56) + 72 * v15, v36);
    if (!v36[1])
    {
LABEL_35:

      return 1;
    }

    v6 &= v6 - 1;
    *&v37 = v17;
    *(&v37 + 1) = v18;
    v38 = v19;
    v39 = v20;
    v40 = v21;
    v41 = v22;
    if (v17 == *a1)
    {
      v23 = *(a1 + 16);
      if (v19 == 6)
      {
        if (v23 != 6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v23 == 6)
        {
          goto LABEL_10;
        }

        v24 = (v23 ^ v19);
        v25 = v18 == *(a1 + 8) && v24 == 0;
        if (!v25 || v20 != *(a1 + 24))
        {
          goto LABEL_10;
        }
      }

      if (v21 == (*(a1 + 32) & 1))
      {
        type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
        MEMORY[0x18D00ACC0](&v33);
        v27 = *(&v34 + 1);
        v28 = v35;
        __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
        LOBYTE(v27) = (*(v28 + 72))(v27, v28);
        dispatch thunk of AnyLocation.set(_:transaction:)();
        outlined destroy of AnyListSelection(&v33);
        if ((v27 & 1) == 0)
        {
          goto LABEL_37;
        }

        v29 = *(v30 + 48);
        if (v29 != -1)
        {
          if (v29)
          {
            v10 = ((v29 << 32) - 0x100000000) ^ (((v29 << 32) - 0x100000000) >> 22);
            v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
            v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
            v13 = (v12 >> 31) ^ v12;
          }

          else
          {
            v13 = 1;
          }

          *(v30 + 48) = v13;
        }

        v35 = 0;
        v33 = 0u;
        v34 = 0u;
        specialized Dictionary.subscript.setter(&v33, &v37);
      }
    }

LABEL_10:
    outlined destroy of NavigationListState.Selection(v36);
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
      goto LABEL_35;
    }

    v6 = *(v3 + 8 * v14);
    ++v8;
    if (v6)
    {
      v8 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:

  outlined destroy of NavigationListState.Selection(v36);
  return 0;
}

uint64_t NavigationListState.requestToPopSubsequentColumn(original:popReplacedRoots:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(result + 120);
  if (v5 == 6 || (v5 - 2) < 4)
  {
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0x1FFFFFFFELL;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 297) = 0u;
  }

  else
  {
    v6 = *(result + 112);
    v7 = *(result + 128);
    if (*(result + 120))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
      if (v7 != 3)
      {
        v8 = 2;
      }
    }

    v13 = v3;
    v14 = v4;
    *a3 = a2 & 1;
    *(a3 + 96) = 20;
    v9 = *(result + 152);
    *(a3 + 104) = v6;
    *(a3 + 112) = v5;
    *(a3 + 120) = v7;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 152) = v9;
    *(a3 + 160) = 0;
    memset(v11, 0, sizeof(v11));
    v12 = -1;
    *(a3 + 216) = 0u;
    v10 = a3 + 216;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = -1;
    *(v10 - 48) = v6;
    *(v10 - 40) = v8;
    *(v10 - 32) = v7;
    *(v10 - 24) = 0;
    *(v10 - 16) = 0;
    *(v10 - 8) = 0;
    return outlined assign with take of NavigationRequest.Action?(v11, v10);
  }

  return result;
}

uint64_t closure #1 in NavigationListState.presentValue(_:activeBinding:selectionPopsSubsequentColumn:request:splitViewState:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  outlined init with copy of AnyListSelection(a2 + 16, v4);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of AnyListSelection(v4);
}

uint64_t specialized closure #1 in NavigationListState.clearAllSelections()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t outlined destroy of (key: NavigationState.ListKey, value: AnyListSelection)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection)?()
{
  if (!lazy cache variable for type metadata for (key: NavigationState.ListKey, value: AnyListSelection)?)
  {
    type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection)();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (key: NavigationState.ListKey, value: AnyListSelection)?);
    }
  }
}

void type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection)()
{
  if (!lazy cache variable for type metadata for (key: NavigationState.ListKey, value: AnyListSelection))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NavigationState.ListKey, value: AnyListSelection));
    }
  }
}

void *assignWithCopy for NavigationListState.Selection(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
  a1[7] = a2[7];
  a1[8] = a2[8];
  return a1;
}

uint64_t assignWithTake for NavigationListState.Selection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t UIKitDatePicker._resolvedUIKitDatePicker()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIKitDatePickerRepresentable(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(v1, v14, type metadata accessor for DatePickerStyleConfiguration);
  v15 = type metadata accessor for UIKitDatePicker(0);
  specialized Environment.wrappedValue.getter(&v14[v12[7]]);
  specialized Environment.wrappedValue.getter(&v14[v12[8]]);
  specialized Environment.wrappedValue.getter(&v14[v12[9]]);
  v16 = *(v1 + *(v15 + 20));
  *&v14[v12[10]] = v16;
  if (v16 == 3 && *(v1 + *(type metadata accessor for DatePickerStyleConfiguration(0) + 32)) != 96)
  {
    v18 = *(v4 + 40);
    _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(v14, v10, type metadata accessor for UIKitDatePickerRepresentable);
    v10[v18] = 2;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_1(v14, type metadata accessor for UIKitDatePickerRepresentable);
    v19 = &v10[*(v8 + 36)];
    v20 = v24[5];
    *(v19 + 4) = v24[4];
    *(v19 + 5) = v20;
    *(v19 + 6) = v24[6];
    v21 = v24[1];
    *v19 = v24[0];
    *(v19 + 1) = v21;
    v22 = v24[3];
    *(v19 + 2) = v24[2];
    *(v19 + 3) = v22;
    outlined init with take of UIKitDatePickerRepresentable(v10, a1, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>);
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, MEMORY[0x1E697F948]);
  }

  else
  {
    v17 = *(v4 + 40);
    outlined init with take of UIKitDatePickerRepresentable(v14, v6, type metadata accessor for UIKitDatePickerRepresentable);
    v6[v17] = 2;
    outlined init with take of UIKitDatePickerRepresentable(v6, a1, type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>);
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, MEMORY[0x1E697F948]);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance GraphicalDatePickersFillWidth()
{
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = 1;
  }

  else
  {
    v0 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  return v0 & 1;
}

uint64_t UIKitDatePickerRepresentable.Coordinator.dateChanged(_:)(void *a1)
{
  v2 = v1;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v47 = a1;
  v23 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v2 + OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_configuration;
  swift_beginAccess();
  v25 = type metadata accessor for DatePickerStyleConfiguration(0);
  outlined init with copy of Date?(v24 + *(v25 + 24), v8);
  v26 = *(v10 + 48);
  if (v26(v8, 1, v9) == 1)
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(v8, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v27 = v47;
    v28 = v2;
  }

  else
  {
    v42 = v2;
    v41 = *(v10 + 32);
    v41(v18, v8, v9);
    lazy protocol witness table accessor for type Date and conformance Date();
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      (*(v10 + 8))(v18, v9);
      v29 = v43;
      (*(v10 + 16))(v43, v22, v9);
    }

    else
    {
      v29 = v43;
      v41(v43, v18, v9);
    }

    (*(v10 + 40))(v22, v29, v9);
    v28 = v42;
    v27 = v47;
  }

  v30 = v24 + *(v25 + 28);
  v31 = v46;
  outlined init with copy of Date?(v30, v46);
  if (v26(v31, 1, v9) == 1)
  {
    v32 = _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(v31, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  }

  else
  {
    v33 = v27;
    v34 = *(v10 + 32);
    v35 = v44;
    v34(v44, v31, v9);
    lazy protocol witness table accessor for type Date and conformance Date();
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*(v10 + 8))(v35, v9);
      v36 = v45;
      (*(v10 + 16))(v45, v22, v9);
    }

    else
    {
      v36 = v45;
      v34(v45, v35, v9);
    }

    v32 = (*(v10 + 40))(v22, v36, v9);
    v27 = v33;
  }

  if (*(v28 + OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_style) == 2)
  {
    v32 = [v27 window];
    if (v32)
    {

      v32 = [v27 layoutIfNeeded];
    }
  }

  MEMORY[0x1EEE9AC00](v32);
  *(&v40 - 2) = v28;
  *(&v40 - 1) = v22;
  v48 = 17;
  MEMORY[0x1EEE9AC00](v37);
  *(&v40 - 2) = partial apply for closure #1 in UIKitDatePickerRepresentable.Coordinator.dateChanged(_:);
  *(&v40 - 1) = v38;
  static Update.dispatchImmediately<A>(reason:_:)();
  return (*(v10 + 8))(v22, v9);
}

uint64_t closure #1 in UIKitDatePickerRepresentable.Coordinator.dateChanged(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_configuration;
  swift_beginAccess();
  _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(a1 + v11, v10, type metadata accessor for DatePickerStyleConfiguration);
  (*(v5 + 16))(v7, a2, v4);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  (*(v5 + 8))(v7, v4);
  return _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_1(v10, type metadata accessor for DatePickerStyleConfiguration);
}

id UIKitDatePickerRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitDatePickerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for UIKitDatePickerRepresentable.Coordinator()
{
  result = type metadata accessor for DatePickerStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for UIKitDatePicker(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    *(a1 + 1) = *(a2 + 1);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);

    v11(&v6[v8], &a2[v8], v9);
    v12 = type metadata accessor for DatePickerStyleConfiguration(0);
    v13 = v12[6];
    v14 = *(v10 + 48);
    if (v14(&a2[v13], 1, v9))
    {
      _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v13], &a2[v13], *(*(v15 - 8) + 64));
    }

    else
    {
      v11(&v6[v13], &a2[v13], v9);
      (*(v10 + 56))(&v6[v13], 0, 1, v9);
    }

    v16 = v12[7];
    if (v14(&a2[v16], 1, v9))
    {
      _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v16], &a2[v16], *(*(v17 - 8) + 64));
    }

    else
    {
      v11(&v6[v16], &a2[v16], v9);
      (*(v10 + 56))(&v6[v16], 0, 1, v9);
    }

    *&v6[v12[8]] = *&a2[v12[8]];
    v18 = a3[6];
    *&v6[a3[5]] = *&a2[a3[5]];
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = type metadata accessor for Locale();
      (*(*(v19 - 8) + 16))(&v6[v18], &a2[v18], v19);
    }

    else
    {
      *&v6[v18] = *&a2[v18];
    }

    swift_storeEnumTagMultiPayload();
    v20 = a3[7];
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = type metadata accessor for Calendar();
      (*(*(v21 - 8) + 16))(&v6[v20], &a2[v20], v21);
    }

    else
    {
      *&v6[v20] = *&a2[v20];
    }

    swift_storeEnumTagMultiPayload();
    v22 = a3[8];
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = type metadata accessor for TimeZone();
      (*(*(v23 - 8) + 16))(&v6[v22], &a2[v22], v23);
    }

    else
    {
      *&v6[v22] = *&a2[v22];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v6;
}

uint64_t destroy for UIKitDatePicker(uint64_t a1, int *a2)
{

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(a1 + v5, v6);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = *(v9 + 24);
  v11 = *(v7 + 48);
  if (!v11(a1 + v10, 1, v6))
  {
    v8(a1 + v10, v6);
  }

  v12 = *(v9 + 28);
  if (!v11(a1 + v12, 1, v6))
  {
    v8(a1 + v12, v6);
  }

  v13 = a2[6];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 8))(a1 + v13, v14);
  }

  else
  {
  }

  v15 = a2[7];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Calendar();
    (*(*(v16 - 8) + 8))(a1 + v15, v16);
  }

  else
  {
  }

  v17 = a2[8];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for TimeZone();
    v19 = *(*(v18 - 8) + 8);

    return v19(a1 + v17, v18);
  }

  else
  {
  }
}

char *initializeWithCopy for UIKitDatePicker(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);

  v10(&a1[v7], &a2[v7], v8);
  v11 = type metadata accessor for DatePickerStyleConfiguration(0);
  v12 = v11[6];
  v13 = *(v9 + 48);
  if (v13(&a2[v12], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    v10(&a1[v12], &a2[v12], v8);
    (*(v9 + 56))(&a1[v12], 0, 1, v8);
  }

  v15 = v11[7];
  if (v13(&a2[v15], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v16 - 8) + 64));
  }

  else
  {
    v10(&a1[v15], &a2[v15], v8);
    (*(v9 + 56))(&a1[v15], 0, 1, v8);
  }

  *&a1[v11[8]] = *&a2[v11[8]];
  v17 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  }

  else
  {
    *&a1[v17] = *&a2[v17];
  }

  swift_storeEnumTagMultiPayload();
  v19 = a3[7];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for Calendar();
    (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
  }

  else
  {
    *&a1[v19] = *&a2[v19];
  }

  swift_storeEnumTagMultiPayload();
  v21 = a3[8];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = type metadata accessor for TimeZone();
    (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
  }

  else
  {
    *&a1[v21] = *&a2[v21];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for UIKitDatePicker(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v32 = *(v8 + 24);
  v32(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = v9[6];
  v11 = *(v8 + 48);
  v12 = v11(&a1[v10], 1, v7);
  v13 = v11(&a2[v10], 1, v7);
  if (v12)
  {
    if (!v13)
    {
      (*(v8 + 16))(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v8 + 8))(&a1[v10], v7);
LABEL_6:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v32(&a1[v10], &a2[v10], v7);
LABEL_7:
  v15 = v9[7];
  v16 = v11(&a1[v15], 1, v7);
  v17 = v11(&a2[v15], 1, v7);
  if (v16)
  {
    if (!v17)
    {
      (*(v8 + 16))(&a1[v15], &a2[v15], v7);
      (*(v8 + 56))(&a1[v15], 0, 1, v7);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17)
  {
    (*(v8 + 8))(&a1[v15], v7);
LABEL_12:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  v32(&a1[v15], &a2[v15], v7);
LABEL_13:
  *&a1[v9[8]] = *&a2[v9[8]];
  *&a1[a3[5]] = *&a2[a3[5]];
  if (a1 != a2)
  {
    v19 = a3[6];
    v20 = MEMORY[0x1E6969770];
    v21 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v19], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v20, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = type metadata accessor for Locale();
      (*(*(v22 - 8) + 16))(&a1[v19], &a2[v19], v22);
    }

    else
    {
      *&a1[v19] = *&a2[v19];
    }

    swift_storeEnumTagMultiPayload();
    v23 = a3[7];
    v24 = MEMORY[0x1E6969AE8];
    v25 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v23], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v24, v25);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = type metadata accessor for Calendar();
      (*(*(v26 - 8) + 16))(&a1[v23], &a2[v23], v26);
    }

    else
    {
      *&a1[v23] = *&a2[v23];
    }

    swift_storeEnumTagMultiPayload();
    v27 = a3[8];
    v28 = MEMORY[0x1E6969BC0];
    v29 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v27], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v28, v29);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = type metadata accessor for TimeZone();
      (*(*(v30 - 8) + 16))(&a1[v27], &a2[v27], v30);
    }

    else
    {
      *&a1[v27] = *&a2[v27];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

char *initializeWithTake for UIKitDatePicker(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 32);
  v10(&a1[v7], &a2[v7], v8);
  v11 = type metadata accessor for DatePickerStyleConfiguration(0);
  v12 = v11[6];
  v13 = *(v9 + 48);
  if (v13(&a2[v12], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    v10(&a1[v12], &a2[v12], v8);
    (*(v9 + 56))(&a1[v12], 0, 1, v8);
  }

  v15 = v11[7];
  if (v13(&a2[v15], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v16 - 8) + 64));
  }

  else
  {
    v10(&a1[v15], &a2[v15], v8);
    (*(v9 + 56))(&a1[v15], 0, 1, v8);
  }

  *&a1[v11[8]] = *&a2[v11[8]];
  v17 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  v19 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for Locale();
    (*(*(v20 - 8) + 32))(&a1[v17], &a2[v17], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v17], &a2[v17], *(*(v19 - 8) + 64));
  }

  v21 = a3[7];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  v23 = v22;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = type metadata accessor for Calendar();
    (*(*(v24 - 8) + 32))(&a1[v21], &a2[v21], v24);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
  }

  v25 = a3[8];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  v27 = v26;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = type metadata accessor for TimeZone();
    (*(*(v28 - 8) + 32))(&a1[v25], &a2[v25], v28);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v25], &a2[v25], *(*(v27 - 8) + 64));
  }

  return a1;
}

char *assignWithTake for UIKitDatePicker(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v38 = *(v8 + 40);
  v38(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = v9[6];
  v11 = *(v8 + 48);
  v12 = v11(&a1[v10], 1, v7);
  v13 = v11(&a2[v10], 1, v7);
  if (v12)
  {
    if (!v13)
    {
      (*(v8 + 32))(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v8 + 8))(&a1[v10], v7);
LABEL_6:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v38(&a1[v10], &a2[v10], v7);
LABEL_7:
  v15 = v9[7];
  v16 = v11(&a1[v15], 1, v7);
  v17 = v11(&a2[v15], 1, v7);
  if (v16)
  {
    if (!v17)
    {
      (*(v8 + 32))(&a1[v15], &a2[v15], v7);
      (*(v8 + 56))(&a1[v15], 0, 1, v7);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17)
  {
    (*(v8 + 8))(&a1[v15], v7);
LABEL_12:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  v38(&a1[v15], &a2[v15], v7);
LABEL_13:
  *&a1[v9[8]] = *&a2[v9[8]];
  *&a1[a3[5]] = *&a2[a3[5]];
  if (a1 != a2)
  {
    v19 = a3[6];
    v20 = MEMORY[0x1E6969770];
    v21 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v19], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v20, v21);
    v23 = v22;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = type metadata accessor for Locale();
      (*(*(v24 - 8) + 32))(&a1[v19], &a2[v19], v24);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v19], &a2[v19], *(*(v23 - 8) + 64));
    }

    v25 = a3[7];
    v26 = MEMORY[0x1E6969AE8];
    v27 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v25], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v26, v27);
    v29 = v28;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = type metadata accessor for Calendar();
      (*(*(v30 - 8) + 32))(&a1[v25], &a2[v25], v30);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v25], &a2[v25], *(*(v29 - 8) + 64));
    }

    v31 = a3[8];
    v32 = MEMORY[0x1E6969BC0];
    v33 = MEMORY[0x1E697DCB8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_1(&a1[v31], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v32, v33);
    v35 = v34;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = type metadata accessor for TimeZone();
      (*(*(v36 - 8) + 32))(&a1[v31], &a2[v31], v36);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v31], &a2[v31], *(*(v35 - 8) + 64));
    }
  }

  return a1;
}

void _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for UIKitDatePicker()
{
  type metadata accessor for DatePickerStyleConfiguration(319);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(319, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(319, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
      if (v2 <= 0x3F)
      {
        _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(319, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>()
{
  if (!lazy cache variable for type metadata for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>)
  {
    type metadata accessor for UIKitDatePickerRepresentable(255);
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>)
  {
    type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>);
    }
  }
}

void type metadata accessor for StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>);
    }
  }
}

id UIKitDatePickerRepresentable.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 40);
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, v8, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v37 = *(v16 + 8);
  v37(v18, v15);
  v39 = a1;
  [a1 setDate_];

  outlined init with copy of Date?(v3 + v6[6], v14);
  v20 = *(v16 + 48);
  v21 = 0;
  if (v20(v14, 1, v15) != 1)
  {
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v37(v14, v15);
  }

  v22 = v39;
  [v39 setMinimumDate_];

  outlined init with copy of Date?(v3 + v6[7], v11);
  if (v20(v11, 1, v15) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = Date._bridgeToObjectiveC()().super.isa;
    v37(v11, v15);
  }

  [v22 setMaximumDate_];

  v24 = type metadata accessor for UIKitDatePickerRepresentable(0);
  v25 = Locale._bridgeToObjectiveC()().super.isa;
  [v22 setLocale_];

  v26 = Calendar._bridgeToObjectiveC()().super.isa;
  [v22 setCalendar_];

  v27 = TimeZone._bridgeToObjectiveC()().super.isa;
  [v22 setTimeZone_];

  v28 = *(v3 + *(v24 + 32));
  [v22 setPreferredDatePickerStyle_];
  v29 = *(v3 + v6[8]);
  if (v29 == 28)
  {
    v30 = 1;
  }

  else if (v29 == 124)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
    if (v29 != 96)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD5BB00);
      v43 = v29;
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  [v22 setDatePickerMode_];
  v31 = OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_style;
  v32 = v38;
  *(v38 + OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_style) = v28;
  v33 = v3;
  v34 = v40;
  _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(v33, v40, type metadata accessor for DatePickerStyleConfiguration);
  v35 = OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_configuration;
  swift_beginAccess();
  outlined assign with take of DatePickerStyleConfiguration(v34, v32 + v35);
  result = swift_endAccess();
  if (*(v32 + v31) == 2)
  {
    result = [v22 window];
    if (result)
    {

      return [v22 layoutIfNeeded];
    }
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitDatePickerRepresentable(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v2 addTarget:v1 action:sel_dateChanged_ forControlEvents:4096];
  return v2;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitDatePickerRepresentable@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(v2, v7, type metadata accessor for DatePickerStyleConfiguration);
  v8 = *(v2 + *(a1 + 32));
  v9 = type metadata accessor for UIKitDatePickerRepresentable.Coordinator(0);
  v10 = objc_allocWithZone(v9);
  _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(v7, &v10[OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_configuration], type metadata accessor for DatePickerStyleConfiguration);
  *&v10[OBJC_IVAR____TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator_style] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_1(v7, type metadata accessor for DatePickerStyleConfiguration);
  *a2 = v11;
  return result;
}

uint64_t protocol witness for UIViewRepresentable._overrideSizeThatFits(_:in:uiView:) in conformance UIKitDatePickerRepresentable(void *a1, int a2, id a3)
{
  result = [a3 datePickerStyle];
  if ((result & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = result;
    result = [a3 sizeThatFits_];
    a1[1] = v8;
    if (v6 == 2)
    {
      *a1 = v7;
    }
  }

  return result;
}

id protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance UIKitDatePickerRepresentable(int a1, id a2)
{
  result = [a2 datePickerStyle];
  if (result == 3)
  {
    _LayoutTraits.Dimension.min.setter();
    return _LayoutTraits.Dimension.max.setter();
  }

  return result;
}

uint64_t _s7SwiftUI28DatePickerStyleConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI28DatePickerStyleConfigurationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of UIKitDatePickerRepresentable(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    *(a1 + 1) = *(a2 + 1);
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);

    v11(&v6[v8], &a2[v8], v9);
    v12 = type metadata accessor for DatePickerStyleConfiguration(0);
    v13 = v12[6];
    v14 = *(v10 + 48);
    if (v14(&a2[v13], 1, v9))
    {
      _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v13], &a2[v13], *(*(v15 - 8) + 64));
    }

    else
    {
      v11(&v6[v13], &a2[v13], v9);
      (*(v10 + 56))(&v6[v13], 0, 1, v9);
    }

    v16 = v12[7];
    if (v14(&a2[v16], 1, v9))
    {
      _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v16], &a2[v16], *(*(v17 - 8) + 64));
    }

    else
    {
      v11(&v6[v16], &a2[v16], v9);
      (*(v10 + 56))(&v6[v16], 0, 1, v9);
    }

    *&v6[v12[8]] = *&a2[v12[8]];
    v18 = a3[5];
    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 16))(&v6[v18], &a2[v18], v19);
    v20 = a3[6];
    v21 = type metadata accessor for Calendar();
    (*(*(v21 - 8) + 16))(&v6[v20], &a2[v20], v21);
    v22 = a3[7];
    v23 = type metadata accessor for TimeZone();
    (*(*(v23 - 8) + 16))(&v6[v22], &a2[v22], v23);
    *&v6[a3[8]] = *&a2[a3[8]];
  }

  return v6;
}

uint64_t destroy for UIKitDatePickerRepresentable(uint64_t a1, int *a2)
{

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(a1 + v5, v6);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = *(v9 + 24);
  v11 = *(v7 + 48);
  if (!v11(a1 + v10, 1, v6))
  {
    v8(a1 + v10, v6);
  }

  v12 = *(v9 + 28);
  if (!v11(a1 + v12, 1, v6))
  {
    v8(a1 + v12, v6);
  }

  v13 = a2[5];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 8))(a1 + v13, v14);
  v15 = a2[6];
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 8))(a1 + v15, v16);
  v17 = a2[7];
  v18 = type metadata accessor for TimeZone();
  v19 = *(*(v18 - 8) + 8);

  return v19(a1 + v17, v18);
}

char *initializeWithCopy for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);

  v10(&a1[v7], &a2[v7], v8);
  v11 = type metadata accessor for DatePickerStyleConfiguration(0);
  v12 = v11[6];
  v13 = *(v9 + 48);
  if (v13(&a2[v12], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    v10(&a1[v12], &a2[v12], v8);
    (*(v9 + 56))(&a1[v12], 0, 1, v8);
  }

  v15 = v11[7];
  if (v13(&a2[v15], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v16 - 8) + 64));
  }

  else
  {
    v10(&a1[v15], &a2[v15], v8);
    (*(v9 + 56))(&a1[v15], 0, 1, v8);
  }

  *&a1[v11[8]] = *&a2[v11[8]];
  v17 = a3[5];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v19 = a3[6];
  v20 = type metadata accessor for Calendar();
  (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
  v21 = a3[7];
  v22 = type metadata accessor for TimeZone();
  (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

char *assignWithCopy for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v26 = *(v8 + 24);
  v26(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = v9[6];
  v11 = *(v8 + 48);
  v12 = v11(&a1[v10], 1, v7);
  v13 = v11(&a2[v10], 1, v7);
  if (v12)
  {
    if (!v13)
    {
      (*(v8 + 16))(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v8 + 8))(&a1[v10], v7);
LABEL_6:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v26(&a1[v10], &a2[v10], v7);
LABEL_7:
  v15 = v9[7];
  v16 = v11(&a1[v15], 1, v7);
  v17 = v11(&a2[v15], 1, v7);
  if (!v16)
  {
    if (!v17)
    {
      v26(&a1[v15], &a2[v15], v7);
      goto LABEL_13;
    }

    (*(v8 + 8))(&a1[v15], v7);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  (*(v8 + 16))(&a1[v15], &a2[v15], v7);
  (*(v8 + 56))(&a1[v15], 0, 1, v7);
LABEL_13:
  *&a1[v9[8]] = *&a2[v9[8]];
  v19 = a3[5];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 24))(&a1[v19], &a2[v19], v20);
  v21 = a3[6];
  v22 = type metadata accessor for Calendar();
  (*(*(v22 - 8) + 24))(&a1[v21], &a2[v21], v22);
  v23 = a3[7];
  v24 = type metadata accessor for TimeZone();
  (*(*(v24 - 8) + 24))(&a1[v23], &a2[v23], v24);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

char *initializeWithTake for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 32);
  v10(&a1[v7], &a2[v7], v8);
  v11 = type metadata accessor for DatePickerStyleConfiguration(0);
  v12 = v11[6];
  v13 = *(v9 + 48);
  if (v13(&a2[v12], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    v10(&a1[v12], &a2[v12], v8);
    (*(v9 + 56))(&a1[v12], 0, 1, v8);
  }

  v15 = v11[7];
  if (v13(&a2[v15], 1, v8))
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v16 - 8) + 64));
  }

  else
  {
    v10(&a1[v15], &a2[v15], v8);
    (*(v9 + 56))(&a1[v15], 0, 1, v8);
  }

  *&a1[v11[8]] = *&a2[v11[8]];
  v17 = a3[5];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
  v19 = a3[6];
  v20 = type metadata accessor for Calendar();
  (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
  v21 = a3[7];
  v22 = type metadata accessor for TimeZone();
  (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

char *assignWithTake for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v26 = *(v8 + 40);
  v26(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = v9[6];
  v11 = *(v8 + 48);
  v12 = v11(&a1[v10], 1, v7);
  v13 = v11(&a2[v10], 1, v7);
  if (v12)
  {
    if (!v13)
    {
      (*(v8 + 32))(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v8 + 8))(&a1[v10], v7);
LABEL_6:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v26(&a1[v10], &a2[v10], v7);
LABEL_7:
  v15 = v9[7];
  v16 = v11(&a1[v15], 1, v7);
  v17 = v11(&a2[v15], 1, v7);
  if (!v16)
  {
    if (!v17)
    {
      v26(&a1[v15], &a2[v15], v7);
      goto LABEL_13;
    }

    (*(v8 + 8))(&a1[v15], v7);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  (*(v8 + 32))(&a1[v15], &a2[v15], v7);
  (*(v8 + 56))(&a1[v15], 0, 1, v7);
LABEL_13:
  *&a1[v9[8]] = *&a2[v9[8]];
  v19 = a3[5];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  v21 = a3[6];
  v22 = type metadata accessor for Calendar();
  (*(*(v22 - 8) + 40))(&a1[v21], &a2[v21], v22);
  v23 = a3[7];
  v24 = type metadata accessor for TimeZone();
  (*(*(v24 - 8) + 40))(&a1[v23], &a2[v23], v24);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

uint64_t type metadata completion function for UIKitDatePickerRepresentable()
{
  result = type metadata accessor for DatePickerStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>();
    lazy protocol witness table accessor for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth()
{
  result = lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth;
  if (!lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth);
  }

  return result;
}

uint64_t outlined assign with take of DatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ButtonDefaultRenderingModeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ButtonDefaultRenderingModeModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ButtonDefaultRenderingModeModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ButtonDefaultRenderingModeModifier()
{
  lazy protocol witness table accessor for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier()
{
  result = lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier;
  if (!lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier);
  }

  return result;
}

__n128 DocumentGroup.body.getter@<Q0>(uint64_t a1@<X8>)
{
  outlined init with copy of DocumentGroupConfiguration(v1, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t static DocumentGroup.DocumentContentScene._makeScene(scene:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  v15 = *(a2 + 56);
  v27 = a3;
  v28 = a4;
  v29 = a5;
  LODWORD(v30) = v5;
  type metadata accessor for DocumentGroup.DocumentContentScene();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  PreferencesOutputs.init()();
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v8 = v30;
  v9 = v31;
  v10 = v32;
  swift_beginAccess();
  HIDWORD(v16) = *(v6 + 16);
  List = type metadata accessor for DocumentGroup.MakeList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<SceneList>, &type metadata for SceneList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_30, v24, List, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  v13 = *(v6 + 16);
  v16 = v7;
  v17 = v15;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v18;
  v23 = v13;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  outlined consume of SceneList.Namespace(v8, v9, v10);
}

uint64_t closure #1 in static DocumentGroup.DocumentContentScene._makeScene(scene:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for DocumentGroup.DocumentContentScene();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_29, v5, &type metadata for DocumentGroupConfiguration, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t DocumentGroup.MakeList.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DocumentGroupConfiguration(Value, __src);
  IdentifiedDocumentGroupConfiguration.init(_:)(__src, v15);
  outlined init with copy of IdentifiedDocumentGroupConfiguration(v15, __src);
  __src[128] = 2;
  v3 = v16;
  v4 = v17;
  v5 = v18;
  outlined copy of SceneID(v16, v17, v18);
  DisplayList.Version.init(forUpdate:)();
  v6 = v13[2];
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(v13);
  v7 = v13[0];
  v8 = v13[1];
  memset(&__src[192], 0, 288);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&__src[136] = v3;
  *&__src[144] = v4;
  __src[152] = v5;
  *&__src[160] = v6;
  *&__src[168] = v7;
  *&__src[176] = v8;
  __src[184] = 0;
  *&__src[480] = 0;
  __src[488] = 0;
  *&__src[496] = 0u;
  __src[512] = 1;
  *&__src[520] = 0u;
  __src[536] = 1;
  *&__src[537] = 0;
  *&__src[544] = v9;
  *&__src[552] = v10;
  __src[560] = 0;
  EnvironmentValues.init()();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  memcpy((v11 + 32), __src, 0x231uLL);
  result = outlined destroy of IdentifiedDocumentGroupConfiguration(v15);
  *a1 = v11;
  return result;
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance CustomButtonMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  outlined copy of AppIntentExecutor?(v3);

  return outlined copy of AppIntentExecutor?(v4);
}

uint64_t CustomButtonMenuStyleWriter.styleBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v21[0] = *(a2 + 16);
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v22[0] = v12;
  v22[1] = v13;
  v23 = v15;
  v24 = v14;
  v16 = *(v4 + 24);
  outlined copy of AppIntentExecutor?(v12);
  outlined copy of AppIntentExecutor?(v15);
  v16(v22, v21[0], v4);
  v17 = v23;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v22[0]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v6 + 8);
  v19(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v19)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedCustomButtonMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedCustomButtonMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t ButtonStyleAdaptorMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a3;
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v26 = v9;
  v27 = v7;
  v28 = v8;
  type metadata accessor for UIKitButtonStyleModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v21 = specialized Environment.wrappedValue.getter(*(v4 + *(a2 + 36)), *(v4 + *(a2 + 36) + 8));
  *&v32 = v17;
  *(&v32 + 1) = v18;
  LOWORD(v33) = 0;
  BYTE2(v33) = v21;
  BYTE3(v33) = 2;
  *(&v33 + 1) = v19;
  v34 = v20;
  outlined copy of AppIntentExecutor?(v17);
  outlined copy of AppIntentExecutor?(v19);
  View.uikitButtonStyle<A>(_:)(v4, v26, v27, &protocol witness table for UIKitMenuButton<A, B>);
  v35[0] = v32;
  v35[1] = v33;
  v36 = v34;
  outlined destroy of UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>(v35);
  v30 = &protocol witness table for UIKitMenuButton<A, B>;
  v31 = &protocol witness table for UIKitButtonStyleModifier<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v23 = *(v11 + 8);
  v23(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, WitnessTable);
  return (v23)(v16, v10);
}

uint64_t outlined destroy of UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>(uint64_t a1)
{
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu()
{
  result = lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu;
  if (!lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu;
  if (!lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>()
{
  result = lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>;
  if (!lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>)
  {
    type metadata accessor for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>);
  }

  return result;
}

void type metadata accessor for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>()
{
  if (!lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>)
  {
    lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic();
    v0 = type metadata accessor for CustomButtonMenuStyleWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>);
    }
  }
}

double UIViewRepresentable._identifiedViewTree(in:)@<D0>(uint64_t a1@<X8>)
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

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA21UIKitSearchBarAdaptorV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitSearchBarAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor);
    type metadata accessor for UIKitSearchBarAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12UIKitStepper33_F1E9485F33A623EEFA647AA5EC4AE094LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitStepper>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12SystemSlider33_8AA246B2E0E916EFA5AD706DCC8A0FE8LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<SystemSlider>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA011UIKitPagingF033_8825076C2763A50452A210CBE1FA4AF0LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitPagingView>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA22SystemSegmentedControl33_D74FE142C3C5A6C2CEA4987A69AEBD75LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<SystemSegmentedControl>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA17UIKitPasteControlV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitPasteControl>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA24PlatformTextFieldAdaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for PlatformTextFieldAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<PlatformTextFieldAdaptor>, type metadata accessor for PlatformTextFieldAdaptor);
    type metadata accessor for PlatformTextFieldAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA04TextF7Adaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for TextViewAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<TextViewAdaptor>, type metadata accessor for TextViewAdaptor);
    type metadata accessor for TextViewAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA013UIKitCalendarfD033_1CD2D554D5FF79B0EC2610FA354BC034LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitCalendarViewRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitCalendarViewRepresentable>, type metadata accessor for UIKitCalendarViewRepresentable);
    type metadata accessor for UIKitCalendarViewRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA28UIKitSegmentedControlAdaptor33_62A8DBD3A37E684D521D6BC97A6F345ALLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitSegmentedControlAdaptor>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA019LinearUIKitProgressF0V4BaseV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<LinearUIKitProgressView.Base>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA26UIKitRichTextEditorAdaptorV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitRichTextEditorAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitRichTextEditorAdaptor>, type metadata accessor for UIKitRichTextEditorAdaptor);
    type metadata accessor for UIKitRichTextEditorAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA23BackButtonActionableBar33_94927F8A97ECE008E6A618C158753C28LLV016KeyboardBackdropF0V_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<BackButtonActionableBar.KeyboardBackdropView>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA19UIKitToolbarAdaptor33_5C36F4A49E2E2562B910FE6399D2C51ELLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitToolbarAdaptor>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA09UIKitTextF7Adaptor33_A90AD0DD13E6C72FFE734B65FAFF6EFFLLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitTextViewAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>, type metadata accessor for UIKitTextViewAdaptor);
    type metadata accessor for UIKitTextViewAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA03KitD033_87E15EBB5C00F49DEF8C638A73559D92LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for KitRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<KitRepresentable>, type metadata accessor for KitRepresentable);
    type metadata accessor for KitRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA015UIKitDatePickerD033_796E60B90620AEB0B6972B2798FF4F42LLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitDatePickerRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitDatePickerRepresentable>, type metadata accessor for UIKitDatePickerRepresentable);
    type metadata accessor for UIKitDatePickerRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA18BridgedColorPicker33_0B012DB3D42FBF9295A4AA29478C936CLLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<BridgedColorPicker>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t UIViewRepresentableContext.transaction.getter()
{
  specialized ReferenceFileDocumentConfiguration.document.getter();
}

uint64_t key path getter for UIViewRepresentableContext.transaction : <A>UIViewRepresentableContext<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIViewRepresentableContext();
  *a1 = specialized ReferenceFileDocumentConfiguration.document.getter();
}

uint64_t UIViewRepresentableContext.transaction.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t UIViewRepresentableContext.animate(changes:completion:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{

  v8 = Transaction.animation.getter();

  if (!v8)
  {
    goto LABEL_4;
  }

  v10 = Transaction.disablesAnimations.getter();

  if ((v10 & 1) == 0)
  {
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v11);
    v21[2] = a1;
    v21[3] = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = -1;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for thunk for @callee_guaranteed () -> (@error @owned Error);
    *(v15 + 24) = v21;
    type metadata accessor for UIView();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = _sxs5Error_pIgrzo_xsAA_pIegrzo_lTRyt_Tg5TA_0;
    v16[4] = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = _sSo6UIViewC7SwiftUIE7animate_7changes10completionyAC9AnimationV_yyXEyycSgtFZySb_SbtcfU_TA_0;
    *(v17 + 24) = v13;

    outlined copy of AppIntentExecutor?(a3);
    static UIView.animate(bridgedAnimation:animations:completion:)();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v19 = *(v14 + 24);
      if (v19 != 255)
      {
        if ((v19 & 1) == 0)
        {
        }

LABEL_13:
        v23 = *(v14 + 16);
        v20 = v23;
        type metadata accessor for Error();
        result = swift_willThrowTypedImpl();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  result = a1(v9);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t PlatformViewRepresentableAdaptor._identifiedViewTree(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + 72);
  a3[3] = &type metadata for _IdentifiedViewTree;
  *a3 = swift_allocObject();
  return v6(a1, *(a2 + 16), v5);
}

uint64_t initializeBufferWithCopyOfBuffer for UIViewRepresentableContext(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-34 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = AssociatedTypeWitness;
    v11 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v11;
    v12 = a2[2];
    v13 = a2[3];
    v14 = *(a2 + 32);

    outlined copy of RepresentableContextValues.EnvironmentStorage(v12, v13, v14);
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    (*(v5 + 16))((a1 + v6 + 33) & ~v6, (a2 + v6 + 33) & ~v6, v10);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t assignWithCopy for UIViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v7, v8, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 24))((*(v11 + 80) + 33 + a1) & ~*(v11 + 80), (*(v11 + 80) + 33 + a2) & ~*(v11 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for UIViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((*(v6 + 80) + 33 + a1) & ~*(v6 + 80), (*(v6 + 80) + 33 + a2) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for UIViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 40))((*(v9 + 80) + 33 + a1) & ~*(v9 + 80), (*(v9 + 80) + 33 + a2) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIViewRepresentableContext(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v10 = ((v8 + 33) & ~v8) + v9;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 >= 2)
    {
LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

LABEL_15:
      v15 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v15 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      v17 = v7 + (v10 | v15);
      return (v17 + 1);
    }
  }

LABEL_26:
  if (v6 <= 0x7FFFFFFE)
  {
    v16 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  v18 = *(v5 + 48);

  return v18((a1 + v8 + 33) & ~v8);
}

void storeEnumTagSinglePayload for UIViewRepresentableContext(_WORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 33) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *(a1 + v10) = v13;
              }

              else
              {
                *(a1 + v10) = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        *(a1 + 2) = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      *(a1 + v10) = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
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

  else if (v11)
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
  if (v7 > 0x7FFFFFFE)
  {
    v17 = *(v6 + 56);

    v17((a1 + v8 + 33) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 32) = 0;
    *a1 = (a2 - 0x7FFFFFFF);
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2;
  }
}

void type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for PlatformViewRepresentableAdaptor();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL SectionBody.value.getter()
{
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v1 = *(Value + 8);
  result = 0;
  if (v1)
  {
    v2 = *(Value + 16);
    v5 = *Value;
    v6 = v1;
    v7 = v2 & 1;
    type metadata accessor for _GraphValue<SectionContainer>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v4);
    if (v4 != 1)
    {
      return 1;
    }
  }

  return result;
}

BOOL protocol witness for Rule.value.getter in conformance SectionBody@<W0>(_BYTE *a1@<X8>)
{
  result = SectionBody.value.getter();
  *a1 = result;
  return result;
}

uint64_t Drag.Payload.resolvedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) != a3)
  {
    static Log.dragAndDrop.getter();
    v9 = type metadata accessor for Logger();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of Logger?(v8);
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v18 = 136315650;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000018CD5CB20, &v29);
        *(v18 + 12) = 2080;
        v19 = _typeName(_:qualified:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

        *(v18 + 14) = v21;
        *(v18 + 22) = 2080;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

        *(v18 + 24) = v24;
        _os_log_impl(&dword_18BD4A000, v16, v17, "%s: type mismatch: expected %s, got %s. Returning empty payload for drag.", v18, 0x20u);
        v25 = v28;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v25, -1, -1);
        MEMORY[0x18D0110E0](v18, -1, -1);
      }

      (*(v10 + 8))(v8, v9);
    }

    goto LABEL_14;
  }

  if (!*(v3 + 24) || (type metadata accessor for DraggingItem(), type metadata accessor for DraggingItem(), (result = _arrayConditionalCast<A, B>(_:)()) == 0))
  {
    v13 = *v3;
    v12 = *(v3 + 8);
    if (*(v3 + 16))
    {
      if (*(v3 + 16) == 1)
      {

        if (!v13(v14))
        {
          outlined consume of Drag.Payload<A>.Storage<A>(v13, v12, 1);
LABEL_22:

          *(v3 + 24) = 0;
LABEL_14:
          type metadata accessor for DraggingItem();
          return static Array._allocateUninitialized(_:)();
        }

        type metadata accessor for DraggingItem();
        type metadata accessor for DraggingItem();
        v15 = _arrayConditionalCast<A, B>(_:)();
        outlined consume of Drag.Payload<A>.Storage<A>(v13, v12, 1);

        if (!v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        type metadata accessor for DraggingItem();
        static Array._allocateUninitialized(_:)();
      }
    }

    else
    {
      type metadata accessor for DraggingItem();
      type metadata accessor for DraggingItem();

      v26 = _arrayConditionalCast<A, B>(_:)();
      outlined consume of Drag.Payload<A>.Storage<A>(v13, v12, 0);
      if (!v26)
      {
        goto LABEL_22;
      }
    }

    type metadata accessor for DraggingItem();
    type metadata accessor for DraggingItem();
    v27 = _arrayConditionalCast<A, B>(_:)();

    *(v3 + 24) = v27;
    if (v27)
    {
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t DragPayloadBox.resolvedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  swift_beginAccess();
  v7 = (*(*(v6 + 104) + 48))(a2, a2, a3, *(v6 + 96));
  swift_endAccess();
  return v7;
}

uint64_t outlined copy of Drag.Payload<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t destroy for Drag.Payload(uint64_t a1)
{
  outlined consume of Drag.Payload<A>.Storage<A>(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t outlined consume of Drag.Payload<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of Drag.Payload<A>.Storage<A>(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of Drag.Payload<A>.Storage<A>(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of Drag.Payload<A>.Storage<A>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of Drag.Payload<A>.Storage<A>(v4, v5, v6);
  return a1;
}

uint64_t static TupleTableRowContent._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[7];
  v54 = a2[6];
  v55 = v10;
  v56 = a2[8];
  v57 = *(a2 + 18);
  v11 = a2[3];
  v50 = a2[2];
  v51 = v11;
  v12 = a2[5];
  v52 = a2[4];
  v53 = v12;
  v13 = a2[1];
  v48 = *a2;
  v49 = v13;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a4, v46);
  *&v46[104] = v54;
  *&v46[120] = v55;
  *&v46[136] = v56;
  *&v46[40] = v50;
  *&v46[56] = v51;
  *&v46[72] = v52;
  *&v46[88] = v53;
  *&v46[8] = v48;
  v14 = *v46;
  *&v46[24] = v49;
  *v46 = v9;
  *&v46[152] = v57;
  *&v47 = 0;
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  v15 = *(v14 + 16);
  v42 = a3;
  if (v15)
  {
    outlined init with copy of _TableRowInputs(&v48, v45);
    v16 = (v14 + 40);
    do
    {
      v17 = *v16;
      v16 = (v16 + 24);
      v43 = v17;
      *&v47 = AGTupleElementOffset();
      v45[0] = v17;
      List = type metadata accessor for TupleTableRowContent.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(v46, List, &protocol witness table for TupleTableRowContent<A, B>.MakeList);
      --v15;
    }

    while (v15);

    v19 = *(&v47 + 1);
  }

  else
  {
    outlined init with copy of _TableRowInputs(&v48, v45);

    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v40 = a4;
    *&v43 = a5;
    v44 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v22 = 0;
    v21 = v44;
    v23 = (v19 + 40);
    do
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v24 = v20;
      v25 = *v23;
      *&v45[0] = *(v23 - 1);
      DWORD2(v45[0]) = v25;
      v26 = PreferencesOutputs.subscript.getter();
      if ((v26 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

      v27 = v26;
      v44 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v21 = v44;
      }

      ++v22;
      *(v21 + 16) = v29 + 1;
      *(v21 + 4 * v29 + 32) = v27;
      v23 += 4;
      v20 = v24;
    }

    while (v24 != v22);
  }

  v30 = PreferencesOutputs.init()();
  *&v45[0] = v21;
  MEMORY[0x1EEE9AC00](v30);
  v38 = type metadata accessor for TupleTableRowContent.MergeLists();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<TableRowList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v45, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, &v37, v38, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);

  *&v45[0] = *(&v56 + 1);
  DWORD2(v45[0]) = v57;
  MEMORY[0x1EEE9AC00](v33);
  LODWORD(v38) = v34;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  v45[8] = *&v46[128];
  v45[9] = *&v46[144];
  v45[10] = v47;
  v45[4] = *&v46[64];
  v45[5] = *&v46[80];
  v45[6] = *&v46[96];
  v45[7] = *&v46[112];
  v45[0] = *v46;
  v45[1] = *&v46[16];
  v45[2] = *&v46[32];
  v45[3] = *&v46[48];
  v35 = type metadata accessor for TupleTableRowContent.MakeList();
  return (*(*(v35 - 8) + 8))(v45, v35);
}

uint64_t static TupleTableRowContent._tableRowCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  v33 = a1[6];
  v34 = v3;
  v35 = a1[8];
  v36 = *(a1 + 18);
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a3, &v16);
  v7 = v16;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v16 = v27;
  v17 = v28;
  v25 = v36;
  v26 = 0;
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _TableRowInputs(&v27, v14);
    v9 = type metadata accessor for TupleTableRowContent.CountRows();
    v10 = 40;
    do
    {
      v14[0] = *(v7 + v10);
      TypeConformance<>.visitType<A>(visitor:)(&v16, v9, &protocol witness table for TupleTableRowContent<A, B>.CountRows);
      v10 += 24;
      --v8;
    }

    while (v8);

    v11 = *(&v25 + 1);
  }

  else
  {
    outlined init with copy of _TableRowInputs(&v27, v14);

    v11 = 0;
  }

  v14[8] = v24;
  v14[9] = v25;
  v15 = v26;
  v14[4] = v20;
  v14[5] = v21;
  v14[6] = v22;
  v14[7] = v23;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  v12 = type metadata accessor for TupleTableRowContent.CountRows();
  (*(*(v12 - 8) + 8))(v14, v12);
  return v11;
}

uint64_t static TupleTableRowContent._containsOutlineSymbol(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  v33 = a1[6];
  v34 = v3;
  v35 = a1[8];
  v36 = *(a1 + 18);
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a3, &v18);
  v7 = v18;
  v24 = v33;
  v25 = v34;
  *v26 = v35;
  *&v26[16] = v36;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v18 = v27;
  v19 = v28;
  v26[24] = 0;
  outlined init with copy of _TableRowInputs(&v27, v16);
  v8 = 0;
  v9 = 40;
  do
  {
    v10 = *(v7 + 16);
    if (v8 == v10)
    {
      break;
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    ++v8;
    v11 = v9 + 24;
    v16[0] = *(v7 + v9);
    v12 = type metadata accessor for TupleTableRowContent.CheckOutline();
    TypeConformance<>.visitType<A>(visitor:)(&v18, v12, &protocol witness table for TupleTableRowContent<A, B>.CheckOutline);
    v9 = v11;
  }

  while (v26[24] != 1);

  v13 = v26[24];
  v16[6] = v24;
  v16[7] = v25;
  v17[0] = *v26;
  *(v17 + 9) = *&v26[9];
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[0] = v18;
  v16[1] = v19;
  v14 = type metadata accessor for TupleTableRowContent.CheckOutline();
  (*(*(v14 - 8) + 8))(v16, v14);
  return v13;
}

uint64_t TupleTableRowContent.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleTableRowContent();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 120);
  v37[6] = *(v4 + 104);
  v37[7] = v8;
  v37[8] = *(v4 + 136);
  v38 = *(v4 + 152);
  v9 = *(v4 + 56);
  v37[2] = *(v4 + 40);
  v37[3] = v9;
  v10 = *(v4 + 88);
  v37[4] = *(v4 + 72);
  v37[5] = v10;
  v11 = *(v4 + 24);
  v37[0] = *(v4 + 8);
  v37[1] = v11;
  v12 = *(v4 + 120);
  v30 = *(v4 + 104);
  v31 = v12;
  v32 = *(v4 + 136);
  v33 = *(v4 + 152);
  v13 = *(v4 + 56);
  v26 = *(v4 + 40);
  v27 = v13;
  v14 = *(v4 + 88);
  v28 = *(v4 + 72);
  v29 = v14;
  v15 = *(v4 + 24);
  v24 = *(v4 + 8);
  v25 = v15;
  v16 = *(a4 + 48);
  outlined init with copy of _TableRowInputs(v37, v39);
  v16(&v35, v34, &v24, a3, a4);
  v39[6] = v30;
  v39[7] = v31;
  v39[8] = v32;
  v40 = v33;
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v39[5] = v29;
  v39[0] = v24;
  v39[1] = v25;
  outlined destroy of _TableRowInputs(v39);
  v17 = v35;
  v18 = v36;
  v19 = *(v4 + 168);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
  }

  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 16) = v22 + 1;
  v23 = v19 + 16 * v22;
  *(v23 + 32) = v17;
  *(v23 + 40) = v18;
  *(v5 + 168) = v19;
  return result;
}

void TupleTableRowContent.CountRows.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 160) & 1) != 0 || (v7 = *(v5 + 112), v8 = *(v5 + 80), v36 = *(v5 + 96), v37 = v7, v9 = *(v5 + 112), v38 = *(v5 + 128), v10 = *(v5 + 48), v11 = *(v5 + 16), v32 = *(v5 + 32), v33 = v10, v12 = *(v5 + 48), v13 = *(v5 + 80), v34 = *(v5 + 64), v35 = v13, v14 = *(v5 + 16), v31[0] = *v5, v31[1] = v14, v27 = v36, v28 = v9, v29 = *(v5 + 128), v23 = v32, v24 = v12, v25 = v34, v26 = v8, v15 = *(v5 + 152), v39 = *(v5 + 144), v30 = *(v5 + 144), v21 = v31[0], v22 = v11, v16 = *(a4 + 56), v17 = a4, outlined init with copy of _TableRowInputs(v31, v20), v18 = v16(&v21, a3, v17), LOBYTE(v17) = v19, v40[6] = v27, v40[7] = v28, v40[8] = v29, v41 = v30, v40[2] = v23, v40[3] = v24, v40[4] = v25, v40[5] = v26, v40[0] = v21, v40[1] = v22, outlined destroy of _TableRowInputs(v40), (v17))
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 1;
  }

  else if (__OFADD__(v15, v18))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 152) = v15 + v18;
    *(v5 + 160) = 0;
  }
}

void TupleTableRowContent.CheckOutline.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 152))
  {
    v6 = 1;
  }

  else
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v33 = *(v5 + 96);
    v34 = v8;
    v10 = *(v5 + 112);
    v35 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v29 = *(v5 + 32);
    v30 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v31 = *(v5 + 64);
    v32 = v14;
    v15 = *(v5 + 16);
    v28[0] = *v5;
    v28[1] = v15;
    v24 = v33;
    v25 = v10;
    v26 = *(v5 + 128);
    v20 = v29;
    v21 = v13;
    v22 = v31;
    v23 = v9;
    v36 = *(v5 + 144);
    v27 = *(v5 + 144);
    v18 = v28[0];
    v19 = v12;
    v16 = *(a4 + 64);
    outlined init with copy of _TableRowInputs(v28, v37);
    v6 = v16(&v18, a3, a4);
    v37[6] = v24;
    v37[7] = v25;
    v37[8] = v26;
    v38 = v27;
    v37[2] = v20;
    v37[3] = v21;
    v37[4] = v22;
    v37[5] = v23;
    v37[0] = v18;
    v37[1] = v19;
    outlined destroy of _TableRowInputs(v37);
  }

  *(v5 + 152) = v6 & 1;
}

uint64_t TupleTableRowContent.MergeLists.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = a1 + 32;
    do
    {
      v6 += 4;
      Value = AGGraphGetValue();
      outlined init with copy of TableRowList(Value, &v15);
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 40 * v9;
      v11 = v15;
      v12 = v16;
      *(v10 + 64) = v17;
      *(v10 + 32) = v11;
      *(v10 + 48) = v12;
      --v3;
    }

    while (v3);
  }

  *(&v16 + 1) = &type metadata for MergedTableRowGenerator;
  v17 = &protocol witness table for MergedTableRowGenerator;
  *&v15 = v4;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, a2);
}

uint64_t static Group<A>._makeRows(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v7;
  v14[8] = *(a2 + 128);
  v15 = *(a2 + 144);
  v8 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v8;
  v9 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v9;
  v10 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v10;
  v13 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 48))(v12, v14, a3, a4);
}