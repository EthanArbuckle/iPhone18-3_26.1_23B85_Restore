uint64_t ControlGroup.init<A>(_:image:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  type metadata accessor for Label<Text, Image>();
  v10 = v9;
  v11 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  ControlGroup.init<A, B>(content:label:)(a2, partial apply for closure #1 in ControlGroup.init<A>(_:image:content:), a3, v10, a5, v11, a4);

  v12 = type metadata accessor for ImageResource();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t closure #1 in ControlGroup.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25 = a2;
  v24[1] = a1;
  v6 = type metadata accessor for ImageResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v7 + 16);
  v14(v24 - v12, a3, v6, v11);

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v26 = v20 & 1;
  (v14)(v9, v13, v6);
  v21 = Image.init(_:)();
  result = (*(v7 + 8))(v13, v6);
  v23 = v26;
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v23;
  *(a4 + 24) = v19;
  *(a4 + 32) = v21;
  return result;
}

uint64_t ControlGroup.init<A, B>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  type metadata accessor for Label<Text, Image>();
  v15 = v14;
  v16 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  ControlGroup.init<A, B>(content:label:)(a3, partial apply for closure #1 in ControlGroup.init<A, B>(_:image:content:), a4, v15, a6, v16, a7);
  v17 = type metadata accessor for ImageResource();
  (*(*(v17 - 8) + 8))(a2, v17);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

double closure #1 in ControlGroup.init<A, B>(_:image:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t type metadata completion function for ControlGroup()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlGroup(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
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

unsigned int *storeEnumTagSinglePayload for ControlGroup(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void _s7SwiftUI34ControlWidgetConfigurationModifierPAAE16controlBodyErrors5NeverOyFAA05EmptycdE0V_Ttg5()
{
  _StringGuts.grow(_:)(42);

  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD52D20);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyControlWidgetConfiguration._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

uint64_t ControlWidgetConfiguration.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t static ModifiedContent<>._makeWidgetControlConfiguration(control:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeWidgetControlConfiguration(control:inputs:), v12, a4, a6);
}

uint64_t closure #2 in static ModifiedContent<>._makeWidgetControlConfiguration(control:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v13[0] = a2[2];
  *(v13 + 12) = *(a2 + 44);
  v11 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v10, v12, a4, a6);
}

uint64_t static ModifiedContent<>._makeWidgetControlConfiguration(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[1];
  v21[0] = *a2;
  v21[1] = v15;
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v20 = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  v17 = *(a8 + 32);

  v17(v19, v21, partial apply for closure #2 in static ModifiedContent<>._makeWidgetControlConfiguration(modifier:inputs:body:), v16, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v14, v16, a4, a5, a6, a8);
}

uint64_t static ControlWidgetConfigurationModifier_Content._makeWidgetControlConfiguration(control:inputs:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v21[0] = *a2;
  v21[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v18 = v4;
  v19 = v3;
  v20[0] = a2[2];
  *(v20 + 12) = *(a2 + 44);
  type metadata accessor for ControlWidgetConfigurationModifier_Content.BodyInput();
  outlined init with copy of _WidgetInputs(v21, v15);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.popLast<A, B>(_:)();
  v5 = v17;
  if (v17)
  {
    v11[0] = v18;
    v11[1] = v19;
    v12[0] = v20[0];
    *(v12 + 12) = *(v20 + 12);
    v8 = v18;
    v9 = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v6 = outlined init with copy of _WidgetInputs(v11, v15);
    v5(v6, &v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    v13[0] = v8;
    v13[1] = v9;
    v14[0] = v10[0];
    *(v14 + 12) = *(v10 + 12);
    outlined destroy of _WidgetInputs(v13);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v15[0] = v18;
  v15[1] = v19;
  v16[0] = v20[0];
  *(v16 + 12) = *(v20 + 12);
  return outlined destroy of _WidgetInputs(v15);
}

void specialized ControlWidgetConfigurationModifier.controlBodyError()()
{
  _StringGuts.grow(_:)(42);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for ControlWidgetConfigurationModifier_Content<A>.BodyInput(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t one-time initialization function for clarityUINavigationTransition()
{
  result = static Animation.coreAnimationDefault(duration:)();
  static Animation.clarityUINavigationTransition = result;
  return result;
}

uint64_t static Animation.clarityUINavigationTransition.getter()
{
  if (one-time initialization token for clarityUINavigationTransition != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PlatformItemListFlagsSet@<X0>(_DWORD *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for static PlatformItemListFlags.flags.getter in conformance SearchSuggestionItemListFlags()
{
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    return 15;
  }

  else
  {
    return 13;
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet()
{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsSet and conformance PlatformItemListFlagsSet);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IncludesStyledText(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

id LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v7 = *MEMORY[0x1E698D3F8];
    *&v8[4] = *a2;
    *&v8[20] = *(a2 + 16);
    *&v8[84] = *(a2 + 80);
    *&v8[68] = *(a2 + 64);
    *&v8[52] = *(a2 + 48);
    *&v8[36] = *(a2 + 32);
    *a3 = result;
    *(a3 + 8) = a1;
    *(a3 + 28) = *&v8[16];
    *(a3 + 12) = *v8;
    *(a3 + 92) = *&v8[80];
    *(a3 + 76) = *&v8[64];
    *(a3 + 60) = *&v8[48];
    *(a3 + 44) = *&v8[32];
    *(a3 + 100) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, id *a5@<X8>)
{
  v171 = a4;
  v168 = a2;
  v174 = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v164 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v183 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v165 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v147 - v14;
  v15 = type metadata accessor for PlatformItemList.Item();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v181 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v185 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v169 = (&v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v147 - v21;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v163 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v150 = (&v147 - v25);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v180 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v147 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v149 = (&v147 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v147 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v147 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v147 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v147 - v42);
  v44 = a3[3];
  v221 = a3[2];
  v222 = v44;
  v45 = a3[1];
  v219 = *a3;
  v220 = v45;
  *a5 = 0;
  a5[1] = 0;
  v46 = v18[6];
  v47 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v170 = v46;
  v166 = v47;
  v157 = (v48 + 56);
  v158 = v48;
  v156 = v49;
  (v49)(a5 + v46, 1, 1);
  v155 = v18[7];
  *(a5 + v155) = 0;
  v50 = v18[8];
  v51 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v159 = *(v51 - 8);
  v160 = v51;
  v52 = *(v159 + 56);
  v167 = v50;
  v52(a5 + v50, 1, 1);
  v53 = (a5 + v18[9]);
  *(v53 + 41) = 0u;
  v53[1] = 0u;
  v53[2] = 0u;
  v161 = v53;
  *v53 = 0u;
  v54 = v18[10];
  v55 = type metadata accessor for URL();
  v162 = *(v55 - 8);
  v56 = *(v162 + 56);
  v184 = v55;
  v178 = v56;
  v179 = v162 + 56;
  (v56)(a5 + v54, 1, 1);
  v186 = v18;
  v57 = (a5 + v18[11]);
  v177 = xmmword_18CD633F0;
  *v57 = xmmword_18CD633F0;
  v57[1] = 0u;
  v57[2] = 0u;
  v57[3] = 0u;
  v173 = v57;
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v174, v43, type metadata accessor for PlatformItemList.Item?);
  v147 = v16;
  v58 = *(v16 + 48);
  v187 = v15;
  v59 = v15;
  v176 = v16 + 48;
  v60 = v58;
  if (v58(v43, 1, v59) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v43, type metadata accessor for PlatformItemList.Item?);
  }

  else
  {
    v61 = *v43;
    v62 = *v43;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v43, type metadata accessor for PlatformItemList.Item);
    if (v61)
    {

      *a5 = v61;
    }
  }

  v63 = v174;
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v174, v40, type metadata accessor for PlatformItemList.Item?);
  if (v60(v40, 1, v187) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v40, type metadata accessor for PlatformItemList.Item?);
  }

  else
  {
    v64 = *(v40 + 1);
    v65 = v64;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v40, type metadata accessor for PlatformItemList.Item);
    if (v64)
    {

      a5[1] = v64;
    }
  }

  v172 = v54;
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v63, v37, type metadata accessor for PlatformItemList.Item?);
  if (v60(v37, 1, v187) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v37, type metadata accessor for PlatformItemList.Item?);
    v66 = v173;
  }

  else
  {
    v67 = *(v37 + 33);
    v68 = *(v37 + 34);
    v69 = *(v37 + 35);
    v70 = *(v37 + 36);
    v71 = *(v37 + 37);
    v154 = *(v37 + 32);
    v72 = v68;
    v151 = v71;
    v152 = v70;
    outlined copy of Image.NamedResolved?(v154, v67, v68);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v37, type metadata accessor for PlatformItemList.Item);
    v66 = v173;
    v153 = v67;
    if (v67)
    {
      LOBYTE(v197[0]) = BYTE4(v69) & 1;
      *&v188 = v154;
      *(&v188 + 1) = v153;
      v73 = v72;
      *&v189 = v72;
      DWORD2(v189) = v69;
      BYTE12(v189) = BYTE4(v69) & 1;
      BYTE13(v189) = BYTE5(v69);
      BYTE14(v189) = BYTE6(v69) & 1;
      *&v190[0] = v152;
      *(&v190[0] + 1) = v151;
      v74 = v149;
      outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v63, v149, type metadata accessor for PlatformItemList.Item?);
      if (v60(v74, 1, v187) == 1)
      {
        *&v199 = v154;
        *(&v199 + 1) = v153;
        *&v200 = v72;
        *(&v200 + 1) = v69;
        *&v201[0] = v152;
        *(&v201[0] + 1) = v151;
        outlined init with copy of Image.NamedResolved(&v199, &v209);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v74, type metadata accessor for PlatformItemList.Item?);
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v209);
      }

      else
      {
        v92 = v74[13];
        v206 = v74[12];
        v207 = v92;
        v208[0] = v74[14];
        *(v208 + 11) = *(v74 + 235);
        v93 = v74[9];
        v202 = v74[8];
        v203 = v93;
        v94 = v74[11];
        v204 = v74[10];
        v205 = v94;
        v95 = v74[5];
        v199 = v74[4];
        v200 = v95;
        v96 = v74[7];
        v201[0] = v74[6];
        v201[1] = v96;
        outlined copy of Image.NamedResolved?(v154, v153, v72);
        _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v199, &v209, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v74, type metadata accessor for PlatformItemList.Item);
        v216 = v206;
        v217 = v207;
        v218[0] = v208[0];
        *(v218 + 11) = *(v208 + 11);
        v213 = v202;
        v214[0] = v203;
        v214[1] = v204;
        v215 = v205;
        v209 = v199;
        v210 = v200;
        v211 = v201[0];
        v212 = v201[1];
      }

      v75 = v171;
      v206 = v216;
      v207 = v217;
      v208[0] = v218[0];
      *(v208 + 11) = *(v218 + 11);
      v202 = v213;
      v203 = v214[0];
      v204 = v214[1];
      v205 = v215;
      v199 = v209;
      v200 = v210;
      v201[0] = v211;
      v201[1] = v212;
      v97 = v150;
      WidgetAuxiliaryViewMetadata.Graphic.Named.init(_:_:)(&v188, &v199, v150);
      outlined consume of Image.NamedResolved?(v154, v153, v73);
      v98 = v166;
      swift_storeEnumTagMultiPayload();
      v156(v97, 0, 1, v98);
      v78 = v170;
      outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v97, a5 + v170, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
      v76 = v172;
      v77 = v175;
      goto LABEL_25;
    }
  }

  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v63, v34, type metadata accessor for PlatformItemList.Item?);
  if (v60(v34, 1, v187) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v34, type metadata accessor for PlatformItemList.Item?);
    v75 = v171;
    v76 = v172;
    v77 = v175;
    v78 = v170;
    goto LABEL_25;
  }

  v79 = *(v34 + 13);
  v80 = *(v34 + 11);
  v206 = *(v34 + 12);
  v207 = v79;
  v81 = *(v34 + 13);
  v208[0] = *(v34 + 14);
  *(v208 + 11) = *(v34 + 235);
  v82 = *(v34 + 9);
  v83 = *(v34 + 7);
  v202 = *(v34 + 8);
  v203 = v82;
  v84 = *(v34 + 9);
  v85 = *(v34 + 11);
  v204 = *(v34 + 10);
  v205 = v85;
  v86 = *(v34 + 5);
  v199 = *(v34 + 4);
  v200 = v86;
  v87 = *(v34 + 7);
  v89 = *(v34 + 4);
  v88 = *(v34 + 5);
  v201[0] = *(v34 + 6);
  v201[1] = v87;
  v216 = v206;
  v217 = v81;
  v218[0] = *(v34 + 14);
  *(v218 + 11) = *(v34 + 235);
  v213 = v202;
  v214[0] = v84;
  v214[1] = v204;
  v215 = v80;
  v209 = v89;
  v210 = v88;
  v211 = v201[0];
  v212 = v83;
  v90 = _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v209);
  v76 = v172;
  v78 = v170;
  if (v90 == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v34, type metadata accessor for PlatformItemList.Item);
    v75 = v171;
    v77 = v175;
    goto LABEL_25;
  }

  if (v217)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v91 = swift_dynamicCastObjCClassUnconditional();
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v34, type metadata accessor for PlatformItemList.Item);
    v75 = v171;
LABEL_24:
    v77 = v175;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a5 + v78, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    *(a5 + v78) = v91;
    v101 = v166;
    swift_storeEnumTagMultiPayload();
    v156((a5 + v78), 0, 1, v101);
    goto LABEL_25;
  }

  v195 = v213;
  v196[0] = v214[0];
  *(v196 + 12) = *(v214 + 12);
  v191 = v209;
  v192 = v210;
  v193 = v211;
  v194 = v212;
  v99 = *(v34 + 6);
  v100 = MEMORY[0x1E6981730];
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v199, &v188, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  outlined init with copy of GraphicsImage(&v209, &v188);
  v91 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v99);
  _sypSgWOhTm_5(&v199, &lazy cache variable for type metadata for Image.Resolved?, v100);
  v197[4] = v195;
  v198[0] = v196[0];
  *(v198 + 12) = *(v196 + 12);
  v197[0] = v191;
  v197[1] = v192;
  v197[2] = v193;
  v197[3] = v194;
  outlined destroy of GraphicsImage(v197);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v34, type metadata accessor for PlatformItemList.Item);
  if (v91)
  {
    v75 = v171;
    v76 = v172;
    v66 = v173;
    v63 = v174;
    goto LABEL_24;
  }

  v75 = v171;
  v76 = v172;
  v66 = v173;
  v63 = v174;
  v77 = v175;
LABEL_25:
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v63, v77, type metadata accessor for PlatformItemList.Item?);
  if (v60(v77, 1, v187) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v63, type metadata accessor for PlatformItemList.Item?);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v77, type metadata accessor for PlatformItemList.Item?);
LABEL_36:
    v116 = 1;
    v117 = v169;
    goto LABEL_37;
  }

  v102 = *(v77 + 936);

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v77, type metadata accessor for PlatformItemList.Item);
  if (!v102)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v63, type metadata accessor for PlatformItemList.Item?);
    goto LABEL_36;
  }

  v103 = *(v102 + 16);
  if (!v103)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v63, type metadata accessor for PlatformItemList.Item?);

    goto LABEL_36;
  }

  v157 = a5;
  *&v199 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103, 0);
  v104 = v199;
  v105 = v148;
  v106 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v156 = v102;
  v107 = v102 + v106;
  v108 = *(v147 + 72);
  v175 = (v147 + 56);
  v176 = v108;
  v109 = (v185 + 56);
  do
  {
    v110 = v181;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v107, v181, type metadata accessor for PlatformItemList.Item);
    v111 = v180;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v110, v180, type metadata accessor for PlatformItemList.Item);
    (*v175)(v111, 0, 1, v187);
    v112 = v182;
    v178(v182, 1, 1, v184);
    v209 = v177;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v113 = v183;
    (*v109)(v183, 1, 1, v186);
    WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v111, v112, &v209, v113);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v110, type metadata accessor for PlatformItemList.Item);
    *&v199 = v104;
    v115 = v104[2];
    v114 = v104[3];
    if (v115 >= v114 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v115 + 1, 1);
      v104 = v199;
    }

    v104[2] = v115 + 1;
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v105, v104 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v115, type metadata accessor for WidgetAuxiliaryViewMetadata);
    v107 += v176;
    --v103;
  }

  while (v103);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v174, type metadata accessor for PlatformItemList.Item?);

  v116 = 0;
  a5 = v157;
  *(v157 + v155) = v104;
  v117 = v169;
  v78 = v170;
  v75 = v171;
  v76 = v172;
  v66 = v173;
