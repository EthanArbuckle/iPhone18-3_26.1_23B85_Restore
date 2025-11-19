unint64_t lazy protocol witness table accessor for type Color? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Color? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Color? and conformance <A> A?)
  {
    type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type Color and conformance Color();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?)()
{
  if (!lazy cache variable for type metadata for (AttributedString.TextAlignment?, AttributedString.TextAlignment?))
  {
    type metadata accessor for AttributedString.TextAlignment?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.TextAlignment?, AttributedString.TextAlignment?));
    }
  }
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithCopy for TextFormattingControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TextFormattingControl(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TextFormattingControl and conformance TextFormattingControl()
{
  result = lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl;
  if (!lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl);
  }

  return result;
}

uint64_t type metadata accessor for DragLocationResponder()
{
  result = type metadata singleton initialization cache for DragLocationResponder;
  if (!type metadata singleton initialization cache for DragLocationResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DragLocationResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  ContentResponderHelper.init()();
  ViewTransform.init()();
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  *(v0 + 256) = v6;
  static CGSize.invalidValue.getter();
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DragLocationResponder.init(inputs:)()
{
  *(v0 + 216) = 0;
  ContentResponderHelper.init()();
  ViewTransform.init()();
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  *(v0 + 256) = v6;
  static CGSize.invalidValue.getter();
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DragLocationResponder.__ivar_destroyer()
{

  outlined destroy of CoordinateSpace(v0 + 288);
}

uint64_t DragLocationResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  outlined destroy of CoordinateSpace(v0 + 288);

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for DefaultLayoutViewResponder.__allocating_init(inputs:) dispatching to DragLocationResponder.__allocating_init(inputs:)()
{
  type metadata accessor for DragLocationResponder();
  swift_allocObject();
  return DragLocationResponder.init(inputs:)();
}

void HoverEffectGroup.init(id:in:behavior:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t destroy for HoverEffectGroup(uint64_t a1)
{
  outlined consume of HoverEffectGroupInfo.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  result = *(a1 + 40);
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = *(a2 + 25);
  v8 = *(a2 + 40);
  if ((v8 - 1) >= 2)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

uint64_t assignWithCopy for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of HoverEffectGroupInfo.Identifier(v8, v9, v10, v11);
  *(a1 + 25) = *(a2 + 25);
  v12 = *(a2 + 40) - 1;
  if ((*(a1 + 40) - 1) >= 2)
  {
    if (v12 >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      return a1;
    }

    outlined destroy of String?(a1 + 32);
    goto LABEL_6;
  }

  if (v12 < 2)
  {
LABEL_6:
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of HoverEffectGroupInfo.Identifier(v6, v7, v8, v9);
  *(a1 + 25) = *(a2 + 25);
  if ((*(a1 + 40) - 1) >= 2)
  {
    v10 = *(a2 + 40);
    if ((v10 - 1) >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v10;

      return a1;
    }

    outlined destroy of String?(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for HoverEffectGroup.Scope(uint64_t a1)
{
  result = *(a1 + 8);
  if ((result - 1) >= 2)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for HoverEffectGroup.Scope(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 - 1) >= 2)
  {
    *result = *a2;
    result[1] = v2;
    v3 = result;

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for HoverEffectGroup.Scope(void *result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if ((result[1] - 1) >= 2)
  {
    if (v2 < 2)
    {
      v3 = result;
      outlined destroy of String?(result);
      *v3 = *a2;
      return v3;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  return v5;
}

void *assignWithTake for HoverEffectGroup.Scope(void *result, void *a2)
{
  if ((result[1] - 1) >= 2)
  {
    v2 = a2[1];
    if ((v2 - 1) >= 2)
    {
      *result = *a2;
      result[1] = v2;
      v3 = result;
    }

    else
    {
      v3 = result;
      outlined destroy of String?(result);
      *v3 = *a2;
    }

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup.Scope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup.Scope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  outlined consume of HoverEffectGroupInfo.Identifier(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of HoverEffectGroupInfo.Identifier(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup.Identifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier()
{
  result = lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier;
  if (!lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier);
  }

  return result;
}

uint64_t destroy for AccessibilityDetachedPropertyModifier(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

LABEL_5:
  if (*(a1 + 240) != 1)
  {
  }
}

uint64_t initializeWithCopy for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithCopy for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  return a1;
}

uint64_t assignWithTake for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDetachedPropertyModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityDetachedPropertyModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TabContent.accessibility(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of AccessibilityProperties(a1, v8);
  v8[288] = a2;
  TabContent.modifier<A>(_:)(v8, a3, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  return outlined destroy of AccessibilityDetachedPropertyModifier(v8);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance AccessibilityPropertyInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return static WeakAttribute.== infix(_:_:)();
  }
}

uint64_t static AccessibilityDetachedPropertyModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7[17] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 37) & 0x10) == 0)
  {
    return a3();
  }

  outlined init with copy of _ViewListInputs(a2, v7);
  lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  if (v6)
  {
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty();
  }

  else
  {
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties();
  }

  Attribute.init<A>(body:value:flags:update:)();
  AGCreateWeakAttribute();
  v5 = PropertyList.subscript.setter();
  (a3)(v5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

void *AccessibilityDetachedPropertyModifier.MergedProperties.value.getter@<X0>(void *a1@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AccessibilityProperties(WeakValue, v5);
    memcpy(__dst, v5, sizeof(__dst));
  }

  else
  {
    memset(v5, 0, 288);
    AccessibilityProperties.init()();
  }

  if (*(AGGraphGetValue() + 288))
  {
    Value = AGGraphGetValue();
    outlined init with copy of AccessibilityDetachedPropertyModifier(Value, v5);
    AccessibilityProperties.merge(with:)(v5);
    outlined destroy of AccessibilityProperties(v5);
  }

  return memcpy(a1, __dst, 0x120uLL);
}

void *protocol witness for Rule.value.getter in conformance AccessibilityDetachedPropertyModifier.InitialProperty@<X0>(void *a1@<X8>)
{
  if (*(AGGraphGetValue() + 288) == 1)
  {
    Value = AGGraphGetValue();
    outlined init with copy of AccessibilityDetachedPropertyModifier(Value, __src);
    return memcpy(a1, __src, 0x120uLL);
  }

  else
  {

    return AccessibilityProperties.init()();
  }
}

uint64_t static AccessibilityDetachedPropertyWriterModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void))
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v28 = a2[2];
  v29 = v4;
  v30 = a2[4];
  v31 = *(a2 + 20);
  v5 = a2[1];
  v26 = *a2;
  v27 = v5;
  v6 = v4;
  v7 = DWORD2(v4);
  *&v20 = v4;
  DWORD2(v20) = DWORD2(v4);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (*&v20 = v6, DWORD2(v20) = v7, (PreferencesInputs.contains<A>(_:includeHostPreferences:)())) && (lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput(), PropertyList.subscript.getter(), (BYTE8(v20) & 1) == 0))
  {
    v9 = v20;
    v12 = v28;
    v13 = v29;
    v14 = v30;
    v15 = v31;
    v10 = v26;
    v11 = v27;
    *&v18[0] = 0;
    BYTE8(v18[0]) = 1;
    outlined init with copy of _ViewInputs(&v26, &v20);
    PropertyList.subscript.setter();
    *&v20 = v9;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier();
    Attribute.init<A>(body:value:flags:update:)();
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;
    v17 = v15;
    v16[0] = v10;
    v16[1] = v11;
    outlined init with copy of _ViewInputs(v16, &v20);
    static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = v14;
    v19 = v15;
    v18[0] = v10;
    v18[1] = v11;
    outlined destroy of _ViewInputs(v18);
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v20 = v10;
    v21 = v11;
    return outlined destroy of _ViewInputs(&v20);
  }

  else
  {
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    return a3();
  }
}

void *AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier.value.getter@<X0>(uint64_t *a1@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AccessibilityProperties(WeakValue, __src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    memset(__src, 0, 288);
    AccessibilityProperties.init()();
  }

  outlined init with copy of AccessibilityProperties(__dst, &v5);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(__dst);
  type metadata accessor for CoreInteractionViewParentGestureContainerProxy?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v3 = swift_allocObject();
  result = memcpy((v3 + 16), __src, 0x128uLL);
  *a1 = v3;
  a1[1] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput()
{
  result = lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput;
  if (!lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput;
  if (!lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties);
  }

  return result;
}

uint64_t PlatformListViewBase.accessibilityNodes.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  v4 = ViewRendererHost.accessibilityNodes.getter();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_9:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v9 = *&v7[v8];

    return v9;
  }

  __break(1u);
  return result;
}

void implicit closure #3 in PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 layoutDirection];

  *a2 = v4 == 1;
}

double key path getter for EnvironmentValues.editMode : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.editMode : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EditButton.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

void EditButton.body.getter(uint64_t a1@<X8>)
{
  v33 = a1;
  type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 17);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 33) = v13;
  *v5 = 4;
  v15 = &v5[*(v3 + 44)];
  *v15 = partial apply for closure #1 in EditButton.body.getter;
  v15[1] = v14;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v16 = *(v3 + 48);

  outlined copy of Environment<Binding<EditMode>?>.Content(v10, v11, v12, v13);
  v17 = v12 | (v13 << 8);
  closure #2 in EditButton.body.getter(v10, v11, v12 | (v13 << 8), &v5[v16]);

  v18 = static Animation.easeOut(duration:)();
  specialized Environment.wrappedValue.getter(v10, v11, v17, &v38);
  v19 = v39;
  if (v39)
  {
    v20 = v38;
    v32 = v9;
    v35 = v38;
    v36 = v39;
    v37 = v40;
    type metadata accessor for Binding<EditMode>();
    MEMORY[0x18D00ACC0](&v34);
    v9 = v32;
    outlined consume of Binding<NavigationSplitViewColumn>?(v20, v19);
    v21 = v34;
  }

  else
  {
    v21 = 0;
  }

  outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(v5, v9, type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>);
  v22 = &v9[*(v7 + 36)];
  *v22 = v18;
  v22[8] = v21;
  specialized Environment.wrappedValue.getter(v10, v11, v17, &v38);
  v23 = v39;
  if (v39)
  {
    v24 = v38;
    v35 = v38;
    v36 = v39;
    v37 = v40;
    type metadata accessor for Binding<EditMode>();
    MEMORY[0x18D00ACC0](&v34);
    outlined consume of Binding<NavigationSplitViewColumn>?(v24, v23);
    v25 = v34 != 0;
  }

  else
  {
    v25 = 0;
  }

  KeyPath = swift_getKeyPath();
  v27 = v9;
  v28 = v33;
  outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(v27, v33, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>);
  type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>, MEMORY[0x1E697E830]);
  v30 = v28 + *(v29 + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  *(v30 + 9) = v25;
}

void type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>()
{
  if (!lazy cache variable for type metadata for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>)
  {
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>();
    lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>);
    }
  }
}

void type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>()
{
  if (!lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>)
  {
    type metadata accessor for Label<Text, Image>();
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>();
    lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate()
{
  result = lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate;
  if (!lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_2(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>)
  {
    type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>();
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<EditMode>, lazy protocol witness table accessor for type EditMode and conformance EditMode, &type metadata for EditMode, MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>);
    }
  }
}

uint64_t closure #1 in EditButton.body.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF, &v7);
  v4 = v8;
  if (v8)
  {
    v5 = v7;
    v6 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    MEMORY[0x1EEE9AC00](v6);
    withAnimation<A>(_:_:)();
    outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in EditButton.body.getter()
{
  type metadata accessor for Binding<EditMode>();
  MEMORY[0x18D00ACC0](&v1);
  LOBYTE(v1) = 2 * (v1 == 0);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

__n128 closure #2 in EditButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v25 = a3;
  EditButton.editLabel.getter(&v20);
  v17 = v20;
  v18 = v21;
  v8 = v22;
  v26 = v23;
  specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF, &v20);
  v9 = *(&v20 + 1);
  if (*(&v20 + 1) && (v10 = v20, v24 = v20, LOBYTE(v25) = v21.n128_u8[0], type metadata accessor for Binding<EditMode>(), MEMORY[0x18D00ACC0](&v19), outlined consume of Binding<NavigationSplitViewColumn>?(v10, v9), v19))
  {
    v11 = static Text.System.done.getter();
  }

  else
  {
    v11 = static Text.System.edit.getter();
  }

  v15 = v26;
  result = v18;
  *a4 = v17;
  *(a4 + 16) = v18;
  *(a4 + 32) = v8;
  *(a4 + 40) = v15;
  *(a4 + 48) = v11;
  *(a4 + 56) = v12;
  *(a4 + 64) = v13 & 1;
  *(a4 + 72) = v14;
  return result;
}

void EditButton.editLabel.getter(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v21);
  v3 = v22;
  if (v22 && (v4 = v21, v18 = v21, v19 = v22, v20 = v23, type metadata accessor for Binding<EditMode>(), MEMORY[0x18D00ACC0](&v17), outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3), v17))
  {
    v5 = static Text.System.done.getter();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    specialized Image.init(systemName:)(0x72616D6B63656863, 0xE90000000000006BLL);
    v13 = 1;
  }

  else
  {
    v5 = static Text.System.edit.getter();
    v7 = v14;
    v9 = v15;
    v11 = v16;
    specialized Image.init(systemName:)(0x6C69636E6570, 0xE600000000000000);
    v13 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
}

uint64_t ToolbarItemTintColorModifier.body(content:)@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 1;
  if ((a2 & 0x100) != 0)
  {
    result = specialized Environment.wrappedValue.getter(a1, a2 & 1);
    if (!result)
    {
      result = static Color.accentColor.getter();
    }
  }

  else
  {
    result = 0;
  }

  *a3 = v4;
  *(a3 + 8) = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.effectiveTintColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveTintColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for Binding<EditMode>()
{
  if (!lazy cache variable for type metadata for Binding<EditMode>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<EditMode>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for EditButton(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<EditMode>?>.Content(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

uint64_t assignWithCopy for EditButton(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<EditMode>?>.Content(*a2, v4, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 17);
  *a1 = v3;
  *(a1 + 8) = v4;
  v10 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  outlined consume of Environment<Binding<Visibility>?>.Content(v7, v8, v10, v9);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>();
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_2(&lazy protocol witness table cache variable for type Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>> and conformance Button<A>, type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>);
    lazy protocol witness table accessor for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<EditMode>, lazy protocol witness table accessor for type EditMode and conformance EditMode, &type metadata for EditMode, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>();
    lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate();
    lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarItemTintColorModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarItemTintColorModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for ToolbarItemTintColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ToolbarItemTintColorModifier@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ToolbarItemTintColorModifier.body(content:)(*v1, v2 | *(v1 + 8), a1);
}

uint64_t static ConditionalBridgingTintModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v34 = a2[2];
  v35 = v4;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint();
  v6 = PropertyList.subscript.getter();
  v7 = v26;
  if (v26 == *MEMORY[0x1E698D3F8])
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    return a3(v6, &v26);
  }

  else
  {
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v16 = v32;
    v17 = v33;
    outlined init with copy of _ViewInputs(&v32, &v26);
    *&v26 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v7);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint();
    LODWORD(v26) = Attribute.init<A>(body:value:flags:update:)();
    PropertyList.subscript.setter();
    v22[2] = v18;
    v22[3] = v19;
    v22[4] = v20;
    v23 = v21;
    v22[0] = v16;
    v22[1] = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = v16;
    v11 = v17;
    v9 = outlined init with copy of _ViewInputs(v22, &v26);
    a3(v9, &v10);
    v24[2] = v12;
    v24[3] = v13;
    v24[4] = v14;
    v25 = v15;
    v24[0] = v10;
    v24[1] = v11;
    outlined destroy of _ViewInputs(v24);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v26 = v16;
    v27 = v17;
    return outlined destroy of _ViewInputs(&v26);
  }
}

char *protocol witness for Rule.value.getter in conformance ConditionalBridgingTintModifier.ChildTint@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0;
  if (*result == 1)
  {
    result = AGGraphGetValue();
    v3 = *result;
  }

  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>();
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>, &type metadata for ToolbarItemTintColorKey, &protocol witness table for ToolbarItemTintColorKey, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>, lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier, &unk_1F0008FB0, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>);
    }
  }
}

void _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<EditModeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>, lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier, &unk_1F0008FB0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>, &type metadata for ToolbarItemTintColorKey, &protocol witness table for ToolbarItemTintColorKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint()
{
  result = lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint;
  if (!lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint);
  }

  return result;
}

BOOL ShadowListUpdateRecorder.hasUncommittedUpdates.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListUpdate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t ShadowListUpdateRecorder.withBase(do:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, v5, v7);
  a1(v9);
  (*(v6 + 24))(v3, v9, v5);
  return (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall ShadowListUpdateRecorder.clearUpdates()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  type metadata accessor for ListUpdate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Array.append<A>(contentsOf:)();
  Array.removeAll(keepingCapacity:)(1);
}

uint64_t ShadowListUpdateRecorder.updateBase(to:)(uint64_t a1, uint64_t a2)
{
  result = ShadowListUpdateRecorder.hasUncommittedUpdates.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for ListUpdate();
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(1);
    return (*(*(v6 - 8) + 24))(v2, a1, v6);
  }

  return result;
}

uint64_t ShadowListUpdateRecorder.recordUpdate(_:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9[0] = AssociatedTypeWitness;
  v9[1] = MEMORY[0x1E69E6530];
  v9[2] = AssociatedConformanceWitness;
  v9[3] = MEMORY[0x1E69E6548];
  v4 = type metadata accessor for ListUpdate();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - v6, a1, v4, v5);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t ListUpdate.inverse.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v43 - v6;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + 16);
  v17(v16, v2, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v9 + 32))(v50, v16, v4);
      }

      else
      {
        v36 = swift_getTupleTypeMetadata2();
        v37 = *(v36 + 48);
        v38 = *(v9 + 32);
        v39 = v48;
        v38(v48, v16, v4);
        v40 = *(v36 + 48);
        v41 = &v16[v37];
        v42 = v50;
        v38(v50, v41, v4);
        v38(&v42[v40], v39, v4);
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v9 + 32))(v50, v16, v4);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v28 = TupleTypeMetadata2;
      v29 = swift_getTupleTypeMetadata2();
      v30 = *(v29 + 48);
      v31 = v44;
      v32 = *(v45 + 32);
      v32(v44, v16, v28);
      v33 = *(v29 + 48);
      v34 = &v16[v30];
      v35 = v50;
      v32(v50, v34, v28);
      v32(&v35[v33], v31, v28);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      (v17)(v50, v2, a1);
      return (*(v12 + 8))(v16, a1);
    }
  }

  else
  {
    v19 = v48;
    v20 = TupleTypeMetadata2;
    v21 = *(TupleTypeMetadata2 + 48);
    v45 = *(v9 + 32);
    (v45)(v48, v16, v4);
    v22 = *(v47 + 32);
    v23 = &v16[v21];
    v24 = v46;
    v22(v46, v23, v5);
    v25 = *(v20 + 48);
    v26 = v50;
    (v45)(v50, v19, v4);
    v22(&v26[v25], v24, v5);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, void (**a6)(char *, char *, uint64_t), char *a7)
{
  v121 = a3;
  v125 = a7;
  v126 = a4;
  v123 = a2;
  v96 = a1;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v105 = v9;
  v104 = v8;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v113 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v103 = v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = v87 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v127 = AssociatedTypeWitness;
  v128 = MEMORY[0x1E69E6530];
  v117 = AssociatedConformanceWitness;
  v129 = AssociatedConformanceWitness;
  v130 = MEMORY[0x1E69E6548];
  v19 = type metadata accessor for ListUpdate();
  v124 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v102 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v100 = v87 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v87 - v26;
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v87 - v29;
  v116 = a6;
  v120 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v31);
  v115 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v125 + 1);
  v112 = swift_getAssociatedTypeWitness();
  v95 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v125 = v87 - v33;
  v108 = swift_getAssociatedTypeWitness();
  v94 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v35 = v87 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v92 = v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v87 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v87 - v44;
  (*(v97 + 16))(v87 - v44, v121, AssociatedTypeWitness, v43);
  *&v45[*(TupleTypeMetadata2 + 48)] = v126;
  v93 = v37;
  v46 = *(v37 + 16);
  v91 = v45;
  v47 = v45;
  v48 = TupleTypeMetadata2;
  v90 = v37 + 16;
  v89 = v46;
  v46(v41, v47, TupleTypeMetadata2);
  v49 = *(v105 + 80);
  v107 = v35;
  v50 = v98;
  v126 = v41;
  v49(v41, v104);
  (*(v120 + 2))(v115, v123, v116);
  v51 = v112;
  dispatch thunk of Sequence.makeIterator()();
  v123 = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v52 = v124;
  v121 = *(v124 + 48);
  v122 = v124 + 48;
  if (v121(v30, 1, v19) != 1)
  {
    v59 = *(v52 + 32);
    v58 = v52 + 32;
    v120 = v59;
    v116 = (v58 - 16);
    v114 = (v97 + 8);
    v115 = (v97 + 32);
    v88 = (v97 + 40);
    v124 = v58;
    v119 = (v58 - 24);
    v109 = TupleTypeMetadata2;
    v99 = v30;
    v59(v27, v30, v19);
    while (1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 5:
          v71 = v102;
          (*v116)(v102, v27, v19);
          v72 = &v71[*(swift_getTupleTypeMetadata2() + 48)];
          v73 = *(v48 + 48);
          v74 = *&v71[v73];
          v75 = *&v72[v73];
          v110 = v74;
          v111 = v75;
          v76 = *v115;
          (*v115)(v118, v71, AssociatedTypeWitness);
          v77 = v113;
          v76(v113, v72, AssociatedTypeWitness);
          v78 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v79 = dispatch thunk of static Equatable.== infix(_:_:)();
            v80 = v78;
            v48 = v109;
            v106 = *(v109 + 48);
            v81 = *&v80[v106];
            v82 = v110;
            if ((v79 & 1) != 0 && v110 == v81)
            {
              (*v114)(v118, AssociatedTypeWitness);
              v83 = v126;
              (*v88)(v126, v113, AssociatedTypeWitness);
              v51 = v112;
              *&v83[v106] = v111;
            }

            else
            {
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && v82 < v81)
              {
                v87[1] = swift_getAssociatedConformanceWitness();
                v82 = v110;
                dispatch thunk of Collection.startIndex.getter();
                if (v127 < v81)
                {
                  dispatch thunk of BidirectionalCollection.formIndex(before:)();
                }
              }

              if (v111 >= v82)
              {
                LODWORD(v110) = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
              }

              else
              {
                LODWORD(v110) = 1;
              }

              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && ((v110 & 1) != 0 ? v81 >= v111 : v111 < v81))
              {
                swift_getAssociatedConformanceWitness();
                dispatch thunk of Collection.formIndex(after:)();
              }

              v86 = *v114;
              (*v114)(v113, AssociatedTypeWitness);
              v86(v118, AssociatedTypeWitness);
              v51 = v112;
            }
          }

          else
          {
            v84 = *v114;
            (*v114)(v77, AssociatedTypeWitness);
            v84(v118, AssociatedTypeWitness);
            v51 = v112;
            v48 = v109;
          }

          break;
        case 4:
          v66 = v50;
          v67 = v101;
          (*v116)(v101, v27, v19);
          v68 = *&v67[*(v48 + 48)];
          v69 = v103;
          (*v115)(v103, v67, AssociatedTypeWitness);
          v70 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            if (*&v70[*(v48 + 48)] >= v68)
            {
              swift_getAssociatedConformanceWitness();
              dispatch thunk of Collection.formIndex(after:)();
            }

            (*v114)(v69, AssociatedTypeWitness);
            v50 = v66;
            v48 = v109;
          }

          else
          {
            (*v114)(v69, AssociatedTypeWitness);
            v50 = v66;
          }

          v30 = v99;
          break;
        case 3:
          v61 = v100;
          (*v116)(v100, v27, v19);
          v62 = *&v61[*(v48 + 48)];
          (*v115)(v50, v61, AssociatedTypeWitness);
          v63 = v50;
          v64 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v65 = *&v64[*(v48 + 48)];
            if (v65 >= v62)
            {
              swift_getAssociatedConformanceWitness();
              v48 = v109;
              dispatch thunk of Collection.startIndex.getter();
              if (v127 < v65)
              {
                dispatch thunk of BidirectionalCollection.formIndex(before:)();
              }
            }

            v50 = v98;
            (*v114)(v98, AssociatedTypeWitness);
            v51 = v112;
          }

          else
          {
            (*v114)(v63, AssociatedTypeWitness);
            v50 = v63;
          }

          break;
      }

      (*v119)(v27, v19);
      dispatch thunk of IteratorProtocol.next()();
      if (v121(v30, 1, v19) == 1)
      {
        break;
      }

      v120(v27, v30, v19);
    }
  }

  (*(v95 + 8))(v125, v51);
  (*(v94 + 8))(v107, v108);
  v53 = *(v93 + 8);
  v53(v91, v48);
  v54 = v92;
  v55 = v126;
  v89(v92, v126, v48);
  v56 = *&v54[*(v48 + 48)];
  (*(v97 + 32))(v96, v54, AssociatedTypeWitness);
  v53(v55, v48);
  return v56;
}

uint64_t ShadowListUpdateRecorder.applyUpdates<A>(_:to:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v111 = a2;
  v112 = a1;
  v108 = a5;
  v6 = *(a3 + 16);
  v99 = *(a3 + 24);
  v102 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v106 = &v81 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 8);
  v10 = swift_getAssociatedTypeWitness();
  v107 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v81 - v21;
  v95 = v9;
  v97 = AssociatedTypeWitness;
  v22 = swift_getAssociatedConformanceWitness();
  v115 = v10;
  v116 = MEMORY[0x1E69E6530];
  v114 = v22;
  v117 = v22;
  v118 = MEMORY[0x1E69E6548];
  v23 = type metadata accessor for ListUpdate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v81 - v25;
  v27 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v81 - v28;
  v29 = a4;
  v30 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = swift_getAssociatedTypeWitness();
  v81 = *(v113 - 8);
  v34 = MEMORY[0x1EEE9AC00](v113);
  v36 = &v81 - v35;
  v37 = *(v107 + 16);
  v87 = v107 + 16;
  v86 = v37;
  (v37)(v108, v111, v10, v34);
  (*(v30 + 16))(v33, v112, v29);
  v38 = v106;
  v39 = v98;
  dispatch thunk of Sequence.makeIterator()();
  v40 = v105;
  v41 = swift_getAssociatedConformanceWitness();
  v112 = v36;
  v42 = v41;
  dispatch thunk of IteratorProtocol.next()();
  v110 = *(v24 + 48);
  v111 = v24 + 48;
  if (v110(v39, 1, v23) != 1)
  {
    v45 = *(v24 + 32);
    v44 = v24 + 32;
    v109 = v45;
    v46 = (v107 + 32);
    v100 = v99 + 56;
    v94 = (v101 + 1);
    v107 += 8;
    v89 = (v44 - 24);
    v96 = v42;
    v101 = v46;
    v90 = v23;
    v103 = v44;
    v82 = v26;
    v45(v26, v39, v23);
    while (1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v55 = *v46;
        v56 = v92;
        v55(v92, v26, v10);
        if (dispatch thunk of static Comparable.<= infix(_:_:)())
        {
          (*(v99 + 56))(v102);
          v57 = v97;
          dispatch thunk of Collection.formIndex(after:)();
          v58 = v57;
          v38 = v106;
          (*v94)(v106, v58);
        }

        (*v107)(v56, v10);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload)
      {
        (*v89)(v26, v23);
        goto LABEL_5;
      }

      (*v46)(v104, v26, v10);
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v48 = v99;
        v49 = v107;
        v85 = *(v99 + 56);
        v85(v102, v99);
        v50 = v88;
        v51 = v38;
        v52 = v97;
        dispatch thunk of Collection.startIndex.getter();
        v84 = *v94;
        v84(v51, v52);
        v53 = dispatch thunk of static Comparable.> infix(_:_:)();
        v54 = *v49;
        (*v49)(v50, v10);
        if (v53)
        {
          v85(v102, v48);
          dispatch thunk of BidirectionalCollection.formIndex(before:)();
          v84(v51, v52);
          v54(v104, v10);
          v38 = v51;
          v40 = v105;
          v39 = v98;
          v46 = v101;
          v26 = v82;
          v23 = v90;
          goto LABEL_5;
        }

        v38 = v51;
        v39 = v98;
        v46 = v101;
        v26 = v82;
        v23 = v90;
        v54(v104, v10);
      }

      else
      {
        (*v107)(v104, v10);
      }

      v40 = v105;
LABEL_5:
      dispatch thunk of IteratorProtocol.next()();
      if (v110(v39, 1, v23) == 1)
      {
        return (*(v81 + 8))(v112, v113);
      }

      v109(v26, v39, v23);
    }

    v59 = *(swift_getTupleTypeMetadata2() + 48);
    v60 = *v46;
    (*v46)(v40, v26, v10);
    v61 = v93;
    v60(v93, &v26[v59], v10);
    v62 = v108;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v63 = *v107;
      (*v107)(v40, v10);
      v63(v62, v10);
      v23 = v90;
      v60(v62, v61, v10);
      v38 = v106;
      v39 = v98;
      goto LABEL_5;
    }

    v64 = v91;
    v86(v91, v62, v10);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v65 = v106;
      v85 = *(v99 + 56);
      (v85)(v102);
      v66 = v88;
      v67 = v97;
      dispatch thunk of Collection.startIndex.getter();
      v68 = *v94;
      v69 = v65;
      v61 = v93;
      v70 = v67;
      v64 = v91;
      (*v94)(v69, v70);
      v71 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*v107)(v66, v10);
      if (v71)
      {
        v72 = v106;
        v85(v102, v99);
        v73 = v97;
        dispatch thunk of BidirectionalCollection.formIndex(before:)();
        v74 = v72;
        v61 = v93;
        v75 = v73;
        v64 = v91;
        v68(v74, v75);
      }
    }

    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
      {
LABEL_23:
        v76 = *v107;
        (*v107)(v64, v10);
        v76(v61, v10);
        v40 = v105;
        v76(v105, v10);
        v38 = v106;
LABEL_27:
        v39 = v98;
LABEL_28:
        v46 = v101;
        goto LABEL_5;
      }
    }

    else if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_23;
    }

    v77 = v61;
    v78 = v106;
    (*(v99 + 56))(v102);
    v79 = v97;
    dispatch thunk of Collection.formIndex(after:)();
    (*v94)(v78, v79);
    v80 = *v107;
    (*v107)(v64, v10);
    v80(v77, v10);
    v40 = v105;
    v80(v105, v10);
    v38 = v78;
    goto LABEL_27;
  }

  return (*(v81 + 8))(v112, v113);
}

Swift::Int __swiftcall ShadowRowCollection.index(before:)(Swift::Int before)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  if (v3 == before)
  {
    dispatch thunk of Collection.startIndex.getter();
  }

  else
  {
    dispatch thunk of BidirectionalCollection.index(before:)();
  }

  return v3;
}

uint64_t ShadowRowCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v25 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v25 - v12;
  v15 = *(v14 + 48);
  v16 = *(a2 + 40);
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v18 = ShadowListUpdateRecorder.initialIndex(_:)(v13, v3 + v16, a1, updated);
  *&v13[v15] = v18;
  v19 = v25;
  (*(v6 + 80))(v13, v7, v6);
  v29 = v18;
  swift_getAssociatedConformanceWitness();
  v20 = dispatch thunk of Collection.subscript.read();
  v22 = v21;
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 16))(v27, v22, v23);
  v20(v28, 0);
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  return (*(v11 + 8))(v13, TupleTypeMetadata2);
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance ShadowRowCollection<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ShadowRowCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.formIndex(before:) in conformance ShadowRowCollection<A>(Swift::Int *a1)
{
  result = ShadowRowCollection.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ShadowRowCollection<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ShadowRowCollection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance ShadowRowCollection<A>;
}