LABEL_37:
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v168, a5 + v76, type metadata accessor for URL?);
  v118 = v66[1];
  v209 = *v66;
  v210 = v118;
  v119 = v66[3];
  v211 = v66[2];
  v212 = v119;
  _sypSgWOhTm_5(&v209, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
  v120 = v220;
  *v66 = v219;
  v66[1] = v120;
  v121 = v222;
  v66[2] = v221;
  v66[3] = v121;
  v122 = (*(v185 + 48))(v75, 1, v186);
  v123 = v167;
  if (v122 == 1)
  {
    v124 = type metadata accessor for WidgetAuxiliaryViewMetadata?;
    v125 = v75;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v75, v117, type metadata accessor for WidgetAuxiliaryViewMetadata);
    if (v116)
    {
      *(a5 + v155) = *(v117 + v186[7]);
      if (*a5)
      {
      }

      else
      {
        v126 = *v117;
        *a5 = *v117;

        v127 = v126;
      }
    }

    v128 = v163;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a5 + v78, v163, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    v129 = (*(v158 + 48))(v128, 1, v166);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v128, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    if (v129 == 1)
    {
      outlined assign with copy of WidgetAuxiliaryViewMetadata.Graphic?(v117 + v186[6], a5 + v78, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    }

    v130 = v164;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a5 + v123, v164, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
    v131 = (*(v159 + 48))(v130, 1, v160);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v130, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
    if (v131 == 1)
    {
      outlined assign with copy of WidgetAuxiliaryViewMetadata.Graphic?(v117 + v186[8], a5 + v123, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
    }

    if (!*(v161 + 1))
    {
      v132 = (v117 + v186[9]);
      v133 = v132[1];
      v188 = *v132;
      v189 = v133;
      v190[0] = v132[2];
      *(v190 + 9) = *(v132 + 41);
      v134 = v161[1];
      v199 = *v161;
      v200 = v134;
      v201[0] = v161[2];
      *(v201 + 9) = *(v161 + 41);
      v135 = v161;
      _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v188, v197, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
      _sypSgWOhTm_5(&v199, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
      v136 = v189;
      *v135 = v188;
      v135[1] = v136;
      v135[2] = v190[0];
      *(v135 + 41) = *(v190 + 9);
    }

    v137 = v165;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a5 + v76, v165, type metadata accessor for URL?);
    v138 = (*(v162 + 48))(v137, 1, v184);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v137, type metadata accessor for URL?);
    if (v138 == 1)
    {
      outlined assign with copy of WidgetAuxiliaryViewMetadata.Graphic?(v117 + v186[10], a5 + v76, type metadata accessor for URL?);
    }

    if (*(v66 + 1) == 1)
    {
      v139 = (v117 + v186[11]);
      v140 = v139[1];
      v188 = *v139;
      v189 = v140;
      v141 = v139[3];
      v190[0] = v139[2];
      v190[1] = v141;
      _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v188, &v199, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v117, type metadata accessor for WidgetAuxiliaryViewMetadata);
      v142 = v66[1];
      v199 = *v66;
      v200 = v142;
      v143 = v66[3];
      v201[0] = v66[2];
      v201[1] = v143;
      result = _sypSgWOhTm_5(&v199, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
      v145 = v189;
      *v66 = v188;
      v66[1] = v145;
      v146 = v190[1];
      v66[2] = v190[0];
      v66[3] = v146;
      return result;
    }

    v124 = type metadata accessor for WidgetAuxiliaryViewMetadata;
    v125 = v117;
  }

  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v125, v124);
}

uint64_t static WidgetAuxiliaryViewMetadata.tint(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v9 = *a1;
  result = MEMORY[0x18D0065B0]();
  if (result)
  {
    ShapeStyle.resolveGradient(in:level:)();
    if (v9)
    {

      *a2 = v9;
      *(a2 + 8) = v4;
      *(a2 + 16) = v10;
      return result;
    }

    v6 = ShapeStyle.fallbackColor(in:level:)();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18CD63400;
      *(v8 + 32) = v7;

      MEMORY[0x18D00B0A0](v8);
      Gradient.resolve(in:)();

      *a2 = v3;
      *(a2 + 8) = v4 | (HIDWORD(v4) << 32);
      *(a2 + 16) = v10;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.init(progress:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = v4[6];
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  *&a2[v4[7]] = 0;
  v7 = v4[8];
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = &a2[v4[9]];
  *(v9 + 41) = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = v4[10];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = &a2[v4[11]];
  *v12 = xmmword_18CD633F0;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  return outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, &a2[v7], type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.range.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0);
  v6 = (v2 + *(result + 20));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.color.getter()
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0);
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.features.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.textScale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.textScale.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.metadata.getter()
{
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v17 = MEMORY[0x1E69E7CC0];
  v5 = type metadata accessor for ResolvableTextSegmentAttribute.Value();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = NSAttributedString.range.getter();
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = &v17;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in WidgetAuxiliaryViewMetadata.Text.metadata.getter;
  *(v10 + 24) = v9;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_58;
  v11 = _Block_copy(aBlock);
  v12 = v4;

  [v12 enumerateAttributesInRange:v6 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = v17;

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v3, type metadata accessor for ResolvableTextSegmentAttribute.Value?);

    return v14;
  }

  return result;
}

uint64_t closure #1 in WidgetAuxiliaryViewMetadata.Text.metadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, size_t *a7)
{
  v93 = a7;
  v86 = a6;
  v98 = a5;
  v94 = a2;
  v95 = a3;
  v90 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata(0);
  v8 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = (&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = (&v84 - v14);
  v15 = type metadata accessor for ResolvableTextSegmentAttribute.Value();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (ResolvableTextSegmentAttribute.Value?, ResolvableTextSegmentAttribute.Value?)(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v85 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v99 = &v84 - v32;
  v33 = static NSAttributedStringKey.resolvableTextSegment.getter();
  v34 = v33;
  v35 = *(a1 + 16);
  v92 = v8;
  if (v35 && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v37 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v36, &v102);

    v38 = v99;
    v39 = swift_dynamicCast();
    (*(v16 + 56))(v38, v39 ^ 1u, 1, v15);
  }

  else
  {

    v38 = v99;
    (*(v16 + 56))(v99, 1, 1, v15);
  }

  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v98, v30, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  v40 = *(v20 + 48);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v38, v22, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v30, &v22[v40], type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  v41 = *(v16 + 48);
  if (v41(v22, 1, v15) != 1)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v22, v27, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
    if (v41(&v22[v40], 1, v15) != 1)
    {
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(&v22[v40], v18, MEMORY[0x1E69809E0]);
      v66 = static UUID.== infix(_:_:)();
      v67 = MEMORY[0x1E69809E0];
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v18, MEMORY[0x1E69809E0]);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v30, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v27, v67);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v22, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      v43 = v96;
      if ((v66 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v30, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v27, MEMORY[0x1E69809E0]);
    v43 = v96;
LABEL_10:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v22, type metadata accessor for (ResolvableTextSegmentAttribute.Value?, ResolvableTextSegmentAttribute.Value?));
    goto LABEL_11;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v30, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  v42 = v41(&v22[v40], 1, v15);
  v43 = v96;
  if (v42 != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v22, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
LABEL_31:
  if (v41(v99, 1, v15) != 1)
  {
    return outlined destroy of ResolvableTextSegmentAttribute.Value?(v99, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  }

  v68 = v85;
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v98, v85, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  v69 = v41(v68, 1, v15);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v68, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  if (v69 != 1)
  {
    return outlined destroy of ResolvableTextSegmentAttribute.Value?(v99, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  }

LABEL_11:
  outlined assign with copy of WidgetAuxiliaryViewMetadata.Graphic?(v99, v98, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
  v44 = v88;
  static WidgetAuxiliaryViewMetadata.Text.extractSpecialMetadata(from:)(a1, v88);
  if ((*(v87 + 48))(v44, 1, v89) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v44, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind?);
    v45 = [v86 attributedSubstringFromRange_];
    v46 = [v45 string];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *&v102 = v47;
    *(&v102 + 1) = v49;
    *v43 = String.init<A>(_:)();
    v43[1] = v50;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v44, v43, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
  }

  v51 = v91;
  if (*(a1 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB650]), (v53 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v52, &v102), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor), (swift_dynamicCast() & 1) != 0))
  {
    v54 = v100;
    type metadata accessor for UIKitPlatformColorDefinition();
    v55 = v54;
    v56 = Color.init(_platformColor:definition:)();
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v56 = 0;
    v55 = 0;
    if (!*(a1 + 16))
    {
LABEL_25:
      v59 = 0;
      v102 = 0u;
      v103 = 0u;
      goto LABEL_26;
    }
  }

  v57 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB648]);
  if ((v58 & 1) == 0)
  {
    goto LABEL_25;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v57, &v102);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v59 = v100;
  if (!v100)
  {
    goto LABEL_25;
  }

  v60 = [v100 fontDescriptor];
  v61 = [v60 objectForKey_];

  if (v61)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;
  if (*(&v101 + 1))
  {
    type metadata accessor for [NSDictionary]();
    if (swift_dynamicCast())
    {
      v62 = v100;
    }

    else
    {
      v62 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

LABEL_26:
  _sypSgWOhTm_5(&v102, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v62 = 0;
  if (!*(a1 + 16))
  {
LABEL_40:
    v65 = 2;
    goto LABEL_41;
  }

LABEL_27:
  v63 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB720]);
  if ((v64 & 1) == 0)
  {
    goto LABEL_40;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v63, &v102);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  Text.Scale.init(_:)();
  v65 = v102;
LABEL_41:
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v43, v97, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
  if (v62)
  {
    v70 = v62 & 0xFFFFFFFFFFFFFF8;
    if (v62 >> 62)
    {
      type metadata accessor for CFDictionaryRef(0);

      v83 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v62 = v83;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CFDictionaryRef(0);
      if (swift_dynamicCastMetatype() || (v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
      }

      else
      {
        v72 = v70 + 32;
        while (swift_dynamicCastUnknownClass())
        {
          v72 += 8;
          if (!--v71)
          {

            goto LABEL_51;
          }
        }

        v62 = v70 | 1;
LABEL_51:
        v43 = v96;
      }
    }
  }

  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v97, v51, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
  v73 = v90;
  v74 = (v51 + *(v90 + 20));
  v75 = v95;
  *v74 = v94;
  v74[1] = v75;
  *(v51 + v73[6]) = v56;
  *(v51 + v73[7]) = v62;
  *(v51 + v73[8]) = v65;
  v76 = v93;
  v77 = *v93;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v76 = v77;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
    *v76 = v77;
  }

  v80 = v77[2];
  v79 = v77[3];
  if (v80 >= v79 >> 1)
  {
    *v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79 > 1, v80 + 1, 1, v77);
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v43, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
  v81 = *v76;
  *(v81 + 16) = v80 + 1;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v51, v81 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v80, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata);
  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v99, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
}

void static WidgetAuxiliaryViewMetadata.Text.extractSpecialMetadata(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ResolvableTimer?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ResolvableTimer();
  v103 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableCurrentDate?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ResolvableCurrentDate();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableDateInterval?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResolvableDateInterval();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableAbsoluteDate?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ResolvableAbsoluteDate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB5F8]);
    if (v25)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v24, v114);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextAttachment);
      if (swift_dynamicCast())
      {
        v26 = v118;
        static WidgetAuxiliaryViewMetadata.Text.metadataKind(from:)(v118, a2);

        return;
      }
    }
  }

  v109 = a2;
  v27 = static ResolvableAbsoluteDate.attribute.getter();
  v28 = v27;
  if (!*(a1 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v30 & 1) == 0))
  {

    (*(v21 + 56))(v19, 1, 1, v20);
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v29, v114);

  v31 = swift_dynamicCast();
  (*(v21 + 56))(v19, v31 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
LABEL_10:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v19, type metadata accessor for ResolvableAbsoluteDate?);
    v42 = static ResolvableDateInterval.attribute.getter();
    v43 = v42;
    v44 = v109;
    if (*(a1 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42), (v46 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v45, v114);

      v47 = swift_dynamicCast();
      (*(v14 + 56))(v12, v47 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v12, v16, MEMORY[0x1E697FED8]);
        ResolvableDateInterval.interval.getter();
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v16, MEMORY[0x1E697FED8]);
        v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
LABEL_24:
        swift_storeEnumTagMultiPayload();
        v40 = *(*(v39 - 8) + 56);
        v41 = v44;
        goto LABEL_25;
      }
    }

    else
    {

      (*(v14 + 56))(v12, 1, 1, v13);
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for ResolvableDateInterval?);
    v48 = static ResolvableCurrentDate.attribute.getter();
    v49 = v48;
    if (*(a1 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v51 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v50, v114);

      v52 = v107;
      v53 = v106;
      v54 = swift_dynamicCast();
      v55 = v105;
      (*(v105 + 56))(v52, v54 ^ 1u, 1, v53);
      v56 = (*(v55 + 48))(v52, 1, v53);
      v57 = v108;
      if (v56 != 1)
      {
        v58 = v102;
        outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v52, v102, MEMORY[0x1E697FCD8]);
        v59 = *v58;
        v60 = *(v58 + 8);
        v61 = *(v58 + 16);
        type metadata accessor for (String, Bool, TimeZone?)();
        v63 = *(v62 + 64);
        *v44 = v59;
        v44[1] = v60;
        *(v44 + 16) = v61;
        outlined copy of TabCustomizationID.Base();
        ResolvableCurrentDate.timeZone.getter();
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v58, MEMORY[0x1E697FCD8]);
        v64 = type metadata accessor for TimeZone();
        (*(*(v64 - 8) + 56))(v44 + v63, 0, 1, v64);
        v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
        goto LABEL_24;
      }
    }

    else
    {

      v52 = v107;
      (*(v105 + 56))(v107, 1, 1, v106);
      v57 = v108;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v52, type metadata accessor for ResolvableCurrentDate?);
    v65 = static ResolvableTimer.attribute.getter();
    v66 = v65;
    if (*(a1 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65), (v68 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v67, v114);

      v69 = v104;
      v70 = swift_dynamicCast();
      v71 = v103;
      (*(v103 + 56))(v69, v70 ^ 1u, 1, v57);
      if ((*(v71 + 48))(v69, 1, v57) != 1)
      {
        v72 = v101;
        outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v69, v101, MEMORY[0x1E697E888]);
        type metadata accessor for (DateInterval, Double?, Bool)();
        v74 = v44 + *(v73 + 48);
        v75 = *(v73 + 64);
        ResolvableTimer.interval.getter();
        v76 = v72 + *(v57 + 20);
        v77 = *v76;
        LOBYTE(v76) = *(v76 + 8);
        *v74 = v77;
        v74[8] = v76;
        LOBYTE(v74) = *(v72 + *(v57 + 24));
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v72, MEMORY[0x1E697E888]);
        *(v44 + v75) = v74;
        v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
        goto LABEL_24;
      }
    }

    else
    {

      v69 = v104;
      (*(v103 + 56))(v104, 1, 1, v57);
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v69, type metadata accessor for ResolvableTimer?);
    v80 = static TimeDataFormatting.attribute.getter();
    v81 = v80;
    if (*(a1 + 16) && (v82 = specialized __RawDictionaryStorage.find<A>(_:)(v80), (v83 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v82, &v111);

      type metadata accessor for ResolvableStringAttribute();
      if (swift_dynamicCast())
      {
        if (*(&v119 + 1))
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v118, v114);
          v84 = v115;
          v85 = __swift_project_boxed_opaque_existential_1(v114, v115);
          v110[3] = v84;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
          (*(*(v84 - 8) + 16))(boxed_opaque_existential_1, v85, v84);
          TimeDataFormattingContainer.init(resolvable:)();
          if (*(&v112 + 1))
          {
            v87 = v112;
            v118 = v111;
            v119 = v112;
            v88 = v113;
            v120 = v113;
            *v44 = v111;
            *(v44 + 1) = v87;
            v44[4] = v88;
            v89 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v89 - 8) + 56))(v44, 0, 1, v89);
            __swift_destroy_boxed_opaque_existential_1(v114);
            return;
          }

          _sypSgWOhTm_5(&v111, &lazy cache variable for type metadata for TimeDataFormattingContainer?, MEMORY[0x1E6980820]);
          __swift_destroy_boxed_opaque_existential_1(v114);
LABEL_35:
          v90 = static ResolvableCLKTextProvider.attribute.getter();
          v91 = v90;
          if (*(a1 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(v90), (v93 & 1) != 0))
          {
            outlined init with copy of Any(*(a1 + 56) + 32 * v92, &v118);

            if (swift_dynamicCast())
            {
              v94 = v114[0];
              v95 = v114[2];
              v96 = v115;
              v97 = v116;
              v98 = v117;
              ResolvableCLKTextProvider.rawProvider.getter();

              outlined consume of ResolvableCLKTextProvider.FontStorage(v95, v96);
              outlined consume of ResolvableCLKTextProvider.FontStorage(v97, v98);
              objc_opt_self();
              v99 = swift_dynamicCastObjCClass();
              if (v99)
              {
                v100 = v109;
                *v109 = v99;
                v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
                swift_storeEnumTagMultiPayload();
                v40 = *(*(v39 - 8) + 56);
                v41 = v100;
                goto LABEL_25;
              }

              swift_unknownObjectRelease();
              v44 = v109;
            }
          }

          else
          {
          }

          v79 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
          v40 = *(*(v79 - 8) + 56);
          v41 = v44;
          v78 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        v120 = 0;
        v119 = 0u;
        v118 = 0u;
      }
    }

    else
    {

      v118 = 0u;
      v119 = 0u;
      v120 = 0;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(&v118, type metadata accessor for ResolvableStringAttribute?);
    goto LABEL_35;
  }

  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v19, v23, MEMORY[0x1E697FED0]);
  type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530]);
  v33 = v109;
  v34 = v109 + *(v32 + 48);
  ResolvableAbsoluteDate.date.getter();
  v35 = &v23[*(v20 + 20)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = v35[16];
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v23, MEMORY[0x1E697FED0]);
  *v34 = v36;
  *(v34 + 1) = v37;
  v34[16] = v38;
  v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  swift_storeEnumTagMultiPayload();
  v40 = *(*(v39 - 8) + 56);
  v41 = v33;
LABEL_25:
  v78 = 0;
  v79 = v39;
LABEL_42:
  v40(v41, v78, 1, v79);
}

uint64_t static WidgetAuxiliaryViewMetadata.Text.metadataKind(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 contents];
  if (v19)
  {
    v39 = v8;
    v42 = a2;
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata();
    v40 = v21;
    v41 = v23;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v40, v41);
    (*(v15 + 56))(v13, 0, 1, v14);
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v13, v18, type metadata accessor for WidgetAuxiliaryViewMetadata);
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(&v18[*(v14 + 24)], v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v18, type metadata accessor for WidgetAuxiliaryViewMetadata);
    v28 = (*(v39 + 48))(v6, 1, v7);
    if (v28 != 1)
    {
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v6, v10, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
      v37 = v42;
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v10, v42, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
      v38 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    v29 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = v42;
    return v30(v31, 1, 1, v29);
  }

  v24 = [a1 image];
  if (!v24)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18CD63400;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v44 = 0xD000000000000032;
    v45 = 0x800000018CD52EA0;
    v33 = StaticString.description.getter();
    MEMORY[0x18D00C9B0](v33);

    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v43 = 84;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v34);

    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
    v35 = v44;
    v36 = v45;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 32) = v35;
    *(v32 + 40) = v36;
    print(_:separator:terminator:)();

    v29 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = a2;
    return v30(v31, 1, 1, v29);
  }

  *a2 = v24;
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  swift_storeEnumTagMultiPayload();
  v26 = *(*(v25 - 8) + 56);

  return v26(a2, 0, 1, v25);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.withBundle(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v12, v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v14 = *v8;
    v46 = v8[1];
    v47 = v14;

    v15 = [a1 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    swift_storeEnumTagMultiPayload();
    v16 = v6[7];
    v17 = v8 + v6[6];
    v18 = *v17;
    v43 = v17[4];
    v44 = v18;
    v45 = *(v8 + v16);
    v19 = *(v8 + v6[8]);
    v20 = v8 + v6[9];
    v21 = *v20;
    v41 = *(v20 + 1);
    v42 = v21;
    v22 = v20[16];
    v23 = v6[11];
    v38 = *(v8 + v6[10]);
    v24 = *(v8 + v23);
    v25 = v8 + v6[12];
    v26 = *v25;
    v27 = *(v25 + 2);
    v36 = v25[12];
    v37 = v27;
    v28 = v27 | (v36 << 32);
    v39 = v25[14];
    v40 = v22;
    v29 = v25[13];

    outlined copy of ContentTransition.Storage(v26, v28, v29);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v30 = v46;
    *a2 = v47;
    a2[1] = v30;
    v31 = a2 + v6[6];
    v32 = v43;
    *v31 = v44;
    v31[4] = v32;
    *(a2 + v6[7]) = v45;
    *(a2 + v6[8]) = v19;
    v33 = a2 + v6[9];
    v34 = v41;
    *v33 = v42;
    *(v33 + 1) = v34;
    v33[16] = v40;
    *(a2 + v6[10]) = v38;
    *(a2 + v6[11]) = v24;
    v35 = a2 + v6[12];
    *v35 = v26;
    LODWORD(v34) = v37;
    v35[12] = v36;
    *(v35 + 2) = v34;
    v35[13] = v29;
    v35[14] = v39;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x656C646E7562;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.value.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.isSymbol.setter(char a1)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.colors.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0) + 32));
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 44;
    do
    {
      Color.init(_:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.tintColor.getter()
{
  v1 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  result = 0;
  if ((*(v0 + *(v1 + 36) + 16) & 1) == 0)
  {
    return Color.init(_:)();
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.symbolRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.symbolEffects.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0) + 44));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v17;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[1];
      *&v16[13] = *(v4 + 29);
      v15 = v5;
      *v16 = v6;
      outlined init with copy of _SymbolEffect(&v15, &v13);
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      v9 = v15;
      v13 = v15;
      v14[0] = *v16;
      *(v14 + 13) = *&v16[13];
      *(v3 + 16) = v8 + 1;
      v10 = (v3 + 48 * v8);
      v11 = v14[0];
      *(v10 + 61) = *(v14 + 13);
      v10[2] = v9;
      v10[3] = v11;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.contentTransition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0) + 48);
  v4 = *v3;
  v5 = *(v3 + 12);
  v6 = *(v3 + 8);
  v7 = *(v3 + 14);
  *a1 = *v3;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  v8 = *(v3 + 13);
  *(a1 + 13) = v8;
  *(a1 + 14) = v7;

  return outlined copy of ContentTransition.Storage(v4, v6 | (v5 << 32), v8);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x65756C6176;
    if (a1 != 2)
    {
      v6 = 0x6C6F626D79537369;
    }

    if (a1)
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65646F6D5FLL;
    v2 = 0x456C6F626D79735FLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726F6C6F635FLL;
    if (a1 != 4)
    {
      v3 = 0x6C6F43746E69745FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 20));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Progress.label : WidgetAuxiliaryViewMetadata.Progress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 20));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Progress.label : WidgetAuxiliaryViewMetadata.Progress(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 20));
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.label.setter(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 20));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return swift_endAccess();
}

uint64_t (*WidgetAuxiliaryViewMetadata.Progress.label.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[9] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[9] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[10] = v8;
  v10 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 20));
  v5[11] = v10;
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  v5[12] = v11;
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Progress.label.modify;
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.currentValueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 24));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Progress.currentValueLabel : WidgetAuxiliaryViewMetadata.Progress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 24));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Progress.currentValueLabel : WidgetAuxiliaryViewMetadata.Progress(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 24));
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.currentValueLabel.setter(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 24));
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return swift_endAccess();
}

uint64_t (*WidgetAuxiliaryViewMetadata.Progress.currentValueLabel.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[9] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[9] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[10] = v8;
  v10 = *(v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 24));
  v5[11] = v10;
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  v5[12] = v11;
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Progress.currentValueLabel.modify;
}

void WidgetAuxiliaryViewMetadata.Progress.label.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(*(*a1 + 80), v5, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_beginAccess();
    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v5, v4 + v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  else
  {
    swift_beginAccess();
    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v4 + v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0) + 28));
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v4 = v1 + 48;
    do
    {
      Color.init(_:)();
      ResolvedGradient.Stop.location.getter();
      v5 = Gradient.Stop.init(color:location:)();
      v14 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return Gradient.init(stops:)();
}