uint64_t (*ShadowRowCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ShadowRowCollection.subscript.getter(a2, a3, v8);
  return ShadowRowCollection.subscript.read;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance ShadowRowCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance ShadowRowCollection<A>()
{
  swift_getWitnessTable();

  JUMPOUT(0x18D00C6C0);
}

Swift::Int protocol witness for Collection.index(after:) in conformance ShadowRowCollection<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ShadowRowCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ShadowRowCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(type metadata accessor for IndexingIterator() + 36);
  v7 = ShadowRowCollection.startIndex.getter();
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ShadowRowCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ShadowRowCollection<A>(uint64_t a1)
{
  return protocol witness for Sequence._copyToContiguousArray() in conformance ShadowRowCollection<A>(a1);
}

{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t ShadowSectionCollection.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v21 = a3;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v18 = v3;
  v14 = *(v3 + 56);
  v14(v4, v3, v11);
  dispatch thunk of Collection.startIndex.getter();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v16 = v5;
  swift_getAssociatedConformanceWitness();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v20 + 8))(v8, AssociatedTypeWitness);
  (v14)(v4, v18);
  if (v5)
  {
    dispatch thunk of Collection.startIndex.getter();
  }

  else
  {
    dispatch thunk of BidirectionalCollection.index(before:)();
  }

  return (v19)(v13, v9);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance ShadowSectionCollection<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance ShadowSectionCollection<A>()
{
  swift_getWitnessTable();

  JUMPOUT(0x18D00C6C0);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ShadowSectionCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  type metadata accessor for IndexingIterator();
  ShadowSectionCollection.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ShadowSectionCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t *initializeBufferWithCopyOfBuffer for ShadowRowCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v24 = *(v4 + 64);
  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v5 = *(v23 + 80);
  v6 = *(v23 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + 7;
  v11 = v9 | *(v4 + 80) & 0xF8 | v5;
  if (v11 > 7 || ((*(v8 + 80) | v5 | *(v4 + 80)) & 0x100000) != 0 || ((v10 + ((v6 + ((v25 + v5) & ~v5) + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = (v14 + (((v11 | 7) + 16) & ~(v11 | 7)));
  }

  else
  {
    v22 = v7;
    (*(v4 + 16))(a1, a2, v3);
    v15 = a1;
    v16 = ((a1 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = (a1 + (v25 | v5)) & ~v5;
    v19 = (a2 + (v25 | v5)) & ~v5;
    v20 = *(v23 + 16);

    v20(v18, v19, AssociatedTypeWitness);
    (*(v8 + 16))((v18 + v6 + v9) & ~v9, (v19 + v6 + v9) & ~v9, v22);
    *((v10 + ((v18 + v6 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) = *((v10 + ((v19 + v6 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  }

  return v15;
}

uint64_t initializeWithCopy for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 16);
  v13 = v11 + 16;
  v14 = *(v11 + 80);
  v15 = v9 + v14 + 8;
  v16 = (v15 + a1) & ~v14;
  v17 = (v15 + a2) & ~v14;

  v12(v16, v17, AssociatedTypeWitness);
  v18 = *(v13 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = v20 + 16;
  v22 = *(v20 + 80);
  v23 = (v18 + v22 + v16) & ~v22;
  v24 = (v18 + v22 + v17) & ~v22;
  (*(v20 + 16))(v23, v24, v19);
  *((*(v21 + 48) + 7 + v23) & 0xFFFFFFFFFFFFFFF8) = *((*(v21 + 48) + 7 + v24) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, AssociatedTypeWitness);
  v16 = *(v11 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = v18 + 24;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + v14) & ~v20;
  v22 = (v16 + v20 + v15) & ~v20;
  (*(v18 + 24))(v21, v22, v17);
  *((*(v19 + 40) + 7 + v21) & 0xFFFFFFFFFFFFFFF8) = *((*(v19 + 40) + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v9 + v13 + 8;
  v15 = (v14 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  (*(v11 + 32))(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = v19 + 32;
  v21 = *(v19 + 80);
  v22 = (v17 + v21 + v15) & ~v21;
  v23 = (v17 + v21 + v16) & ~v21;
  (*(v19 + 32))(v22, v23, v18);
  *((*(v20 + 32) + 7 + v22) & 0xFFFFFFFFFFFFFFF8) = *((*(v20 + 32) + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, AssociatedTypeWitness);
  v16 = *(v11 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + v14) & ~v20;
  v22 = (v16 + v20 + v15) & ~v20;
  (*(v18 + 40))(v21, v22, v17);
  *((*(v19 + 24) + 7 + v21) & 0xFFFFFFFFFFFFFFF8) = *((*(v19 + 24) + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowRowCollection(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v33 = *(v4 + 84);
  if (v33 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v32 = *(v6 + 84);
  if (v32 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v4 + 64);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  if (*(v9 + 84) <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v15 = *(v6 + 64) + v12;
  if (v13 >= a2)
  {
    goto LABEL_33;
  }

  v16 = ((*(*(v8 - 8) + 64) + ((v15 + (v14 & ~v11)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
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

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v5 == v13)
  {
    if (v33 < 0x7FFFFFFF)
    {
      v28 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }

    else
    {
      v25 = *(v4 + 48);

      return v25(a1);
    }
  }

  else
  {
    v26 = (a1 + v14) & ~v11;
    if (v32 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v32, AssociatedTypeWitness);
    }

    else
    {
      v29 = *(v9 + 48);
      v30 = (v15 + v26) & ~v12;

      return v29(v30);
    }
  }
}

void storeEnumTagSinglePayload for ShadowRowCollection(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v27 = v4;
  v29 = *(v4 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v28 = *(v6 + 84);
  if (v28 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v4 + 64);
  if (*(v8 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v6 + 80);
  v13 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = ((*(v8 + 64) + ((v15 + (v13 & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((*(v8 + 64) + ((v15 + (v13 & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v11 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (a2 > v11)
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v11;
    }

    if (v16)
    {
      v21 = ~v11 + a2;
      bzero(a1, v16);
      *a1 = v21;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + v16) = v20;
      }

      else
      {
        *(a1 + v16) = v20;
      }
    }

    else if (v19)
    {
      *(a1 + v16) = v20;
    }

    return;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v19 == 2)
  {
    *(a1 + v16) = 0;
    goto LABEL_40;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v5 == v11)
  {
    if (v29 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = a2 - 1;
      }

      *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = v24;
      return;
    }

    v22 = *(v27 + 56);
    v23 = a1;
    goto LABEL_46;
  }

  v23 = ((a1 + v13) & ~v12);
  if (v28 == v11)
  {
    v22 = *(v6 + 56);
LABEL_46:

    v22(v23);
    return;
  }

  v25 = *(v9 + 56);
  v26 = (v23 + v15) & ~v14;

  v25(v26);
}

uint64_t *initializeBufferWithCopyOfBuffer for ShadowSectionCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowSectionCollection(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for ShadowSectionCollection(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

uint64_t assignWithCopy for HostingControllerOverrides(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 2)
  {
    if (v4 == 2)
    {
      outlined destroy of PushTarget(a1);
      v6 = *(a2 + 9);
      *a1 = *a2;
      *(a1 + 9) = v6;
      goto LABEL_9;
    }

    swift_unknownObjectWeakCopyAssign();
LABEL_8:
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = v7;
    goto LABEL_9;
  }

  if (v4 != 2)
  {
    swift_unknownObjectWeakCopyInit();
    goto LABEL_8;
  }

  v5 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v5;
LABEL_9:
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for HostingControllerOverrides(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HostingControllerOverrides(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5()
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5()
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5()
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

unint64_t lazy protocol witness table accessor for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors()
{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HostingControllerBridges and conformance HostingControllerBridges()
{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UpdateBridgesToAllowedBehaviors(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = v4;
  v6 = *(a2 + 48);
  v25 = *(a2 + 64);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  v18 = v23;
  v19 = v6;
  v20 = *(a2 + 64);
  v26 = *(a2 + 80);
  v21 = *(a2 + 80);
  v16 = v22[0];
  v17 = v5;
  outlined init with copy of _ViewInputs(v22, v31);
  _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5();
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v20;
  v28 = v21;
  v27[0] = v16;
  v27[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v8, &v10);
  v29[2] = v12;
  v29[3] = v13;
  v29[4] = v14;
  v30 = v15;
  v29[0] = v10;
  v29[1] = v11;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v32 = v21;
  v31[0] = v16;
  v31[1] = v17;
  return outlined destroy of _ViewInputs(v31);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateBridgesToAllowedBehaviors(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5 = _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5();
  a3(Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5, v6);
  return outlined destroy of _ViewListInputs(v6);
}

unint64_t HostingControllerOverrides.debugDescription.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    v2[2] = v4 + 1;
    v5 = &v2[4 * v4];
    v5[4] = 7758190;
    v5[5] = 0xE300000000000000;
    v5[6] = 0;
    v5[7] = 0xE000000000000000;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    _print_unlocked<A, B>(_:_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    }

    v9 = v2[2];
    v8 = v2[3];
    if (v9 >= v8 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v2);
    }

    v2[2] = v9 + 1;
    v10 = &v2[4 * v9];
    v10[4] = 0x74696C7073;
    v10[5] = 0xE500000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(32);

  type metadata accessor for (String, String)();
  v12 = MEMORY[0x18D00CC60](v2, v11);
  MEMORY[0x18D00C9B0](v12);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);

  return 0xD00000000000001DLL;
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (PushTarget?, PushTarget?)()
{
  if (!lazy cache variable for type metadata for (PushTarget?, PushTarget?))
  {
    type metadata accessor for PushTarget?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PushTarget?, PushTarget?));
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>);
  }

  return result;
}

void type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>);
  }

  return result;
}

void LinearGaugeStyle.init(tint:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double ComplicationLinearGaugeStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  v18 = v6;

  AccessoryLinearGauge.init(configuration:gradient:)(&v15, v7, v19);
  v8 = v19[11];
  a2[10] = v19[10];
  a2[11] = v8;
  a2[12] = v20[0];
  *(a2 + 201) = *(v20 + 9);
  v9 = v19[7];
  a2[6] = v19[6];
  a2[7] = v9;
  v10 = v19[9];
  a2[8] = v19[8];
  a2[9] = v10;
  v11 = v19[3];
  a2[2] = v19[2];
  a2[3] = v11;
  v12 = v19[5];
  a2[4] = v19[4];
  a2[5] = v12;
  result = *v19;
  v14 = v19[1];
  *a2 = v19[0];
  a2[1] = v14;
  return result;
}

double protocol witness for GaugeStyle.makeBody(configuration:) in conformance ComplicationLinearGaugeStyle@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  v18 = v6;

  AccessoryLinearGauge.init(configuration:gradient:)(&v15, v7, v19);
  v8 = v19[11];
  a2[10] = v19[10];
  a2[11] = v8;
  a2[12] = v20[0];
  *(a2 + 201) = *(v20 + 9);
  v9 = v19[7];
  a2[6] = v19[6];
  a2[7] = v9;
  v10 = v19[9];
  a2[8] = v19[8];
  a2[9] = v10;
  v11 = v19[3];
  a2[2] = v19[2];
  a2[3] = v11;
  v12 = v19[5];
  a2[4] = v19[4];
  a2[5] = v12;
  result = *v19;
  v14 = v19[1];
  *a2 = v19[0];
  a2[1] = v14;
  return result;
}

void type metadata accessor for FocusedValueModifier<Bool?>()
{
  if (!lazy cache variable for type metadata for FocusedValueModifier<Bool?>)
  {
    type metadata accessor for Bool?();
    v0 = type metadata accessor for FocusedValueModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusedValueModifier<Bool?>);
    }
  }
}

uint64_t type metadata completion function for PrintedViewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t FocusedValues.isPrintableContent.setter(uint64_t result)
{
  if (result != 2)
  {
    if ((*(v1 + 8) & 2) != 0)
    {
      if (one-time initialization token for scene == -1)
      {
LABEL_6:
        type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>();
        lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>();

        return PropertyList.subscript.setter();
      }
    }

    else if (one-time initialization token for view == -1)
    {
      goto LABEL_6;
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PrintedViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>()
{
  if (!lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>)
  {
    v0 = type metadata accessor for FocusedValuePropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>;
  if (!lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>)
  {
    type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for MultimodalNavigationStackViewHost(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for MultimodalNavigationStackViewHost(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;

  return a1;
}

_OWORD *assignWithTake for MultimodalNavigationStackViewHost(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t key path getter for EnvironmentValues.keyboardAppearance : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.keyboardAppearance : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t MultimodalNavigationStack.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  outlined init with copy of NavigationAuthority(v1 + 88, &v76);
  Strong = swift_weakLoadStrong();
  outlined destroy of NavigationAuthority(&v76);
  if (!Strong || (swift_beginAccess(), v6 = Strong[8], v75[6] = Strong[7], v75[7] = v6, v75[8] = Strong[9], *(&v75[8] + 10) = *(Strong + 154), v7 = Strong[4], v75[2] = Strong[3], v75[3] = v7, v8 = Strong[6], v75[4] = Strong[5], v75[5] = v8, v9 = Strong[2], v75[0] = Strong[1], v75[1] = v9, outlined init with copy of EquatableNavigationTitle?(v75, v85, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , *&v80[96] = v75[6], *&v80[112] = v75[7], *&v80[128] = v75[8], *&v80[138] = *(&v75[8] + 10), *&v80[32] = v75[2], *&v80[48] = v75[3], *&v80[64] = v75[4], *&v80[80] = v75[5], *v80 = v75[0], *&v80[16] = v75[1], getEnumTag for AccessibilityActionCategory.Category(v80) == 1))
  {
    memset(v85, 0, 448);
LABEL_4:
    v10 = *(v3 + 72);
    v11 = *(v3 + 80);
    if (v10 == 4)
    {
      LOBYTE(v10) = 0;
    }

    *&v89[0] = *(v3 + 64);
    BYTE8(v89[0]) = v10;
    *&v89[1] = v11;
    LOBYTE(v89[28]) = 0;
    goto LABEL_7;
  }

  v55 = *(v3 + 64);
  v56 = *(v3 + 80);
  v57 = *(v3 + 72);
  v89[6] = *&v80[96];
  v89[7] = *&v80[112];
  v89[8] = *&v80[128];
  *(&v89[8] + 10) = *&v80[138];
  v89[2] = *&v80[32];
  v89[3] = *&v80[48];
  v89[4] = *&v80[64];
  v89[5] = *&v80[80];
  v89[0] = *v80;
  v89[1] = *&v80[16];
  NavigationState.stackContent(for:)(v55, v57, v56, v85);
  _sypSgWOhTm_7(v75, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
  if (v85[448] == 255)
  {
    goto LABEL_4;
  }

  memcpy(v89, v85, 0x1C1uLL);
LABEL_7:
  v12 = NavigationState.Base.count.getter();
  outlined init with copy of NavigationState.Base(v89, v80);
  MultimodalNavigationStack.rootView.getter(v75);
  outlined init with copy of MultimodalNavigationStack(v3, v85);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  outlined init with take of MultimodalNavigationStack(v85, v13 + 24);
  outlined init with copy of NavigationState.Base(v80, v85);
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v15 = v75[4];
  v16 = v75[5];
  v17 = v75[2];
  *(v14 + 80) = v75[3];
  *(v14 + 96) = v15;
  *(v14 + 112) = v16;
  v18 = v75[0];
  v19 = v75[1];
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = v18;
  *(v14 + 128) = v75[6];
  *(v14 + 48) = v19;
  *(v14 + 64) = v17;
  v20 = outlined destroy of NavigationState.StackContent.Views(v80);
  v86 = partial apply for closure #1 in MultimodalNavigationStack.body.getter;
  v87 = v13;
  v88 = v14;
  v21 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v20);
  if (v24)
  {
LABEL_45:
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v85, type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
    v29 = MEMORY[0x1E69E7CC0];
LABEL_48:
    outlined init with copy of NavigationState.StackContent(v89, a1 + 8);
    outlined init with copy of NavigationAuthority(v3 + 88, a1 + 464);
    v58 = *(v3 + 144);
    v59 = *(v3 + 152);
    v60 = *(v3 + 160);
    v61 = *(v3 + 168);
    *v85 = *(v3 + 136);
    v85[8] = v58;
    *&v85[16] = v59;
    v85[24] = v60;
    *&v85[32] = v61;
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    outlined destroy of NavigationState.StackContent(v89);
    v62 = *v80;
    v63 = v80[8];
    v64 = *&v80[16];
    v65 = v80[24];
    *a1 = v29;
    *(a1 + 488) = v62;
    *(a1 + 496) = v63;
    *(a1 + 504) = v64;
    *(a1 + 512) = v65;
    *(a1 + 520) = swift_getKeyPath();
    *(a1 + 528) = 0;
    result = swift_getKeyPath();
    *(a1 + 536) = result;
    *(a1 + 544) = 0;
    *(a1 + 552) = 0;
    *(a1 + 560) = 0;
    *(a1 + 568) = 1;
    *(a1 + 576) = 0;
    *(a1 + 584) = 0;
    *(a1 + 592) = 0;
    *(a1 + 608) = 0;
    *(a1 + 600) = 0;
    return result;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_50:
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
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v21 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v21, v26 & 1, v22, v23);
    ++v25;
  }

  while ((v26 & 1) == 0 || v23 < 2u);
  if (!v27)
  {
    goto LABEL_45;
  }

  v71 = v3;
  v72 = 0;
  v79 = MEMORY[0x1E69E7CC0];
  v28 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  v29 = v79;
  v30 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v28);
  if (v27 < 0)
  {
    goto LABEL_57;
  }

  v34 = v30;
  v2 = v31;
  v35 = v32;
  v70 = a1;
  v36 = 0;
  v73 = v25;
  v37 = v33;
  while (1)
  {
    v38 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v30);
    if (v41)
    {
      break;
    }

    if (v2)
    {
      goto LABEL_59;
    }

    if (v34 < v38)
    {
      goto LABEL_50;
    }

    if (v38 >= v34)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          if (v40 == 1 && v35 < v39)
          {
            goto LABEL_55;
          }
        }

        else if (v40 != 2 || v39)
        {
          goto LABEL_54;
        }
      }

      else if (v40)
      {
        if (v40 != 2)
        {
          goto LABEL_60;
        }
      }

      else if (v35 < v39)
      {
        goto LABEL_56;
      }
    }

    v42 = outlined init with copy of NavigationState.Base(v85, v80);
    v74 = v37;
    if (v84)
    {
      if (v84 == 1)
      {
        v68 = v83;
        v67 = v82;
        outlined consume of ResolvedNavigationDestinations?(v81);
        memcpy(v75, v80, 0x163uLL);
        if (v34)
        {
          goto LABEL_62;
        }

        v43 = v35;
        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, 0, v35, v37, v75, 0, v77);
      }

      else
      {
        v44 = *v80;
        v90[2] = *&v80[40];
        v90[3] = *&v80[56];
        v91 = *&v80[72];
        v90[0] = *&v80[8];
        v90[1] = *&v80[24];
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (*(*v80 + 16) < v34)
        {
          goto LABEL_52;
        }

        *&v75[0] = *v80;
        MEMORY[0x1EEE9AC00](v42);
        v68 = v75;
        v69 = v90;
        v45 = v72;
        v46 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v67, 0, v34);
        v72 = v45;
        if (v34 >= *(v44 + 16))
        {
          goto LABEL_53;
        }

        v47 = v46;
        outlined init with copy of NavigationColumnState(v44 + 360 * v34 + 32, v75);

        v43 = v35;
        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(v34, 0, v35, v74, v75, v47, v77);
        _sypSgWOhTm_7(v90, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
      }

      outlined destroy of NavigationColumnState(v75);
    }

    else
    {
      v43 = v35;
      specialized NavigationState.StackContent.Views.ViewsSequence.initialRootView(for:)(*v80, v80[8], *&v80[16], v77);
    }

    *v80 = v36;
    *&v80[40] = v77[2];
    *&v80[56] = v77[3];
    *&v80[72] = v78[0];
    *&v80[81] = *(v78 + 9);
    *&v80[8] = v77[0];
    *&v80[24] = v77[1];
    outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(v80, v75, type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView));
    v48 = *(&v75[0] + 1);

    outlined destroy of NavigationState.StackContent.PositionedView(v75 + 8);
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v80, type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView));
    v79 = v29;
    v50 = *(v29 + 16);
    v49 = *(v29 + 24);
    if (v50 >= v49 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      v29 = v79;
    }

    *(v29 + 16) = v50 + 1;
    v51 = v29 + 16 * v50;
    *(v51 + 32) = v48;
    *(v51 + 40) = v36;
    v30 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v34, 0, v43, v74);
    v34 = v30;
    v2 = v52;
    v35 = v53;
    v37 = v54;
    if (v73 == ++v36)
    {
      outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v85, type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
      a1 = v70;
      v3 = v71;
      goto LABEL_48;
    }
  }

LABEL_58:
  if (v2)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
LABEL_62:
  LODWORD(v69) = 0;
  v68 = 894;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MultimodalNavigationStack.rootView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outlined init with copy of NavigationAuthority(v1 + 88, v37);
  Strong = swift_weakLoadStrong();
  outlined destroy of NavigationAuthority(v37);
  if (!Strong || (swift_beginAccess(), v5 = Strong[8], v25 = Strong[7], v6 = Strong[9], v26 = v5, v27[0] = v6, *(v27 + 10) = *(Strong + 154), v7 = Strong[4], v21 = Strong[3], v22 = v7, v8 = Strong[6], v23 = Strong[5], v24 = v8, v9 = Strong[2], v19 = Strong[1], v20 = v9, outlined init with copy of EquatableNavigationTitle?(&v19, __dst, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v34 = v25, v35 = v26, v36[0] = v27[0], *(v36 + 10) = *(v27 + 10), v30 = v21, v31 = v22, v32 = v23, v33 = v24, v28 = v19, v29 = v20, getEnumTag for AccessibilityActionCategory.Category(&v28) == 1) || (v10 = *(v2 + 64), v11 = *(v2 + 80), v12 = *(v2 + 72), __dst[6] = v34, __dst[7] = v35, __dst[8] = v36[0], *(&__dst[8] + 10) = *(v36 + 10), __dst[2] = v30, __dst[3] = v31, __dst[4] = v32, __dst[5] = v33, __dst[0] = v28, __dst[1] = v29, NavigationState.stackContent(for:)(v10, v12, v11, __src), _sypSgWOhTm_7(&v19, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), __src[448] == 255))
  {
    v13 = *(v2 + 72);
    v14 = *(v2 + 80);
    if (v13 == 4)
    {
      LOBYTE(v13) = 0;
    }

    *&__dst[0] = *(v2 + 64);
    BYTE8(__dst[0]) = v13;
    *&__dst[1] = v14;
    LOBYTE(__dst[28]) = 0;
  }

  else
  {
    memcpy(__dst, __src, 0x1C1uLL);
  }

  v15 = NavigationState.Base.count.getter();
  v16 = static HorizontalAlignment.center.getter();
  outlined init with copy of _VariadicView_Children(v2, a1 + 24);
  *a1 = v16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v17 = specialized Environment.wrappedValue.getter(*(v2 + 120), *(v2 + 128));
  result = outlined destroy of NavigationState.StackContent(__dst);
  *(a1 + 88) = v17;
  *(a1 + 96) = v15 == 1;
  return result;
}

void *closure #1 in MultimodalNavigationStack.body.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *result + 1 == a2;
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    *a3 = v4;
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 40) = v9;
    *(a3 + 48) = v10;
    *(a3 + 56) = v11;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 1;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0;
    *(a3 + 121) = v7;
    *(a3 + 124) = *(&v7 + 3);
    *(a3 + 128) = 0u;
    *(a3 + 144) = 1;
    *(a3 + 152) = 0u;
    *(a3 + 168) = 1;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 1;
    *(a3 + 200) = 0;
    *(a3 + 208) = 1;
    *(a3 + 216) = 0;
    *(a3 + 224) = 0;
    *(a3 + 232) = 0;
    *(a3 + 240) = swift_getKeyPath();
    *(a3 + 248) = 0;
    *(a3 + 256) = swift_getKeyPath();
    *(a3 + 264) = 0;
    *(a3 + 272) = swift_getKeyPath();
    *(a3 + 280) = 0;
    *(a3 + 288) = 0x403E000000000000;
    static Color.black.getter();
    v6 = Color.opacity(_:)();

    *(a3 + 296) = v6;
  }

  return result;
}

void closure #1 in RootItemModifier.body(content:)(__int128 *a1, uint64_t a2, double a3)
{
  *&v24 = specialized RootItemModifier.localizedApplicationName()();
  *(&v24 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  v17 = [v14 _applicationIconImageForBundleIdentifier_format_scale_];
  if (v17)
  {
    type metadata accessor for ImageProviderBox<UIImage>();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>, lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider, MEMORY[0x1E6981670], MEMORY[0x1E697E9B8]);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 1;
    if (one-time initialization token for clarityUINavigationAppIconShadow != -1)
    {
      v23 = v19;
      swift_once();
      v19 = v23;
    }

    v20 = v11 & 1;
    *&v24 = v19;
    *(&v24 + 1) = static Color.clarityUINavigationAppIconShadow;
    v25 = xmmword_18CDF5D50;
    *&v26[0] = 0x3FF0000000000000;
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ShadowEffect>, MEMORY[0x1E6981748], MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>();

    v21 = AnyView.init<A>(_:)();
    v22 = a1[1];
    v24 = *a1;
    v25 = v22;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    *a1 = v7;
    *(a1 + 1) = v9;
    *(a1 + 2) = v20;
    *(a1 + 3) = v13;
    *(a1 + 4) = 1;
    *(a1 + 40) = 5;
    *(a1 + 6) = v21;
    *(a1 + 56) = 3;
    if (v13 != 1)
    {

      outlined consume of ListItemTint?(1);
      *(a1 + 4) = a2;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RootItemModifier@<X0>(void (**a1)(__int128 *a1, uint64_t a2)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a1 = partial apply for closure #1 in RootItemModifier.body(content:);
  a1[1] = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BarTransitionProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t StackItemModifier.body(content:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v21 = v2;
  memcpy(__dst, v1, sizeof(__dst));
  v3 = BYTE8(__dst[0]);
  v20 = specialized Environment.wrappedValue.getter(*&__dst[17], SBYTE8(__dst[17]));
  closure #1 in StackItemModifier.body(content:)(__dst, __src);
  memcpy(v30, __src, 0x161uLL);
  memcpy(v31, __src, 0x161uLL);
  outlined init with copy of TaskPriority?(v30, v27, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  outlined destroy of TaskPriority?(v31, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  memcpy(&v25[6], v30, 0x161uLL);
  if (one-time initialization token for clarityUIContentBackground != -1)
  {
    swift_once();
  }

  v19 = Color.opacity(_:)();
  v18 = static Edge.Set.all.getter();
  v4 = *&__dst[0];
  if (*&__dst[0])
  {
    v5 = static AnyTransition.move(edge:)();
  }

  else
  {
    v5 = static AnyTransition.identity.getter();
  }

  v17 = v5;
  AccessibilityProperties.init()();
  if (v3)
  {
    *&v27[7] = 0x400000000;
  }

  else
  {
    *&v27[7] = 0x400000004;
  }

  BYTE8(v27[7]) = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v27);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), __src, 0x128uLL);
  memcpy(v26, v25, sizeof(v26));
  v6 = swift_allocObject();
  memcpy((v6 + 16), __dst, 0x130uLL);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __dst, 0x130uLL);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __dst, 0x130uLL);
  KeyPath = swift_getKeyPath();
  v27[0] = __dst[14];
  outlined init with copy of StackItemModifier(__dst, __src);
  outlined init with copy of StackItemModifier(__dst, __src);
  outlined init with copy of StackItemModifier(__dst, __src);
  v10 = MEMORY[0x1E6981790];
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (LOBYTE(__src[0]))
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(__src[0]) = v3;
  BYTE1(__src[0]) = v20 & 1;
  memcpy(__src + 2, v26, 0x167uLL);
  __src[46] = v19;
  LOBYTE(__src[47]) = v18;
  __src[48] = v17;
  *&__src[49] = v4;
  LOBYTE(__src[50]) = v3;
  __src[51] = v16;
  __src[52] = 0;
  __src[53] = partial apply for closure #2 in StackItemModifier.body(content:);
  __src[54] = v6;
  __src[55] = partial apply for closure #3 in StackItemModifier.body(content:);
  __src[56] = v7;
  __src[57] = partial apply for closure #4 in StackItemModifier.body(content:);
  __src[58] = v8;
  __src[59] = KeyPath;
  __src[60] = v11;
  v27[0] = *(&__dst[11] + 8);
  v27[1] = *(&__dst[12] + 8);
  *&v27[2] = *(&__dst[13] + 1);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, v10);
  State.wrappedValue.getter();
  v12 = swift_allocObject();
  memcpy((v12 + 16), __dst, 0x130uLL);
  outlined init with copy of StackItemModifier(__dst, v27);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Preference();
  lazy protocol witness table accessor for type BarTransitionProgress and conformance BarTransitionProgress();
  View.onChange<A>(of:initial:_:)();

  memcpy(v23, __src, sizeof(v23));
  outlined destroy of TaskPriority?(v23, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  memcpy(v22, v27, sizeof(v22));
  v13 = swift_allocObject();
  memcpy((v13 + 16), __dst, 0x130uLL);
  outlined init with copy of StackItemModifier(__dst, __src);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigati,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKe);
  View.onChange<A>(of:initial:_:)();

  memcpy(v24, v22, sizeof(v24));
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v24, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __dst, 0x130uLL);
  memcpy(v21, __src, 0x270uLL);
  *(v21 + 78) = partial apply for closure #6 in StackItemModifier.body(content:);
  *(v21 + 79) = v14;
  *(v21 + 40) = 0u;
  return outlined init with copy of StackItemModifier(__dst, v22);
}

__n128 closure #1 in StackItemModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x130uLL);
  KeyPath = swift_getKeyPath();
  v6 = *(a1 + 296);
  v7 = *(a1 + 288);
  outlined init with copy of StackItemModifier(a1, &v38);

  v8 = static Alignment.center.getter();
  LOBYTE(v66) = 0;
  *&v49 = KeyPath;
  BYTE8(v49) = 0;
  *&v50 = v6;
  *(&v50 + 1) = v7;
  v52 = 0;
  v51 = 0;
  *&v53 = v8;
  *(&v53 + 1) = v9;
  v62 = v49;
  v63 = v50;
  v64 = 0u;
  v65 = v53;
  v54 = KeyPath;
  v55 = 0;
  v56 = v6;
  v57 = v7;
  v59 = 0;
  v58 = 0;
  v60 = v8;
  v61 = v9;
  outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(&v49, &v38, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(&v54, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
  v10 = *(a1 + 200);
  v66 = *(a1 + 184);
  v67 = v10;
  *&v68 = *(a1 + 216);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v25 = v38;
  v24 = v39;
  v11 = BYTE8(v39);
  v12 = v40;
  LOBYTE(v6) = BYTE8(v40);
  v75[0] = BYTE8(v39);
  v26[0] = BYTE8(v40);
  v13 = static HorizontalAlignment.center.getter();
  closure #3 in closure #1 in StackItemModifier.body(content:)(a1, v35);
  v70 = v35[4];
  v71 = v36;
  v66 = v35[0];
  v67 = v35[1];
  v68 = v35[2];
  v69 = v35[3];
  v72 = v37;
  v73 = xmmword_18CD6A6D0;
  LOWORD(v74) = 0;
  *(&v74 + 1) = v13;
  *&v48[119] = xmmword_18CD6A6D0;
  *&v48[135] = v74;
  *&v48[55] = v35[3];
  *&v48[87] = v36;
  *&v48[103] = v37;
  *&v48[23] = v35[1];
  *&v48[39] = v35[2];
  *&v48[71] = v35[4];
  *&v48[7] = v35[0];
  v42 = v35[4];
  v43 = v36;
  LOBYTE(v27) = 0;
  v38 = v35[0];
  v39 = v35[1];
  v40 = v35[2];
  v41 = v35[3];
  v44 = v37;
  v45 = xmmword_18CD6A6D0;
  v46 = 0;
  v47 = v13;
  outlined init with copy of _InsetViewModifier<MultimodalNavigationTitleBar>(&v66, &v30);
  outlined destroy of _InsetViewModifier<MultimodalNavigationTitleBar>(&v38);
  v14 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v14;
  v34 = *(a1 + 128);
  v15 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v15;
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<EquatableNavigationTitle?>, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  *(v35 + 8) = v27;
  *(&v35[1] + 8) = v28;
  *(&v35[2] + 8) = v29[0];
  *(&v35[3] + 1) = *(v29 + 9);
  *v75 = 0;
  *&v75[8] = v27;
  *&v75[24] = v28;
  *&v75[40] = v29[0];
  *&v75[49] = *(v29 + 9);
  LOBYTE(v34) = BYTE8(v29[1]);
  v32 = *&v75[32];
  v33 = *&v75[48];
  v30 = *v75;
  v31 = *&v75[16];
  *&v35[0] = 0;
  outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(v75, v26, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v35, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
  *a2 = partial apply for closure #1 in closure #1 in StackItemModifier.body(content:);
  *(a2 + 8) = 0;
  *(a2 + 16) = partial apply for closure #2 in closure #1 in StackItemModifier.body(content:);
  *(a2 + 24) = v4;
  v16 = v63;
  *(a2 + 32) = v62;
  *(a2 + 48) = v16;
  v17 = v65;
  *(a2 + 64) = v64;
  *(a2 + 80) = v17;
  *(a2 + 96) = v25;
  *(a2 + 112) = v24;
  *(a2 + 120) = v11;
  *(a2 + 128) = v12;
  *(a2 + 136) = v6;
  v18 = *&v48[112];
  *(a2 + 233) = *&v48[96];
  *(a2 + 249) = v18;
  *(a2 + 265) = *&v48[128];
  *(a2 + 280) = *&v48[143];
  v19 = *&v48[48];
  *(a2 + 169) = *&v48[32];
  *(a2 + 185) = v19;
  v20 = *&v48[80];
  *(a2 + 201) = *&v48[64];
  *(a2 + 217) = v20;
  v21 = *&v48[16];
  *(a2 + 137) = *v48;
  *(a2 + 153) = v21;
  v22 = v33;
  *(a2 + 320) = v32;
  *(a2 + 336) = v22;
  *(a2 + 352) = v34;
  result = v31;
  *(a2 + 288) = v30;
  *(a2 + 304) = result;
  return result;
}

uint64_t closure #1 in closure #1 in StackItemModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  GeometryProxy.safeAreaInsets.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = static Edge.Set.all.getter();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = result;
  return result;
}

uint64_t closure #2 in closure #1 in StackItemModifier.body(content:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  if (v2 == 1)
  {
    v3 = *(a2 + 128);
    v15 = 0uLL;
    *&v16 = 0;
    *(&v16 + 1) = 1;
    memset(v17, 0, 25);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *a1;
    v4 = *(a1 + 2);
    v17[0] = a1[2];
    *(v17 + 9) = *(a1 + 41);
    v5 = *(a2 + 128);
    *&v16 = v4;
    *(&v16 + 1) = v2;
    if (!v5)
    {
      v9 = v15;
      v10 = v16;
      v11[0] = v17[0];
      *(v11 + 9) = *(v17 + 9);
      v12 = *a1;
      *&v13 = *(a1 + 2);
      *(&v13 + 1) = v2;
      v14[0] = a1[2];
      *(v14 + 9) = *(a1 + 41);
      outlined init with copy of NavigationTitleStorage(&v12, &v8);
      v6 = &v9;
      return _sypSgWOhTm_7(v6, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    }

    v9 = *a1;
    *&v10 = *(a1 + 2);
    *(&v10 + 1) = v2;
    v11[0] = a1[2];
    *(v11 + 9) = *(a1 + 41);
    outlined init with copy of NavigationTitleStorage(&v9, &v12);
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
LABEL_7:
  v12 = v15;
  v13 = v16;
  v14[0] = v17[0];
  *(v14 + 9) = *(v17 + 9);
  v6 = &v12;
  return _sypSgWOhTm_7(v6, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
}

__n128 closure #3 in closure #1 in StackItemModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  *v26 = *(a1 + 96);
  *&v26[16] = v4;
  v27 = *(a1 + 128);
  v5 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v5;
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<EquatableNavigationTitle?>, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (*(&v29 + 1) == 1)
  {
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[9] = *(v30 + 9);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    v19 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v17 = 0u;
    v18 = xmmword_18CD633F0;
  }

  else
  {
    v21 = v28;
    v22 = v29;
    *v23 = v30[0];
    *&v23[9] = *(v30 + 9);
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[9] = *(v30 + 9);
    outlined init with copy of NavigationTitleStorage(&v21, v20);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    v17 = v21;
    v18 = v22;
    v6 = *&v23[8];
    v19 = *v23;
    v7 = *&v23[16];
    v8 = v23[24];
  }

  v24 = *(a1 + 136);
  *&v25 = *(a1 + 152);
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<CGFloat?>, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v9 = v21.n128_u64[0];
  v10 = v21.n128_u8[8];
  v24 = *(a1 + 160);
  *&v25 = *(a1 + 176);
  State.wrappedValue.getter();
  v11 = v21.n128_u64[0];
  v12 = v21.n128_u8[8];
  v13 = *(a1 + 200);
  v24 = *(a1 + 184);
  v25 = v13;
  *v26 = *(a1 + 216);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v14 = v21.n128_u64[0];
  v15 = v21.n128_u8[8];
  result = v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  return result;
}

void closure #5 in StackItemModifier.body(content:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 200);
    v7[0] = *(a1 + 184);
    v7[1] = v2;
    *&v7[2] = *(a1 + 216);
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    outlined init with copy of StackItemModifier(a1, v7);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of StackItemModifier(a1);
    specialized Environment.wrappedValue.getter(*(a1 + 256), *(a1 + 264), v7);
    if (LOBYTE(v7[0]) == 1)
    {
      v3 = specialized Environment.wrappedValue.getter(*(a1 + 240), *(a1 + 248));
      if (v3)
      {
        v4 = v3;
        v5 = [v3 scene];

        if (v5)
        {
          v6 = [v5 _FBSScene];

          if (v6)
          {
            memcpy(v7, a1, sizeof(v7));
            StackItemModifier.updateScene(_:)(v6);
          }
        }
      }
    }
  }
}

void StackItemModifier.updateScene(_:)(void *a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v19 = [a1 clientSettings];
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v19 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    goto LABEL_8;
  }

  aBlock = v3;
  LOBYTE(v21) = v4;
  v22 = v5;
  LOBYTE(v23) = v6;
  v24 = v7;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  ObjectType = swift_getObjectType();
  v11 = COERCE_DOUBLE((*(v8 + 24))(ObjectType, v8));
  if ((v12 & 1) == 0)
  {
    if ((v27 & 1) != 0 || v11 != v26)
    {
      goto LABEL_15;
    }

LABEL_8:

    return;
  }

  if (v27)
  {
    goto LABEL_8;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](*&v11);
  *&v17[2] = v26;
  v18 = v27;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in StackItemModifier.updateScene(_:);
  *(v13 + 24) = v17;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in FBSScene.updateClarityUIClientSettings(_:);
  *(v14 + 24) = v13;
  v24 = partial apply for thunk for @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
  v23 = &block_descriptor_81;
  v15 = _Block_copy(&aBlock);

  [a1 updateClientSettingsWithBlock_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

__n128 static OnScrollStateChange._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v41 = a2[2];
  v42 = v6;
  v8 = a2[3];
  v43 = a2[4];
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v35 = v41;
  v36 = v8;
  v37 = a2[4];
  v10 = *a1;
  v44 = *(a2 + 20);
  v38 = *(a2 + 20);
  v33 = v39;
  v34 = v7;
  outlined init with copy of _ViewInputs(&v39, v47);
  PreferenceKeys.add(_:)();
  v45[2] = v35;
  v45[3] = v36;
  v45[4] = v37;
  v46 = v38;
  v45[0] = v33;
  v45[1] = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  v11 = outlined init with copy of _ViewInputs(v45, v47);
  a3(v26, v11, &v27);
  v47[2] = v29;
  v47[3] = v30;
  v47[4] = v31;
  v48 = v32;
  v47[0] = v27;
  v47[1] = v28;
  outlined destroy of _ViewInputs(v47);
  v13.n128_u64[0] = *(&v26[0] + 1);
  v12 = *&v26[0];
  *&v27 = *&v26[0];
  v25 = v13;
  DWORD2(v27) = DWORD2(v26[0]);
  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) == 0)
  {
    v15 = v14;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v27 = v39;
    v28 = v40;
    v16 = _ViewInputs.position.getter();
    v17 = HIDWORD(v42);
    v23 = DWORD2(v40);
    v24 = DWORD2(v43);
    v26[0] = v39;
    v26[1] = v40;
    v26[2] = v41;
    v18 = _GraphInputs.pixelLength.getter();
    type metadata accessor for GraphHost();
    v19 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v20 = a4;
    v21 = *(v19 + 64);

    *&v27 = __PAIR64__(v15, v10);
    *(&v27 + 1) = __PAIR64__(v24, v16);
    *&v28 = __PAIR64__(v23, v17);
    *(&v28 + 1) = __PAIR64__(v21, v18);
    a4 = v20;
    *&v29 = 0xFFFFFFFFLL;
    BYTE8(v29) = 0;
    HIDWORD(v29) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollStateActionBinding and conformance ScrollStateActionBinding();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  outlined destroy of _ViewInputs(&v27);
  *a4 = v12;
  result = v25;
  a4[1] = v25.n128_u64[0];
  return result;
}

uint64_t *ScrollStateActionBinding.updateValue()()
{
  if (*(v0 + 44) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    *(v0 + 32) = 0xFFFFFFFFLL;
    *(v0 + 40) = 0;
  }

  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (v2)
  {
    v3 = *result;

    AGGraphClearUpdate();
    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v5 = *Value;
    v6 = Value[1];
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v7 = AGGraphGetValue();
    v30 = v7[1];
    v31 = *v7;
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v8 = AGGraphGetValue();
    v9 = *v8;
    v10 = *(v8 + 8);

    v28 = *(v8 + 32);
    v29 = *(v8 + 16);
    v11 = AGGraphSetUpdate();
    LODWORD(v8) = *v0;
    v12 = *(v0 + 20);
    *(v56 + 4) = *(v0 + 4);
    *(&v56[1] + 4) = v12;
    v56[2] = *(v0 + 32);
    LODWORD(v56[0]) = v8;
    *v33 = v31;
    *&v33[16] = v30;
    v13 = MEMORY[0x18D00B390](v11);
    *&v49 = v9;
    *(&v49 + 1) = v10;
    v50 = v29;
    v51 = v28;
    ScrollStateActionBinding.findBestStates(in:position:size:transform:)(v3, &v49, &v34, v5, v6, v13, v14);

    v53 = v38;
    v54 = v39;
    v55[0] = v40[0];
    *(v55 + 13) = *(v40 + 13);
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v49) == 1 && (v56[4] = v45, v56[5] = v46, v57[0] = v47[0], *(v57 + 13) = *(v47 + 13), v56[0] = v41, v56[1] = v42, v56[2] = v43, v56[3] = v44, _s7SwiftUI19ScrollGeometryStateVSgWOg(v56) == 1) || (UpdateCycleDetector.dispatch(label:isDebug:)() & 1) == 0)
    {
    }

    else
    {
      AGGraphClearUpdate();
      v15 = AGGraphGetValue();
      v17 = *v15;
      v16 = *(v15 + 8);
      *v33 = *(v15 + 16);
      *&v33[9] = *(v15 + 25);
      v48 = v17;
      outlined init with copy of Transaction(&v48, v32);

      AGGraphSetUpdate();
      v18 = swift_allocObject();
      v19 = v47[0];
      *(v18 + 272) = v46;
      *(v18 + 288) = v19;
      *(v18 + 301) = *(v47 + 13);
      *(v18 + 32) = *v33;
      *(v18 + 41) = *&v33[9];
      v20 = v45;
      *(v18 + 240) = v44;
      *(v18 + 256) = v20;
      v21 = v42;
      v22 = v43;
      v23 = v40[1];
      *(v18 + 192) = v41;
      *(v18 + 208) = v21;
      *(v18 + 224) = v22;
      v24 = v39;
      v25 = v40[0];
      *(v18 + 128) = v38;
      *(v18 + 144) = v24;
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      *(v18 + 160) = v25;
      *(v18 + 176) = v23;
      v26 = v35;
      *(v18 + 64) = v34;
      *(v18 + 80) = v26;
      v27 = v37;
      *(v18 + 96) = v36;
      *(v18 + 112) = v27;
      outlined init with copy of Transaction(&v48, v32);

      static Update.enqueueAction(reason:_:)();
      outlined destroy of Transaction(&v48);
    }
  }

  return result;
}

double ScrollStateActionBinding.findBestStates(in:position:size:transform:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>, unint64_t a4@<D0>, unint64_t a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v70 = a2[1];
  v71 = *a2;
  v68 = *(a2 + 1);
  v69 = *(a2 + 2);
  _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v119);
  v109 = v123;
  v110 = v124;
  *v111 = v125[0];
  *&v111[13] = *(v125 + 13);
  v105 = v119;
  v106 = v120;
  v107 = v121;
  v108 = v122;
  v112 = v119;
  v113 = v120;
  v114 = v121;
  v115 = v122;
  v116 = v123;
  v117 = v124;
  v118[0] = v125[0];
  *(v118 + 13) = *(v125 + 13);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + (v12 << 7) + 17;
    v14 = v12 - 1;
    v15 = 0.5;
    v16 = 1.0;
    while (1)
    {
      v17 = *(v13 - 65);
      v18 = *(v13 - 33);
      v102 = *(v13 - 49);
      v103 = v18;
      v104 = *(v13 - 17);
      v19 = *(v13 - 97);
      v98 = *(v13 - 113);
      v99 = v19;
      v100 = *(v13 - 81);
      v101 = v17;
      v20 = *(v13 - 1);
      v21 = *v13;
      *(v97 + 7) = *(v13 + 7);
      v97[0] = v21;
      if ((v20 & 2) == 0)
      {
        goto LABEL_34;
      }

      v22 = *(v13 - 33);
      v89 = *(v13 - 49);
      v90 = v22;
      *v91 = *(v13 - 17);
      v23 = *(v13 - 97);
      v85 = *(v13 - 113);
      v86 = v23;
      v24 = *(v13 - 65);
      v87 = *(v13 - 81);
      v88 = v24;
      v91[16] = v20;
      *&v91[24] = *(v13 + 7);
      *&v91[17] = *v13;
      ScrollGeometryState.transform.getter();
      v25 = v78;
      if (v78 == 1)
      {
        goto LABEL_34;
      }

      v26 = *(&v78 + 1);
      v27 = v79;
      v28 = v80;
      rect.origin.y = 0.0;
      rect.origin.x = 0.0;
      rect.size.width = a6;
      rect.size.height = a7;
      *&v93 = v71;
      *(&v93 + 1) = v70;
      v94 = v68;
      v95 = v69;

      ViewTransform.appendPosition(_:)(__PAIR128__(a5, a4));
      *&v80 = 0;
      v78 = 0u;
      v79 = 0u;
      BYTE8(v80) = 2;
      v85 = v93;
      v86 = v94;
      v87 = v95;

      CGRect.convert(to:transform:)();

      outlined destroy of CoordinateSpace(&v78);
      v89 = v102;
      v90 = v103;
      *v91 = v104;
      v85 = v98;
      v86 = v99;
      v87 = v100;
      v88 = v101;
      ScrollGeometry.bounds.getter();
      v92.origin.x = 0.0;
      v92.origin.y = 0.0;
      v92.size.width = v29;
      v92.size.height = v30;
      *&v80 = 0;
      v78 = 0u;
      v79 = 0u;
      BYTE8(v80) = 2;
      *&v85 = v25;
      *(&v85 + 1) = v26;
      v86 = v27;
      v87 = v28;
      CGRect.convert(to:transform:)();
      outlined destroy of CoordinateSpace(&v78);
      v75 = *AGGraphGetValue();
      v126 = CGRectStandardize(rect);
      width = v126.size.width;
      v34.f64[0] = *&v75 * v15 + v126.origin.y;
      x = v126.origin.x;
      *&v126.origin.y = vaddq_f64(*&v126.origin.y, *&v126.size.height);
      v126.size.height = *&v75 * v15 + v126.origin.x;
      v33 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v75 * v15), 0), *&v126.origin.y);
      v34.f64[1] = v126.size.height;
      if (*&v75 == v16)
      {
        v77 = vrndmq_f64(v34);
        v35 = vrndaq_f64(vsubq_f64(vrndmq_f64(v33), v77));
      }

      else
      {
        v36 = vdupq_lane_s64(v75, 0);
        v77 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v34, v36)), *&v75);
        v35 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v33, v36)), *&v75), v77), v36)), *&v75);
      }

      v76 = v35;
      v73 = *AGGraphGetValue();
      v127 = CGRectStandardize(v92);
      v37 = v127.size.width;
      v40.f64[0] = *&v73 * v15 + v127.origin.y;
      v38 = v127.origin.x;
      *&v127.origin.y = vaddq_f64(*&v127.origin.y, *&v127.size.height);
      v127.size.height = *&v73 * v15 + v127.origin.x;
      v39 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v73 * v15), 0), *&v127.origin.y);
      v40.f64[1] = v127.size.height;
      if (*&v73 == v16)
      {
        v41 = vrndmq_f64(v40);
        v42 = vrndaq_f64(vsubq_f64(vrndmq_f64(v39), v41));
      }

      else
      {
        v43 = vdupq_lane_s64(v73, 0);
        v41 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v40, v43)), *&v73);
        v42 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v39, v43)), *&v73), v41), v43)), *&v73);
      }

      v72 = v42;
      v74 = v41;
      v42.i64[1] = *&v77.f64[1];
      if ((*&v77.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v41.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v42.i64[0] = *&v41.f64[0];
        if (specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v42, 0.0000000149011612, v77.f64[0], v41))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v44 = fabs(v77.f64[0]);
        v45 = fabs(v41.f64[0]);
        if (v44 <= v45)
        {
          v44 = v45;
        }

        if (v44 <= 2.22507386e-308)
        {
          v44 = 2.22507386e-308;
        }

        if (fabs(vsubq_f64(v77, v41).f64[0]) < v44 * 0.0000000149011612)
        {
LABEL_20:
          v89 = v102;
          v90 = v103;
          *v91 = v104;
          v85 = v98;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v91[16] = v20;
          *&v91[24] = *(v97 + 7);
          *&v91[17] = v97[0];
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v85);
          v109 = v89;
          v110 = v90;
          *v111 = *v91;
          *&v111[13] = *&v91[13];
          v105 = v85;
          v106 = v86;
          v107 = v87;
          v108 = v88;
        }
      }

      v128.origin.x = v77.f64[1];
      v128.origin.y = v77.f64[0];
      v128.size.width = v76.f64[1];
      v128.size.height = v76.f64[0];
      MaxY = CGRectGetMaxY(v128);
      *&v129.size.height = v72.i64[0];
      v129.origin.x = v74.f64[1];
      v129.origin.y = v74.f64[0];
      *&v129.size.width = v72.i64[1];
      *v47.i64 = CGRectGetMaxY(v129);
      if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v47.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v58 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v47, 0.0000000149011612, MaxY, v48);
        outlined consume of EnvironmentValues?(v25);
      }

      else
      {
        v49 = fabs(MaxY);
        v50 = a5;
        v51 = a7;
        v52 = fabs(*v47.i64);
        v53 = a4;
        v54 = a6;
        v55 = *v47.i64;
        outlined consume of EnvironmentValues?(v25);
        if (v49 > v52)
        {
          v56 = v49;
        }

        else
        {
          v56 = v52;
        }

        a7 = v51;
        a5 = v50;
        v15 = 0.5;
        if (v56 <= 2.22507386e-308)
        {
          v56 = 2.22507386e-308;
        }

        v57 = vabdd_f64(MaxY, v55);
        a6 = v54;
        a4 = v53;
        v16 = 1.0;
        v58 = v57 < v56 * 0.0000000149011612;
      }

      if (v58)
      {
        v89 = v102;
        v90 = v103;
        *v91 = v104;
        v85 = v98;
        v86 = v99;
        v87 = v100;
        v88 = v101;
        v91[16] = v20;
        *&v91[24] = *(v97 + 7);
        *&v91[17] = v97[0];
        _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v85);
        v116 = v89;
        v117 = v90;
        v118[0] = *v91;
        *(v118 + 13) = *&v91[13];
        v112 = v85;
        v113 = v86;
        v114 = v87;
        v115 = v88;
      }

      v89 = v109;
      v90 = v110;
      *v91 = *v111;
      *&v91[13] = *&v111[13];
      v85 = v105;
      v86 = v106;
      v87 = v107;
      v88 = v108;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v85) != 1)
      {
        v82 = v116;
        v83 = v117;
        v84[0] = v118[0];
        *(v84 + 13) = *(v118 + 13);
        v78 = v112;
        v79 = v113;
        v80 = v114;
        v81 = v115;
        if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v78) != 1)
        {
          break;
        }
      }