uint64_t Gradient.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v4 = v1 + 48;
    do
    {
      Color.init(_:)();
      ResolvedGradient.Stop.location.getter();
      v5 = Gradient.Stop.init(color:location:)();
      v14 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return Gradient.init(stops:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys()
{
  v1 = 1684957547;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x746E69745FLL;
  }

  if (*v0)
  {
    v1 = 0x786F426C6562616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WidgetAuxiliaryViewMetadata.Progress.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Gauge.label : WidgetAuxiliaryViewMetadata.Gauge@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Gauge.label : WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + 8);
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.label.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

void (*WidgetAuxiliaryViewMetadata.Gauge.label.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = *(v1 + 8);
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Gauge.label.modify;
}

void WidgetAuxiliaryViewMetadata.Gauge.label.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(*(*a1 + 88), v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    v6 = *(v5 + 8);
    v7 = *(*v6 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v3, v6 + v7, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  else
  {
    v8 = *(v5 + 8);
    v9 = *(*v8 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v4, v8 + v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel : WidgetAuxiliaryViewMetadata.Gauge@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel : WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + 16);
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

void (*WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = *(v1 + 16);
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel.modify;
}

void WidgetAuxiliaryViewMetadata.Gauge.currentValueLabel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(*(*a1 + 88), v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    v6 = *(v5 + 16);
    v7 = *(*v6 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v3, v6 + v7, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  else
  {
    v8 = *(v5 + 16);
    v9 = *(*v8 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v4, v8 + v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel : WidgetAuxiliaryViewMetadata.Gauge@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel : WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + 24);
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

void (*WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = *(v1 + 24);
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel.modify;
}

void WidgetAuxiliaryViewMetadata.Gauge.minimumValueLabel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(*(*a1 + 88), v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    v6 = *(v5 + 24);
    v7 = *(*v6 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v3, v6 + v7, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  else
  {
    v8 = *(v5 + 24);
    v9 = *(*v8 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v4, v8 + v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path getter for WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel : WidgetAuxiliaryViewMetadata.Gauge@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3 + v4, a2, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t key path setter for WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel : WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v7 = *(a2 + 32);
  v8 = *(*v7 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v6, v7 + v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(*v3 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();

  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(a1, v3 + v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  swift_endAccess();
}

void (*WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = *(v1 + 32);
  v11 = *(*v10 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10 + v11, v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel.modify;
}

void WidgetAuxiliaryViewMetadata.Gauge.maximumValueLabel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(*(*a1 + 88), v3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    v6 = *(v5 + 32);
    v7 = *(*v6 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v3, v6 + v7, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  else
  {
    v8 = *(v5 + 32);
    v9 = *(*v8 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();

    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v4, v8 + v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_endAccess();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.tint.getter()
{
  result = *(v0 + 40);
  if (result)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = v3;
    v6 = HIDWORD(v3);
    v7 = v2 & 1;

    return Gradient.init(_:)(&v4);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x746E69745FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x786F426C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WidgetAuxiliaryViewMetadata.Gauge.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.hint.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.hint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys()
{
  v1 = 0x6C6562616CLL;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 1953393000;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id WidgetAuxiliaryViewMetadata.metadataText.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id WidgetAuxiliaryViewMetadata.metadataSecondaryText.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.Metadata.features.getter(void (*a1)(void))
{
  a1(0);
}

uint64_t WidgetAuxiliaryViewMetadata.gauge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 41);
  v6 = *(v11 + 9);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 41) = v6;
  return _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v9, &v8, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
}

uint64_t WidgetAuxiliaryViewMetadata.accessibility.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetAuxiliaryViewMetadata(0) + 44));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(v9, &v8, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
}

__n128 WidgetAuxiliaryViewMetadata.init(gauge:)@<Q0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = v4[6];
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  *&a2[v4[7]] = 0;
  v7 = v4[8];
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = &a2[v4[9]];
  *(v9 + 41) = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = v4[10];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = &a2[v4[11]];
  *v12 = xmmword_18CD633F0;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  v13 = *(v9 + 1);
  v16[0] = *v9;
  v16[1] = v13;
  v17[0] = *(v9 + 2);
  *(v17 + 9) = *(v9 + 41);
  _sypSgWOhTm_5(v16, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
  v14 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v14;
  *(v9 + 2) = *(a1 + 32);
  result = *(a1 + 41);
  *(v9 + 41) = result;
  return result;
}

double WidgetAuxiliaryViewMetadata.init(fallbacks:)@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = v4[6];
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[7];
  v8 = v4[8];
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = &a2[v4[9]];
  *(v10 + 41) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v11 = v4[10];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[v4[11]];
  result = 0.0;
  *v13 = xmmword_18CD633F0;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *&a2[v7] = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.CodingKeys()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 7107189;
  if (v1 != 6)
  {
    v3 = 0x6269737365636361;
  }

  v4 = 0x73736572676F7270;
  if (v1 != 4)
  {
    v4 = 0x6567756167;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63696870617267;
  if (v1 != 2)
  {
    v5 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WidgetAuxiliaryViewMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataFormattingContainer.representation(for:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  LOBYTE(v11[0]) = *a1;
  TimeDataFormattingContainer.representation(for:)();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getDynamicType();
  v3 = static ResolvableStringAttributeRepresentation.attribute.getter();
  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v12 = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  outlined init with take of Any(v11, v10);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v3, isUniquelyReferenced_nonNull_native);

  static WidgetAuxiliaryViewMetadata.Text.extractSpecialMetadata(from:)(v7, a2);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t WidgetAuxiliaryViewMetadata.tint.getter()
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v0 + *(v7 + 24), v3, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?;
LABEL_5:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v3, v9);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
    goto LABEL_5;
  }

  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v3, v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  if (v6[*(v4 + 36) + 16])
  {
    v11 = 0;
  }

  else
  {
    v11 = Color.init(_:)();
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  return v11;
}

uint64_t WidgetAuxiliaryViewMetadata.resolvedTint.getter()
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v0 + *(v7 + 24), v3, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?;
LABEL_5:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v3, v9);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
    goto LABEL_5;
  }

  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v3, v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  v11 = *&v6[*(v4 + 36)];
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  return v11;
}

unint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.init(_:_:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v81 = *a1;
  v5 = a1[2];
  v85 = *(a1 + 6);
  v83 = *(a1 + 28);
  v88 = *(a1 + 29);
  v90 = *(a1 + 30);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a2[8];
  v137 = a2[9];
  v138[0] = a2[10];
  *(v138 + 11) = *(a2 + 171);
  v9 = a2[5];
  v132 = a2[4];
  v133 = v9;
  v10 = a2[7];
  v134 = a2[6];
  v135 = v10;
  v136 = v8;
  v11 = a2[1];
  v128 = *a2;
  v129 = v11;
  v12 = a2[3];
  v130 = a2[2];
  v131 = v12;
  v13 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  v14 = v13[7];
  v15 = a3 + v13[6];
  v93 = v13[8];
  v16 = (a3 + v13[9]);
  v16->i64[0] = 0;
  v16->i64[1] = 0;
  v80 = v16;
  v16[1].i8[0] = 1;
  v17 = v13[10];
  *(a3 + v17) = 8;
  *&v114 = v6;
  *(&v114 + 1) = v7;

  v18 = EnvironmentValues.symbolEffects.getter();
  *(a3 + v13[11]) = specialized SymbolEffectArray.init(effects:)(v18);
  *&v114 = v6;
  *(&v114 + 1) = v7;
  EnvironmentValues.contentTransition.getter();
  v19 = DWORD2(v99);
  v20 = WORD6(v99);
  v21 = BYTE14(v99);
  v22 = a3 + v13[12];
  *v22 = v99;
  *(v22 + 6) = v20;
  *(v22 + 2) = v19;
  v22[14] = v21;
  *&v114 = v6;
  *(&v114 + 1) = v7;
  if (EnvironmentValues.shouldRedactSymbolImages.getter())
  {
    _sypSgWOhTm_5(&v128, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);

    outlined consume of Image.Location(v5);

    *a3 = 0x662E657261757173;
    a3[1] = 0xEB000000006C6C69;
    *(a3 + v13[5]) = 0;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    v23 = swift_storeEnumTagMultiPayload();
    *v15 = 0;
    v15[4] = 1;
    *(a3 + v17) = 0;
    *(a3 + v14) = 1;
    *&v114 = v6;
    *(&v114 + 1) = v7;
    if (MEMORY[0x18D006440](v23))
    {
      *&v114 = v6;
      *(&v114 + 1) = v7;
      dispatch thunk of AnyColorBox.resolve(in:)();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, MEMORY[0x1E6981540], MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_18CD63400;
      *(v32 + 32) = v25;
      *(v32 + 36) = v27;
      *(v32 + 40) = v29;
      *(v32 + 44) = v31;

      *(a3 + v93) = v32;
    }

    else
    {

      *(a3 + v93) = MEMORY[0x1E69E7CC0];
    }

    return result;
  }

  v79 = v17;
  *a3 = v81;
  a3[1] = v4;
  if (!v5)
  {
    *(a3 + v13[5]) = 0;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    swift_storeEnumTagMultiPayload();
    *(a3 + v14) = 1;

    v35 = v17;
    v34 = v93;
    goto LABEL_9;
  }

  v34 = v93;
  if (v5 == 1)
  {
    *(a3 + v13[5]) = 1;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    swift_storeEnumTagMultiPayload();
    *(a3 + v14) = 1;

    v35 = v79;
LABEL_9:
    v36 = v90;
    goto LABEL_15;
  }

  outlined copy of Image.Location(v5);
  v37 = [v5 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Image.Location(v5);

  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  swift_storeEnumTagMultiPayload();
  v122 = v136;
  v123 = v137;
  *v124 = v138[0];
  *&v124[11] = *(v138 + 11);
  v118 = v132;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v114 = v128;
  v115 = v129;
  v116 = v130;
  v117 = v131;
  *(a3 + v14) = _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v114) != 1 && BYTE8(v114) == 2;
  v35 = v79;
  v36 = v90;
LABEL_15:
  *v15 = v85;
  v15[4] = v83;
  v122 = v136;
  v123 = v137;
  *v124 = v138[0];
  *&v124[11] = *(v138 + 11);
  v118 = v132;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v114 = v128;
  v115 = v129;
  v116 = v130;
  v117 = v131;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v114) == 1)
  {

    outlined consume of Image.Location(v5);

    if (v36)
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v38 = 0;
    }

LABEL_55:
    *(a3 + v35) = v88;
    *(a3 + v34) = v38;
    *&v99 = v6;
    *(&v99 + 1) = v7;

    v69 = EnvironmentValues.tintColor.getter();
    if (v69)
    {
      *&v95[0] = v6;
      *(&v95[0] + 1) = v7;
      dispatch thunk of AnyColorBox.resolve(in:)();
      v87 = v71;
      v89 = v70;
      v92 = v73;
      v94 = v72;

      v74.i64[0] = v89;
      v74.i64[1] = v87;
      v75 = vorrq_s8(vshll_n_s32(__PAIR64__(v92, v94), 0x20uLL), v74);
    }

    else
    {

      v75 = 0uLL;
    }

    *v80 = v75;
    v80[1].i8[0] = v69 == 0;
    return result;
  }

  if (v88 == 8)
  {
    if (BYTE8(v114) == 2)
    {
      v39 = *(v114 + 24);
      v40 = *(v114 + 32);
      v41 = *(v114 + 40);
      v42 = *(v114 + 44);
      v43 = *(v114 + 45);
      v44 = *(v114 + 48);
      *&v99 = *(v114 + 16);
      BYTE8(v99) = v39;
      *&v100 = v40;
      DWORD2(v100) = v41;
      BYTE12(v100) = v42;
      BYTE13(v100) = v43;
      *&v101 = v44;
      ResolvedVectorGlyph.renderingMode.getter();
      v45 = v95[0];
    }

    else
    {
      v45 = 8;
    }

    LOBYTE(v88) = v45;
  }

  if (*&v124[24])
  {
    v46 = 1;
  }

  else
  {
    v46 = v36;
  }

  if (v124[26])
  {
    v38 = *&v124[24];
  }

  else
  {
    v38 = v46;
  }

  if (!v38)
  {
    _sypSgWOhTm_5(&v128, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);

    outlined consume of Image.Location(v5);

    goto LABEL_55;
  }

  *&v99 = v6;
  *(&v99 + 1) = v7;
  if (!EnvironmentValues.foregroundStyle.getter())
  {
    _sypSgWOhTm_5(&v128, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);

    outlined consume of Image.Location(v5);

    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v99 = 0uLL;
  *&v100 = v38;
  BYTE8(v100) = 1;
  *&v95[0] = v6;
  *(&v95[0] + 1) = v7;
  v125 = 0u;
  v126 = 0u;
  v127 = 1;
  v107 = 3;
  *&v97[0] = 0;
  BYTE8(v97[0]) = 5;
  v106 = 0;

  _ShapeStyle_Shape.init(operation:result:environment:foregroundStyle:bounds:role:substrate:)();
  dispatch thunk of AnyShapeStyleBox.apply(to:)();
  _ShapeStyle_Shape.stylePack.getter();
  result = _ShapeStyle_Pack.Slice.init(pack:name:)(v95, v97, &v99);
  v84 = *(&v100 + 1) >> 1;
  v86 = v100;
  v47 = (*(&v100 + 1) >> 1) - v100;
  if (!__OFSUB__(*(&v100 + 1) >> 1, v100))
  {
    v48 = v101 + v47;
    if (__OFADD__(v101, v47))
    {
      goto LABEL_62;
    }

    v76 = v5;
    if (v48 == v101)
    {
      v91 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v103 = v112;
      *v104 = v113[0];
      *&v104[12] = *(v113 + 12);
      v99 = v108;
      v100 = v109;
      v101 = v110;
      v102 = v111;
      outlined destroy of _ShapeStyle_Shape(&v99);

      outlined consume of Image.Location(v76);

      _sypSgWOhTm_5(&v128, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      swift_unknownObjectRelease();

LABEL_54:
      v35 = v79;
      v38 = v91;
      goto LABEL_55;
    }

    v49 = 0;
    if (v48 <= v101)
    {
      v48 = v101;
    }

    v82 = v48 - v101;
    v50 = *(&v99 + 1) + 8;
    v91 = MEMORY[0x1E69E7CC0];
    v77 = v7;
    v78 = v6;
    while (v86 <= 0 && v49 < v84)
    {
      v51 = *(v50 - 8);
      v52 = *(v50 + 8);
      v53 = *(v50 + 40);
      v101 = *(v50 + 24);
      v102 = v53;
      v99 = v51;
      v100 = v52;
      v54 = *(v50 + 56);
      v55 = *(v50 + 72);
      v56 = *(v50 + 104);
      *&v104[16] = *(v50 + 88);
      v105 = v56;
      v103 = v54;
      *v104 = v55;
      if (v82 == v49)
      {
        goto LABEL_60;
      }

      v57 = v47;
      v58 = *(v50 + 80);
      v97[4] = *(v50 + 64);
      v97[5] = v58;
      v97[6] = *(v50 + 96);
      v98 = *(v50 + 112);
      v59 = *(v50 + 16);
      v97[0] = *v50;
      v97[1] = v59;
      v60 = *(v50 + 48);
      v97[2] = *(v50 + 32);
      v97[3] = v60;
      outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(&v99, v95, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      result = _ShapeStyle_Pack.Style.color.getter();
      if ((v62 & 0x100000000) != 0)
      {
        v95[4] = v112;
        v96[0] = v113[0];
        *(v96 + 12) = *(v113 + 12);
        v95[0] = v108;
        v95[1] = v109;
        v95[2] = v110;
        v95[3] = v111;
        outlined destroy of _ShapeStyle_Shape(v95);

        outlined consume of Image.Location(v76);

        _sypSgWOhTm_5(&v128, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
        swift_unknownObjectRelease();

        outlined destroy of ResolvableTextSegmentAttribute.Value?(&v99, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        goto LABEL_54;
      }

      v63 = v91;
      if (!v91)
      {
        goto LABEL_63;
      }

      v64 = result;
      v65 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v91 + 2) + 1, 1, v91);
      }

      v67 = *(v63 + 2);
      v66 = *(v63 + 3);
      v91 = v63;
      if (v67 >= v66 >> 1)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v63);
      }

      result = outlined destroy of ResolvableTextSegmentAttribute.Value?(&v99, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      *(v91 + 2) = v67 + 1;
      v68 = &v91[16 * v67];
      *(v68 + 4) = v64;
      *(v68 + 5) = v65;
      ++v49;
      v50 += 128;
      v47 = v57;
      v7 = v77;
      v6 = v78;
      v34 = v93;
      if (v57 == v49)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t SymbolEffectArray.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = v3 - 1;
    do
    {
      v6 = v5;
      v7 = v4[1];
      v12 = *v4;
      v13[0] = v7;
      *(v13 + 13) = *(v4 + 29);
      v8 = v4[1];
      v10[3] = *v4;
      v11[0] = v8;
      *(v11 + 13) = *(v4 + 29);
      outlined init with copy of _SymbolEffect(&v12, v10);
      ProtobufEncoder.messageField<A>(_:_:)();
      result = outlined destroy of _SymbolEffect(&v12);
      if (v2)
      {
        break;
      }

      v5 = v6 - 1;
      v4 += 3;
    }

    while (v6);
  }

  return result;
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance SymbolEffectArray@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SymbolEffectArray.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id WidgetAuxiliaryViewMetadata.text.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t WidgetAuxiliaryViewMetadata.image.getter()
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v0 + *(v4 + 24), v3, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v3;
    }

    v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v3, v6);
  return 0;
}

uint64_t WidgetAuxiliaryViewMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys, &unk_1EFFE8AD0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v31[0] = *v2;
  v9 = *&v31[0];
  LOBYTE(v27) = 0;
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text();
  v10 = v9;
  v11 = v42;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (v11)
  {
    return (*(v6 + 8))(v8, v5);
  }

  *&v31[0] = v2[1];
  LOBYTE(v27) = 1;
  v13 = *&v31[0];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  v14 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  LOBYTE(v31[0]) = 2;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v31[0] = *(v2 + v14[7]);
  LOBYTE(v27) = 3;
  type metadata accessor for [WidgetAuxiliaryViewMetadata](0);
  lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A], type metadata accessor for [WidgetAuxiliaryViewMetadata], lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v41 = 4;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress and conformance WidgetAuxiliaryViewMetadata.Progress, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v15 = (v2 + v14[9]);
  v16 = v15[1];
  v39[0] = *v15;
  v39[1] = v16;
  v18 = *v15;
  v17 = v15[1];
  *v40 = v15[2];
  *&v40[9] = *(v15 + 41);
  v36 = v18;
  v37 = v17;
  v38[0] = v15[2];
  *(v38 + 9) = *(v15 + 41);
  v35 = 5;
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(v39, v31, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v33[0] = v36;
  v33[1] = v37;
  *v34 = v38[0];
  *&v34[9] = *(v38 + 9);
  _sypSgWOhTm_5(v33, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
  v32 = 6;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v19 = (v2 + v14[11]);
  v20 = v19[1];
  v31[0] = *v19;
  v31[1] = v20;
  v21 = v19[3];
  v23 = *v19;
  v22 = v19[1];
  v31[2] = v19[2];
  v31[3] = v21;
  v27 = v23;
  v28 = v22;
  v24 = v19[3];
  v29 = v19[2];
  v30 = v24;
  v26 = 7;
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(v31, v25, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  _sypSgWOhTm_5(v25, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
  return (*(v6 + 8))(v8, 0);
}

uint64_t WidgetAuxiliaryViewMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys, &unk_1EFFE8AD0, MEMORY[0x1E69E6F48]);
  v58 = v9;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v44 - v10;
  v11 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v14[1] = 0;
  v15 = v12[8];
  v16 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v17 = *(*(v16 - 8) + 56);
  v53 = v15;
  v54 = v16;
  v17(v14 + v15, 1, 1);
  v52 = v12[9];
  *(v14 + v52) = 0;
  v18 = v12[10];
  v19 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v20 = *(*(v19 - 8) + 56);
  v51 = v18;
  v20(v14 + v18, 1, 1, v19);
  v21 = (v14 + v12[11]);
  *(v21 + 41) = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = v12[12];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
  v24 = v12[13];
  v60 = v14;
  v25 = (v14 + v24);
  *v25 = xmmword_18CD633F0;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v26 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys();
  v27 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v28 = v60;
  }

  else
  {
    v59 = v19;
    v47 = v23;
    v48 = v21;
    v45 = v25;
    v46 = v22;
    v30 = v56;
    v29 = v57;
    v31 = v55;
    LOBYTE(v66[0]) = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v68;
    v28 = v60;

    *v28 = v32;
    LOBYTE(v66[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v68;

    *(v28 + 8) = v33;
    LOBYTE(v68) = 2;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v30, v28 + v53, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    type metadata accessor for [WidgetAuxiliaryViewMetadata](0);
    LOBYTE(v66[0]) = 3;
    lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A], type metadata accessor for [WidgetAuxiliaryViewMetadata], lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v28 + v52) = v68;
    LOBYTE(v68) = 4;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress and conformance WidgetAuxiliaryViewMetadata.Progress, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v29, v28 + v51, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
    v77 = 5;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v72 = v78;
    v73 = v79;
    v74[0] = v80[0];
    *(v74 + 9) = *(v80 + 9);
    v34 = v48;
    v35 = v48[1];
    v75[0] = *v48;
    v75[1] = v35;
    *v76 = v48[2];
    *&v76[9] = *(v48 + 41);
    _sypSgWOhTm_5(v75, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
    v36 = v73;
    *v34 = v72;
    v34[1] = v36;
    v34[2] = v74[0];
    *(v34 + 41) = *(v74 + 9);
    LOBYTE(v68) = 6;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v37 = v50;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v37, v28 + v46, type metadata accessor for URL?);
    v67 = 7;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v31 + 8))(v81, v58);
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v39 = v45;
    v40 = v45[1];
    v66[0] = *v45;
    v66[1] = v40;
    v41 = v45[3];
    v66[2] = v45[2];
    v66[3] = v41;
    _sypSgWOhTm_5(v66, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
    v42 = v63;
    *v39 = v62;
    v39[1] = v42;
    v43 = v65;
    v39[2] = v64;
    v39[3] = v43;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v28, v49, type metadata accessor for WidgetAuxiliaryViewMetadata);
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v28, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Text.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys, &unk_1EFFE8A40, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v19;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v21;
    v12 = v22;
    outlined copy of Data._Representation(v21, v22);
    ProtobufDecoder.init(_:)();
    CodableAttributedString.init(from:)();
    v18 = v5;
    v14 = v9;
    v15 = v23;
    v20 = v23;
    v16 = CodableAttributedString.base.getter();
    outlined consume of Data._Representation(v11, v12);
    v17 = v21;

    (*(v14 + 8))(v8, v18);
    *v10 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WidgetAuxiliaryViewMetadata.Text.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Text.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys, &unk_1EFFE8A40, MEMORY[0x1E69E6F58]);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys();
  v9 = v8;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  CodableAttributedString.init(_:)();
  v10 = static ProtobufEncoder.encoding<A>(_:)();
  if (v2)
  {

    return (*(v5 + 8))(v7, v17);
  }

  else
  {
    v13 = v10;
    v14 = v11;

    v16[0] = v13;
    v16[1] = v14;
    lazy protocol witness table accessor for type Data and conformance Data();
    v15 = v17;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v15);
    return outlined consume of Data._Representation(v13, v14);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Graphic.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys, &unk_1EFFE89B0, MEMORY[0x1E69E6F48]);
  v34 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys();
  v13 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_3;
  }

  v15 = v32;
  v14 = v33;
  v30[0] = v6;
  v30[1] = v10;
  v37 = v12;
  v16 = a1;
  LOBYTE(v38) = 0;
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named and conformance WidgetAuxiliaryViewMetadata.Graphic.Named, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  v18 = v35;
  v17 = v36;
  v19 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if ((*(v14 + 48))(v17, 1, v18) != 1)
  {
    (*(v15 + 8))(v9, v19);
    v23 = v30[0];
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v17, v30[0], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v24 = v23;
    v25 = v37;
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v24, v37, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v25, v31, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    v20 = v16;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v17, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named?);
  LOBYTE(v40) = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v39;
  if (v39 >> 60 != 15)
  {
    v26 = v38;
    outlined copy of Data._Representation(v38, v39);
    ProtobufDecoder.init(_:)();
    CodablePlatformImage.init(from:)();
    v27 = v40;
    v36 = CodablePlatformImage.kitImage.getter();
    outlined consume of Data?(v26, v22);
    v28 = v38;

    (*(v15 + 8))(v9, v19);
    objc_opt_self();
    v29 = swift_dynamicCastObjCClassUnconditional();
    v25 = v37;
    *v37 = v29;
    goto LABEL_9;
  }

  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error();
  swift_allocError();
  swift_willThrow();
  (*(v15 + 8))(v9, v19);
  a1 = v16;
LABEL_3:
  v20 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void WidgetAuxiliaryViewMetadata.Graphic.encode(to:)(void *a1)
{
  v17[0] = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v17[0]);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Graphic.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys, &unk_1EFFE89B0, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v17[1], v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v8;
    v12 = *v6;
    v13 = v17[2];
    CodablePlatformImage.init(_:)();
    if (v13)
    {
      (*(v18 + 8))(v10, v8);
    }

    else
    {
      v21 = v19;
      v14 = static ProtobufEncoder.encoding<A>(_:)();
      v16 = v15;

      v19 = v14;
      v20 = v16;
      LOBYTE(v21) = 1;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v10, v11);

      outlined consume of Data._Representation(v14, v16);
    }
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v6, v3, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    LOBYTE(v19) = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named and conformance WidgetAuxiliaryViewMetadata.Graphic.Named, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v3, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    (*(v18 + 8))(v10, v8);
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys, &unk_1EFFE8890, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    LOBYTE(v20) = 1;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v10[6] + 4);
    LOBYTE(v20) = 2;
    v22 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v20 = *(v3 + v10[8]);
    v22 = 4;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for [Color.Resolved], MEMORY[0x1E6981540], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Color.Resolved] and conformance <A> [A](&lazy protocol witness table cache variable for type [Color.Resolved] and conformance <A> [A], lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v10[9]);
    v13 = *(v12 + 16);
    v20 = *v12;
    v21 = v13;
    v22 = 5;
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = *(v3 + v10[10]);
    v22 = 6;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v20 = *(v3 + v10[11]);
    v22 = 7;
    type metadata accessor for ProtobufCodable<SymbolEffectArray>();
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type ProtobufCodable<SymbolEffectArray> and conformance ProtobufCodable<A>, type metadata accessor for ProtobufCodable<SymbolEffectArray>);

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = v3 + v10[12];
    v15 = *(v14 + 12);
    v16 = *(v14 + 8);
    v17 = *(v14 + 14);
    v18 = *(v14 + 13);
    *&v20 = *v14;
    BYTE12(v20) = v15;
    DWORD2(v20) = v16;
    BYTE13(v20) = v18;
    BYTE14(v20) = v17;
    v22 = 8;
    outlined copy of ContentTransition.Storage(v20, v16 | (v15 << 32), v18);
    type metadata accessor for ProtobufCodable<ContentTransition>();
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type ProtobufCodable<ContentTransition> and conformance ProtobufCodable<A>, type metadata accessor for ProtobufCodable<ContentTransition>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of ContentTransition.Storage(v20, DWORD2(v20) | (BYTE12(v20) << 32), SBYTE13(v20));
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys, &unk_1EFFE8890, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 40);
  *(v10 + v12) = 8;
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys();
  v32 = v7;
  v14 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v15 = v29;
    v33 = v12;
    LOBYTE(v35) = 0;
    v16 = v31;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[1] = v17;
    LOBYTE(v35) = 1;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v4, v10 + v8[5], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    LOBYTE(v35) = 2;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v10 + v8[6];
    *v19 = v18;
    v19[4] = BYTE4(v18) & 1;
    LOBYTE(v35) = 3;
    *(v10 + v8[7]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for [Color.Resolved], MEMORY[0x1E6981540], MEMORY[0x1E69E62F8]);
    v37 = 4;
    lazy protocol witness table accessor for type [Color.Resolved] and conformance <A> [A](&lazy protocol witness table cache variable for type [Color.Resolved] and conformance <A> [A], lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v10 + v8[8]) = v35;
    v37 = 5;
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v10 + v8[9];
    v21 = v36;
    *v20 = v35;
    v20[16] = v21;
    v37 = 6;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v10 + v33) = v35;
    type metadata accessor for ProtobufCodable<SymbolEffectArray>();
    v37 = 7;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type ProtobufCodable<SymbolEffectArray> and conformance ProtobufCodable<A>, type metadata accessor for ProtobufCodable<SymbolEffectArray>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v10 + v8[11]) = v35;
    type metadata accessor for ProtobufCodable<ContentTransition>();
    v37 = 8;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type ProtobufCodable<ContentTransition> and conformance ProtobufCodable<A>, type metadata accessor for ProtobufCodable<ContentTransition>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v32, v16);
    v22 = DWORD2(v35);
    v23 = WORD6(v35);
    v24 = BYTE14(v35);
    v25 = v10 + v8[12];
    *v25 = v35;
    *(v25 + 2) = v22;
    *(v25 + 6) = v23;
    v25[14] = v24;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v10, v28, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return outlined destroy of ResolvableTextSegmentAttribute.Value?(v10, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.Location.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys, &unk_1EFFE87D8, MEMORY[0x1E69E6F58]);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v24 - v4;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys, &unk_1EFFE8748, v2);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - v6;
  v28 = type metadata accessor for URL();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys, &unk_1EFFE86B8, v2);
  v13 = v12;
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v33, v11, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = 1;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys();
    v16 = v27;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v32;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v31 + 8))(v16, v17);
  }

  else
  {
    v18 = v26;
    v19 = v11;
    v20 = v28;
    (*(v26 + 32))(v8, v19, v28);
    v35 = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys();
    v21 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v22 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v21, v22);
    (*(v18 + 8))(v8, v20);
  }

  return (*(v34 + 8))(v15, v13);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys, &unk_1EFFE87D8, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v47 - v6;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys, &unk_1EFFE8748, v3);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v8;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys, &unk_1EFFE86B8, v3);
  v10 = v9;
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys();
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v49 = v15;
    v50 = v21;
    v59 = v18;
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = specialized Collection<>.popFirst()();
    v30 = v10;
    v31 = v12;
    if (v29 == 2 || v63 != v64 >> 1)
    {
      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v38 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v58 + 8))(v31, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v65 = 1;
        lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v26;
        v48 = v12;
        v33 = v51;
        v34 = KeyedDecodingContainer.decode(_:forKey:)();
        v35 = v58;
        v43 = v34;
        (*(v52 + 8))(v25, v33);
        (*(v35 + 8))(v48, v30);
        swift_unknownObjectRelease();
        v44 = v49;
        *v49 = v43 & 1;
        swift_storeEnumTagMultiPayload();
        v45 = v44;
      }

      else
      {
        v65 = 0;
        lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys();
        v40 = v24;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v26;
        v48 = v12;
        type metadata accessor for URL();
        lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v41 = v59;
        v42 = v54;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v53 + 8))(v40, v42);
        (*(v58 + 8))(v48, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v41;
      }

      v46 = v50;
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v45, v50, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v46, v32, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Progress.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys, &unk_1EFFE8628, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind and conformance WidgetAuxiliaryViewMetadata.Progress.Kind, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
    *&v14 = *(v3 + v10[5]);
    v16 = 1;
    type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0);
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?> and conformance <A> MutableBox<A>, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v10[6]);
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + v10[7]);
    v12 = *(v11 + 16);
    v14 = *v11;
    v15 = v12;
    v16 = 3;
    lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v35 = a2;
  v37 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Progress.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys, &unk_1EFFE8628, MEMORY[0x1E69E6F48]);
  v39 = v3;
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v34 - v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v43 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E697DAC8];
  v17 = *(*v15 + *MEMORY[0x1E697DAC8] + 8);
  v40 = v15;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v10, v15 + v17, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v14(v7, 1, 1, v13);
  v18 = v41;
  v19 = swift_allocObject();
  v20 = v43;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v7, v19 + *(*v19 + *v16 + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v21 = v12;
  v22 = &v12[*(v20 + 28)];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 0;
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys();
  v23 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v25 = v40;
    __swift_destroy_boxed_opaque_existential_1(v18);
    swift_setDeallocating();
    v26 = MEMORY[0x1E697DAC8];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v25 + *(*v25 + *MEMORY[0x1E697DAC8] + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_deallocClassInstance();
    swift_setDeallocating();
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v19 + *(*v19 + *v26 + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
    swift_deallocClassInstance();
  }

  else
  {
    v24 = v36;
    LOBYTE(v45) = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind and conformance WidgetAuxiliaryViewMetadata.Progress.Kind, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v21;
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v38, v21, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v48 = 1;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?> and conformance <A> MutableBox<A>, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    *(v42 + *(v43 + 20)) = v45;
    v48 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v27 = v42;
    *(v42 + *(v43 + 24)) = v45;
    v48 = 3;
    lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v24 + 8))(v44, v39);
    v28 = v27;
    v29 = v18;
    v30 = v45;
    v31 = v46;
    v32 = v47;

    *v22 = v30;
    *(v22 + 1) = v31;
    v22[16] = v32;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v28, v35, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return outlined destroy of ResolvableTextSegmentAttribute.Value?(v28, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.Kind.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys, &unk_1EFFE8598, MEMORY[0x1E69E6F58]);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - v4;
  type metadata accessor for ClosedRange<Date>();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys, &unk_1EFFE8508, v2);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys, &unk_1EFFE8478, v2);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v31, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
    v17 = v26;
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v12, v26, type metadata accessor for ClosedRange<Date>);
    v39 = 1;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys();
    v18 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = 0;
    lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Date>, lazy protocol witness table accessor for type Date and conformance Date);
    v19 = v30;
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v20)
    {
      v37 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v29 + 8))(v18, v19);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v17, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = 0;
    v21 = v25;
    v22 = v32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v22)
    {
      v34 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v24 + 8))(v9, v21);
  }

  return (*(v33 + 8))(v16, v14);
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys, &unk_1EFFE8598, MEMORY[0x1E69E6F48]);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v5;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys, &unk_1EFFE8508, v3);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - v7;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys, &unk_1EFFE8478, v3);
  v9 = v8;
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys();
  v22 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v53 = v17;
  v54 = v12;
  v24 = v59;
  v23 = v60;
  v63 = v14;
  v25 = v20;
  v26 = v61;
  v27 = KeyedDecodingContainer.allKeys.getter();
  v28 = (2 * *(v27 + 16)) | 1;
  v65 = v27;
  v66 = v27 + 32;
  v67 = 0;
  v68 = v28;
  v29 = specialized Collection<>.popFirst()();
  if (v29 == 2 || v67 != v68 >> 1)
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v35 = v54;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v62 + 8))(v11, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v29)
  {
    v69 = 1;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys();
    v30 = v23;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v25;
    type metadata accessor for ClosedRange<Date>();
    v69 = 0;
    lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Date>, lazy protocol witness table accessor for type Date and conformance Date);
    v32 = v58;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v69 = 1;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v57;
    v52 = 0;
    v44 = v40;
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
    v45 = v41;
    v47 = *(v46 + 48);
    (*(v45 + 8))(v30, v32);
    (*(v62 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v48 = v44 & 1;
    v49 = v63;
    *(v63 + v47) = v48;
  }

  else
  {
    v69 = 0;
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v25;
    v69 = 0;
    v37 = v56;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v62;
    LODWORD(v63) = v42;
    v60 = v38;
    v69 = 1;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = 0;
    v50 = v43;
    (*(v55 + 8))(v24, v37);
    (*(v39 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v49 = v53;
    *v53 = v60;
    *(v49 + 8) = v63 & 1;
    *(v49 + 9) = v50 & 1;
  }

  swift_storeEnumTagMultiPayload();
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v49, v31, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v31, v26, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Gauge.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys, &unk_1EFFE83E8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *(v1 + 8);
  v19 = *(v1 + 16);
  v20 = v8;
  v9 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v9;
  v10 = *(v1 + 48);
  v15 = *(v1 + 40);
  v16 = v10;
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v12 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v19;
  LODWORD(v21) = v11;
  v22 = v20;
  v25 = 1;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?> and conformance <A> MutableBox<A>, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v13;
  v25 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v18;
  v25 = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v17;
  v25 = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v15;
  v23 = v16;
  v24 = v21;
  v25 = 5;
  lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();

  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  return (*(v5 + 8))(v7, 0);
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a1;
  v40 = a2;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Gauge.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys, &unk_1EFFE83E8, MEMORY[0x1E69E6F48]);
  v42 = v2;
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v40 - v3;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0);
  v18 = swift_allocObject();
  v19 = *(*v18 + *MEMORY[0x1E697DAC8] + 8);
  v46 = v18;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v15, v18 + v19, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v17(v12, 1, 1, v16);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E697DAC8];
  v22 = *(*v20 + *MEMORY[0x1E697DAC8] + 8);
  v43 = v20;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v12, v20 + v22, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v17(v9, 1, 1, v16);
  v23 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v9, v23 + *(*v23 + *v21 + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v17(v6, 1, 1, v16);
  v24 = v44;
  v25 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v6, v25 + *(*v25 + *v21 + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys();
  v26 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v27 = v41;
    LOBYTE(v51[0]) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    LOBYTE(v48) = 1;
    v45 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?> and conformance <A> MutableBox<A>, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v30 = v51[0];
    LOBYTE(v48) = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v31 = v51[0];
    LOBYTE(v48) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v32 = v51[0];
    LOBYTE(v48) = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v33 = v51[0];
    v53 = 5;
    lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v27 + 8))(v47, v42);
    v34 = v54;
    v35 = v55;
    v36 = v30;
    LOBYTE(v30) = v56;

    *&v48 = v29;
    *(&v48 + 1) = v36;
    *&v49 = v31;
    *(&v49 + 1) = v32;
    *v50 = v33;
    *&v50[8] = v34;
    *&v50[16] = v35;
    v50[24] = v30;
    v37 = v49;
    v38 = v40;
    *v40 = v48;
    v38[1] = v37;
    v38[2] = *v50;
    *(v38 + 41) = *&v50[9];
    outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(&v48, v51);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v51[0] = v29;
    v51[1] = v36;
    v51[2] = v31;
    v51[3] = v32;
    v51[4] = v33;
    v51[5] = v34;
    v51[6] = v35;
    v52 = v30;
    return outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v51);
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys, &unk_1EFFE8358, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = v1[2];
  v13[5] = v1[3];
  v13[6] = v8;
  v9 = v1[4];
  v13[3] = v1[5];
  v13[4] = v9;
  v10 = v1[6];
  v13[1] = v1[7];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v11 = v13[7];
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v11)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys>, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys, &unk_1EFFE8358, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v29 = v6;
    LOBYTE(v35) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v11;
    LOBYTE(v35) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    LOBYTE(v35) = 2;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v43 = 3;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = *(v29 + 8);
    v29 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v23 = v28;
    *&v31 = v10;
    *(&v31 + 1) = v28;
    *&v32 = v12;
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v17;
    *&v34 = v29;
    *(&v34 + 1) = v22;
    v24 = v32;
    v25 = v30;
    *v30 = v31;
    v25[1] = v24;
    v26 = v34;
    v25[2] = v33;
    v25[3] = v26;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Accessibility(&v31, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v10;
    v36 = v23;
    v37 = v12;
    v38 = v14;
    v39 = v15;
    v40 = v17;
    v41 = v29;
    v42 = v22;
  }

  return outlined destroy of WidgetAuxiliaryViewMetadata.Accessibility(&v35);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MutableBox<A><A>.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys and conformance MutableBox<A><A>.CodingKeys, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MutableBox<A><A>.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys and conformance MutableBox<A><A>.CodingKeys, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MutableBox<A>.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v14 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys>, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys();
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys and conformance MutableBox<A><A>.CodingKeys, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(*v2 + *MEMORY[0x1E697DAC8] + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v2 + v12, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata? and conformance <A> A?, type metadata accessor for WidgetAuxiliaryViewMetadata?, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return (*(v9 + 8))(v11, v8);
}

void *protocol witness for Decodable.init(from:) in conformance <A> MutableBox<A>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized MutableBox<A>.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t WidgetAuxiliaryViewMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    *&v18[0] = 2314;
    *(&v18[0] + 1) = 0xE200000000000000;
    *&v16[0] = 0x222874786554;
    *(&v16[0] + 1) = 0xE600000000000000;
    v3 = v2;
    v4 = [v3 string];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x18D00C9B0](v5, v7);

    MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
    MEMORY[0x18D00C9B0](0x222874786554, 0xE600000000000000);

    swift_beginAccess();
    MEMORY[0x18D00C9B0](2314, 0xE200000000000000);
    swift_endAccess();
  }

  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(v1 + v8[6]);
  specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(v1 + v8[10]);
  v9 = (v1 + v8[11]);
  v10 = v9[1];
  v18[0] = *v9;
  v11 = v9[2];
  v12 = v9[3];
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(v18);
  v13 = (v1 + v8[9]);
  v14 = v13[1];
  v16[0] = *v13;
  v16[1] = v14;
  v17[0] = v13[2];
  *(v17 + 9) = *(v13 + 41);
  specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(v16);
  specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(v1 + v8[8]);
  _StringGuts.grow(_:)(32);

  swift_beginAccess();
  MEMORY[0x18D00C9B0](0, 0xE000000000000000);

  MEMORY[0x18D00C9B0](10506, 0xE200000000000000);
  return 0xD00000000000001CLL;
}

uint64_t specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(uint64_t a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?;
    v10 = v4;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v4, v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    v16 = 2314;
    v17 = 0xE200000000000000;
    v11 = WidgetAuxiliaryViewMetadata.Graphic.debugDescription.getter();
    MEMORY[0x18D00C9B0](v11);

    v12 = v16;
    v13 = v17;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v12, v13);
    swift_endAccess();

    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
    v10 = v8;
  }

  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v10, v9);
}

{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v4, type metadata accessor for URL?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for URL?);
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = 2314;
  v15 = 0xE200000000000000;
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v10 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x18D00C9B0](v10);

  v11 = v14;
  v12 = v15;
  swift_beginAccess();
  MEMORY[0x18D00C9B0](v11, v12);
  swift_endAccess();

  return (*(v6 + 8))(v8, v5);
}

{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?;
    v10 = v4;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v4, v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    v16 = 2314;
    v17 = 0xE200000000000000;
    v18 = 0x73736572676F7250;
    v19 = 0xE900000000000028;
    v11 = WidgetAuxiliaryViewMetadata.Progress.Kind.debugDescription.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    MEMORY[0x18D00C9B0](v18, v19);

    v12 = v16;
    v13 = v17;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v12, v13);
    swift_endAccess();

    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress;
    v10 = v8;
  }

  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v10, v9);
}

uint64_t specialized append #1 <A>(_:) in WidgetAuxiliaryViewMetadata.debugDescription.getter(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v11 = v1;
    v12 = v2;
    v3 = *(result + 16);
    v7 = *result;
    v8 = v3;
    v4 = *(result + 48);
    v9 = *(result + 32);
    v10 = v4;
    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(result, v6, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
    v5 = WidgetAuxiliaryViewMetadata.Accessibility.debugDescription.getter();
    MEMORY[0x18D00C9B0](v5);

    swift_beginAccess();
    MEMORY[0x18D00C9B0](2314, 0xE200000000000000);
    swift_endAccess();

    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    v6[3] = v10;
    return outlined destroy of WidgetAuxiliaryViewMetadata.Accessibility(v6);
  }

  return result;
}

{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    v5 = *result;
    v6 = v1;
    v7[0] = *(result + 32);
    *(v7 + 9) = *(result + 41);
    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(result, v3, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
    lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge();
    v2 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    MEMORY[0x18D00C9B0](v2);

    swift_beginAccess();
    MEMORY[0x18D00C9B0](2314, 0xE200000000000000);
    swift_endAccess();

    v3[0] = v5;
    v3[1] = v6;
    v4[0] = v7[0];
    *(v4 + 9) = *(v7 + 9);
    return outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v3);
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.debugDescription.getter()
{
  v1 = [*v0 string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x18D00C9B0](v2, v4);

  MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
  return 0x222874786554;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Text()
{
  v1 = [*v0 string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x18D00C9B0](v2, v4);

  MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
  return 0x222874786554;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v1, v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = [*v7 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v7, v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v10 = WidgetAuxiliaryViewMetadata.Graphic.Named.debugDescription.getter();
    v12 = v13;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }

  v15[0] = 0x2863696870617247;
  v15[1] = 0xE800000000000000;
  MEMORY[0x18D00C9B0](v10, v12);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return v15[0];
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.Named.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v1 + *(v9 + 20), v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v8)
    {
      v10 = 0x6D6574737973;
    }

    else
    {
      v10 = 0x6C616E7265746E69;
    }

    if (*v8)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v20 = 0x28656C646E7562;
    v21 = 0xE700000000000000;
    v12 = URL.description.getter();
    MEMORY[0x18D00C9B0](v12);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v10 = v20;
    v11 = v21;
    (*(v3 + 8))(v5, v2);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x18D00C9B0](0x616E2864656D614ELL, 0xEC000000203A656DLL);
  MEMORY[0x18D00C9B0](*v1, v1[1]);
  MEMORY[0x18D00C9B0](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x18D00C9B0](v10, v11);

  MEMORY[0x18D00C9B0](0x3A65756C6176202CLL, 0xE900000000000020);
  if (*(v1 + *(v9 + 24) + 4))
  {
    v13 = 0xE200000000000000;
    v14 = 11565;
  }

  else
  {
    v14 = Float.description.getter();
    v13 = v15;
  }

  MEMORY[0x18D00C9B0](v14, v13);

  MEMORY[0x18D00C9B0](0x73726F6C6F63202CLL, 0xEA0000000000203ALL);
  if (WidgetAuxiliaryViewMetadata.Graphic.Named.colors.getter())
  {
    v16 = MEMORY[0x18D00CCC0]();
    v18 = v17;
  }

  else
  {
    v18 = 0xE200000000000000;
    v16 = 23899;
  }

  MEMORY[0x18D00C9B0](v16, v18);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return v20;
}