LABEL_34:
      if (!v14)
      {
        break;
      }

      v13 -= 128;
      --v14;
    }
  }

  v59 = v117;
  a3[12] = v116;
  a3[13] = v59;
  a3[14] = v118[0];
  *(a3 + 237) = *(v118 + 13);
  v60 = v113;
  a3[8] = v112;
  a3[9] = v60;
  v61 = v115;
  a3[10] = v114;
  a3[11] = v61;
  v62 = v110;
  a3[4] = v109;
  a3[5] = v62;
  v63 = *&v111[16];
  a3[6] = *v111;
  a3[7] = v63;
  v64 = v106;
  *a3 = v105;
  a3[1] = v64;
  result = *&v107;
  v66 = v108;
  a3[2] = v107;
  a3[3] = v66;
  return result;
}

uint64_t closure #5 in ScrollStateActionBinding.updateValue()(uint64_t a1, __int128 *a2)
{
  v2 = a2[5];
  v18 = a2[4];
  v19 = v2;
  v20[0] = a2[6];
  *(v20 + 13) = *(a2 + 109);
  v3 = a2[1];
  v14 = *a2;
  v15 = v3;
  v4 = a2[3];
  v16 = a2[2];
  v17 = v4;
  v5 = a2[13];
  v12[4] = a2[12];
  v12[5] = v5;
  v13[0] = a2[14];
  *(v13 + 13) = *(a2 + 237);
  v6 = a2[9];
  v12[0] = a2[8];
  v12[1] = v6;
  v7 = a2[11];
  v12[2] = a2[10];
  v12[3] = v7;
  *&v14 = specialized static ScrollStateActionBinding.barTransitionProgress(topState:bottomState:)(&v14, v12);
  BYTE8(v14) = v8 & 1;
  *&v15 = v9;
  BYTE8(v15) = v10 & 1;
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance StackItemLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance StackItemLayout(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10[1])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return specialized StackItemLayout.placeSubviews(in:proposal:subviews:cache:)(a1, a2, a3, a4, a9, a10, v11 | *v10);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RootItemModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *))
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return a7(&v13, v11);
}