uint64_t WidgetAuxiliaryViewMetadata.Accessibility.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  _StringGuts.grow(_:)(52);
  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD52DA0);
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x18D00C9B0](v7, v1);

  MEMORY[0x18D00C9B0](0x3A65756C6176202CLL, 0xE900000000000020);
  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 7104878;
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x18D00C9B0](v8, v9);

  MEMORY[0x18D00C9B0](0x69746E656469202CLL, 0xEE00203A72656966);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x18D00C9B0](v10, v11);

  MEMORY[0x18D00C9B0](10528, 0xE200000000000000);
  return 0;
}

uint64_t WidgetAuxiliaryViewMetadata.Gauge.debugDescription.getter()
{
  MEMORY[0x18D00C9B0](0x6176286567756147, 0xEC0000003A65756CLL);
  Double.write<A>(to:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Gauge()
{
  MEMORY[0x18D00C9B0](0x6176286567756147, 0xEC0000003A65756CLL);
  Double.write<A>(to:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t WidgetAuxiliaryViewMetadata.Progress.debugDescription.getter()
{
  v0 = WidgetAuxiliaryViewMetadata.Progress.Kind.debugDescription.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0x73736572676F7250;
}

unint64_t WidgetAuxiliaryViewMetadata.Progress.Kind.debugDescription.getter()
{
  v1 = v0;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v1, v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
    v9 = v7[*(v8 + 48)];
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v7, v4, type metadata accessor for ClosedRange<Date>);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v22 = 0x2865746164;
    v23 = 0xE500000000000000;
    v10 = ClosedRange.debugDescription.getter();
    MEMORY[0x18D00C9B0](v10);

    MEMORY[0x18D00C9B0](0x64746E756F63202CLL, 0xED0000203A6E776FLL);
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v9)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v11, v12);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v13 = v22;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v14 = v7[8];
    v15 = v7[9];
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v22 = 0xD000000000000014;
    v23 = 0x800000018CD52DC0;
    if (v14)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = Double.description.getter();
      v16 = v18;
    }

    MEMORY[0x18D00C9B0](v17, v16);

    MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD52DE0);
    if (v15)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v15)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v19, v20);

    MEMORY[0x18D00C9B0](8745, 0xE200000000000000);
    return v22;
  }

  return v13;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WidgetAuxiliaryViewMetadata.Progress()
{
  v0 = WidgetAuxiliaryViewMetadata.Progress.Kind.debugDescription.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0x73736572676F7250;
}

uint64_t static WidgetAuxiliaryViewMetadata.Key.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryViewMetadata.Key.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t static WidgetAuxiliaryViewMetadata.Key.reduce(value:nextValue:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(a1, &v12 - v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  a2(v10);
  static WidgetAuxiliaryViewMetadata.reduce(_:_:)(v9, v6, a1);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t static WidgetAuxiliaryViewMetadata.reduce(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v48 = (&v44 - v16);
  type metadata accessor for (WidgetAuxiliaryViewMetadata?, WidgetAuxiliaryViewMetadata?)(0, &lazy cache variable for type metadata for (WidgetAuxiliaryViewMetadata?, WidgetAuxiliaryViewMetadata?), type metadata accessor for WidgetAuxiliaryViewMetadata?);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, &v44 - v18, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a2, &v19[v21], type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v49 = v12;
  v22 = *(v12 + 48);
  if (v22(v19, 1, v11) == 1)
  {
    return outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(&v19[v21], a3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  v24 = a3;
  if (v22(&v19[v21], 1, v11) == 1)
  {
    return outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v19, a3, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  v25 = v48;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v19, v48, type metadata accessor for WidgetAuxiliaryViewMetadata);
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(&v19[v21], v14, type metadata accessor for WidgetAuxiliaryViewMetadata);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v14 + v11[6], v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  v27 = v46;
  v26 = v47;
  if ((*(v46 + 48))(v8, 1, v47) == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v8, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
  }

  else
  {
    v28 = v8;
    v29 = v45;
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v28, v45, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    v30 = v11[6];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v25 + v30, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?);
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v29, v25 + v30, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    (*(v27 + 56))(v25 + v30, 0, 1, v26);
  }

  v31 = v11[7];
  v32 = *(v14 + v31);
  if (v32)
  {

    *(v25 + v31) = v32;
  }

  v33 = *v14;
  if (*v14)
  {
    v34 = *v25;
    v35 = v33;

    *v25 = v33;
  }

  v36 = (v14 + v11[11]);
  v37 = v36[1];
  v51 = *v36;
  v52 = v37;
  v38 = v36[3];
  v53 = v36[2];
  v54 = v38;
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&v51, v50, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v14, type metadata accessor for WidgetAuxiliaryViewMetadata);
  if (*(&v51 + 1) != 1)
  {
    v39 = (v25 + v11[11]);
    v40 = v39[1];
    v50[0] = *v39;
    v50[1] = v40;
    v41 = v39[3];
    v50[2] = v39[2];
    v50[3] = v41;
    _sypSgWOhTm_5(v50, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Accessibility?, &type metadata for WidgetAuxiliaryViewMetadata.Accessibility);
    v42 = v52;
    *v39 = v51;
    v39[1] = v42;
    v43 = v54;
    v39[2] = v53;
    v39[3] = v43;
  }

  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v25, v24, type metadata accessor for WidgetAuxiliaryViewMetadata);
  (*(v49 + 56))(v24, 0, 1, v11);
  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v25, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance WidgetAuxiliaryViewMetadata.Key@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryViewMetadata.Key.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3, a1, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance WidgetAuxiliaryViewMetadata.Key(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(a1, &v12 - v8, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  a2(v10);
  static WidgetAuxiliaryViewMetadata.reduce(_:_:)(v9, v6, a1);
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  return outlined destroy of ResolvableTextSegmentAttribute.Value?(v9, type metadata accessor for WidgetAuxiliaryViewMetadata?);
}

uint64_t WidgetAuxiliaryViewMetadataModifier.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t static WidgetAuxiliaryViewMetadataModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v37 = *a2;
  v38 = v6;
  v39 = a2[2];
  v7 = *(a2 + 6);
  v8 = *(a2 + 14);
  v17 = *(a2 + 60);
  v18 = *(a2 + 76);
  type metadata accessor for WidgetAuxiliaryViewMetadataModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static WidgetAuxiliaryViewMetadataModifier._makeView(modifier:inputs:body:)(1, a5);
  }

  AGGraphCreateOffsetAttribute2();
  v33 = v37;
  v34 = v38;
  v35 = v39;
  *v36 = v7;
  *&v36[8] = v8;
  *&v36[12] = v17;
  *&v36[28] = v18;
  _ViewInputs.withoutGeometryDependencies.getter();
  PreferenceKeys.init()();
  PreferenceKeys.add(_:)();
  _ViewInputs.hasWidgetMetadata.setter();
  *&v33 = v16;
  v14 = type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0](v14);
  LOBYTE(v31[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  PreferencesInputs.init(hostKeys:)();
  v9 = v33;
  v10 = DWORD2(v33);

  *&v28 = v9;
  DWORD2(v28) = v10;
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA014WidgetMetadatafghM0V_Ttg5(0);
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  DWORD1(v27) |= 0x10u;
  swift_beginAccess();
  LODWORD(v33) = *(v26 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  PreferenceKeys.add(_:)();
  _GraphValue.init(_:)();
  v31[2] = v27;
  v31[3] = v28;
  v31[4] = v29;
  v32 = v30;
  v31[0] = v25;
  v31[1] = v26;
  v23 = v27;
  v24[0] = v28;
  v24[1] = v29;
  LODWORD(v24[2]) = v30;
  v22 = v26;
  outlined init with copy of _ViewInputs(v31, &v33);
  static View.makeDebuggableView(view:inputs:)();
  v35 = v27;
  *v36 = v28;
  *&v36[16] = v29;
  *&v36[32] = v30;
  v33 = v25;
  v34 = v26;
  outlined destroy of _ViewInputs(&v33);
  PreferencesOutputs.subscript.getter();
  *&v21 = v19;
  *(&v21 + 1) = __PAIR64__(HIDWORD(v25), v20);
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
  {
    *&v21 = MEMORY[0x1E69E7CC0];
    MEMORY[0x18D00B7D0]();
    GraphHost.intern<A>(_:for:id:)();
  }

  PreferencesOutputs.subscript.getter();
  *&v21 = v19;
  DWORD2(v21) = v20;
  PreferencesOutputs.subscript.getter();

  swift_beginAccess();
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v11 = _GraphInputs.interfaceIdiom.getter();
  v21 = v37;
  v22 = v38;
  v23 = v39;
  *&v24[0] = v7;
  DWORD2(v24[0]) = v8;
  *(v24 + 12) = v17;
  *(&v24[1] + 12) = v18;
  v12 = a3(v11, &v21);
  MEMORY[0x1EEE9AC00](v12);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v23 = v27;
  v24[0] = v28;
  v24[1] = v29;
  LODWORD(v24[2]) = v30;
  v21 = v25;
  v22 = v26;
  return outlined destroy of _ViewInputs(&v21);
}

uint64_t closure #1 in static WidgetAuxiliaryViewMetadataModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for WidgetAuxiliaryViewMetadataModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t implicit closure #2 in static WidgetAuxiliaryViewMetadataModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  lazy protocol witness table accessor for type AuxiliaryViewMetadataPreferenceWriter and conformance AuxiliaryViewMetadataPreferenceWriter();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance WidgetAuxiliaryViewMetadataModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AuxiliaryViewMetadataPreferenceWriter.value.getter@<X0>(id *a1@<X8>)
{
  v41 = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[1];
  v40 = *v1;
  v17 = v1[2];
  v36[3] = v1[3];
  v37 = *(v1 + 6);
  AGGraphGetValue();

  PlatformItemList.mergedContentItem.getter(v18, v15);

  v19 = type metadata accessor for PlatformItemList.Item();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  v20 = *MEMORY[0x1E698D3F8];
  if (v16 == *MEMORY[0x1E698D3F8])
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    if (v17 != v20)
    {
LABEL_3:
      Value = AGGraphGetValue();
      outlined init with copy of AccessibilityAttachment.Tree(Value, v44);
      v23 = AGGraphGetValue();
      v24 = v23[1];
      v43[0] = *v23;
      v43[1] = v24;
      v42 = v37;

      AccessibilityAttachment.Tree.metadataAccessibility(in:idiom:)(v43, &v42, v45);

      outlined destroy of AccessibilityAttachment.Tree(v44);
      v25 = v45[0];
      v26 = v45[1];
      v27 = v45[2];
      v28 = v45[3];
      goto LABEL_6;
    }
  }

  else
  {
    v29 = AGGraphGetValue();
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v29, v9, type metadata accessor for URL?);
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v9, v12, type metadata accessor for URL?);
    if (v17 != v20)
    {
      goto LABEL_3;
    }
  }

  v25 = xmmword_18CD633F0;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
LABEL_6:
  v44[0] = v25;
  v44[1] = v26;
  v44[2] = v27;
  v44[3] = v28;
  if (v40 == v20)
  {
    v30 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  }

  else
  {
    v31 = AGGraphGetValue();
    v32 = v39;
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v31, v39, type metadata accessor for WidgetAuxiliaryViewMetadata?);
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v32, v6, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  v33 = v41;
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v15, v12, v44, v6, v41);
  v34 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
}

uint64_t AccessibilityAttachment.Tree.metadataAccessibility(in:idiom:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  AccessibilityAttachment.Tree.attachment.getter(__src);
  if (*&__src[280])
  {
    memcpy(__dst, __src, 0x128uLL);
    if (__dst[3])
    {
      *__src = v4;
      *&__src[8] = v5;
      v25 = v6;
      v26 = v7;

      MEMORY[0x18D005BE0](v24, v8);
      v23 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
      v10 = v9;
    }

    else
    {
      v23 = 0;
      v10 = 0;
    }

    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(&__dst[8], __src, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
    if (*&__src[24] == 1)
    {
      _sypSgWOhTm_5(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      AccessibilityValueStorage.valueDescription.getter();
      v14 = outlined destroy of AccessibilityValueStorage(__src);
      *__src = v4;
      *&__src[8] = v5;
      v25 = v6;
      v26 = v7;
      MEMORY[0x18D005BE0](v24, v14);
      v12 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
      v13 = v15;
    }

    v16 = AccessibilityProperties.hints.getter();
    v17 = closure #3 in AccessibilityAttachment.Tree.metadataAccessibility(in:idiom:)(v16, v4, v5, v6, v7);
    v19 = v18;

    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    v20 = *__src;
    v21 = *&__src[8];
    v22 = __src[16];

    result = outlined destroy of AccessibilityProperties(__src);
    if (v21)
    {
      if (v22 >= 2)
      {

        v20 = 0;
        v21 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    *a3 = v23;
    a3[1] = v10;
    a3[2] = v12;
    a3[3] = v13;
    a3[4] = v20;
    a3[5] = v21;
    a3[6] = v17;
    a3[7] = v19;
  }

  else
  {
    result = _sypSgWOhTm_5(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    *a3 = xmmword_18CD633F0;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance WidgetAuxiliaryMetadataTextImageWriter@<X0>(uint64_t *a1@<X8>)
{
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    result = 1;
  }

  *a1 = result;
  return result;
}

uint64_t LazyWidgetAuxiliaryMetadataTextImage.textImagePref.getter()
{
  if (*(v0 + 100) == *MEMORY[0x1E698D3F8])
  {
    return 2;
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference, MEMORY[0x1E69E6720]);
  v1 = *AGGraphGetValue();
  outlined copy of WidgetAuxiliaryTextImagePreference?(v1);
  return v1;
}

Swift::Void __swiftcall LazyWidgetAuxiliaryMetadataTextImage.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v43 = *MEMORY[0x1E69E9840];
  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference, MEMORY[0x1E69E6720]);
  if (!AGGraphGetOutputValue())
  {
    v4 = v2[3];
    v5 = v2[5];
    v33 = v2[4];
    v34 = v5;
    v6 = v2[1];
    v30[0] = *v2;
    v30[1] = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v31 = v2[2];
    v32 = v7;
    v10 = v2[5];
    v27 = v33;
    v28 = v10;
    v23 = v9;
    v24 = v8;
    v35 = *(v2 + 12);
    v29 = *(v2 + 12);
    v25 = v31;
    v26 = v4;
    v11 = implicit closure #1 in LazyWidgetAuxiliaryMetadataTextImage.updateValue()(&v23, *(v3 + 16), *(v3 + 24));
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v36 = v23;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v12 = *(v3 - 8);
    (*(v12 + 16))(v22, v30, v3);
    (*(v12 + 8))(&v36, v3);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    v14 = AGSubgraphSetCurrent();
    v15 = (v11)(v14);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    *(v2 + 25) = v15;
  }

  v16 = v2[5];
  v40 = v2[4];
  v41 = v16;
  v42 = *(v2 + 12);
  v17 = v2[1];
  v36 = *v2;
  v37 = v17;
  v18 = v2[3];
  v38 = v2[2];
  v39 = v18;
  v19 = LazyWidgetAuxiliaryMetadataTextImage.textImagePref.getter();
  v20 = v19;
  if (v19 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  *&v36 = v21;
  AGGraphSetOutputValue();
  outlined consume of WidgetAuxiliaryTextImagePreference??(v20);
}

uint64_t (*implicit closure #1 in LazyWidgetAuxiliaryMetadataTextImage.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v6;
  v17 = *(a1 + 96);
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v8 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(a1 + 80);
  *(v9 + 96) = *(a1 + 64);
  *(v9 + 112) = v10;
  *(v9 + 128) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  v12 = *(a1 + 48);
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = v12;
  v13 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  (*(*(v13 - 8) + 16))(v15, v16, v13);
  return partial apply for implicit closure #2 in implicit closure #1 in LazyWidgetAuxiliaryMetadataTextImage.updateValue();
}

uint64_t LazyWidgetAuxiliaryMetadataTextImage.makeTextImage()()
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = v0[3];
  v2 = v0[5];
  v21 = v0[4];
  v22 = v2;
  v3 = v0[1];
  v17 = *v0;
  v18 = v3;
  v4 = v0[1];
  v5 = v0[3];
  v19 = v0[2];
  v20 = v5;
  v6 = v0[5];
  v14 = v21;
  v15 = v6;
  v11 = v4;
  v23 = *(v0 + 12);
  v16 = *(v0 + 24);
  v12 = v19;
  v13 = v1;
  outlined init with copy of _ViewInputs(&v18, v26);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA014WidgetMetadatafghM0V_Ttg5(0);
  _GraphValue.init(_:)();
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = v15;
  v25 = v16;
  v24[0] = v11;
  v24[1] = v12;
  outlined init with copy of _ViewInputs(v24, v26);
  static View.makeDebuggableView(view:inputs:)();
  v26[2] = v13;
  v26[3] = v14;
  v26[4] = v15;
  v27 = v16;
  v26[0] = v11;
  v26[1] = v12;
  outlined destroy of _ViewInputs(v26);
  PreferencesOutputs.subscript.getter();

  AGCreateWeakAttribute();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type WidgetAuxiliaryMetadataTextImageWriter and conformance WidgetAuxiliaryMetadataTextImageWriter();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  outlined destroy of _ViewInputs(v9);
  return v7;
}

uint64_t static WidgetAuxiliaryURLPreferenceKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for URL?();
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryURLPreferenceKey.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3, a1, type metadata accessor for URL?);
}

uint64_t static WidgetAuxiliaryURLPreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(a1, v6, type metadata accessor for URL?);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for URL?);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v9, a1, type metadata accessor for URL?);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance WidgetAuxiliaryURLPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for URL?();
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryURLPreferenceKey.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v3, a1, type metadata accessor for URL?);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance WidgetAuxiliaryURLPreferenceKey(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(a1, v6, type metadata accessor for URL?);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for URL?);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v9, a1, type metadata accessor for URL?);
}

uint64_t closure #3 in AccessibilityAttachment.Tree.metadataAccessibility(in:idiom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  v7 = a4;
  v8 = a5;
  MEMORY[0x18D005BE0](&v6);
  return static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.CodingKeys and conformance WidgetAuxiliaryViewMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text and conformance WidgetAuxiliaryViewMetadata.Text);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata()
{
  return lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

{
  return lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge and conformance WidgetAuxiliaryViewMetadata.Gauge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility and conformance WidgetAuxiliaryViewMetadata.Accessibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Text.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Text.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Error and conformance WidgetAuxiliaryViewMetadata.Graphic.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Color.Resolved] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(255, &lazy cache variable for type metadata for [Color.Resolved], MEMORY[0x1E6981540], MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }

  return result;
}

void type metadata accessor for ProtobufCodable<SymbolEffectArray>()
{
  if (!lazy cache variable for type metadata for ProtobufCodable<SymbolEffectArray>)
  {
    lazy protocol witness table accessor for type SymbolEffectArray and conformance SymbolEffectArray();
    lazy protocol witness table accessor for type SymbolEffectArray and conformance SymbolEffectArray();
    v0 = type metadata accessor for ProtobufCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProtobufCodable<SymbolEffectArray>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SymbolEffectArray and conformance SymbolEffectArray()
{
  result = lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray;
  if (!lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray;
  if (!lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray;
  if (!lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray;
  if (!lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray;
  if (!lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolEffectArray and conformance SymbolEffectArray);
  }

  return result;
}

void type metadata accessor for ProtobufCodable<ContentTransition>()
{
  if (!lazy cache variable for type metadata for ProtobufCodable<ContentTransition>)
  {
    v0 = type metadata accessor for ProtobufCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProtobufCodable<ContentTransition>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.SystemCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.BundleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Graphic.Named.Location.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient()
{
  result = lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient;
  if (!lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient;
  if (!lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.DateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.AbsoluteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Progress.Kind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Gauge.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Gauge.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys and conformance WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<WidgetAuxiliaryViewMetadata.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t _ShapeStyle_Pack.Slice.init(pack:name:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v13 = *a1;
  v12 = v5;
  result = _ShapeStyle_Pack.indices(of:)(&v12);
  if (result == v7)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = 0;
    v9 = *(v4 + 16);
LABEL_7:
    if (v9 >= result)
    {
      v11 = __OFSUB__(v9, v7);
      v10 = (v9 - v7) < 0;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v10 == v11)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = v4 + 32;
        *(a3 + 16) = result;
        *(a3 + 24) = (2 * v7) | 1;
        *(a3 + 32) = v8;
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v4 + 16);
  if (result < v9)
  {
    v8 = *(v4 + (result << 7) + 33);
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t _ShapeStyle_Pack.indices(of:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    result = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 128;
      if (v7 == v2)
      {
        break;
      }

      if (v4 == ++result)
      {
        return *(*v1 + 16);
      }
    }
  }

  else
  {
    result = 0;
  }

  if (result < v4)
  {
    v8 = (v3 + (result << 7) + 32);
    v9 = result;
    while (1)
    {
      v10 = *v8;
      v8 += 128;
      if (v10 != v2)
      {
        break;
      }

      if (v4 == ++v9)
      {
        v9 = *(*v1 + 16);
        break;
      }
    }

    if (v9 < result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ContentTransitionV6EffectV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 36)
    {
      v4 = a1 + i;
      v5 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v6 = *(v4 + 36);
      v7 = *(v4 + 40);
      v8 = *(v4 + 44);
      v9 = *(v4 + 48);
      v11 = *(v4 + 52);
      v10 = *(v4 + 56);
      v13 = *(v4 + 60);
      v12 = *(v4 + 64);
      v14 = *(v5 + 36);
      v15 = *(v5 + 40);
      v16 = *(v5 + 44);
      v17 = *(v5 + 48);
      v19 = *(v5 + 52);
      v18 = *(v5 + 56);
      v21 = *(v5 + 60);
      v20 = *(v5 + 64);
      if (v7)
      {
        if (v7 == 1)
        {
          v22 = 0;
          if (v15 != 1 || LODWORD(v6) != LODWORD(v14))
          {
            return v22;
          }
        }

        else
        {
          v22 = 0;
          if (v15 != 2 || v14 != 0.0)
          {
            return v22;
          }
        }
      }

      else
      {
        v22 = 0;
        if (v15 || v6 != v14)
        {
          return v22;
        }
      }

      if (v9)
      {
        if (v9 == 1)
        {
          if (v17 != 1)
          {
            return 0;
          }

          v22 = 0;
          if (LODWORD(v8) != LODWORD(v16))
          {
            return v22;
          }
        }

        else
        {
          v22 = 0;
          if (v17 != 2 || v16 != 0.0)
          {
            return v22;
          }
        }

        if (v11 != v19 || v10 != v18 || v13 != v21 || v12 != v20)
        {
          return v22;
        }
      }

      else
      {
        v22 = 0;
        if (v17)
        {
          return v22;
        }

        v23 = v8 == v16 && v11 == v19;
        v24 = v23 && v10 == v18;
        v25 = v24 && v13 == v21;
        if (!v25 || v12 != v20)
        {
          return v22;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized static ContentTransition.CustomTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ContentTransitionV6EffectV_Tt1g5(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

BOOL specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  if (v3)
  {
    if (v2 != v10)
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      return 0;
    }
  }

  else if ((v11 | LODWORD(v10) ^ LODWORD(v2)))
  {
    return 0;
  }

  if (v4 == 2)
  {
    result = 0;
    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    return 0;
  }

  result = 0;
  if (((v12 ^ v4) & 1) == 0)
  {
LABEL_14:
    if (v5 == *(a2 + 6) && v6 == *(a2 + 7) && v7 == *(a2 + 8) && v8 == *(a2 + 9))
    {
      return v9 == *(a2 + 10);
    }
  }

  return result;
}

BOOL specialized static ContentTransition.NamedTransition.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = (*a1 >> 38) & 3;
  if (v8)
  {
    v9 = *(a1 + 8) | (*(a1 + 10) << 16);
    v10 = *(a2 + 4) | (*(a2 + 10) << 16);
    if (v8 == 1)
    {
      v28 = BYTE4(v2) & 1;
      if ((v5 & 0xC000000000) != 0x4000000000)
      {
        return 0;
      }

      v27 = BYTE4(v5) & 1;
      v20 = v2;
      v21 = v28;
      v22 = BYTE5(v2);
      v23 = BYTE6(v2);
      v24 = HIBYTE(v2);
      v25 = v9;
      v26 = BYTE2(v9);
      v13 = v5;
      v14 = BYTE4(v5) & 1;
      v15 = BYTE5(v5);
      v16 = BYTE6(v5);
      v17 = HIBYTE(v5);
      v18 = v10;
      v19 = BYTE2(v10);
      if (!specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(&v20, &v13))
      {
        return 0;
      }
    }

    else
    {
      v12 = *&v9 & 0xFFFFFFLL;
      if (v2 <= 0x8000000001)
      {
        if (v2 ^ 0x8000000000 | v12)
        {
          if ((v5 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          result = 0;
          if (v5 != 0x8000000001)
          {
            return result;
          }
        }

        else
        {
          if ((v5 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          result = 0;
          if (v5 != 0x8000000000)
          {
            return result;
          }
        }
      }

      else if (v2 ^ 0x8000000002 | v12)
      {
        if (v2 ^ 0x8000000003 | v12)
        {
          if ((v5 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          result = 0;
          if (v5 != 0x8000000004)
          {
            return result;
          }
        }

        else
        {
          if ((v5 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          result = 0;
          if (v5 != 0x8000000003)
          {
            return result;
          }
        }
      }

      else
      {
        if ((v5 & 0xC000000000) != 0x8000000000)
        {
          return 0;
        }

        result = 0;
        if (v5 != 0x8000000002)
        {
          return result;
        }
      }

      if (v10)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v5 & 0xC000000000) != 0 || ((v5 ^ v2))
    {
      return result;
    }
  }

  if (v3 != 2)
  {
    if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_33:
  if (v4 == 3)
  {
    return v7 == 3;
  }

  result = 0;
  if (v7 != 3 && v4 == v7)
  {
    return 1;
  }

  return result;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Accessibility.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v30 = a1[5];
      v31 = a2[5];
      v17 = a1[4];
      v18 = a2[6];
      v19 = a2[7];
      v20 = a1[7];
      v21 = a1[6];
      v22 = a2[4];
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v22;
      v7 = v21;
      v9 = v20;
      v16 = v19;
      v14 = v18;
      v5 = v17;
      v8 = v30;
      v15 = v31;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v7;
      v25 = v12;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v25;
      v7 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v27 = v7;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v7 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16 && (v7 == v14 && v9 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

void *specialized MutableBox<A>.init(from:)(void *a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys();
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys and conformance MutableBox<A><A>.CodingKeys, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = v14;
    lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](&lazy protocol witness table cache variable for type WidgetAuxiliaryViewMetadata? and conformance <A> A?, type metadata accessor for WidgetAuxiliaryViewMetadata?, lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata);
    v11 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v8, v6);
    type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0);
    v9 = swift_allocObject();
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v11, v9 + *(*v9 + *MEMORY[0x1E697DAC8] + 8), type metadata accessor for WidgetAuxiliaryViewMetadata?);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys()
{
  if (!lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys)
  {
    v0 = type metadata accessor for MutableBox<A>.CodingKeys();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = a3[6];
    v9 = &a1[v8];
    v10 = (a2 + v8);
    v11 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    v14 = v4;
    v15 = v7;
    if (v13(v10, 1, v11))
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      v73 = v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *v10;
        *v9 = *v10;
        v18 = v17;
      }

      else
      {
        v19 = v10[1];
        *v9 = *v10;
        v9[1] = v19;
        v20 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v21 = v20[5];
        v22 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v9 + v21, v10 + v21, *(*(v22 - 8) + 64));
        }

        else
        {
          v23 = type metadata accessor for URL();
          (*(*(v23 - 8) + 16))(v9 + v21, v10 + v21, v23);
          swift_storeEnumTagMultiPayload();
        }

        v24 = v20[6];
        v25 = v9 + v24;
        v26 = v10 + v24;
        *v25 = *v26;
        v25[4] = v26[4];
        *(v9 + v20[7]) = *(v10 + v20[7]);
        *(v9 + v20[8]) = *(v10 + v20[8]);
        v27 = v20[9];
        v28 = v9 + v27;
        v29 = v10 + v27;
        *v28 = *v29;
        v28[16] = v29[16];
        *(v9 + v20[10]) = *(v10 + v20[10]);
        *(v9 + v20[11]) = *(v10 + v20[11]);
        v30 = v20[12];
        v31 = v9 + v30;
        v32 = v10 + v30;
        v33 = *(v10 + v30);
        v34 = v32[12];
        v72 = *(v32 + 2);
        v35 = v32[13];

        outlined copy of ContentTransition.Storage(v33, v72 | (v34 << 32), v35);
        *v31 = v33;
        v31[12] = v34;
        *(v31 + 2) = v72;
        v31[13] = v35;
        v31[14] = v32[14];
      }

      swift_storeEnumTagMultiPayload();
      (*(v73 + 56))(v9, 0, 1, v11);
    }

    v36 = a3[8];
    *&v6[a3[7]] = *(a2 + a3[7]);
    v37 = &v6[v36];
    v38 = a2 + v36;
    v39 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
    v40 = *(v39 - 1);
    v41 = *(v40 + 48);

    if (v41(v38, 1, v39))
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
      memcpy(v37, v38, *(*(v42 - 8) + 64));
    }

    else
    {
      v43 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = type metadata accessor for Date();
        v44 = *(*(v74 - 8) + 16);
        v44(v37, v38, v74);
        type metadata accessor for ClosedRange<Date>();
        v44(&v37[*(v45 + 36)], &v38[*(v45 + 36)], v74);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
        v37[*(v46 + 48)] = v38[*(v46 + 48)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v37, v38, *(*(v43 - 8) + 64));
      }

      *&v37[v39[5]] = *&v38[v39[5]];
      *&v37[v39[6]] = *&v38[v39[6]];
      v47 = v39[7];
      v48 = &v37[v47];
      v49 = &v38[v47];
      *v48 = *v49;
      v48[8] = v49[8];
      v48[16] = v49[16];
      *(v48 + 3) = *(v49 + 3);
      v50 = *(v40 + 56);

      v50(v37, 0, 1, v39);
    }

    v51 = a3[9];
    v52 = &v6[v51];
    v53 = a2 + v51;
    v54 = *(v53 + 8);
    if (v54)
    {
      *v52 = *v53;
      *(v52 + 1) = v54;
      v55 = *(v53 + 24);
      *(v52 + 2) = *(v53 + 16);
      *(v52 + 3) = v55;
      v56 = *(v53 + 40);
      *(v52 + 4) = *(v53 + 32);
      *(v52 + 5) = v56;
      v52[48] = *(v53 + 48);
      *(v52 + 13) = *(v53 + 52);
      v52[56] = *(v53 + 56);
    }

    else
    {
      v57 = *(v53 + 16);
      *v52 = *v53;
      *(v52 + 1) = v57;
      *(v52 + 2) = *(v53 + 32);
      *(v52 + 41) = *(v53 + 41);
    }

    v58 = a3[10];
    v59 = type metadata accessor for URL();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(a2 + v58, 1, v59))
    {
      type metadata accessor for URL?();
      memcpy(&v6[v58], a2 + v58, *(*(v61 - 8) + 64));
    }

    else
    {
      (*(v60 + 16))(&v6[v58], a2 + v58, v59);
      (*(v60 + 56))(&v6[v58], 0, 1, v59);
    }

    v62 = a3[11];
    v63 = &v6[v62];
    v64 = a2 + v62;
    v65 = *(v64 + 8);
    if (v65 == 1)
    {
      v66 = *(v64 + 16);
      *v63 = *v64;
      *(v63 + 1) = v66;
      v67 = *(v64 + 48);
      *(v63 + 2) = *(v64 + 32);
      *(v63 + 3) = v67;
    }

    else
    {
      *v63 = *v64;
      *(v63 + 1) = v65;
      v68 = *(v64 + 24);
      *(v63 + 2) = *(v64 + 16);
      *(v63 + 3) = v68;
      v69 = *(v64 + 40);
      *(v63 + 4) = *(v64 + 32);
      *(v63 + 5) = v69;
      v70 = *(v64 + 56);
      *(v63 + 6) = *(v64 + 48);
      *(v63 + 7) = v70;
    }
  }

  return v6;
}

uint64_t destroy for WidgetAuxiliaryViewMetadata(id *a1, int *a2)
{
  v4 = (a1 + a2[6]);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {

      v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v7 = *(v6 + 20);
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
      if (!swift_getEnumCaseMultiPayload())
      {
        v8 = type metadata accessor for URL();
        (*(*(v8 - 8) + 8))(v4 + v7, v8);
      }

      outlined consume of ContentTransition.Storage(*(v4 + *(v6 + 48)), *(v4 + *(v6 + 48) + 8) | (*(v4 + *(v6 + 48) + 12) << 32), *(v4 + *(v6 + 48) + 13));
    }
  }

  v9 = a1 + a2[8];
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = type metadata accessor for Date();
      v12 = *(*(v11 - 8) + 8);
      v12(v9, v11);
      type metadata accessor for ClosedRange<Date>();
      v12(&v9[*(v13 + 36)], v11);
    }
  }

  if (*(a1 + a2[9] + 8))
  {
  }

  v14 = a2[10];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(a1 + v14, 1, v15))
  {
    (*(v16 + 8))(a1 + v14, v15);
  }

  result = *(a1 + a2[11] + 8);
  if (result != 1)
  {
  }

  return result;
}

char *initializeWithCopy for WidgetAuxiliaryViewMetadata(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = &a1[v7];
  v9 = (a2 + v7);
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v5;
  v14 = v6;
  if (v12(v9, 1, v10))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    memcpy(v8, v9, *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v9;
      *v8 = *v9;
      v17 = v16;
    }

    else
    {
      v18 = v9[1];
      *v8 = *v9;
      v8[1] = v18;
      v19 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v20 = v19[5];
      v21 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v8 + v20, v9 + v20, *(*(v21 - 8) + 64));
      }

      else
      {
        v22 = type metadata accessor for URL();
        (*(*(v22 - 8) + 16))(v8 + v20, v9 + v20, v22);
        swift_storeEnumTagMultiPayload();
      }

      v23 = v19[6];
      v24 = v8 + v23;
      v25 = v9 + v23;
      *v24 = *v25;
      v24[4] = v25[4];
      *(v8 + v19[7]) = *(v9 + v19[7]);
      *(v8 + v19[8]) = *(v9 + v19[8]);
      v26 = v19[9];
      v27 = v8 + v26;
      v28 = v9 + v26;
      *v27 = *v28;
      v27[16] = v28[16];
      *(v8 + v19[10]) = *(v9 + v19[10]);
      *(v8 + v19[11]) = *(v9 + v19[11]);
      v29 = v19[12];
      v30 = v8 + v29;
      v31 = v9 + v29;
      v32 = *(v9 + v29);
      v72 = v31[12];
      v73 = *(v31 + 2);
      v33 = v31[13];

      outlined copy of ContentTransition.Storage(v32, v73 | (v72 << 32), v33);
      *v30 = v32;
      v30[12] = v72;
      *(v30 + 2) = v73;
      v30[13] = v33;
      v30[14] = v31[14];
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v34 = a3;
  v35 = a3[8];
  *&a1[a3[7]] = *(a2 + a3[7]);
  v36 = &a1[v35];
  v37 = (a2 + v35);
  v38 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v39 = *(v38 - 1);
  v40 = *(v39 + 48);

  if (v40(v37, 1, v38))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v36, v37, *(*(v41 - 8) + 64));
  }

  else
  {
    v42 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = type metadata accessor for Date();
      v44 = *(*(v43 - 8) + 16);
      v44(v36, v37, v43);
      type metadata accessor for ClosedRange<Date>();
      v44(&v36[*(v45 + 36)], &v37[*(v45 + 36)], v43);
      v34 = a3;
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
      v36[*(v46 + 48)] = v37[*(v46 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v36, v37, *(*(v42 - 8) + 64));
    }

    *&v36[v38[5]] = *&v37[v38[5]];
    *&v36[v38[6]] = *&v37[v38[6]];
    v47 = v38[7];
    v48 = &v36[v47];
    v49 = &v37[v47];
    *v48 = *v49;
    v48[8] = v49[8];
    v48[16] = v49[16];
    *(v48 + 3) = *(v49 + 3);
    v50 = *(v39 + 56);

    v50(v36, 0, 1, v38);
  }

  v51 = v34[9];
  v52 = &a1[v51];
  v53 = a2 + v51;
  v54 = *(v53 + 8);
  if (v54)
  {
    *v52 = *v53;
    *(v52 + 1) = v54;
    v55 = *(v53 + 24);
    *(v52 + 2) = *(v53 + 16);
    *(v52 + 3) = v55;
    v56 = *(v53 + 40);
    *(v52 + 4) = *(v53 + 32);
    *(v52 + 5) = v56;
    v52[48] = *(v53 + 48);
    *(v52 + 13) = *(v53 + 52);
    v52[56] = *(v53 + 56);
  }

  else
  {
    v57 = *(v53 + 16);
    *v52 = *v53;
    *(v52 + 1) = v57;
    *(v52 + 2) = *(v53 + 32);
    *(v52 + 41) = *(v53 + 41);
  }

  v58 = v34[10];
  v59 = type metadata accessor for URL();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(a2 + v58, 1, v59))
  {
    type metadata accessor for URL?();
    memcpy(&a1[v58], (a2 + v58), *(*(v61 - 8) + 64));
  }

  else
  {
    (*(v60 + 16))(&a1[v58], a2 + v58, v59);
    (*(v60 + 56))(&a1[v58], 0, 1, v59);
  }

  v62 = v34[11];
  v63 = &a1[v62];
  v64 = a2 + v62;
  v65 = *(v64 + 8);
  if (v65 == 1)
  {
    v66 = *(v64 + 16);
    *v63 = *v64;
    *(v63 + 1) = v66;
    v67 = *(v64 + 48);
    *(v63 + 2) = *(v64 + 32);
    *(v63 + 3) = v67;
  }

  else
  {
    *v63 = *v64;
    *(v63 + 1) = v65;
    v68 = *(v64 + 24);
    *(v63 + 2) = *(v64 + 16);
    *(v63 + 3) = v68;
    v69 = *(v64 + 40);
    *(v63 + 4) = *(v64 + 32);
    *(v63 + 5) = v69;
    v70 = *(v64 + 56);
    *(v63 + 6) = *(v64 + 48);
    *(v63 + 7) = v70;
  }

  return a1;
}

uint64_t assignWithCopy for WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v124 = a3;
  v12 = a3[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (v18)
  {
    if (!v19)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *v14;
        *v13 = *v14;
        v21 = v20;
      }

      else
      {
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        v26 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v27 = v26[5];
        v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&v13[v27], &v14[v27], *(*(v28 - 8) + 64));
        }

        else
        {
          v32 = type metadata accessor for URL();
          (*(*(v32 - 8) + 16))(&v13[v27], &v14[v27], v32);
          swift_storeEnumTagMultiPayload();
        }

        v33 = v26[6];
        v34 = &v13[v33];
        v35 = &v14[v33];
        v36 = *v35;
        v34[4] = v35[4];
        *v34 = v36;
        v13[v26[7]] = v14[v26[7]];
        *&v13[v26[8]] = *&v14[v26[8]];
        v37 = v26[9];
        v38 = &v13[v37];
        v39 = &v14[v37];
        v40 = *v39;
        v38[16] = v39[16];
        *v38 = v40;
        v13[v26[10]] = v14[v26[10]];
        *&v13[v26[11]] = *&v14[v26[11]];
        v41 = v26[12];
        v42 = &v13[v41];
        v43 = &v14[v41];
        v44 = *&v14[v41];
        v121 = v43[12];
        v122 = *(v43 + 2);
        v45 = v43[13];

        outlined copy of ContentTransition.Storage(v44, v122 | (v121 << 32), v45);
        *v42 = v44;
        v42[12] = v121;
        *(v42 + 2) = v122;
        v42[13] = v45;
        v42[14] = v43[14];
      }

      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(v13, 0, 1, v15);
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if (v19)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v13, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
LABEL_7:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    memcpy(v13, v14, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  v23 = v124;
  if (a1 == a2)
  {
    goto LABEL_19;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v13, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v14;
    *v13 = *v14;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);
  v29 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  v30 = v29[5];
  v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v13[v30], &v14[v30], *(*(v31 - 8) + 64));
  }

  else
  {
    v106 = type metadata accessor for URL();
    (*(*(v106 - 8) + 16))(&v13[v30], &v14[v30], v106);
    swift_storeEnumTagMultiPayload();
  }

  v107 = v29[6];
  v108 = &v13[v107];
  v109 = &v14[v107];
  v110 = *v109;
  v108[4] = v109[4];
  *v108 = v110;
  v13[v29[7]] = v14[v29[7]];
  *&v13[v29[8]] = *&v14[v29[8]];
  v111 = v29[9];
  v112 = &v13[v111];
  v113 = &v14[v111];
  v114 = *v113;
  v112[16] = v113[16];
  *v112 = v114;
  v13[v29[10]] = v14[v29[10]];
  *&v13[v29[11]] = *&v14[v29[11]];
  v115 = v29[12];
  v116 = &v13[v115];
  v117 = &v14[v115];
  v118 = *&v14[v115];
  v119 = v117[12];
  v123 = *(v117 + 2);
  v120 = v117[13];

  outlined copy of ContentTransition.Storage(v118, v123 | (v119 << 32), v120);
  *v116 = v118;
  v116[12] = v119;
  *(v116 + 2) = v123;
  v116[13] = v120;
  v116[14] = v117[14];
  swift_storeEnumTagMultiPayload();
LABEL_18:
  v23 = v124;
LABEL_19:
  *(a1 + v23[7]) = *(a2 + v23[7]);

  v46 = v23[8];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v50 = *(v49 - 1);
  v51 = *(v50 + 48);
  v52 = v51(v47, 1, v49);
  v53 = v51(v48, 1, v49);
  if (v52)
  {
    if (!v53)
    {
      v54 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = type metadata accessor for Date();
        v56 = *(*(v55 - 8) + 16);
        v56(v47, v48, v55);
        type metadata accessor for ClosedRange<Date>();
        v56(&v47[*(v57 + 36)], &v48[*(v57 + 36)], v55);
        v23 = v124;
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
        v47[*(v58 + 48)] = v48[*(v58 + 48)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v47, v48, *(*(v54 - 8) + 64));
      }

      *&v47[v49[5]] = *&v48[v49[5]];
      *&v47[v49[6]] = *&v48[v49[6]];
      v65 = v49[7];
      v66 = &v47[v65];
      v67 = &v48[v65];
      *v66 = *v67;
      v66[8] = v67[8];
      v68 = *(v67 + 3);
      v66[16] = v67[16];
      *(v66 + 3) = v68;
      v69 = *(v50 + 56);

      v69(v47, 0, 1, v49);
      goto LABEL_33;
    }

LABEL_25:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v47, v48, *(*(v59 - 8) + 64));
    goto LABEL_33;
  }

  if (v53)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v47, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    goto LABEL_25;
  }

  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v47, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v60 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = type metadata accessor for Date();
      v62 = *(*(v61 - 8) + 16);
      v62(v47, v48, v61);
      type metadata accessor for ClosedRange<Date>();
      v62(&v47[*(v63 + 36)], &v48[*(v63 + 36)], v61);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
      v47[*(v64 + 48)] = v48[*(v64 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v47, v48, *(*(v60 - 8) + 64));
    }
  }

  *&v47[v49[5]] = *&v48[v49[5]];

  *&v47[v49[6]] = *&v48[v49[6]];

  v70 = v49[7];
  v71 = &v47[v70];
  v72 = &v48[v70];
  *&v47[v70] = *v72;

  v71[8] = v72[8];
  v73 = *(v72 + 3);
  v71[16] = v72[16];
  *(v71 + 3) = v73;