void *StackItemsView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v3 = static Alignment.center.getter();
  v46 = v4;
  v47 = v3;
  v5 = *v1;
  *&v56[0] = *v1;
  outlined init with copy of StackItemsView(v1, &v51);
  v6 = swift_allocObject();
  outlined init with take of StackItemsView(&v51, v6 + 16);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for [StackItem], &type metadata for StackItem, MEMORY[0x1E69E62F8]);
  type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type [StackItem] and conformance [A]();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v7 = lazy protocol witness table accessor for type StackItem and conformance StackItem();

  v37 = v7;
  ForEach<>.init(_:content:)();
  v45 = v51;
  v43 = v53;
  v44 = v52;
  v41 = v55;
  v42 = v54;
  v8 = *(v1 + 592);
  LOBYTE(v51) = *(v1 + 584);
  *(&v51 + 1) = v8;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v9 = 0;
  if ((v56[0] & 1) == 0)
  {
    if (one-time initialization token for clarityUINavigationTransition != -1)
    {
      swift_once();
    }
  }

  v40 = v9;
  v10 = *(v5 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    *&v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v51;
    v12 = *(v51 + 16);
    v13 = (v5 + 40);
    do
    {
      v15 = *v13;
      v13 += 2;
      v14 = v15;
      *&v51 = v11;
      v16 = *(v11 + 24);
      if (v12 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v12 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v12 + 1;
      *(v11 + 8 * v12++ + 32) = v14;
      --v10;
    }

    while (v10);
  }

  v17 = *(v1 + 576);
  LOBYTE(v56[0]) = *(v1 + 568);
  *(&v56[0] + 1) = v17;
  State.projectedValue.getter();
  v18 = v51;
  v19 = v52;
  v20 = *(v1 + 560);
  LOBYTE(v56[0]) = *(v1 + 552);
  *(&v56[0] + 1) = v20;
  State.projectedValue.getter();
  v21 = v51;
  v39 = v52;
  v38 = *(v1 + 504);
  v22 = *(v1 + 512);
  outlined init with copy of StackItemsView(v1, &v51);
  v23 = swift_allocObject();
  outlined init with take of StackItemsView(&v51, v23 + 16);
  v56[0] = v18;
  LOBYTE(v56[1]) = v19;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v49);
  v24 = v49[0];

  LOBYTE(__src[0]) = v22;
  KeyPath = swift_getKeyPath();
  BYTE1(v49[0]) = 0;
  v26 = swift_getKeyPath();
  v27 = __src[0];
  v28 = BYTE1(v49[0]);
  v29 = swift_getKeyPath();
  *&__src[0] = v47;
  *(&__src[0] + 1) = v46;
  __src[1] = v45;
  *&__src[2] = v44;
  *(&__src[2] + 1) = v43;
  *&__src[3] = v42;
  *(&__src[3] + 1) = v41;
  *&__src[4] = v40;
  *(&__src[4] + 1) = v11;
  LOBYTE(__src[5]) = v24;
  *(&__src[5] + 8) = v21;
  BYTE8(__src[6]) = v39;
  *&__src[7] = v38;
  BYTE8(__src[7]) = v27;
  *&__src[8] = partial apply for closure #3 in StackItemsView.body.getter;
  *(&__src[8] + 1) = v23;
  *&__src[9] = KeyPath;
  BYTE8(__src[9]) = v28;
  *&__src[10] = v26;
  BYTE8(__src[10]) = 0;
  memset(&__src[11], 0, 72);
  *(&__src[15] + 1) = v29;
  LOBYTE(__src[16]) = 1;
  outlined init with copy of StackItemsView(v2, &v51);
  v30 = swift_allocObject();
  outlined init with take of StackItemsView(&v51, v30 + 16);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  memcpy(v49 + 1, __src, 0x101uLL);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v49 + 1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>);
  memcpy(__src, v56, sizeof(__src));
  v31 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for didPerformBackButtonPress != -1)
  {
    swift_once();
  }

  type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>>();
  v33 = v32;
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of StackItemsView(v2, &v51);
  v34 = swift_allocObject();
  outlined init with take of StackItemsView(&v51, v34 + 16);
  result = memcpy(a1, __src, 0x140uLL);
  v36 = &a1[*(v33 + 56)];
  *v36 = partial apply for closure #5 in StackItemsView.body.getter;
  v36[1] = v34;
  return result;
}

uint64_t closure #1 in closure #1 in StackItemsView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(*a2 + 16);
  if (v5 && a1[1] == *(*a2 + 16 + 16 * v5 + 8))
  {
    AccessibilityProperties.init()();
    v6 = 0x400000000;
  }

  else
  {
    AccessibilityProperties.init()();
    v6 = 0x400000004;
  }

  v11 = v6;
  v12 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v10);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  *a3 = v4;
  a3[1] = v7;
  a3[2] = 0;
}

void closure #3 in StackItemsView.body.getter(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() activeInstance];
    if (v1)
    {
      v10 = v1;
      [v1 dismissKeyboard];
    }

    else
    {
      __break(1u);
    }
  }

  else if (NavigationState.Base.count.getter() >= 2)
  {
    v2 = NavigationState.StackContent.topKey.getter();
    v4 = v3;
    v6 = v5;
    static Transaction.current.getter();
    static Transaction.current.getter();
    v7 = Transaction.disablesAnimations.getter();

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v9 = Transaction.animation.getter();

    if (!v9)
    {
      v9 = Transaction.animation.getter();
    }

    v11 = 1;
    v12 = 0;
    v13 = 9;
    v14 = v2;
    v15 = v4;
    v16 = v6;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v8 & 1;
    v21 = v9;
    NavigationAuthority.enqueueRequest(_:)(&v11);
    outlined destroy of NavigationRequest(&v11);
  }
}

uint64_t StackItemsView.navigateBack(isAnimated:)(char a1)
{
  v2 = v1;
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  result = NavigationState.Base.count.getter();
  if (result >= 2)
  {
    if ((a1 & 1) == 0)
    {
      v8 = *(v1 + 592);
      LOBYTE(v24) = 1;
      if (v8)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }

      v9 = *(v2 + 608);
      v24 = *(v2 + 600);
      v25 = v9;
      type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for State<Task<(), Error>?>, type metadata accessor for Task<(), Error>?, MEMORY[0x1E6981790]);
      State.wrappedValue.getter();
      v10 = v35;
      if (v35)
      {
        v11 = type metadata accessor for Error();
        MEMORY[0x18D00D010](v10, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
      }

      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      outlined init with copy of StackItemsView(v2, &v24);
      type metadata accessor for MainActor();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      *(v14 + 16) = v13;
      *(v14 + 24) = v15;
      outlined init with take of StackItemsView(&v24, v14 + 32);
      v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in StackItemsView.navigateBack(isAnimated:), v14);
      if (v9)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }

    v16 = NavigationState.StackContent.topKey.getter();
    v18 = v17;
    v20 = v19;
    static Transaction.current.getter();
    static Transaction.current.getter();
    v21 = Transaction.disablesAnimations.getter();

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v23 = Transaction.animation.getter();

    if (!v23)
    {
      v23 = Transaction.animation.getter();
    }

    v24 = 1;
    LOBYTE(v25) = 0;
    v26 = 9;
    v27 = v16;
    v28 = v18;
    v29 = v20;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v22 & 1;
    v34 = v23;
    NavigationAuthority.enqueueRequest(_:)(&v24);
    return outlined destroy of NavigationRequest(&v24);
  }

  return result;
}

uint64_t closure #4 in StackItemsView.body.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  specialized AccessibilityCoreNotification.post()(0, 0);
  result = specialized Environment.wrappedValue.getter(*(a3 + 520), *(a3 + 528), &v6);
  if (v6 == 1)
  {
    return StackItemsView.updateClientSettings(numberOfStackItems:)(v4);
  }

  return result;
}

uint64_t StackItemsView.updateClientSettings(numberOfStackItems:)(uint64_t result)
{
  v21 = MEMORY[0x1E69E7CC0];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if (result)
    {
      type metadata accessor for PropertyListEncoder();
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        swift_allocObject();
        PropertyListEncoder.init()();
        lazy protocol witness table accessor for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle();
        v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v7 = v6;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v9 = *(v4 + 2);
        v8 = *(v4 + 3);
        if (v9 >= v8 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        }

        *(v4 + 2) = v9 + 1;
        v10 = &v4[16 * v9];
        *(v10 + 4) = v5;
        *(v10 + 5) = v7;
        v21 = v4;
        --v3;
      }

      while (v3);
    }

    v11 = specialized Environment.wrappedValue.getter(*(v2 + 536), *(v2 + 544));
    if (!v11)
    {
    }

    v12 = v11;
    v13 = [v11 scene];

    if (!v13)
    {
    }

    v14 = [v13 _FBSScene];

    if (!v14)
    {
    }

    MEMORY[0x1EEE9AC00](v15);
    v19[2] = &v21;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in StackItemsView.updateClientSettings(numberOfStackItems:);
    *(v16 + 24) = v19;
    v17 = swift_allocObject();
    *(v17 + 16) = closure #1 in FBSScene.updateClarityUIClientSettings(_:)partial apply;
    *(v17 + 24) = v16;
    aBlock[4] = thunk for @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ()partial apply;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
    aBlock[3] = &block_descriptor_93_1;
    v18 = _Block_copy(aBlock);

    [v14 updateClientSettingsWithBlock_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in StackItemsView.body.getter()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  *&v7 = 0x646574616D696E61;
  *(&v7 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) == 0))
  {

    outlined destroy of AnyHashable(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, &v7);
  outlined destroy of AnyHashable(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    _sypSgWOhTm_7(&v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = 1;
    return StackItemsView.navigateBack(isAnimated:)(v4);
  }

  v4 = v6[0];
  return StackItemsView.navigateBack(isAnimated:)(v4);
}

uint64_t closure #1 in StackItemsView.navigateBack(isAnimated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #1 in StackItemsView.navigateBack(isAnimated:);

  return MEMORY[0x1EEE6DA60](300000000);
}