LABEL_33:
  v74 = v23[9];
  v75 = a1 + v74;
  v76 = (a2 + v74);
  v77 = *(a1 + v74 + 8);
  v78 = *(a2 + v74 + 8);
  if (v77)
  {
    if (v78)
    {
      *v75 = *v76;
      *(v75 + 8) = *(v76 + 1);

      *(v75 + 16) = *(v76 + 2);

      *(v75 + 24) = *(v76 + 3);

      *(v75 + 32) = *(v76 + 4);

      *(v75 + 40) = *(v76 + 5);

      *(v75 + 48) = *(v76 + 48);
      v79 = *(v76 + 13);
      *(v75 + 56) = *(v76 + 56);
      *(v75 + 52) = v79;
    }

    else
    {
      outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v75);
      v82 = v76[1];
      v81 = v76[2];
      v83 = *v76;
      *(v75 + 41) = *(v76 + 41);
      *(v75 + 16) = v82;
      *(v75 + 32) = v81;
      *v75 = v83;
    }
  }

  else if (v78)
  {
    *v75 = *v76;
    *(v75 + 8) = *(v76 + 1);
    *(v75 + 16) = *(v76 + 2);
    *(v75 + 24) = *(v76 + 3);
    *(v75 + 32) = *(v76 + 4);
    *(v75 + 40) = *(v76 + 5);
    *(v75 + 48) = *(v76 + 48);
    v80 = *(v76 + 13);
    *(v75 + 56) = *(v76 + 56);
    *(v75 + 52) = v80;
  }

  else
  {
    v84 = *v76;
    v85 = v76[1];
    v86 = v76[2];
    *(v75 + 41) = *(v76 + 41);
    *(v75 + 16) = v85;
    *(v75 + 32) = v86;
    *v75 = v84;
  }

  v87 = v23[10];
  v88 = type metadata accessor for URL();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(a1 + v87, 1, v88);
  v92 = v90(a2 + v87, 1, v88);
  if (v91)
  {
    if (!v92)
    {
      (*(v89 + 16))(a1 + v87, a2 + v87, v88);
      (*(v89 + 56))(a1 + v87, 0, 1, v88);
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v92)
  {
    (*(v89 + 8))(a1 + v87, v88);
LABEL_45:
    type metadata accessor for URL?();
    memcpy((a1 + v87), (a2 + v87), *(*(v93 - 8) + 64));
    goto LABEL_46;
  }

  (*(v89 + 24))(a1 + v87, a2 + v87, v88);
LABEL_46:
  v94 = v23[11];
  v95 = a1 + v94;
  v96 = (a2 + v94);
  v97 = *(a1 + v94 + 8);
  v98 = *(v96 + 1);
  if (v97 == 1)
  {
    if (v98 == 1)
    {
      v99 = *v96;
      v100 = v96[1];
      v101 = v96[3];
      *(v95 + 32) = v96[2];
      *(v95 + 48) = v101;
      *v95 = v99;
      *(v95 + 16) = v100;
    }

    else
    {
      *v95 = *v96;
      *(v95 + 8) = *(v96 + 1);
      *(v95 + 16) = *(v96 + 2);
      *(v95 + 24) = *(v96 + 3);
      *(v95 + 32) = *(v96 + 4);
      *(v95 + 40) = *(v96 + 5);
      *(v95 + 48) = *(v96 + 6);
      *(v95 + 56) = *(v96 + 7);
    }
  }

  else if (v98 == 1)
  {
    outlined destroy of WidgetAuxiliaryViewMetadata.Accessibility(v95);
    v102 = v96[3];
    v104 = *v96;
    v103 = v96[1];
    *(v95 + 32) = v96[2];
    *(v95 + 48) = v102;
    *v95 = v104;
    *(v95 + 16) = v103;
  }

  else
  {
    *v95 = *v96;
    *(v95 + 8) = *(v96 + 1);

    *(v95 + 16) = *(v96 + 2);
    *(v95 + 24) = *(v96 + 3);

    *(v95 + 32) = *(v96 + 4);
    *(v95 + 40) = *(v96 + 5);

    *(v95 + 48) = *(v96 + 6);
    *(v95 + 56) = *(v96 + 7);
  }

  return a1;
}

char *initializeWithTake for WidgetAuxiliaryViewMetadata(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v7, v8, *(v10 + 64));
    }

    else
    {
      *v7 = *v8;
      v12 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v13 = v12[5];
      v14 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&v7[v13], &v8[v13], *(*(v14 - 8) + 64));
      }

      else
      {
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 32))(&v7[v13], &v8[v13], v15);
        swift_storeEnumTagMultiPayload();
      }

      v16 = v12[6];
      v17 = &v7[v16];
      v18 = &v8[v16];
      *v17 = *v18;
      v17[4] = v18[4];
      v7[v12[7]] = v8[v12[7]];
      *&v7[v12[8]] = *&v8[v12[8]];
      v19 = v12[9];
      v20 = &v7[v19];
      v21 = &v8[v19];
      *v20 = *v21;
      v20[16] = v21[16];
      v7[v12[10]] = v8[v12[10]];
      *&v7[v12[11]] = *&v8[v12[11]];
      v22 = v12[12];
      v23 = &v7[v22];
      v24 = &v8[v22];
      *v23 = *v24;
      *(v23 + 7) = *(v24 + 7);
      swift_storeEnumTagMultiPayload();
    }

    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v25 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v29 = *(v28 - 1);
  if ((*(v29 + 48))(v27, 1, v28))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v26, v27, *(*(v30 - 8) + 64));
  }

  else
  {
    v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = type metadata accessor for Date();
      v33 = *(*(v32 - 8) + 32);
      v33(v26, v27, v32);
      type metadata accessor for ClosedRange<Date>();
      v33(&v26[*(v34 + 36)], &v27[*(v34 + 36)], v32);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>);
      v26[*(v35 + 48)] = v27[*(v35 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v26, v27, *(*(v31 - 8) + 64));
    }

    *&v26[v28[5]] = *&v27[v28[5]];
    *&v26[v28[6]] = *&v27[v28[6]];
    v36 = v28[7];
    v37 = &v26[v36];
    v38 = &v27[v36];
    v37[16] = v38[16];
    *v37 = *v38;
    (*(v29 + 56))(v26, 0, 1, v28);
  }

  v39 = a3[9];
  v40 = a3[10];
  v41 = &a1[v39];
  v42 = &a2[v39];
  v43 = *(v42 + 1);
  *v41 = *v42;
  *(v41 + 1) = v43;
  *(v41 + 2) = *(v42 + 2);
  *(v41 + 41) = *(v42 + 41);
  v44 = type metadata accessor for URL();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(&a2[v40], 1, v44))
  {
    type metadata accessor for URL?();
    memcpy(&a1[v40], &a2[v40], *(*(v46 - 8) + 64));
  }

  else
  {
    (*(v45 + 32))(&a1[v40], &a2[v40], v44);
    (*(v45 + 56))(&a1[v40], 0, 1, v44);
  }

  v47 = a3[11];
  v48 = &a1[v47];
  v49 = &a2[v47];
  v50 = *(v49 + 1);
  *v48 = *v49;
  *(v48 + 1) = v50;
  v51 = *(v49 + 3);
  *(v48 + 2) = *(v49 + 2);
  *(v48 + 3) = v51;
  return a1;
}