uint64_t closure #1 in StackItemsView.navigateBack(isAnimated:)()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in StackItemsView.navigateBack(isAnimated:);
  }

  else
  {
    v4 = closure #1 in StackItemsView.navigateBack(isAnimated:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{
  v1 = *(v0 + 16);

  v2 = *(v1 + 592);
  *(v0 + 56) = 0;
  if (v2)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  outlined init with copy of TaskPriority?(a3, v23 - v11, &lazy cache variable for type metadata for TaskPriority?, v8, v9, type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    outlined destroy of TaskPriority?(v12, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

__n128 static NavigationTitleActionModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v37 = a2[2];
  v38 = v6;
  v8 = a2[3];
  v39 = a2[4];
  v9 = a2[1];
  v35 = *a2;
  v36 = v9;
  v31 = v37;
  v32 = v8;
  v33 = a2[4];
  v10 = *a1;
  v40 = *(a2 + 20);
  v34 = *(a2 + 20);
  v29 = v35;
  v30 = v7;
  outlined init with copy of _ViewInputs(&v35, &v24);
  PreferenceKeys.add(_:)();
  v41[2] = v31;
  v41[3] = v32;
  v41[4] = v33;
  v42 = v34;
  v41[0] = v29;
  v41[1] = v30;
  *&v25[16] = v31;
  *&v25[32] = v32;
  v26 = v33;
  LODWORD(v27) = v34;
  v24 = v29;
  *v25 = v30;
  v11 = outlined init with copy of _ViewInputs(v41, v23);
  a3(v23, v11, &v24);
  v43[2] = *&v25[16];
  v43[3] = *&v25[32];
  v43[4] = v26;
  v44 = v27;
  v43[0] = v24;
  v43[1] = *v25;
  outlined destroy of _ViewInputs(v43);
  v13.n128_u64[0] = *(&v23[0] + 1);
  v12 = *&v23[0];
  *&v24 = *&v23[0];
  v20 = v13;
  DWORD2(v24) = DWORD2(v23[0]);
  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) == 0)
  {
    v15 = v14;
    v16 = DWORD2(v36);
    type metadata accessor for GraphHost();
    v17 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v18 = *(v17 + 64);

    *&v24 = __PAIR64__(v15, v10);
    *(&v24 + 1) = __PAIR64__(v18, v16);
    *v25 = 0xFFFFFFFFLL;
    v25[8] = 0;
    *&v25[9] = v21;
    v25[11] = v22;
    memset(&v25[12], 0, 28);
    *&v25[40] = 2;
    v26 = 0uLL;
    v27 = 0;
    v28 = 0;
    v23[2] = 0u;
    v23[3] = *&v25[32];
    memset(&v23[4], 0, 25);
    v23[0] = v24;
    v23[1] = *v25;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type NavigationTitleBinder and conformance NavigationTitleBinder();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of NavigationTitleBinder(&v24);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  *&v25[16] = v31;
  *&v25[32] = v32;
  v26 = v33;
  LODWORD(v27) = v34;
  v24 = v29;
  *v25 = v30;
  outlined destroy of _ViewInputs(&v24);
  *a4 = v12;
  result = v20;
  a4[1] = v20.n128_u64[0];
  return result;
}

__int128 *NavigationTitleBinder.updateValue()()
{
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
    *&v48[9] = *(v0 + 73);
    v1 = *(v0 + 64);
    v47 = *(v0 + 48);
    *v48 = v1;
    v46 = *(v0 + 32);
    outlined destroy of NavigationTitleStorage??(&v46);
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 2;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 88) = 0;
  }

  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  *&v70[9] = *(result + 41);
  v69 = v4;
  *v70 = v3;
  v68 = v5;
  v6 = result[1];
  v65 = *result;
  v66 = v6;
  v67[0] = result[2];
  *(v67 + 9) = *(result + 41);
  if (v7)
  {
    v8 = *(v0 + 56);
    if ((v8 - 1) >= 2)
    {
      v38 = *(v0 + 32);
      *&v39 = *(v0 + 48);
      *v41 = *(v0 + 64);
      v9 = *v41;
      *&v41[9] = *(v0 + 73);
      v46 = v38;
      *&v47 = v39;
      *(&v47 + 1) = v8;
      *v48 = v9;
      *&v48[9] = *&v41[9];
      outlined init with copy of EquatableNavigationTitle?(&v46, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      v61 = v38;
      v62 = v39;
      v63 = v8;
      v64[0] = *v41;
      *(v64 + 9) = *&v41[9];
    }

    else
    {
      v61 = 0uLL;
      v8 = 1;
      v62 = 0;
      v63 = 1;
      memset(v64, 0, 25);
    }

    v10 = *(&v69 + 1);
    if (*(&v69 + 1) == 1)
    {
      v59 = v61;
      v60 = v62;
      v58[0] = v64[0];
      *(v58 + 9) = *(v64 + 9);
      if (v8 == 1)
      {
        v46 = v61;
        *&v47 = v62;
        *(&v47 + 1) = 1;
        *v48 = v64[0];
        *&v48[9] = *(v64 + 9);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        v11 = &lazy cache variable for type metadata for EquatableNavigationTitle?;
        v12 = &unk_1F0009780;
        v13 = &v46;
        return _sypSgWOhTm_7(v13, v11, v12);
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
    }

    else
    {
      v14 = v70[24];
      v16 = *&v70[8];
      v15 = *&v70[16];
      v17 = *v70;
      v18 = *(&v68 + 1);
      v19 = v69;
      v20 = v68;
      v59 = v61;
      v60 = v62;
      v58[0] = v64[0];
      *(v58 + 9) = *(v64 + 9);
      if (v8 == 1)
      {
        v29 = *v70;
        v30 = *&v70[16];
        v31 = v70[24];
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v61, &v46, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
        goto LABEL_15;
      }
    }

    v46 = v59;
    *&v47 = v60;
    *(&v47 + 1) = v8;
    *v48 = v58[0];
    *&v48[9] = *(v58 + 9);
    v43 = v59;
    v44 = v47;
    v45[0] = *v48;
    *(v45 + 9) = *(v58 + 9);
    if (*(&v69 + 1) != 1)
    {
      *&v33 = v20;
      *(&v33 + 1) = v18;
      *&v34 = v19;
      *(&v34 + 1) = *(&v69 + 1);
      *v35 = v17;
      *&v35[8] = v16;
      *&v35[16] = v15;
      v35[24] = v14;
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v61, v32, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      outlined init with copy of EquatableNavigationTitle?(&v46, v32, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      v28 = specialized static EquatableNavigationTitle.== infix(_:_:)(&v43, &v33);
      v36[0] = v33;
      v36[1] = v34;
      v37[0] = *v35;
      *(v37 + 9) = *&v35[9];
      outlined destroy of EquatableNavigationTitle(v36);
      v38 = v43;
      v39 = v44;
      v40[0] = v45[0];
      *(v40 + 9) = *(v45 + 9);
      outlined destroy of EquatableNavigationTitle(&v38);
      *v41 = v59;
      *&v41[16] = v60;
      *&v41[24] = v8;
      v42[0] = v58[0];
      *(v42 + 9) = *(v58 + 9);
      _sypSgWOhTm_7(v41, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      if (v28)
      {
        _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        _sypSgWOhTm_7(&v61, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
        v13 = &v68;
        v11 = &lazy cache variable for type metadata for NavigationTitleStorage?;
        v12 = &type metadata for NavigationTitleStorage;
        return _sypSgWOhTm_7(v13, v11, v12);
      }

LABEL_16:
      v21 = *(v0 + 48);
      v46 = *(v0 + 32);
      v47 = v21;
      *v48 = *(v0 + 64);
      *&v48[9] = *(v0 + 73);
      outlined init with copy of EquatableNavigationTitle?(&v68, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined destroy of NavigationTitleStorage??(&v46);
      v22 = v66;
      *(v0 + 32) = v65;
      *(v0 + 48) = v22;
      *(v0 + 64) = v67[0];
      *(v0 + 73) = *(v67 + 9);
      if (UpdateCycleDetector.dispatch(label:isDebug:)())
      {
        AGGraphClearUpdate();
        Value = AGGraphGetValue();
        v25 = *Value;
        v24 = Value[1];

        AGGraphSetUpdate();
        LOBYTE(v43) = 17;
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v24;
        v27 = v69;
        *(v26 + 32) = v68;
        *(v26 + 48) = v27;
        *(v26 + 64) = *v70;
        *(v26 + 73) = *&v70[9];

        static Update.enqueueAction(reason:_:)();
        _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        _sypSgWOhTm_7(&v61, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      }

      _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      v11 = &lazy cache variable for type metadata for EquatableNavigationTitle?;
      v12 = &unk_1F0009780;
      v13 = &v61;
      return _sypSgWOhTm_7(v13, v11, v12);
    }

    *&v29 = v17;
    *(&v29 + 1) = v16;
    v30 = v15;
    v31 = v14;
    *v41 = v46;
    *&v41[16] = v47;
    v42[0] = *v48;
    *(v42 + 9) = *&v48[9];
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v61, &v38, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    outlined init with copy of EquatableNavigationTitle?(&v46, &v38, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    outlined destroy of EquatableNavigationTitle(v41);
LABEL_15:
    v46 = v59;
    *&v47 = v60;
    *(&v47 + 1) = v8;
    *v48 = v58[0];
    *&v48[9] = *(v58 + 9);
    *v49 = *v57;
    *&v49[3] = *&v57[3];
    v50 = v20;
    v51 = v18;
    v52 = v19;
    v53 = v10;
    v54 = v29;
    v55 = v30;
    v56 = v31;
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(&v46, type metadata accessor for (EquatableNavigationTitle?, EquatableNavigationTitle?));
    goto LABEL_16;
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalNavigationTitleHorizontalPaddingKey(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t specialized FloatingPoint.isAlmostEqual(to:tolerance:)(double a1, double a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)();
  }

  v3 = fabs(a3);
  v4 = fabs(a1);
  if (v3 <= v4)
  {
    v3 = v4;
  }

  if (v3 <= 2.22507386e-308)
  {
    v3 = 2.22507386e-308;
  }

  return vabdd_f64(a3, a1) < v3 * a2;
}

uint64_t specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(int8x16_t a1, double a2, double a3, int8x16_t a4)
{
  while (1)
  {
    *a4.i64 = a3;
    v4 = *&a3 & 0x7FF0000000000000;
    v5 = *&a3 & 0xFFFFFFFFFFFFFLL;
    if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000 && v5 != 0)
    {
      return 0;
    }

    a3 = *a1.i64;
    v7 = (a1.i64[0] >> 52) & 0x7FF;
    v8 = a1.i64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a1.i64[0] & 0xFFFFFFFFFFFFFLL) != 0 && v7 == 2047)
    {
      return 0;
    }

    a1.i64[0] = a4.i64[0];
    if (!v5)
    {
      a1.i64[0] = a4.i64[0];
      if (v4 == 0x7FF0000000000000)
      {
        break;
      }
    }
  }

  if (!v8 && v7 == 2047)
  {
    return *a4.i64 == a3;
  }

  a1.i64[0] = 0x7FE0000000000000;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  *&v11 = vbslq_s8(vnegq_f64(v10), a1, a4).u64[0];
  v12 = a3 * 0.5;
  if (!(v7 | v8))
  {
    v12 = a3;
  }

  if (v7 == 2047)
  {
    v12 = a3;
  }

  return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v12, a2, v11);
}

uint64_t specialized static EquatableNavigationTitle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v22 = a1[1];
  v23 = *a1;
  outlined copy of Text?(*a1, v22, v2, v3);
  outlined copy of Transaction?(v4);

  v24 = v5;
  v25 = v8;
  v10 = v8;
  v11 = v7;
  outlined copy of Text?(v5, v6, v10, v7);
  v26 = v9;
  outlined copy of Transaction?(v9);

  v12 = EnvironmentValues.init()();
  v27 = v32;
  v28 = v33;
  if (v3)
  {
    v30 = 0;
    v31 = 0;
    MEMORY[0x18D009CB0](&v29, v12);
    v13 = Text.resolveString(in:with:idiom:)();
    v15 = v14;
    outlined consume of Text?(v23, v22, v2, v3);
    outlined consume of ListItemTint?(v4);

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    outlined consume of Text?(v24, v6, v25, 0);
    outlined consume of ListItemTint?(v26);

    if (v15)
    {
      goto LABEL_10;
    }

    v19 = 0;
LABEL_12:

    if (!v19)
    {
      return 1;
    }

    goto LABEL_13;
  }

  outlined consume of Text?(v23, v22, v2, 0);
  outlined consume of ListItemTint?(v4);

  v13 = 0;
  v15 = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v32 = v27;
  v33 = v28;
  v30 = 0;
  v31 = 0;
  MEMORY[0x18D009CB0](&v29, v16);
  v17 = Text.resolveString(in:with:idiom:)();
  v19 = v18;
  outlined consume of Text?(v24, v6, v25, v11);
  outlined consume of ListItemTint?(v26);

  if (!v15)
  {
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_10:

LABEL_13:

    return 0;
  }

  if (v13 == v17 && v15 == v19)
  {

    return 1;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v21 & 1;
  }
}

id specialized MultimodalNavigationStackViewHost.makeUIViewController(context:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UISecureHostingController();
  (*(v1 + 32))();
  v7 = specialized _UISecureHostingController.__allocating_init(rootView:)(v6);
  (*(v4 + 8))(v6, v3);
  result = [v7 view];
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    v11 = specialized UIHostingController.host.getter();
    v12 = v2[1];
    v15[0] = *v2;
    v15[1] = v12;
    v16 = 0;
    v13 = v11;
    v14 = v7;
    _UIHostingView.explicitSafeAreaInsets.setter(v15);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MultimodalNavigationStackViewHost.updateUIViewController(_:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized UIHostingController.host.getter();
  v9 = *(v2 + 1);
  v12[0] = *v2;
  v12[1] = v9;
  v13 = 0;
  v10 = v8;
  _UIHostingView.explicitSafeAreaInsets.setter(v12);

  v3[4]();
  specialized UIHostingController.rootView.setter(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t destroy for MultimodalNavigationStack(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(a1 + 120), *(a1 + 128));
}

uint64_t initializeWithCopy for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = v5;

  swift_weakCopyInit();
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  v10 = *(a2 + 128);

  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithCopy for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  swift_weakCopyAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  *(a1 + 120) = v7;
  *(a1 + 128) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v11;
  LOBYTE(v11) = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v11;
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t initializeWithTake for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  swift_weakTakeInit();
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t assignWithTake for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  swift_weakTakeAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a1 + 120);
  v9 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t outlined init with take of MultimodalNavigationStack(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v6;
  *a2 = v4;
  *(a2 + 16) = v5;
  v7 = a1[4];
  *(a2 + 80) = *(a1 + 10);
  *(a2 + 64) = v7;
  swift_weakTakeInit();
  *(a2 + 96) = a1[6];
  *(a2 + 112) = *(a1 + 14);
  v8 = *(a1 + 15);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 120) = v8;
  v9 = *(a1 + 136);
  v10 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 21);
  *(a2 + 152) = v10;
  *(a2 + 136) = v9;
  return a2;
}

void type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>()
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>();
    lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>);
    v0 = type metadata accessor for EnumeratedSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
    }
  }
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>()
{
  if (!lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>();
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
    v0 = type metadata accessor for NavigationState.StackContent.Views.ViewsSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>);
    }
  }
}

uint64_t outlined init with copy of EquatableNavigationTitle?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for State<BarTransitionProgress>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *assignWithCopy for StackItem(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for StackItem(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for StackItemModifier(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
  }

  if (*(a1 + 96) != 1)
  {
  }

LABEL_7:

  outlined consume of Environment<NSManagedObjectContext>.Content(*(a1 + 240), *(a1 + 248));
  outlined consume of Environment<Selector?>.Content(*(a1 + 256), *(a1 + 264));
  outlined consume of Environment<Selector?>.Content(*(a1 + 272), *(a1 + 280));
}

uint64_t initializeWithCopy for StackItemModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      goto LABEL_9;
    }

    v8 = *(a2 + 64);
    v9 = *(a2 + 72);
    v10 = *(a2 + 80);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 64) = v8;
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    *(a1 + 88) = v5;
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
  }

  v11 = *(a2 + 96);
  if (v11 != 1)
  {
  }

  *(a1 + 96) = v11;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

LABEL_9:
  v12 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v12;
  *(a1 + 144) = *(a2 + 144);
  v13 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v13;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  v14 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  v15 = *(a2 + 248);

  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v14, v15);
  *(a1 + 240) = v14;
  *(a1 + 248) = v15;
  v16 = *(a2 + 256);
  v17 = *(a2 + 264);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  *(a1 + 256) = v16;
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);
  v19 = *(a2 + 280);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  *(a1 + 272) = v18;
  *(a1 + 280) = v19;
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

  return a1;
}

uint64_t assignWithCopy for StackItemModifier(uint64_t a1, uint64_t a2)
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
  v6 = *(a1 + 88);
  v7 = *(a2 + 88);
  if (v6 != 1)
  {
    if (v7 == 1)
    {
      outlined destroy of EquatableNavigationTitle(a1 + 64);
      v12 = *(a2 + 80);
      v11 = *(a2 + 96);
      v13 = *(a2 + 64);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v12;
      *(a1 + 96) = v11;
      *(a1 + 64) = v13;
      goto LABEL_28;
    }

    if (v6)
    {
      if (v7)
      {
        v14 = *(a2 + 64);
        v15 = *(a2 + 72);
        v16 = *(a2 + 80);
        outlined copy of Text.Storage(v14, v15, v16);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v19 = *(a1 + 80);
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        *(a1 + 80) = v16;
        outlined consume of Text.Storage(v17, v18, v19);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        outlined destroy of Text(a1 + 64);
        v28 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v28;
      }
    }

    else if (v7)
    {
      v25 = *(a2 + 64);
      v26 = *(a2 + 72);
      v27 = *(a2 + 80);
      outlined copy of Text.Storage(v25, v26, v27);
      *(a1 + 64) = v25;
      *(a1 + 72) = v26;
      *(a1 + 80) = v27;
      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      v29 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v29;
    }

    v30 = (a1 + 96);
    v31 = *(a2 + 96);
    if (*(a1 + 96) == 1)
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      v32 = 1;
    }

    else
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      outlined destroy of Transaction(a1 + 96);
      v32 = *(a2 + 96);
    }

    *v30 = v32;
LABEL_27:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);

    *(a1 + 120) = *(a2 + 120);
    goto LABEL_28;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(a2 + 64);
      v9 = *(a2 + 80);
      v10 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v9;
      *(a1 + 96) = v10;
      *(a1 + 64) = v8;
      goto LABEL_28;
    }

    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    v23 = *(a2 + 80);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 64) = v21;
    *(a1 + 72) = v22;
    *(a1 + 80) = v23;
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
  }

  v24 = *(a2 + 96);
  if (v24 != 1)
  {
  }

  *(a1 + 96) = v24;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

LABEL_28:
  *(a1 + 128) = *(a2 + 128);

  v33 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v33;
  *(a1 + 152) = *(a2 + 152);

  v34 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v34;
  *(a1 + 176) = *(a2 + 176);

  v35 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v35;
  LOBYTE(v35) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v35;
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  v36 = *(a2 + 240);
  v37 = *(a2 + 248);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v36, v37);
  v38 = *(a1 + 240);
  v39 = *(a1 + 248);
  *(a1 + 240) = v36;
  *(a1 + 248) = v37;
  outlined consume of Environment<NSManagedObjectContext>.Content(v38, v39);
  v40 = *(a2 + 256);
  v41 = *(a2 + 264);
  outlined copy of Environment<Selector?>.Content(v40, v41);
  v42 = *(a1 + 256);
  v43 = *(a1 + 264);
  *(a1 + 256) = v40;
  *(a1 + 264) = v41;
  outlined consume of Environment<Selector?>.Content(v42, v43);
  v44 = *(a2 + 272);
  v45 = *(a2 + 280);
  outlined copy of Environment<Selector?>.Content(v44, v45);
  v46 = *(a1 + 272);
  v47 = *(a1 + 280);
  *(a1 + 272) = v44;
  *(a1 + 280) = v45;
  outlined consume of Environment<Selector?>.Content(v46, v47);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithTake for StackItemModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 88);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 88);
  if (v5 != 1)
  {
    if (v4)
    {
      if (v5)
      {
        v7 = *(a2 + 80);
        v8 = *(a1 + 64);
        v9 = *(a1 + 72);
        v10 = *(a1 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v7;
        outlined consume of Text.Storage(v8, v9, v10);
        *(a1 + 88) = v5;

        goto LABEL_10;
      }

      outlined destroy of Text(a1 + 64);
    }

    v11 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v11;
LABEL_10:
    v12 = (a1 + 96);
    v13 = *(a2 + 96);
    if (*(a1 + 96) != 1)
    {
      if (v13 != 1)
      {
        *v12 = v13;

        goto LABEL_15;
      }

      outlined destroy of Transaction(a1 + 96);
      v13 = 1;
    }

    *v12 = v13;
LABEL_15:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);

    *(a1 + 120) = *(a2 + 120);
    goto LABEL_16;
  }

  outlined destroy of EquatableNavigationTitle(a1 + 64);
LABEL_4:
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
LABEL_16:
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  v14 = *(a2 + 248);
  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v14;
  outlined consume of Environment<NSManagedObjectContext>.Content(v15, v16);
  v17 = *(a2 + 264);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 280);
  v21 = *(a1 + 272);
  v22 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t getEnumTagSinglePayload for StackItemModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t storeEnumTagSinglePayload for StackItemModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for StackItemsView(uint64_t a1)
{

  v2 = *(a1 + 456);
  if (v2 == 2)
  {

    v4 = *(a1 + 32);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(a1 + 48))
    {
    }

    if (*(a1 + 72))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 56))
    {
    }

    if (*(a1 + 112))
    {
    }

    v3 = *(a1 + 216);
    if (*(a1 + 248))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 160))
          {
            __swift_destroy_boxed_opaque_existential_1(a1 + 136);
          }

          if (*(a1 + 184) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 128);
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 160))
          {
            __swift_destroy_boxed_opaque_existential_1(a1 + 136);
          }

          if (*(a1 + 184) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 128);
        }
      }
    }

    if (*(a1 + 368))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(a1 + 520), *(a1 + 528));
  outlined consume of Environment<NSManagedObjectContext>.Content(*(a1 + 536), *(a1 + 544));
}

uint64_t initializeWithCopy for StackItemsView(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 361);
  v5 = a2 + 361;
  *a1 = *a2;
  v6 = *(a2 + 456);

  if (v6 == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    v12 = *(a2 + 32);

    if (v12 == 1)
    {
      v13 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v13;
      *(a1 + 80) = *(a2 + 80);
      v14 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v14;
LABEL_32:
      *(a1 + 456) = 2;
      goto LABEL_51;
    }

    *(a1 + 16) = *(a2 + 16);
    if (v12)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v12;
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }

    v26 = *(a2 + 48);
    *(a1 + 41) = *(a2 + 41);
    if (v26)
    {
      v27 = *(a2 + 56);
      *(a1 + 48) = v26;
      *(a1 + 56) = v27;

      v28 = *(a2 + 72);
      if (v28)
      {
LABEL_28:
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v28;
        *(a1 + 80) = *(a2 + 80);

LABEL_31:
        *(a1 + 81) = *(a2 + 81);
        goto LABEL_32;
      }
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      v28 = *(a2 + 72);
      if (v28)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_31;
  }

  if (v6 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v7 = *(a2 + 56);
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      v8 = *(a2 + 64);
      v9 = *(a2 + 72);
      *(a1 + 56) = v7;
      *(a1 + 64) = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 88);
      *(a1 + 72) = v9;
      *(a1 + 80) = v10;
      *(a1 + 88) = v11;
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v15 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v15;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 100) = *(a2 + 100);
    v16 = *(a2 + 112);
    if (v16)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v16;
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v17 = *(a2 + 216);
    v58 = v5;
    v59 = v4;
    if (*(a2 + 248))
    {
      if (v17 == 255)
      {
        v22 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v22;
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        v23 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v23;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v18 = *(a2 + 160);

        if (v18)
        {
          v19 = *(a2 + 168);
          *(a1 + 160) = v18;
          *(a1 + 168) = v19;
          (**(v18 - 8))(a1 + 136, a2 + 136, v18);
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
        }

        v31 = *(a2 + 184);
        if (v31 == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 184) = v31;
        }

        v32 = *(a2 + 200);
        v33 = *(a2 + 208);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = v32;
        *(a1 + 208) = v33;
        *(a1 + 216) = 1;
      }

      else
      {
        v29 = *(a2 + 152);
        *(a1 + 152) = v29;
        (**(v29 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 248) = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v24;
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        v25 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v25;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v20 = *(a2 + 160);

        if (v20)
        {
          v21 = *(a2 + 168);
          *(a1 + 160) = v20;
          *(a1 + 168) = v21;
          (**(v20 - 8))(a1 + 136, a2 + 136, v20);
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
        }

        v34 = *(a2 + 184);
        if (v34 == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 184) = v34;
        }

        v35 = *(a2 + 200);
        v36 = *(a2 + 208);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = v35;
        *(a1 + 208) = v36;
        *(a1 + 216) = 1;
      }

      else
      {
        v30 = *(a2 + 152);
        *(a1 + 152) = v30;
        (**(v30 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      v37 = *(a2 + 232);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = v37;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = 0;
    }

    v38 = *(a2 + 264);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = v38;
    v39 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v39;
    v40 = *(a2 + 296);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = v40;
    v41 = *(a2 + 312);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v41;
    v42 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v42;
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *v59 = *v5;
    v43 = *(a2 + 368);

    if (v43)
    {
      v44 = *(a2 + 376);
      v45 = *(a2 + 384);
      *(a1 + 368) = v43;
      *(a1 + 376) = v44;
      v46 = *(a2 + 392);
      v47 = *(a2 + 400);
      *(a1 + 384) = v45;
      *(a1 + 392) = v46;
      v48 = *(a2 + 408);
      v49 = *(a2 + 416);
      *(a1 + 400) = v47;
      *(a1 + 408) = v48;
      v50 = *(a2 + 424);
      *(a1 + 416) = v49;
      *(a1 + 424) = v50;
      *(a1 + 432) = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
    }

    else
    {
      v51 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v51;
      *(a1 + 432) = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      v52 = *(a2 + 384);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = v52;
    }

    *(a1 + 456) = 1;
    v5 = v58;
    v4 = v59;
  }

  else
  {
    memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  }

LABEL_51:
  swift_weakCopyInit();
  v53 = *(a2 + 480);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = v53;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 497) = *(a2 + 497);
  v54 = *(a2 + 520);
  v55 = *(v5 + 167);

  outlined copy of Environment<Selector?>.Content(v54, v55);
  *(a1 + 520) = v54;
  *(v4 + 167) = v55;
  v56 = *(a2 + 536);
  LOBYTE(v54) = *(v5 + 183);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v56, v54);
  *(a1 + 536) = v56;
  *(v4 + 183) = v54;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t assignWithCopy for StackItemsView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 361;
  v5 = a2 + 361;
  v6 = (a2 + 8);
  *a1 = *a2;

  if (a1 == a2)
  {
    goto LABEL_52;
  }

  outlined destroy of NavigationState.Base(a1 + 8);
  v7 = *(a2 + 456);
  if (v7 == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 32);

    if (v9 == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      v12 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v11;
      *(a1 + 64) = v12;
      *(a1 + 32) = v10;
LABEL_33:
      *(a1 + 456) = 2;
      goto LABEL_52;
    }

    *(a1 + 16) = *(a2 + 16);
    if (*(a2 + 32))
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      v28 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v28;
    }

    *(a1 + 41) = *(a2 + 41);
    v29 = *(a2 + 48);
    if (v29)
    {
      v30 = *(a2 + 56);
      *(a1 + 48) = v29;
      *(a1 + 56) = v30;

      if (*(a2 + 72))
      {
LABEL_29:
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);

LABEL_32:
        *(a1 + 81) = *(a2 + 81);
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      if (*(a2 + 72))
      {
        goto LABEL_29;
      }
    }

    v31 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v31;
    goto LABEL_32;
  }

  if (v7 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v8;
    if (*(a2 + 56))
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v13 = *(a2 + 48);
      v14 = *(a2 + 64);
      v15 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v14;
      *(a1 + 80) = v15;
      *(a1 + 48) = v13;
    }

    *(a1 + 100) = *(a2 + 100);
    if (*(a2 + 112))
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      v16 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v16;
    }

    v17 = *(a2 + 216);
    if (*(a2 + 248))
    {
      if (v17 == 255)
      {
        v20 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v20;
        v21 = *(a2 + 160);
        v22 = *(a2 + 176);
        v23 = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 176) = v22;
        *(a1 + 192) = v23;
        *(a1 + 160) = v21;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v18 = *(a2 + 160);

        if (v18)
        {
          *(a1 + 160) = v18;
          *(a1 + 168) = *(a2 + 168);
          (**(v18 - 8))(a1 + 136, a2 + 136, v18);
        }

        else
        {
          v34 = *(a2 + 136);
          v35 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v35;
          *(a1 + 136) = v34;
        }

        if (*(a2 + 184) == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 180) = *(a2 + 180);
          *(a1 + 184) = *(a2 + 184);
        }

        *(a1 + 192) = *(a2 + 192);
        v36 = *(a2 + 208);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = v36;
        *(a1 + 216) = 1;
      }

      else
      {
        v32 = *(a2 + 152);
        *(a1 + 152) = v32;
        *(a1 + 160) = *(a2 + 160);
        (**(v32 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 248) = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v24;
        v25 = *(a2 + 160);
        v26 = *(a2 + 176);
        v27 = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 176) = v26;
        *(a1 + 192) = v27;
        *(a1 + 160) = v25;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v19 = *(a2 + 160);

        if (v19)
        {
          *(a1 + 160) = v19;
          *(a1 + 168) = *(a2 + 168);
          (**(v19 - 8))(a1 + 136, a2 + 136, v19);
        }

        else
        {
          v37 = *(a2 + 136);
          v38 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v38;
          *(a1 + 136) = v37;
        }

        if (*(a2 + 184) == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 180) = *(a2 + 180);
          *(a1 + 184) = *(a2 + 184);
        }

        *(a1 + 192) = *(a2 + 192);
        v39 = *(a2 + 208);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = v39;
        *(a1 + 216) = 1;
      }

      else
      {
        v33 = *(a2 + 152);
        *(a1 + 152) = v33;
        *(a1 + 160) = *(a2 + 160);
        (**(v33 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = 0;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    v40 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v40;
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 348) = *(a2 + 348);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *v4 = *v5;
    v41 = *(a2 + 368);

    if (v41)
    {
      *(a1 + 368) = v41;
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
      v42 = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 432) = v42;
    }

    else
    {
      v43 = *(a2 + 384);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = v43;
      v44 = *(a2 + 400);
      v45 = *(a2 + 416);
      v46 = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 416) = v45;
      *(a1 + 432) = v46;
      *(a1 + 400) = v44;
    }

    *(a1 + 456) = 1;
  }

  else
  {
    memcpy((a1 + 8), v6, 0x1C1uLL);
  }

LABEL_52:
  swift_weakCopyAssign();
  *(a1 + 472) = *(a2 + 472);

  *(a1 + 480) = *(a2 + 480);

  v47 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v47;
  v48 = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 504) = v48;
  v49 = *(a2 + 520);
  v50 = *(v5 + 167);
  outlined copy of Environment<Selector?>.Content(v49, v50);
  v51 = *(a1 + 520);
  v52 = *(v4 + 167);
  *(a1 + 520) = v49;
  *(v4 + 167) = v50;
  outlined consume of Environment<Selector?>.Content(v51, v52);
  v53 = *(a2 + 536);
  v54 = *(v5 + 183);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v53, v54);
  v55 = *(a1 + 536);
  v56 = *(v4 + 183);
  *(a1 + 536) = v53;
  *(v4 + 183) = v54;
  outlined consume of Environment<NSManagedObjectContext>.Content(v55, v56);
  *(a1 + 552) = *(v5 + 191);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(v5 + 207);
  *(a1 + 576) = *(a2 + 576);

  *(a1 + 584) = *(v5 + 223);
  *(a1 + 592) = *(a2 + 592);

  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t initializeWithTake for StackItemsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  swift_weakTakeInit();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 497) = *(a2 + 497);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  return a1;
}

uint64_t assignWithTake for StackItemsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    outlined destroy of NavigationState.Base(a1 + 8);
    memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  }

  swift_weakTakeAssign();
  *(a1 + 472) = *(a2 + 472);

  *(a1 + 480) = *(a2 + 480);

  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  v4 = *(a2 + 528);
  v5 = *(a1 + 520);
  v6 = *(a1 + 528);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 544);
  v8 = *(a1 + 536);
  v9 = *(a1 + 544);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = v7;
  outlined consume of Environment<NSManagedObjectContext>.Content(v8, v9);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);

  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);

  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t getEnumTagSinglePayload for StackItemsView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
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

uint64_t storeEnumTagSinglePayload for StackItemsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackItemsView and conformance StackItemsView()
{
  result = lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView;
  if (!lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView);
  }

  return result;
}

uint64_t specialized RootItemModifier.localizedApplicationName()()
{
  v0 = [objc_opt_self() mainBundle];
  result = *MEMORY[0x1E695E120];
  if (!*MEMORY[0x1E695E120])
  {
    __break(1u);
    goto LABEL_44;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = *MEMORY[0x1E695E4F8];
  if (!*MEMORY[0x1E695E4F8])
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v4 = v2;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = [v0 localizedInfoDictionary];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000018CD59D60), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v41);

      if (swift_dynamicCast())
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v12 = [v0 infoDictionary];
  if (v12)
  {
    v13 = v12;
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000018CD59D60), (v16 & 1) != 0))
    {
      outlined init with copy of Any(*(v14 + 56) + 32 * v15, v41);

      if (swift_dynamicCast())
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v17 = [v0 localizedInfoDictionary];
  if (v17)
  {
    v18 = v17;
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v21 & 1) != 0))
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v20, v41);

      if (swift_dynamicCast())
      {
LABEL_19:

LABEL_38:

        return v40;
      }
    }

    else
    {
    }
  }

  v22 = [v0 infoDictionary];
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v22;
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v24 + 16))
  {

    goto LABEL_27;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v41);

  if (swift_dynamicCast())
  {
    goto LABEL_32;
  }

LABEL_28:
  v28 = [v0 localizedInfoDictionary];
  if (v28)
  {
    v29 = v28;
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v6), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v41);

      if (swift_dynamicCast())
      {
LABEL_32:

        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  v33 = [v0 infoDictionary];
  if (v33)
  {
    v34 = v33;
    v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v35 + 16))
    {
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v6);
      v38 = v37;

      if (v38)
      {
        outlined init with copy of Any(*(v35 + 56) + 32 * v36, v41);

        if (swift_dynamicCast())
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }
    }

    else
    {
    }
  }

LABEL_41:

  return 0;
}

unint64_t lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider()
{
  result = lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider;
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _ShadowEffect>, MEMORY[0x1E6981748], MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>();
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _InsetViewModifier<MultimodalNavigationTitleBar>, lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, MEMORY[0x1E697F590]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>);
    }
  }
}