uint64_t AccessibilityRotorModifier.RelationshipScope.nodeList.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

_BYTE *AccessibilityRotorModifier.RelationshipScope.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AGGraphGetValue();
  if (*result != 1 || (result = AccessibilityRotorModifier.RelationshipScope.nodeList.getter(a1, v13), (v7 = v13[0]) == 0))
  {
    v8 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v8 = v13[1];
  if (!(v13[0] >> 62))
  {
    v9 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    *a3 = v7;
    a3[1] = v8;
    return result;
  }

  result = __CocoaSet.count.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v9 >= 1)
  {

    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope] = a2;
    }

    while (v9 != v10);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *AccessibilityRotorModifier.Attachment.value.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *(Value + 16);
  v5 = *(Value + 32);
  v7 = *(Value + 41);
  *v19 = *Value;
  *&v19[16] = v6;
  *&v19[41] = v7;
  *&v19[32] = v5;
  v8 = *(Value + 16);
  v24 = *Value;
  v25 = v8;
  v9 = *(Value + 41);
  *(v22 + 3) = *(Value + 44);
  v22[0] = v9;
  outlined init with copy of AccessibilityRotorInfo(v19, v20);
  v10 = AGCreateWeakAttribute();
  v23 = 0;
  v21 = 0;
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorInfo>, &type metadata for AccessibilityRotorInfo, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  v13 = v24;
  v12 = v25;
  v26[0] = v24;
  v26[1] = v25;
  *v27 = v10;
  v14 = v23;
  v27[8] = v23;
  *&v27[12] = *(v22 + 3);
  *&v27[9] = v22[0];
  *&v27[16] = a1;
  v15 = v21;
  v27[24] = v21;
  *(v11 + 73) = *&v27[9];
  v16 = *v27;
  v11[3] = v12;
  v11[4] = v16;
  v11[1] = xmmword_18CD63400;
  v11[2] = v13;
  *&v28[0] = v11;
  outlined init with copy of AccessibilityRotorInfo(v26, v19);
  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v20);
  v28[0] = v24;
  v28[1] = v25;
  v29 = v10;
  v30 = v14;
  *v31 = v22[0];
  *&v31[3] = *(v22 + 3);
  v32 = a1;
  v33 = v15;
  outlined destroy of AccessibilityRotorInfo(v28);
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v17 = swift_allocObject();
  result = memcpy((v17 + 16), v19, 0x128uLL);
  *a2 = v17;
  a2[1] = 0;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityRotorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>()
{
  if (!lazy cache variable for type metadata for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>();
    lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();
    v0 = type metadata accessor for AccessibilityRotorModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessibilitySystemRotor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySystemRotor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityRotorModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-58 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    outlined copy of Text.Suffix.Storage(*a2, v11, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    (*(v5 + 16))((a1 + v6 + 57) & ~v6, (a2 + v6 + 57) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for AccessibilityRotorModifier(uint64_t *a1, uint64_t a2)
{
  outlined consume of Text.Suffix.Storage(*a1, a1[1], a1[2]);
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 57) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 57 + a1) & ~*(v10 + 80), (*(v10 + 80) + 57 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v7, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Text.Suffix.Storage(v10, v11, v12);
  v13 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v13;
  v14 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v14;
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((*(v15 + 80) + 57 + a1) & ~*(v15 + 80), (*(v15 + 80) + 57 + a2) & ~*(v15 + 80));
  return a1;
}

_OWORD *initializeWithTake for AccessibilityRotorModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 57) & ~*(v5 + 80), (a2 + *(v5 + 80) + 57) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  outlined consume of Text.Suffix.Storage(v6, v7, v8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 57 + a1) & ~*(v10 + 80), (*(v10 + 80) + 57 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      if ((*(a1 + 2) >> 1) > 0x80000000)
      {
        return -(*(a1 + 2) >> 1);
      }

      return 0;
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

void storeEnumTagSinglePayload for AccessibilityRotorModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 57] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 2 * -a2;
    *(a1 + 3) = 0;
  }
}

uint64_t instantiation function for generic protocol witness table for AccessibilityRotorModifier<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilitySystemRotor.RawValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AccessibilitySystemRotor.RawValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue()
{
  result = lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue);
  }

  return result;
}

uint64_t UIKitAccessibilityLinkRotorBridge.search(parameters:)(unint64_t a1, uint64_t a2)
{
  v6 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_3:
  if (!a1)
  {
    goto LABEL_56;
  }

  v3 = *(v2 + v6);
  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_56:
    while (1)
    {
LABEL_15:
      if (a2)
      {
        a1 = 0;
      }

      else
      {
        v13 = *(v2 + v6);
        if (v13 >> 62)
        {
          v22 = __CocoaSet.count.getter();
          a1 = v22 - 1;
          if (__OFSUB__(v22, 1))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            if (a2 < __CocoaSet.count.getter())
            {
              goto LABEL_33;
            }

LABEL_50:

            return 0;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          a1 = v14 - 1;
          if (__OFSUB__(v14, 1))
          {
            goto LABEL_48;
          }
        }
      }

      swift_beginAccess();
      v15 = *(v2 + v6);
      if ((v15 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (a1 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 8 * a1 + 32);
LABEL_23:
        v17 = v16;
        swift_endAccess();
        return v17;
      }

      __break(1u);
LABEL_44:
      v9 = __CocoaSet.count.getter();
      if (v9)
      {
        goto LABEL_6;
      }
    }

    v16 = MEMORY[0x18D00E9C0](a1);
    goto LABEL_23;
  }

LABEL_6:
  a1 = a1;

  v10 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](v10, v3);
      swift_unknownObjectRelease();
      if (v11 == a1)
      {
        break;
      }

      goto LABEL_12;
    }

    if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if (*(v3 + 8 * v10 + 32) == a1)
    {
      break;
    }

LABEL_12:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_3;
      }

      return result;
    }

    ++v10;
    if (v12 == v9)
    {

      goto LABEL_15;
    }
  }

  if (a2)
  {
    a2 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  a2 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_30:
  if (a2 < 0)
  {
    goto LABEL_50;
  }

  v18 = *(v2 + v6);
  if (v18 >> 62)
  {
    goto LABEL_49;
  }

  if (a2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_33:
  result = swift_beginAccess();
  v19 = *(v2 + v6);
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_52:
    v20 = MEMORY[0x18D00E9C0](a2);
LABEL_36:
    v21 = v20;
    swift_endAccess();

    return v21;
  }

  else
  {
    if (a2 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 8 * a2 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in UIKitAccessibilityLinkRotorBridge.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v33);
  if (!v34)
  {
    outlined destroy of Any?(v33);
    (*(v15 + 56))(v13, 1, 1, v14);
    return outlined destroy of URL?(v13);
  }

  v18 = swift_dynamicCast();
  (*(v15 + 56))(v13, v18 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of URL?(v13);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = URL.absoluteString.getter();
  v30 = v20;
  v31 = v19;
  v21 = a2;
  v22 = type metadata accessor for UIKitAccessibilityLinkRotorBridge.LinkElement();
  v23 = objc_allocWithZone(v22);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v24 = &v23[OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_link];
  v25 = v30;
  *v24 = v31;
  v24[1] = v25;
  v26 = &v23[OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_range];
  *v26 = v21;
  *(v26 + 1) = a3;
  v32.receiver = v23;
  v32.super_class = v22;
  objc_msgSendSuper2(&v32, sel_initWithAccessibilityContainer_, a6);
  v27 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
  v28 = swift_beginAccess();
  MEMORY[0x18D00CC30](v28);
  if (*((*(a5 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return (*(v15 + 8))(v17, v14);
}

unint64_t specialized AccessibilitySystemRotor.RawValue.init(rawValue:)(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope()
{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope)
  {
    type metadata accessor for AccessibilityRelationshipScope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope);
  }

  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  type metadata accessor for URL?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of Text.Suffix.Storage(v8, v9, v10);
  v11 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v11;
  v12 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v12;
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  outlined consume of Text.Suffix.Storage(v4, v5, v6);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for AccessibilityRotorInfo(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t *initializeWithCopy for AccessibilityRotorInfo.Designation(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for AccessibilityRotorInfo.Designation(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of Text.Suffix.Storage(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for AccessibilityRotorInfo.Designation(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of Text.Suffix.Storage(v3, v5, v4);
  return a1;
}

uint64_t __designTimeBoolean<A>(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *)@<X7>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a6;
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Optional();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  if (one-time initialization token for __designTimeValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = __designTimeValues._rawValue;
  if (*(__designTimeValues._rawValue + 2) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v21 & 1) != 0))
  {
    outlined init with copy of Any(rawValue[7] + 32 * v20, v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  swift_endAccess();
  _sypSgMaTm_6(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v22 = swift_dynamicCast();
  v23 = (*(*(AssociatedTypeWitness - 8) + 56))(v15, v22 ^ 1u, 1, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v23);
  *(&v28 - 4) = a4;
  *(&v28 - 3) = a5;
  *(&v28 - 2) = a4;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v31, (&v28 - 6), MEMORY[0x1E69E73E0], a4, v24, v18);
  (*(v13 + 8))(v15, v12);
  v25 = *(a4 - 8);
  v26 = *(v25 + 48);
  if (v26(v18, 1, a4) != 1)
  {
    return (*(v25 + 32))(v32, v18, a4);
  }

  (*(v25 + 16))(v32, v30, a4);
  result = (v26)(v18, 1, a4);
  if (result != 1)
  {
    return (*(v28 + 8))(v18, v29);
  }

  return result;
}

__n128 __designTimeString(_:fallback:)@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  outlined init with copy of OSLogMessage(a1, v6);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t __designTimeString<A>(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return __designTimeBoolean<A>(_:fallback:)(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:), a6);
}

{
  return __designTimeBoolean<A>(_:fallback:)(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:), a6);
}

uint64_t implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  return a8(v15, a3, a4);
}

Swift::Void __swiftcall __designTimeApplyIncrementalValues(_:)(Swift::OpaquePointer a1)
{
  v36 = *(a1._rawValue + 2);
  if (!v36)
  {
    return;
  }

  v1 = 0;
  v37 = a1._rawValue + 32;
LABEL_4:
  v2 = *&v37[8 * v1];
  v38 = v1 + 1;
  v39 = v2;
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
    v12 = v8;
LABEL_20:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v39 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    outlined init with copy of Any(*(v39 + 56) + 32 * v16, v41);
    *&v42 = v19;
    *(&v42 + 1) = v18;
    outlined init with take of Any(v41, &v43);

LABEL_21:
    v45 = v42;
    v46[0] = v43;
    v46[1] = v44;
    v20 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      v1 = v38;
      if (v38 == v36)
      {
        return;
      }

      goto LABEL_4;
    }

    v21 = v45;
    outlined init with take of Any(v46, &v42);
    if (one-time initialization token for __designTimeValues != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    outlined init with copy of Any(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = __designTimeValues._rawValue;
    v40 = __designTimeValues._rawValue;
    __designTimeValues._rawValue = 0x8000000000000000;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
    v26 = rawValue[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_37;
    }

    v30 = v25;
    if (rawValue[3] < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v30)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v35 = v24;
    specialized _NativeDictionary.copy()();
    v24 = v35;
    if (v30)
    {
LABEL_8:
      v9 = v24;

      v10 = v40;
      v11 = (v40[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      outlined init with take of Any(v41, v11);
      goto LABEL_9;
    }

LABEL_30:
    v10 = v40;
    v40[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v40[6] + 16 * v24);
    *v32 = v21;
    v32[1] = v20;
    outlined init with take of Any(v41, (v40[7] + 32 * v24));
    v33 = v40[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_38;
    }

    v40[2] = v34;
LABEL_9:
    __designTimeValues._rawValue = v10;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v43 = 0u;
      v44 = 0u;
      v8 = v14;
      v42 = 0u;
      goto LABEL_21;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 48 * v23);
      if (a2)
      {
        v25 = *v24;
        v26 = v24[1];
        *(v53 + 9) = *(v24 + 25);
        v52 = v25;
        v53[0] = v26;
      }

      else
      {
        outlined init with copy of TableRowID(v24, &v52);
      }

      v27 = *(v5 + 56) + 56 * v23;
      v46 = *(v27 + 48);
      v44 = *(v27 + 32);
      v45 = *(v27 + 40);
      v43 = *(v27 + 24);
      v41 = *(v27 + 8);
      v42 = *(v27 + 16);
      v40 = *v27;
      Hasher.init(_seed:)();
      outlined init with copy of TableRowID(&v52, v49);
      if (v51)
      {
        v47[0] = v49[0];
        v47[1] = v49[1];
        v48 = v50;
        MEMORY[0x18D00F6F0](1);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v47);
      }

      else
      {
        v28 = a2;
        v29 = *&v49[0];
        MEMORY[0x18D00F6F0](0);
        v30 = v29;
        a2 = v28;
        MEMORY[0x18D00F6F0](v30);
      }

      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      v17 = v52;
      v18 = v53[0];
      *(v16 + 25) = *(v53 + 9);
      *v16 = v17;
      v16[1] = v18;
      v19 = *(v7 + 56) + 56 * v15;
      *v19 = v40;
      *(v19 + 8) = v41;
      *(v19 + 16) = v42;
      *(v19 + 24) = v43;
      *(v19 + 32) = v44;
      *(v19 + 40) = v45;
      *(v19 + 48) = v46;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + (result << 6));
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 80 * result);
  v5 = a3[4];
  v4[3] = a3[3];
  v4[4] = v5;
  v6 = a3[2];
  v4[1] = a3[1];
  v4[2] = v6;
  *v4 = *a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = outlined init with take of HashableWeakBox<UIViewController>(a2, a4[6] + 16 * a1);
  *(a4[7] + a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 2 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ToolbarContentDescription(0);
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ToolbarContentDescription);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 20) = WORD2(a5);
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4 & 1;
  *(v7 + 9) = HIBYTE(a4);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + (a1 << 6));
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  result = outlined init with take of UpdateViewDestinationRequest(a3, a4[7] + 192 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + (a1 << 7));
  v6 = a2[5];
  v5[4] = a2[4];
  v5[5] = v6;
  v5[6] = a2[6];
  *(v5 + 105) = *(a2 + 105);
  v7 = a2[1];
  *v5 = *a2;
  v5[1] = v7;
  v8 = a2[3];
  v5[2] = a2[2];
  v5[3] = v8;
  result = _s7SwiftUI7WeakBoxVyyXlGWObTm_0(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 288 * a1), __src, 0x119uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  a9[(result >> 6) + 8] |= 1 << result;
  v9 = a9[6] + 32 * result;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = (a9[7] + 24 * result);
  *v10 = a6;
  v10[1] = a7;
  v10[2] = a8;
  v11 = a9[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a9[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6 & 1;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 24 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  v9 = (a8[7] + 24 * result);
  *v9 = a5;
  v9[1] = a6;
  v9[2] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:)(uint64_t a1, uint64_t a2)
{
  return implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(a1, v2[4], v2[2], v2[3], a2, MEMORY[0x1E69E7088], MEMORY[0x1E69E5C08], MEMORY[0x1E69E7080]);
}

{
  return implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(a1, v2[4], v2[2], v2[3], a2, MEMORY[0x1E69E7228], MEMORY[0x1E69E5C38], MEMORY[0x1E69E7220]);
}

uint64_t outlined init with take of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    _sypSgMaTm_6(255, &lazy cache variable for type metadata for [TextFormattingControl], &type metadata for TextFormattingControl, MEMORY[0x1E69E62F8]);
    _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>);
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedFormStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedFormStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.formStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormStyleWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

unint64_t instantiation function for generic protocol witness table for FormStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for FormStyleConfiguration.Footer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>)
  {
    type metadata accessor for FormStyleModifier<AutomaticFormStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for FormStyleModifier<AutomaticFormStyle>()
{
  if (!lazy cache variable for type metadata for FormStyleModifier<AutomaticFormStyle>)
  {
    lazy protocol witness table accessor for type AutomaticFormStyle and conformance AutomaticFormStyle();
    v0 = type metadata accessor for FormStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FormStyleModifier<AutomaticFormStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticFormStyle and conformance AutomaticFormStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle;
  if (!lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle);
  }

  return result;
}

uint64_t FormStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v2 + 24))(v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = *(v4 + 8);
  v12(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v12)(v10, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FormStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FormStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance AnyFormStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t FormStyleWritingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormStyleModifier();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v4 + 16))(v6, v25, v3, v16);
  (*(v4 + 32))(v9, v6, v3);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v9, v10, v7, WitnessTable);
  (*(v24 + 8))(v9, v7);
  v27 = WitnessTable;
  v28 = &protocol witness table for FormStyleModifier<A>;
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetFormEnvironmentModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetFormEnvironmentModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

unint64_t lazy protocol witness table accessor for type Form<FormStyleConfiguration.Content> and conformance Form<A>()
{
  result = lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>;
  if (!lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>)
  {
    type metadata accessor for Form<FormStyleConfiguration.Content>(255, &lazy cache variable for type metadata for Form<FormStyleConfiguration.Content>, &type metadata for FormStyleConfiguration.Content, &protocol witness table for FormStyleConfiguration.Content, type metadata accessor for Form);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyFormStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext()
{
  result = lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext;
  if (!lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext);
  }

  return result;
}

BOOL specialized static AnyFormStyleContext.accepts<A>(_:at:)(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t TabContent.swipeActions<A>(edge:allowsFullSwipe:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = a1;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  (*(v11 + 16))(v13, v5, a3);
  return SwipeActionTabs.init(edge:allowsFullSwipe:content:base:)(v9 & 1, a2, v17, v13, a3, a4, a5);
}

uint64_t SwipeActionTabs.init(edge:allowsFullSwipe:content:base:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1 & 1;
  a7[1] = a2;
  v12 = type metadata accessor for SwipeActionTabs();
  (*(*(a6 - 8) + 32))(&a7[*(v12 + 40)], a3, a6);
  v13 = *(*(a5 - 8) + 32);
  v14 = &a7[*(v12 + 44)];

  return v13(v14, a4, a5);
}

uint64_t SwipeActionTabs<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v40 = a4;
  v8 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = *(a1 + 24);
  v38 = &v31 - v9;
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  v10 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v55 = a3;
  v56 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  v53 = WitnessTable;
  v54 = v12;
  swift_getWitnessTable();
  type metadata accessor for SwipeActionsModifier();
  v33 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v34 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  v13 = type metadata accessor for ModifiedContent();
  v36 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = v38;
  v18 = v8;
  (*(a2 + 56))(v8, a2, v14);
  v19 = v4;
  v20 = *v4;
  LODWORD(WitnessTable) = v19[1];
  v21 = v19;
  v22 = v37;
  v42 = v18;
  v43 = v37;
  v23 = v35;
  v44 = a2;
  v45 = v35;
  v46 = v21;
  v24 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)(v20, WitnessTable, partial apply for closure #1 in SwipeActionTabs<>._identifiedView.getter, v41, v24, v22, AssociatedConformanceWitness, v23, v16);
  (*(v39 + 8))(v17, v24);
  v51 = AssociatedConformanceWitness;
  v52 = &protocol witness table for SwipeActionsModifier<A>;
  v26 = swift_getWitnessTable();
  v27 = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v49 = v26;
  v50 = v27;
  v28 = swift_getWitnessTable();
  IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v47 = v28;
  v48 = IsSharingPicker;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput();
  View.input<A>(_:)();
  return (*(v36 + 8))(v16, v13);
}

uint64_t closure #1 in SwipeActionTabs<>._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SwipeActionTabs();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v11 + 40), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t TabContent.contextMenu<A>(menuItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v12);
  (*(v8 + 16))(v10, v4, a2);
  return ContextMenuTabs.init(menu:base:)(v14, v10, a3, a2, a4);
}

uint64_t ContextMenuTabs.init(menu:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ContextMenuTabs();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

uint64_t type metadata completion function for SwipeActionTabs()
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

void *initializeBufferWithCopyOfBuffer for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = ((((-3 - v5) | v5) - (v6 + v9)) | v9) - *(v8 + 64);
  if ((v9 | v5) <= 7 && ((*(v8 + 80) | *(v4 + 80)) & 0x100000) == 0 && v11 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v15 = &a1[v5 + 2] & ~v5;
    v16 = &a2[v5 + 2] & ~v5;
    (*(v4 + 16))(v15, v16);
    (*(v8 + 16))((v15 + v10) & ~v9, (v16 + v10) & ~v9, v7);
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v9 | v5) + 16) & ~(v9 | v5)));
  }

  return v3;
}

uint64_t destroy for SwipeActionTabs(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 2) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v4 + 56) + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

_BYTE *initializeWithCopy for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v6 + 48) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 48) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *assignWithCopy for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((*(v6 + 40) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 40) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *initializeWithTake for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 32))((*(v6 + 32) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 32) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *assignWithTake for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v6 + 24) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 24) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActionTabs(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = &a1[v9 + 2] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (v23 >= 2)
        {
          return v23 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for SwipeActionTabs(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(a4 + 16);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 2] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t instantiation function for generic protocol witness table for <> ContextMenuTabs<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for TabContent._IdentifiedView : View in <> ContextMenuTabs<A, B>()
{
  return associated type witness table accessor for TabContent._IdentifiedView : View in <> ContextMenuTabs<A, B>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t ContextMenuTabs<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v6 = *(a1 + 16);
  v36 = a2;
  v37 = v6;
  v31 = a1;
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v8 = type metadata accessor for ModifiedContent();
  v48 = a2;
  v49 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  WitnessTable = swift_getWitnessTable();
  v9 = v8;
  v32 = v8;
  v35 = type metadata accessor for ZStack();
  v40 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v31 - v10;
  swift_getWitnessTable();
  v11 = type metadata accessor for PlatformItemContextMenuModifier();
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(a1 + 24);
  v16 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v31 - v18;
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = v37;
  v25 = v36;
  View.styleContext<A>(_:)();
  (*(v16 + 56))(v15, v16);
  v43 = v24;
  v44 = v15;
  v45 = v25;
  v46 = v16;
  v47 = v23;
  static Alignment.center.getter();
  v26 = v34;
  v27 = v32;
  ZStack.init(alignment:content:)();
  (*(v40 + 32))(v14, v26, v35);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v38;
  MEMORY[0x18D00A570](v14, AssociatedTypeWitness, v38, AssociatedConformanceWitness);
  (*(v39 + 8))(v14, v29);
  (*(v33 + 8))(v19, AssociatedTypeWitness);
  return (*(v20 + 8))(v23, v27);
}

uint64_t closure #1 in ContextMenuTabs<>._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v13[0] = a4;
  v13[1] = v10;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v6, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  return (*(v7 + 8))(v9, v6);
}

uint64_t instantiation function for generic protocol witness table for <> SwipeActionTabs<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput()
{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabContextMenuKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  v3 = __swift_project_value_buffer(v2, static TabContextMenuKey.defaultValue);

  return outlined init with copy of TabContextMenuKey.Storage?(v3, a1);
}

uint64_t outlined init with copy of TabContextMenuKey.Storage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for TabContextMenuKey.Storage(void *a1, void *a2)
{
  v4 = *(*(type metadata accessor for TabContextMenuKey.Storage.Guts(0) - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_62:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v6 = type metadata accessor for PlatformItemList.Item();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
      goto LABEL_62;
    }

    v110 = v7;
    v111 = v6;
    v9 = *a2;
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2[3];
    a1[2] = a2[2];
    a1[3] = v11;
    *(a1 + 32) = *(a2 + 32);
    v12 = a2[6];
    a1[5] = a2[5];
    a1[6] = v12;
    *(a1 + 56) = *(a2 + 56);
    v13 = a2[24];
    v14 = v9;
    v15 = v10;

    if (v13 >> 1 == 4294967294)
    {
      v16 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v16;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v17 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v17;
      v18 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v18;
      v19 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v19;
      v20 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v20;
      v21 = a2[33];
      if (v21)
      {
LABEL_9:
        a1[32] = a2[32];
        a1[33] = v21;
        v22 = a2[34];

        if (v22 >= 2)
        {
          v23 = v22;
        }

        a1[34] = v22;
        *(a1 + 70) = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v24 = a2[37];
        a1[36] = a2[36];
        a1[37] = v24;

LABEL_20:
        v35 = a2[42];
        if (v35 >> 2 == 0xFFFFFFFF)
        {
          v36 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v36;
          a1[50] = a2[50];
          v37 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v37;
          v38 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v38;
        }

        else
        {
          v39 = a2[38];
          v40 = a2[39];
          v41 = a2[40];
          v42 = a2[43];
          v43 = a2[44];
          v44 = a2[45];
          v99 = a2[41];
          v100 = a2[46];
          v101 = a2[47];
          v103 = a2[48];
          v105 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v39, v40, v41, v99, v35, v42, v43, v44, v100, v101, v103, v105, __dsta);
          a1[38] = v39;
          a1[39] = v40;
          a1[40] = v41;
          a1[41] = v99;
          a1[42] = v35;
          a1[43] = v42;
          a1[44] = v43;
          a1[45] = v44;
          a1[46] = v100;
          a1[47] = v101;
          a1[48] = v103;
          a1[49] = v105;
          a1[50] = __dsta;
        }

        v45 = a2[52];
        if (v45 == 1)
        {
          v46 = *(a2 + 57);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 57) = v46;
          *(a1 + 472) = *(a2 + 472);
          v47 = *(a2 + 53);
          *(a1 + 51) = *(a2 + 51);
          *(a1 + 53) = v47;
          goto LABEL_33;
        }

        *(a1 + 102) = *(a2 + 102);
        *(a1 + 412) = *(a2 + 412);
        if (v45)
        {
          v48 = a2[53];
          a1[52] = v45;
          a1[53] = v48;

          v49 = a2[54];
          if (v49)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v49 = a2[54];
          if (v49)
          {
LABEL_27:
            v50 = a2[55];
            a1[54] = v49;
            a1[55] = v50;

            v51 = a2[56];
            if (v51)
            {
LABEL_28:
              v52 = a2[57];
              a1[56] = v51;
              a1[57] = v52;

LABEL_32:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_33:
              v53 = a2[61];
              a1[60] = a2[60];
              a1[61] = v53;
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v54 = a2[64];

              if (v54)
              {
                v55 = a2[65];
                a1[64] = v54;
                a1[65] = v55;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_48;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              v56 = a1 + 75;
              v57 = a2 + 75;
              v58 = a2[78];

              if (v58)
              {
                if (v58 == 1)
                {
                  v59 = *(a2 + 77);
                  *v56 = *v57;
                  *(a1 + 77) = v59;
                  *(a1 + 79) = *(a2 + 79);
LABEL_44:
                  a1[81] = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  v61 = a1 + 83;
                  v62 = a2 + 83;
                  v63 = a2[97];
                  if (v63 == 1)
                  {
                    v64 = *(a2 + 97);
                    *(a1 + 95) = *(a2 + 95);
                    *(a1 + 97) = v64;
                    *(a1 + 99) = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    v65 = *(a2 + 89);
                    *(a1 + 87) = *(a2 + 87);
                    *(a1 + 89) = v65;
                    v66 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v66;
                    v67 = *(a2 + 85);
                    *v61 = *v62;
                    *(a1 + 85) = v67;
                  }

                  else
                  {
                    *v61 = *v62;
                    *(a1 + 672) = *(a2 + 672);
                    a1[85] = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    v68 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v68;
                    a1[92] = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = v63;
                    *(a1 + 49) = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_48:
                  v69 = a1 + 105;
                  v70 = a2 + 105;
                  v71 = a2[108];
                  if (v71)
                  {
                    if (v71 == 1)
                    {
                      v72 = *(a2 + 107);
                      *v69 = *v70;
                      *(a1 + 107) = v72;
                      *(a1 + 109) = *(a2 + 109);
                      a1[111] = a2[111];
LABEL_55:
                      v76 = a2[112];
                      a1[112] = v76;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      *(a1 + 954) = *(a2 + 954);
                      v77 = v111[28];
                      __dst = a1 + v77;
                      v78 = a2 + v77;
                      v79 = type metadata accessor for CommandOperation();
                      v104 = *(v79 - 8);
                      v106 = *(v104 + 48);
                      v80 = v76;

                      if (v106(v78, 1, v79))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v78, *(*(v81 - 8) + 64));
                        v82 = v111;
                        v83 = v110;
                      }

                      else
                      {
                        *__dst = *v78;
                        v84 = *(v79 + 20);
                        v85 = &__dst[v84];
                        v86 = &v78[v84];
                        v107 = v78;
                        v87 = v79;
                        v88 = *v86;
                        v89 = *(v86 + 1);
                        v90 = v86[16];
                        outlined copy of Text.Storage(*v86, v89, v90);
                        *v85 = v88;
                        *(v85 + 1) = v89;
                        v85[16] = v90;
                        *(v85 + 3) = *(v86 + 3);
                        v91 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v92 = type metadata accessor for UUID();
                        v102 = *(*(v92 - 8) + 16);

                        v102(&v85[v91], &v86[v91], v92);
                        v93 = *(v87 + 24);
                        v94 = &__dst[v93];
                        v95 = &v107[v93];
                        if (*v95)
                        {
                          v96 = v95[1];
                          *v94 = *v95;
                          v94[1] = v96;
                        }

                        else
                        {
                          *v94 = *v95;
                        }

                        v82 = v111;
                        v83 = v110;
                        (*(v104 + 56))(__dst, 0, 1, v87);
                      }

                      *(a1 + v82[29]) = *(a2 + v82[29]);
                      *(a1 + v82[30]) = *(a2 + v82[30]);
                      *(a1 + v82[31]) = *(a2 + v82[31]);
                      *(a1 + v82[32]) = *(a2 + v82[32]);
                      *(a1 + v82[33]) = *(a2 + v82[33]);
                      *(a1 + v82[34]) = *(a2 + v82[34]);
                      v97 = *(v83 + 56);

                      v97(a1, 0, 1, v82);
                      goto LABEL_62;
                    }

                    a1[108] = v71;
                    a1[109] = a2[109];
                    (**(v71 - 8))(v69, v70);
                    v74 = a2[110];
                    if (!v74)
                    {
LABEL_54:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v73 = *(a2 + 107);
                    *v69 = *v70;
                    *(a1 + 107) = v73;
                    a1[109] = a2[109];
                    v74 = a2[110];
                    if (!v74)
                    {
                      goto LABEL_54;
                    }
                  }

                  v75 = a2[111];
                  a1[110] = v74;
                  a1[111] = v75;

                  goto LABEL_55;
                }

                a1[78] = v58;
                a1[79] = a2[79];
                (**(v58 - 8))((a1 + 75), (a2 + 75), v58);
              }

              else
              {
                v60 = *(a2 + 77);
                *v56 = *v57;
                *(a1 + 77) = v60;
                a1[79] = a2[79];
              }

              a1[80] = a2[80];

              goto LABEL_44;
            }

LABEL_31:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_32;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v51 = a2[56];
        if (v51)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = a2[8];
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        a1[8] = v26;
        *(a1 + 72) = v25;
        v13 = a2[24];
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 19) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v13 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v27;
      }

      else
      {
        v28 = a2[22];
        v29 = a2[23];
        v30 = a2[25];
        outlined copy of AccessibilityImageLabel(v28, v29, v13);
        a1[22] = v28;
        a1[23] = v29;
        a1[24] = v13;
        a1[25] = v30;
      }

      v31 = a2[27];
      a1[26] = a2[26];
      a1[27] = v31;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      v32 = a2[30];
      a1[30] = v32;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
      v21 = a2[33];
      if (v21)
      {
        goto LABEL_9;
      }
    }

    v34 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v34;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_20;
  }

  v5 = *a2;
  *a1 = *a2;
  a1 = (v5 + ((v4 + 16) & ~v4));

  return a1;
}

void type metadata accessor for TabContextMenuKey.Storage?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t destroy for TabContextMenuKey.Storage(uint64_t a1)
{
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v2 = type metadata accessor for PlatformItemList.Item();
    result = (*(*(v2 - 8) + 48))(a1, 1, v2);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 192);
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v6 = *(a1 + 72);
      if (v6 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
        v4 = *(a1 + 192);
        v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v5 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4);
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v7 = *(a1 + 272);
      if (v7 >= 2)
      {
      }
    }

    v8 = *(a1 + 336);
    if (v8 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v9 = *(a1 + 416);
    if (v9)
    {
      if (v9 == 1)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_22:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_32:
      v11 = *(a1 + 864);
      if (v11)
      {
        if (v11 == 1)
        {
LABEL_37:

          v12 = a1 + *(v2 + 112);
          v13 = type metadata accessor for CommandOperation();
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            v14 = v12 + *(v13 + 20);
            outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

            v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v16 = type metadata accessor for UUID();
            (*(*(v16 - 8) + 8))(v14 + v15, v16);
            if (*(v12 + *(v13 + 24)))
            {
            }
          }

          goto LABEL_40;
        }

        __swift_destroy_boxed_opaque_existential_1(a1 + 840);
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_37;
    }

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_29:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_29;
  }

LABEL_40:
}

void *initializeWithCopy for TabContextMenuKey.Storage(void *a1, void *a2)
{
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;

    goto LABEL_60;
  }

  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_60;
  }

  v7 = *a2;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  v9 = a2[3];
  a1[2] = a2[2];
  a1[3] = v9;
  *(a1 + 32) = *(a2 + 32);
  v10 = a2[6];
  a1[5] = a2[5];
  a1[6] = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = a2[24];
  v12 = v7;
  v13 = v8;

  if (v11 >> 1 != 4294967294)
  {
    v23 = *(a2 + 72);
    if (v23 == 255)
    {
      a1[8] = a2[8];
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v24 = a2[8];
      outlined copy of GraphicsImage.Contents(v24, *(a2 + 72));
      a1[8] = v24;
      *(a1 + 72) = v23;
      v11 = a2[24];
    }

    a1[10] = a2[10];
    *(a1 + 11) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      v25 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v25;
    }

    else
    {
      v26 = a2[22];
      v27 = a2[23];
      v28 = a2[25];
      outlined copy of AccessibilityImageLabel(v26, v27, v11);
      a1[22] = v26;
      a1[23] = v27;
      a1[24] = v11;
      a1[25] = v28;
    }

    v29 = a2[27];
    a1[26] = a2[26];
    a1[27] = v29;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 232) = *(a2 + 232);
    v30 = a2[30];
    a1[30] = v30;
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v31 = v30;
    v19 = a2[33];
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_17:
    v32 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v32;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v14 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v14;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v15 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v15;
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  v17 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v17;
  v18 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v18;
  v19 = a2[33];
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_7:
  a1[32] = a2[32];
  a1[33] = v19;
  v20 = a2[34];

  if (v20 >= 2)
  {
    v21 = v20;
  }

  a1[34] = v20;
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v22 = a2[37];
  a1[36] = a2[36];
  a1[37] = v22;

LABEL_18:
  v33 = a2[42];
  v109 = v4;
  v108 = v5;
  if (v33 >> 2 == 0xFFFFFFFF)
  {
    v34 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v34;
    a1[50] = a2[50];
    v35 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v35;
    v36 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v36;
  }

  else
  {
    v37 = a2[38];
    v38 = a2[39];
    v39 = a2[40];
    v40 = a2[41];
    v42 = a2[43];
    v41 = a2[44];
    v43 = a2[45];
    v98 = a2[46];
    v99 = a2[47];
    v101 = a2[48];
    v103 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v37, v38, v39, v40, v33, v42, v41, v43, v98, v99, v101, v103, __dsta);
    a1[38] = v37;
    a1[39] = v38;
    a1[40] = v39;
    a1[41] = v40;
    a1[42] = v33;
    a1[43] = v42;
    v4 = v109;
    a1[44] = v41;
    a1[45] = v43;
    a1[46] = v98;
    a1[47] = v99;
    a1[48] = v101;
    a1[49] = v103;
    a1[50] = __dsta;
  }

  v44 = a2[52];
  if (v44 == 1)
  {
    v45 = *(a2 + 57);
    *(a1 + 55) = *(a2 + 55);
    *(a1 + 57) = v45;
    *(a1 + 472) = *(a2 + 472);
    v46 = *(a2 + 53);
    *(a1 + 51) = *(a2 + 51);
    *(a1 + 53) = v46;
    goto LABEL_31;
  }

  *(a1 + 102) = *(a2 + 102);
  *(a1 + 412) = *(a2 + 412);
  if (v44)
  {
    v47 = a2[53];
    a1[52] = v44;
    a1[53] = v47;

    v48 = a2[54];
    if (v48)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(a1 + 27) = *(a2 + 27);
    v50 = a2[56];
    if (v50)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_30;
  }

  *(a1 + 26) = *(a2 + 26);
  v48 = a2[54];
  if (!v48)
  {
    goto LABEL_28;
  }

LABEL_25:
  v49 = a2[55];
  a1[54] = v48;
  a1[55] = v49;

  v50 = a2[56];
  if (!v50)
  {
    goto LABEL_29;
  }

LABEL_26:
  v51 = a2[57];
  a1[56] = v50;
  a1[57] = v51;

LABEL_30:
  a1[58] = a2[58];
  *(a1 + 472) = *(a2 + 472);
LABEL_31:
  v52 = a2[61];
  a1[60] = a2[60];
  a1[61] = v52;
  a1[62] = a2[62];
  *(a1 + 504) = *(a2 + 504);
  v53 = a2[64];

  if (v53)
  {
    v54 = a2[65];
    a1[64] = v53;
    a1[65] = v54;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 67, a2 + 67, 0x130uLL);
    goto LABEL_46;
  }

  a1[67] = a2[67];
  a1[68] = a2[68];
  *(a1 + 552) = *(a2 + 552);
  a1[70] = a2[70];
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 592) = *(a2 + 592);
  v55 = a1 + 75;
  v56 = a2 + 75;
  v57 = a2[78];

  if (!v57)
  {
    v59 = *(a2 + 77);
    *v55 = *v56;
    *(a1 + 77) = v59;
    a1[79] = a2[79];
LABEL_41:
    a1[80] = a2[80];

    goto LABEL_42;
  }

  if (v57 != 1)
  {
    a1[78] = v57;
    a1[79] = a2[79];
    (**(v57 - 8))((a1 + 75), (a2 + 75), v57);
    goto LABEL_41;
  }

  v58 = *(a2 + 77);
  *v55 = *v56;
  *(a1 + 77) = v58;
  *(a1 + 79) = *(a2 + 79);
LABEL_42:
  a1[81] = a2[81];
  *(a1 + 656) = *(a2 + 656);
  v60 = a1 + 83;
  v61 = a2 + 83;
  v62 = a2[97];
  if (v62 == 1)
  {
    v63 = *(a2 + 97);
    *(a1 + 95) = *(a2 + 95);
    *(a1 + 97) = v63;
    *(a1 + 99) = *(a2 + 99);
    *(a1 + 808) = *(a2 + 808);
    v64 = *(a2 + 89);
    *(a1 + 87) = *(a2 + 87);
    *(a1 + 89) = v64;
    v65 = *(a2 + 93);
    *(a1 + 91) = *(a2 + 91);
    *(a1 + 93) = v65;
    v66 = *(a2 + 85);
    *v60 = *v61;
    *(a1 + 85) = v66;
  }

  else
  {
    *v60 = *v61;
    *(a1 + 672) = *(a2 + 672);
    a1[85] = a2[85];
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    a1[87] = a2[87];
    v67 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v67;
    a1[92] = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    *(a1 + 768) = *(a2 + 768);
    a1[97] = v62;
    *(a1 + 49) = *(a2 + 49);
    a1[100] = a2[100];
    *(a1 + 808) = *(a2 + 808);
  }

  a1[102] = a2[102];
  a1[103] = a2[103];
  a1[104] = a2[104];

LABEL_46:
  v68 = a1 + 105;
  v69 = a2 + 105;
  v70 = a2[108];
  if (!v70)
  {
    v72 = *(a2 + 107);
    *v68 = *v69;
    *(a1 + 107) = v72;
    a1[109] = a2[109];
    v73 = a2[110];
    if (!v73)
    {
LABEL_52:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_53;
    }

LABEL_50:
    v74 = a2[111];
    a1[110] = v73;
    a1[111] = v74;

    goto LABEL_53;
  }

  if (v70 != 1)
  {
    a1[108] = v70;
    a1[109] = a2[109];
    (**(v70 - 8))(v68, v69);
    v73 = a2[110];
    if (!v73)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v71 = *(a2 + 107);
  *v68 = *v69;
  *(a1 + 107) = v71;
  *(a1 + 109) = *(a2 + 109);
  a1[111] = a2[111];
LABEL_53:
  v75 = a2[112];
  a1[112] = v75;
  a1[113] = a2[113];
  a1[114] = a2[114];
  a1[115] = a2[115];
  a1[116] = a2[116];
  a1[117] = a2[117];
  a1[118] = a2[118];
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 954) = *(a2 + 954);
  v76 = *(v4 + 112);
  __dst = a1 + v76;
  v77 = a2 + v76;
  v78 = type metadata accessor for CommandOperation();
  v102 = *(v78 - 8);
  v104 = *(v102 + 48);
  v79 = v75;
  v80 = v77;

  if (v104(v77, 1, v78))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(__dst, v77, *(*(v81 - 8) + 64));
    v82 = v109;
  }

  else
  {
    *__dst = *v77;
    v83 = *(v78 + 20);
    v84 = v78;
    v85 = &__dst[v83];
    v86 = &v80[v83];
    v105 = v80;
    v87 = *&v80[v83];
    v88 = *(v86 + 1);
    v89 = v86[16];
    outlined copy of Text.Storage(v87, v88, v89);
    *v85 = v87;
    *(v85 + 1) = v88;
    v85[16] = v89;
    *(v85 + 3) = *(v86 + 3);
    v90 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v91 = type metadata accessor for UUID();
    v100 = *(*(v91 - 8) + 16);

    v100(&v85[v90], &v86[v90], v91);
    v92 = *(v84 + 24);
    v93 = &__dst[v92];
    v94 = &v105[v92];
    if (*v94)
    {
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
    }

    else
    {
      *v93 = *v94;
    }

    v82 = v109;
    (*(v102 + 56))(__dst, 0, 1, v84);
  }

  *(a1 + v82[29]) = *(a2 + v82[29]);
  *(a1 + v82[30]) = *(a2 + v82[30]);
  *(a1 + v82[31]) = *(a2 + v82[31]);
  *(a1 + v82[32]) = *(a2 + v82[32]);
  *(a1 + v82[33]) = *(a2 + v82[33]);
  *(a1 + v82[34]) = *(a2 + v82[34]);
  v96 = *(v108 + 56);

  v96(a1, 0, 1, v82);
LABEL_60:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TabContextMenuKey.Storage(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
    type metadata accessor for TabContextMenuKey.Storage.Guts(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_61:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v4 = type metadata accessor for PlatformItemList.Item();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(a2, 1, v4))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_61;
    }

    v128 = v5;
    v7 = *a2;
    *a1 = *a2;
    v8 = a2[1];
    a1[1] = v8;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *(a1 + 32) = *(a2 + 32);
    a1[5] = a2[5];
    a1[6] = a2[6];
    *(a1 + 56) = *(a2 + 56);
    v9 = a2[24];
    v10 = v7;
    v11 = v8;

    if (v9 >> 1 == 4294967294)
    {
      v12 = *(a2 + 4);
      v13 = *(a2 + 5);
      v14 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v14;
      *(a1 + 4) = v12;
      *(a1 + 5) = v13;
      v15 = *(a2 + 8);
      v16 = *(a2 + 9);
      v17 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v17;
      *(a1 + 8) = v15;
      *(a1 + 9) = v16;
      v18 = *(a2 + 12);
      v19 = *(a2 + 13);
      v20 = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 13) = v19;
      *(a1 + 14) = v20;
      *(a1 + 12) = v18;
      if (a2[33])
      {
LABEL_8:
        a1[32] = a2[32];
        a1[33] = a2[33];
        v21 = a2[34];

        if (v21 >= 2)
        {
          v22 = v21;
        }

        a1[34] = v21;
        v23 = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 70) = v23;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        a1[36] = a2[36];
        a1[37] = a2[37];

LABEL_19:
        v40 = a2[42];
        v129 = v4;
        if (v40 >> 2 == 0xFFFFFFFF)
        {
          v41 = *(a2 + 19);
          v42 = *(a2 + 21);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 21) = v42;
          *(a1 + 19) = v41;
          v43 = *(a2 + 22);
          v44 = *(a2 + 23);
          v45 = *(a2 + 24);
          a1[50] = a2[50];
          *(a1 + 23) = v44;
          *(a1 + 24) = v45;
          *(a1 + 22) = v43;
        }

        else
        {
          v46 = a2[38];
          v47 = a2[39];
          v48 = a2[40];
          v49 = a2[41];
          v51 = a2[43];
          v50 = a2[44];
          v52 = a2[45];
          v118 = a2[46];
          v119 = a2[47];
          v121 = a2[48];
          v123 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v46, v47, v48, v49, v40, v51, v50, v52, v118, v119, v121, v123, __dsta);
          a1[38] = v46;
          a1[39] = v47;
          a1[40] = v48;
          a1[41] = v49;
          a1[42] = v40;
          a1[43] = v51;
          v4 = v129;
          a1[44] = v50;
          a1[45] = v52;
          a1[46] = v118;
          a1[47] = v119;
          a1[48] = v121;
          a1[49] = v123;
          a1[50] = __dsta;
        }

        if (a2[52] == 1)
        {
          *(a1 + 51) = *(a2 + 51);
          v53 = *(a2 + 53);
          v54 = *(a2 + 55);
          v55 = *(a2 + 57);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 55) = v54;
          *(a1 + 57) = v55;
          *(a1 + 53) = v53;
          goto LABEL_32;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v56 = a2[52];
        if (v56)
        {
          v57 = a2[53];
          a1[52] = v56;
          a1[53] = v57;

          v58 = a2[54];
          if (v58)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v58 = a2[54];
          if (v58)
          {
LABEL_26:
            v59 = a2[55];
            a1[54] = v58;
            a1[55] = v59;

            v60 = a2[56];
            if (v60)
            {
LABEL_27:
              v61 = a2[57];
              a1[56] = v60;
              a1[57] = v61;

LABEL_31:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_32:
              a1[60] = a2[60];
              a1[61] = a2[61];
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v62 = a2[64];

              if (v62)
              {
                v63 = a2[65];
                a1[64] = v62;
                a1[65] = v63;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_47;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              v64 = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 36) = v64;
              v65 = a1 + 75;
              v66 = (a2 + 75);
              v67 = a2[78];

              if (v67)
              {
                if (v67 == 1)
                {
                  v68 = *v66;
                  v69 = *(a2 + 79);
                  *(a1 + 77) = *(a2 + 77);
                  *(a1 + 79) = v69;
                  *v65 = v68;
LABEL_43:
                  v72 = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  a1[81] = v72;
                  v73 = a1 + 83;
                  v74 = a2 + 83;
                  if (a2[97] == 1)
                  {
                    v75 = *(a2 + 85);
                    *v73 = *v74;
                    *(a1 + 85) = v75;
                    v76 = *(a2 + 87);
                    v77 = *(a2 + 89);
                    v78 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v78;
                    *(a1 + 87) = v76;
                    *(a1 + 89) = v77;
                    v79 = *(a2 + 95);
                    v80 = *(a2 + 97);
                    v81 = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 97) = v80;
                    *(a1 + 99) = v81;
                    *(a1 + 95) = v79;
                  }

                  else
                  {
                    v82 = *v74;
                    *(a1 + 672) = *(a2 + 672);
                    *v73 = v82;
                    v83 = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    a1[85] = v83;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    a1[88] = a2[88];
                    a1[89] = a2[89];
                    a1[90] = a2[90];
                    a1[91] = a2[91];
                    a1[92] = a2[92];
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    a1[94] = a2[94];
                    a1[95] = a2[95];
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = a2[97];
                    v84 = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 49) = v84;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_47:
                  v85 = a1 + 105;
                  v86 = (a2 + 105);
                  v87 = a2[108];
                  if (v87)
                  {
                    if (v87 == 1)
                    {
                      v88 = *v86;
                      v89 = *(a2 + 107);
                      v90 = *(a2 + 109);
                      a1[111] = a2[111];
                      *(a1 + 107) = v89;
                      *(a1 + 109) = v90;
                      *v85 = v88;
LABEL_54:
                      v95 = a2[112];
                      a1[112] = v95;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v96 = *(v4 + 112);
                      __dst = a1 + v96;
                      v97 = a2 + v96;
                      v98 = type metadata accessor for CommandOperation();
                      v122 = *(v98 - 8);
                      v124 = *(v122 + 48);
                      v99 = v95;
                      v100 = v97;

                      if (v124(v97, 1, v98))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v97, *(*(v101 - 8) + 64));
                        v102 = v129;
                      }

                      else
                      {
                        *__dst = *v97;
                        v103 = *(v98 + 20);
                        v104 = v98;
                        v105 = &__dst[v103];
                        v106 = &v100[v103];
                        v125 = v100;
                        v107 = *&v100[v103];
                        v108 = *(v106 + 1);
                        v109 = v106[16];
                        outlined copy of Text.Storage(v107, v108, v109);
                        *v105 = v107;
                        *(v105 + 1) = v108;
                        v105[16] = v109;
                        *(v105 + 3) = *(v106 + 3);
                        v110 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v111 = type metadata accessor for UUID();
                        v120 = *(*(v111 - 8) + 16);

                        v120(&v105[v110], &v106[v110], v111);
                        v112 = *(v104 + 24);
                        v113 = &__dst[v112];
                        v114 = &v125[v112];
                        if (*v114)
                        {
                          v115 = v114[1];
                          *v113 = *v114;
                          v113[1] = v115;
                        }

                        else
                        {
                          *v113 = *v114;
                        }

                        v102 = v129;
                        (*(v122 + 56))(__dst, 0, 1, v104);
                      }

                      *(a1 + v102[29]) = *(a2 + v102[29]);
                      *(a1 + v102[30]) = *(a2 + v102[30]);
                      *(a1 + v102[31]) = *(a2 + v102[31]);
                      *(a1 + v102[32]) = *(a2 + v102[32]);
                      *(a1 + v102[33]) = *(a2 + v102[33]);
                      *(a1 + v102[34]) = *(a2 + v102[34]);
                      v116 = *(v128 + 56);

                      v116(a1, 0, 1, v102);
                      goto LABEL_61;
                    }

                    a1[108] = v87;
                    a1[109] = a2[109];
                    (**(v87 - 8))(v85, v86);
                    v93 = a2[110];
                    if (!v93)
                    {
LABEL_53:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v91 = *v86;
                    v92 = *(a2 + 107);
                    a1[109] = a2[109];
                    *v85 = v91;
                    *(a1 + 107) = v92;
                    v93 = a2[110];
                    if (!v93)
                    {
                      goto LABEL_53;
                    }
                  }

                  v94 = a2[111];
                  a1[110] = v93;
                  a1[111] = v94;

                  goto LABEL_54;
                }

                a1[78] = v67;
                a1[79] = a2[79];
                (**(v67 - 8))((a1 + 75), (a2 + 75), v67);
              }

              else
              {
                v70 = *v66;
                v71 = *(a2 + 77);
                a1[79] = a2[79];
                *v65 = v70;
                *(a1 + 77) = v71;
              }

              a1[80] = a2[80];

              goto LABEL_43;
            }

LABEL_30:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_31;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v60 = a2[56];
        if (v60)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a2 + 72);
      if (v24 == 255)
      {
        v26 = a2[8];
        *(a1 + 72) = *(a2 + 72);
        a1[8] = v26;
      }

      else
      {
        v25 = a2[8];
        outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
        a1[8] = v25;
        *(a1 + 72) = v24;
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      v27 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v27;
      v28 = *(a2 + 17);
      v29 = *(a2 + 19);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 19) = v29;
      *(a1 + 17) = v28;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v30 = a2[24];
      if (v30 >> 1 == 0xFFFFFFFF)
      {
        v31 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v31;
      }

      else
      {
        v32 = a2[22];
        v33 = a2[23];
        v34 = a2[25];
        outlined copy of AccessibilityImageLabel(v32, v33, a2[24]);
        a1[22] = v32;
        a1[23] = v33;
        a1[24] = v30;
        a1[25] = v34;
      }

      a1[26] = a2[26];
      a1[27] = a2[27];
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v35 = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 57) = v35;
      v36 = a2[30];
      a1[30] = v36;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v37 = v36;
      if (a2[33])
      {
        goto LABEL_8;
      }
    }

    v38 = *(a2 + 16);
    v39 = *(a2 + 18);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 18) = v39;
    *(a1 + 16) = v38;
    goto LABEL_19;
  }

  return a1;
}

_OWORD *initializeWithTake for TabContextMenuKey.Storage(_OWORD *a1, _OWORD *a2)
{
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = type metadata accessor for PlatformItemList.Item();
    v8 = *(v7 - 1);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v11 = a2[13];
      a1[12] = a2[12];
      a1[13] = v11;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v12 = a2[9];
      a1[8] = a2[8];
      a1[9] = v12;
      v13 = a2[11];
      a1[10] = a2[10];
      a1[11] = v13;
      v14 = a2[5];
      a1[4] = a2[4];
      a1[5] = v14;
      v15 = a2[7];
      a1[6] = a2[6];
      a1[7] = v15;
      v16 = a2[17];
      a1[16] = a2[16];
      a1[17] = v16;
      v17 = a2[23];
      a1[22] = a2[22];
      a1[23] = v17;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v18 = a2[19];
      a1[18] = a2[18];
      a1[19] = v18;
      v19 = a2[21];
      a1[20] = a2[20];
      a1[21] = v19;
      v20 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v20;
      *(a1 + 472) = *(a2 + 472);
      v21 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v21;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v22 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v22;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v23 = v7[28];
      v24 = a1 + v23;
      v25 = a2 + v23;
      v26 = type metadata accessor for CommandOperation();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v24, v25, *(*(v28 - 8) + 64));
      }

      else
      {
        *v24 = *v25;
        v29 = *(v26 + 20);
        v30 = &v24[v29];
        v37 = v24;
        v31 = &v25[v29];
        v32 = *&v25[v29 + 16];
        *v30 = *&v25[v29];
        v30[1] = v32;
        v38 = v8;
        v33 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v34 = type metadata accessor for UUID();
        v35 = v30 + v33;
        v36 = &v31[v33];
        v8 = v38;
        (*(*(v34 - 8) + 32))(v35, v36, v34);
        *&v37[*(v26 + 24)] = *&v25[*(v26 + 24)];
        (*(v27 + 56))();
      }

      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      *(a1 + v7[31]) = *(a2 + v7[31]);
      *(a1 + v7[32]) = *(a2 + v7[32]);
      *(a1 + v7[33]) = *(a2 + v7[33]);
      *(a1 + v7[34]) = *(a2 + v7[34]);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_OWORD *assignWithTake for TabContextMenuKey.Storage(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for PlatformItemList.Item();
    v8 = *(v7 - 1);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v11 = a2[13];
      a1[12] = a2[12];
      a1[13] = v11;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v12 = a2[9];
      a1[8] = a2[8];
      a1[9] = v12;
      v13 = a2[11];
      a1[10] = a2[10];
      a1[11] = v13;
      v14 = a2[5];
      a1[4] = a2[4];
      a1[5] = v14;
      v15 = a2[7];
      a1[6] = a2[6];
      a1[7] = v15;
      v16 = a2[17];
      a1[16] = a2[16];
      a1[17] = v16;
      v17 = a2[23];
      a1[22] = a2[22];
      a1[23] = v17;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v18 = a2[19];
      a1[18] = a2[18];
      a1[19] = v18;
      v19 = a2[21];
      a1[20] = a2[20];
      a1[21] = v19;
      v20 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v20;
      *(a1 + 472) = *(a2 + 472);
      v21 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v21;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v22 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v22;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v23 = v7[28];
      v24 = a1 + v23;
      v25 = a2 + v23;
      v26 = type metadata accessor for CommandOperation();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v24, v25, *(*(v28 - 8) + 64));
      }

      else
      {
        *v24 = *v25;
        v29 = *(v26 + 20);
        v30 = &v24[v29];
        v37 = v24;
        v31 = &v25[v29];
        v32 = *&v25[v29 + 16];
        *v30 = *&v25[v29];
        v30[1] = v32;
        v38 = v8;
        v33 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v34 = type metadata accessor for UUID();
        v35 = v30 + v33;
        v36 = &v31[v33];
        v8 = v38;
        (*(*(v34 - 8) + 32))(v35, v36, v34);
        *&v37[*(v26 + 24)] = *&v25[*(v26 + 24)];
        (*(v27 + 56))();
      }

      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      *(a1 + v7[31]) = *(a2 + v7[31]);
      *(a1 + v7[32]) = *(a2 + v7[32]);
      *(a1 + v7[33]) = *(a2 + v7[33]);
      *(a1 + v7[34]) = *(a2 + v7[34]);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t type metadata completion function for TabContextMenuKey.Storage()
{
  result = type metadata accessor for TabContextMenuKey.Storage.Guts(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TabContextMenuKey.Storage.Guts(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_62:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v7 = type metadata accessor for PlatformItemList.Item();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
      goto LABEL_62;
    }

    v111 = v8;
    v112 = v7;
    v10 = *a2;
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    v12 = a2[3];
    a1[2] = a2[2];
    a1[3] = v12;
    *(a1 + 32) = *(a2 + 32);
    v13 = a2[6];
    a1[5] = a2[5];
    a1[6] = v13;
    *(a1 + 56) = *(a2 + 56);
    v14 = a2[24];
    v15 = v10;
    v16 = v11;

    if (v14 >> 1 == 4294967294)
    {
      v17 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v17;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v18 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v18;
      v19 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v19;
      v20 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v20;
      v21 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v21;
      v22 = a2[33];
      if (v22)
      {
LABEL_9:
        a1[32] = a2[32];
        a1[33] = v22;
        v23 = a2[34];

        if (v23 >= 2)
        {
          v24 = v23;
        }

        a1[34] = v23;
        *(a1 + 70) = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v25 = a2[37];
        a1[36] = a2[36];
        a1[37] = v25;

LABEL_20:
        v36 = a2[42];
        if (v36 >> 2 == 0xFFFFFFFF)
        {
          v37 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v37;
          a1[50] = a2[50];
          v38 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v38;
          v39 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v39;
        }

        else
        {
          v40 = a2[38];
          v41 = a2[39];
          v42 = a2[40];
          v43 = a2[43];
          v44 = a2[44];
          v45 = a2[45];
          v100 = a2[41];
          v101 = a2[46];
          v102 = a2[47];
          v104 = a2[48];
          v106 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v40, v41, v42, v100, v36, v43, v44, v45, v101, v102, v104, v106, __dsta);
          a1[38] = v40;
          a1[39] = v41;
          a1[40] = v42;
          a1[41] = v100;
          a1[42] = v36;
          a1[43] = v43;
          a1[44] = v44;
          a1[45] = v45;
          a1[46] = v101;
          a1[47] = v102;
          a1[48] = v104;
          a1[49] = v106;
          a1[50] = __dsta;
        }

        v46 = a2[52];
        if (v46 == 1)
        {
          v47 = *(a2 + 57);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 57) = v47;
          *(a1 + 472) = *(a2 + 472);
          v48 = *(a2 + 53);
          *(a1 + 51) = *(a2 + 51);
          *(a1 + 53) = v48;
          goto LABEL_33;
        }

        *(a1 + 102) = *(a2 + 102);
        *(a1 + 412) = *(a2 + 412);
        if (v46)
        {
          v49 = a2[53];
          a1[52] = v46;
          a1[53] = v49;

          v50 = a2[54];
          if (v50)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v50 = a2[54];
          if (v50)
          {
LABEL_27:
            v51 = a2[55];
            a1[54] = v50;
            a1[55] = v51;

            v52 = a2[56];
            if (v52)
            {
LABEL_28:
              v53 = a2[57];
              a1[56] = v52;
              a1[57] = v53;

LABEL_32:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_33:
              v54 = a2[61];
              a1[60] = a2[60];
              a1[61] = v54;
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v55 = a2[64];

              if (v55)
              {
                v56 = a2[65];
                a1[64] = v55;
                a1[65] = v56;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_48;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              v57 = a1 + 75;
              v58 = a2 + 75;
              v59 = a2[78];

              if (v59)
              {
                if (v59 == 1)
                {
                  v60 = *(a2 + 77);
                  *v57 = *v58;
                  *(a1 + 77) = v60;
                  *(a1 + 79) = *(a2 + 79);
LABEL_44:
                  a1[81] = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  v62 = a1 + 83;
                  v63 = a2 + 83;
                  v64 = a2[97];
                  if (v64 == 1)
                  {
                    v65 = *(a2 + 97);
                    *(a1 + 95) = *(a2 + 95);
                    *(a1 + 97) = v65;
                    *(a1 + 99) = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    v66 = *(a2 + 89);
                    *(a1 + 87) = *(a2 + 87);
                    *(a1 + 89) = v66;
                    v67 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v67;
                    v68 = *(a2 + 85);
                    *v62 = *v63;
                    *(a1 + 85) = v68;
                  }

                  else
                  {
                    *v62 = *v63;
                    *(a1 + 672) = *(a2 + 672);
                    a1[85] = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    v69 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v69;
                    a1[92] = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = v64;
                    *(a1 + 49) = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_48:
                  v70 = a1 + 105;
                  v71 = a2 + 105;
                  v72 = a2[108];
                  if (v72)
                  {
                    if (v72 == 1)
                    {
                      v73 = *(a2 + 107);
                      *v70 = *v71;
                      *(a1 + 107) = v73;
                      *(a1 + 109) = *(a2 + 109);
                      a1[111] = a2[111];
LABEL_55:
                      v77 = a2[112];
                      a1[112] = v77;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      *(a1 + 954) = *(a2 + 954);
                      v78 = v112[28];
                      __dst = a1 + v78;
                      v79 = a2 + v78;
                      v80 = type metadata accessor for CommandOperation();
                      v105 = *(v80 - 8);
                      v107 = *(v105 + 48);
                      v81 = v77;

                      if (v107(v79, 1, v80))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v79, *(*(v82 - 8) + 64));
                        v83 = v112;
                        v84 = v111;
                      }

                      else
                      {
                        *__dst = *v79;
                        v85 = *(v80 + 20);
                        v86 = &__dst[v85];
                        v87 = &v79[v85];
                        v108 = v79;
                        v88 = v80;
                        v89 = *v87;
                        v90 = *(v87 + 1);
                        v91 = v87[16];
                        outlined copy of Text.Storage(*v87, v90, v91);
                        *v86 = v89;
                        *(v86 + 1) = v90;
                        v86[16] = v91;
                        *(v86 + 3) = *(v87 + 3);
                        v92 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v93 = type metadata accessor for UUID();
                        v103 = *(*(v93 - 8) + 16);

                        v103(&v86[v92], &v87[v92], v93);
                        v94 = *(v88 + 24);
                        v95 = &__dst[v94];
                        v96 = &v108[v94];
                        if (*v96)
                        {
                          v97 = v96[1];
                          *v95 = *v96;
                          v95[1] = v97;
                        }

                        else
                        {
                          *v95 = *v96;
                        }

                        v83 = v112;
                        v84 = v111;
                        (*(v105 + 56))(__dst, 0, 1, v88);
                      }

                      *(a1 + v83[29]) = *(a2 + v83[29]);
                      *(a1 + v83[30]) = *(a2 + v83[30]);
                      *(a1 + v83[31]) = *(a2 + v83[31]);
                      *(a1 + v83[32]) = *(a2 + v83[32]);
                      *(a1 + v83[33]) = *(a2 + v83[33]);
                      *(a1 + v83[34]) = *(a2 + v83[34]);
                      v98 = *(v84 + 56);

                      v98(a1, 0, 1, v83);
                      goto LABEL_62;
                    }

                    a1[108] = v72;
                    a1[109] = a2[109];
                    (**(v72 - 8))(v70, v71);
                    v75 = a2[110];
                    if (!v75)
                    {
LABEL_54:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v74 = *(a2 + 107);
                    *v70 = *v71;
                    *(a1 + 107) = v74;
                    a1[109] = a2[109];
                    v75 = a2[110];
                    if (!v75)
                    {
                      goto LABEL_54;
                    }
                  }

                  v76 = a2[111];
                  a1[110] = v75;
                  a1[111] = v76;

                  goto LABEL_55;
                }

                a1[78] = v59;
                a1[79] = a2[79];
                (**(v59 - 8))((a1 + 75), (a2 + 75), v59);
              }

              else
              {
                v61 = *(a2 + 77);
                *v57 = *v58;
                *(a1 + 77) = v61;
                a1[79] = a2[79];
              }

              a1[80] = a2[80];

              goto LABEL_44;
            }

LABEL_31:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_32;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v52 = a2[56];
        if (v52)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v26 = *(a2 + 72);
      if (v26 == 255)
      {
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v27 = a2[8];
        outlined copy of GraphicsImage.Contents(v27, *(a2 + 72));
        a1[8] = v27;
        *(a1 + 72) = v26;
        v14 = a2[24];
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 19) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v14 >> 1 == 0xFFFFFFFF)
      {
        v28 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v28;
      }

      else
      {
        v29 = a2[22];
        v30 = a2[23];
        v31 = a2[25];
        outlined copy of AccessibilityImageLabel(v29, v30, v14);
        a1[22] = v29;
        a1[23] = v30;
        a1[24] = v14;
        a1[25] = v31;
      }

      v32 = a2[27];
      a1[26] = a2[26];
      a1[27] = v32;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      v33 = a2[30];
      a1[30] = v33;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v34 = v33;
      v22 = a2[33];
      if (v22)
      {
        goto LABEL_9;
      }
    }

    v35 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v35;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_20;
  }

  v6 = *a2;
  *a1 = *a2;
  a1 = (v6 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t destroy for TabContextMenuKey.Storage.Guts(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v2 = type metadata accessor for PlatformItemList.Item();
    result = (*(*(v2 - 8) + 48))(a1, 1, v2);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 192);
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v6 = *(a1 + 72);
      if (v6 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
        v4 = *(a1 + 192);
        v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v5 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4);
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v7 = *(a1 + 272);
      if (v7 >= 2)
      {
      }
    }

    v8 = *(a1 + 336);
    if (v8 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v9 = *(a1 + 416);
    if (v9)
    {
      if (v9 == 1)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_22:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_32:
      v11 = *(a1 + 864);
      if (v11)
      {
        if (v11 == 1)
        {
LABEL_37:

          v12 = a1 + *(v2 + 112);
          v13 = type metadata accessor for CommandOperation();
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            v14 = v12 + *(v13 + 20);
            outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

            v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v16 = type metadata accessor for UUID();
            (*(*(v16 - 8) + 8))(v14 + v15, v16);
            if (*(v12 + *(v13 + 24)))
            {
            }
          }

          goto LABEL_40;
        }

        __swift_destroy_boxed_opaque_existential_1(a1 + 840);
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_37;
    }

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_29:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_29;
  }

LABEL_40:
}

void *initializeWithCopy for TabContextMenuKey.Storage.Guts(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;

    goto LABEL_60;
  }

  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_60;
  }

  v7 = *a2;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  v9 = a2[3];
  a1[2] = a2[2];
  a1[3] = v9;
  *(a1 + 32) = *(a2 + 32);
  v10 = a2[6];
  a1[5] = a2[5];
  a1[6] = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = a2[24];
  v12 = v7;
  v13 = v8;

  if (v11 >> 1 != 4294967294)
  {
    v23 = *(a2 + 72);
    if (v23 == 255)
    {
      a1[8] = a2[8];
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v24 = a2[8];
      outlined copy of GraphicsImage.Contents(v24, *(a2 + 72));
      a1[8] = v24;
      *(a1 + 72) = v23;
      v11 = a2[24];
    }

    a1[10] = a2[10];
    *(a1 + 11) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      v25 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v25;
    }

    else
    {
      v26 = a2[22];
      v27 = a2[23];
      v28 = a2[25];
      outlined copy of AccessibilityImageLabel(v26, v27, v11);
      a1[22] = v26;
      a1[23] = v27;
      a1[24] = v11;
      a1[25] = v28;
    }

    v29 = a2[27];
    a1[26] = a2[26];
    a1[27] = v29;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 232) = *(a2 + 232);
    v30 = a2[30];
    a1[30] = v30;
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v31 = v30;
    v19 = a2[33];
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_17:
    v32 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v32;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v14 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v14;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v15 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v15;
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  v17 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v17;
  v18 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v18;
  v19 = a2[33];
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_7:
  a1[32] = a2[32];
  a1[33] = v19;
  v20 = a2[34];

  if (v20 >= 2)
  {
    v21 = v20;
  }

  a1[34] = v20;
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v22 = a2[37];
  a1[36] = a2[36];
  a1[37] = v22;

LABEL_18:
  v33 = a2[42];
  v109 = v4;
  v108 = v5;
  if (v33 >> 2 == 0xFFFFFFFF)
  {
    v34 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v34;
    a1[50] = a2[50];
    v35 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v35;
    v36 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v36;
  }

  else
  {
    v37 = a2[38];
    v38 = a2[39];
    v39 = a2[40];
    v40 = a2[41];
    v42 = a2[43];
    v41 = a2[44];
    v43 = a2[45];
    v98 = a2[46];
    v99 = a2[47];
    v101 = a2[48];
    v103 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v37, v38, v39, v40, v33, v42, v41, v43, v98, v99, v101, v103, __dsta);
    a1[38] = v37;
    a1[39] = v38;
    a1[40] = v39;
    a1[41] = v40;
    a1[42] = v33;
    a1[43] = v42;
    v4 = v109;
    a1[44] = v41;
    a1[45] = v43;
    a1[46] = v98;
    a1[47] = v99;
    a1[48] = v101;
    a1[49] = v103;
    a1[50] = __dsta;
  }

  v44 = a2[52];
  if (v44 == 1)
  {
    v45 = *(a2 + 57);
    *(a1 + 55) = *(a2 + 55);
    *(a1 + 57) = v45;
    *(a1 + 472) = *(a2 + 472);
    v46 = *(a2 + 53);
    *(a1 + 51) = *(a2 + 51);
    *(a1 + 53) = v46;
    goto LABEL_31;
  }

  *(a1 + 102) = *(a2 + 102);
  *(a1 + 412) = *(a2 + 412);
  if (v44)
  {
    v47 = a2[53];
    a1[52] = v44;
    a1[53] = v47;

    v48 = a2[54];
    if (v48)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(a1 + 27) = *(a2 + 27);
    v50 = a2[56];
    if (v50)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_30;
  }

  *(a1 + 26) = *(a2 + 26);
  v48 = a2[54];
  if (!v48)
  {
    goto LABEL_28;
  }

LABEL_25:
  v49 = a2[55];
  a1[54] = v48;
  a1[55] = v49;

  v50 = a2[56];
  if (!v50)
  {
    goto LABEL_29;
  }

LABEL_26:
  v51 = a2[57];
  a1[56] = v50;
  a1[57] = v51;

LABEL_30:
  a1[58] = a2[58];
  *(a1 + 472) = *(a2 + 472);
LABEL_31:
  v52 = a2[61];
  a1[60] = a2[60];
  a1[61] = v52;
  a1[62] = a2[62];
  *(a1 + 504) = *(a2 + 504);
  v53 = a2[64];

  if (v53)
  {
    v54 = a2[65];
    a1[64] = v53;
    a1[65] = v54;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 67, a2 + 67, 0x130uLL);
    goto LABEL_46;
  }

  a1[67] = a2[67];
  a1[68] = a2[68];
  *(a1 + 552) = *(a2 + 552);
  a1[70] = a2[70];
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 592) = *(a2 + 592);
  v55 = a1 + 75;
  v56 = a2 + 75;
  v57 = a2[78];

  if (!v57)
  {
    v59 = *(a2 + 77);
    *v55 = *v56;
    *(a1 + 77) = v59;
    a1[79] = a2[79];
LABEL_41:
    a1[80] = a2[80];

    goto LABEL_42;
  }

  if (v57 != 1)
  {
    a1[78] = v57;
    a1[79] = a2[79];
    (**(v57 - 8))((a1 + 75), (a2 + 75), v57);
    goto LABEL_41;
  }

  v58 = *(a2 + 77);
  *v55 = *v56;
  *(a1 + 77) = v58;
  *(a1 + 79) = *(a2 + 79);
LABEL_42:
  a1[81] = a2[81];
  *(a1 + 656) = *(a2 + 656);
  v60 = a1 + 83;
  v61 = a2 + 83;
  v62 = a2[97];
  if (v62 == 1)
  {
    v63 = *(a2 + 97);
    *(a1 + 95) = *(a2 + 95);
    *(a1 + 97) = v63;
    *(a1 + 99) = *(a2 + 99);
    *(a1 + 808) = *(a2 + 808);
    v64 = *(a2 + 89);
    *(a1 + 87) = *(a2 + 87);
    *(a1 + 89) = v64;
    v65 = *(a2 + 93);
    *(a1 + 91) = *(a2 + 91);
    *(a1 + 93) = v65;
    v66 = *(a2 + 85);
    *v60 = *v61;
    *(a1 + 85) = v66;
  }

  else
  {
    *v60 = *v61;
    *(a1 + 672) = *(a2 + 672);
    a1[85] = a2[85];
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    a1[87] = a2[87];
    v67 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v67;
    a1[92] = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    *(a1 + 768) = *(a2 + 768);
    a1[97] = v62;
    *(a1 + 49) = *(a2 + 49);
    a1[100] = a2[100];
    *(a1 + 808) = *(a2 + 808);
  }

  a1[102] = a2[102];
  a1[103] = a2[103];
  a1[104] = a2[104];

LABEL_46:
  v68 = a1 + 105;
  v69 = a2 + 105;
  v70 = a2[108];
  if (!v70)
  {
    v72 = *(a2 + 107);
    *v68 = *v69;
    *(a1 + 107) = v72;
    a1[109] = a2[109];
    v73 = a2[110];
    if (!v73)
    {
LABEL_52:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_53;
    }

LABEL_50:
    v74 = a2[111];
    a1[110] = v73;
    a1[111] = v74;

    goto LABEL_53;
  }

  if (v70 != 1)
  {
    a1[108] = v70;
    a1[109] = a2[109];
    (**(v70 - 8))(v68, v69);
    v73 = a2[110];
    if (!v73)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v71 = *(a2 + 107);
  *v68 = *v69;
  *(a1 + 107) = v71;
  *(a1 + 109) = *(a2 + 109);
  a1[111] = a2[111];
LABEL_53:
  v75 = a2[112];
  a1[112] = v75;
  a1[113] = a2[113];
  a1[114] = a2[114];
  a1[115] = a2[115];
  a1[116] = a2[116];
  a1[117] = a2[117];
  a1[118] = a2[118];
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 954) = *(a2 + 954);
  v76 = *(v4 + 112);
  __dst = a1 + v76;
  v77 = a2 + v76;
  v78 = type metadata accessor for CommandOperation();
  v102 = *(v78 - 8);
  v104 = *(v102 + 48);
  v79 = v75;
  v80 = v77;

  if (v104(v77, 1, v78))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(__dst, v77, *(*(v81 - 8) + 64));
    v82 = v109;
  }

  else
  {
    *__dst = *v77;
    v83 = *(v78 + 20);
    v84 = v78;
    v85 = &__dst[v83];
    v86 = &v80[v83];
    v105 = v80;
    v87 = *&v80[v83];
    v88 = *(v86 + 1);
    v89 = v86[16];
    outlined copy of Text.Storage(v87, v88, v89);
    *v85 = v87;
    *(v85 + 1) = v88;
    v85[16] = v89;
    *(v85 + 3) = *(v86 + 3);
    v90 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v91 = type metadata accessor for UUID();
    v100 = *(*(v91 - 8) + 16);

    v100(&v85[v90], &v86[v90], v91);
    v92 = *(v84 + 24);
    v93 = &__dst[v92];
    v94 = &v105[v92];
    if (*v94)
    {
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
    }

    else
    {
      *v93 = *v94;
    }

    v82 = v109;
    (*(v102 + 56))(__dst, 0, 1, v84);
  }

  *(a1 + v82[29]) = *(a2 + v82[29]);
  *(a1 + v82[30]) = *(a2 + v82[30]);
  *(a1 + v82[31]) = *(a2 + v82[31]);
  *(a1 + v82[32]) = *(a2 + v82[32]);
  *(a1 + v82[33]) = *(a2 + v82[33]);
  *(a1 + v82[34]) = *(a2 + v82[34]);
  v96 = *(v108 + 56);

  v96(a1, 0, 1, v82);
LABEL_60:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TabContextMenuKey.Storage.Guts(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_61:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v4 = type metadata accessor for PlatformItemList.Item();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(a2, 1, v4))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_61;
    }

    v128 = v5;
    v7 = *a2;
    *a1 = *a2;
    v8 = a2[1];
    a1[1] = v8;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *(a1 + 32) = *(a2 + 32);
    a1[5] = a2[5];
    a1[6] = a2[6];
    *(a1 + 56) = *(a2 + 56);
    v9 = a2[24];
    v10 = v7;
    v11 = v8;

    if (v9 >> 1 == 4294967294)
    {
      v12 = *(a2 + 4);
      v13 = *(a2 + 5);
      v14 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v14;
      *(a1 + 4) = v12;
      *(a1 + 5) = v13;
      v15 = *(a2 + 8);
      v16 = *(a2 + 9);
      v17 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v17;
      *(a1 + 8) = v15;
      *(a1 + 9) = v16;
      v18 = *(a2 + 12);
      v19 = *(a2 + 13);
      v20 = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 13) = v19;
      *(a1 + 14) = v20;
      *(a1 + 12) = v18;
      if (a2[33])
      {
LABEL_8:
        a1[32] = a2[32];
        a1[33] = a2[33];
        v21 = a2[34];

        if (v21 >= 2)
        {
          v22 = v21;
        }

        a1[34] = v21;
        v23 = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 70) = v23;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        a1[36] = a2[36];
        a1[37] = a2[37];

LABEL_19:
        v40 = a2[42];
        v129 = v4;
        if (v40 >> 2 == 0xFFFFFFFF)
        {
          v41 = *(a2 + 19);
          v42 = *(a2 + 21);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 21) = v42;
          *(a1 + 19) = v41;
          v43 = *(a2 + 22);
          v44 = *(a2 + 23);
          v45 = *(a2 + 24);
          a1[50] = a2[50];
          *(a1 + 23) = v44;
          *(a1 + 24) = v45;
          *(a1 + 22) = v43;
        }

        else
        {
          v46 = a2[38];
          v47 = a2[39];
          v48 = a2[40];
          v49 = a2[41];
          v51 = a2[43];
          v50 = a2[44];
          v52 = a2[45];
          v118 = a2[46];
          v119 = a2[47];
          v121 = a2[48];
          v123 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v46, v47, v48, v49, v40, v51, v50, v52, v118, v119, v121, v123, __dsta);
          a1[38] = v46;
          a1[39] = v47;
          a1[40] = v48;
          a1[41] = v49;
          a1[42] = v40;
          a1[43] = v51;
          v4 = v129;
          a1[44] = v50;
          a1[45] = v52;
          a1[46] = v118;
          a1[47] = v119;
          a1[48] = v121;
          a1[49] = v123;
          a1[50] = __dsta;
        }

        if (a2[52] == 1)
        {
          *(a1 + 51) = *(a2 + 51);
          v53 = *(a2 + 53);
          v54 = *(a2 + 55);
          v55 = *(a2 + 57);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 55) = v54;
          *(a1 + 57) = v55;
          *(a1 + 53) = v53;
          goto LABEL_32;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v56 = a2[52];
        if (v56)
        {
          v57 = a2[53];
          a1[52] = v56;
          a1[53] = v57;

          v58 = a2[54];
          if (v58)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v58 = a2[54];
          if (v58)
          {
LABEL_26:
            v59 = a2[55];
            a1[54] = v58;
            a1[55] = v59;

            v60 = a2[56];
            if (v60)
            {
LABEL_27:
              v61 = a2[57];
              a1[56] = v60;
              a1[57] = v61;

LABEL_31:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_32:
              a1[60] = a2[60];
              a1[61] = a2[61];
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v62 = a2[64];

              if (v62)
              {
                v63 = a2[65];
                a1[64] = v62;
                a1[65] = v63;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_47;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              v64 = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 36) = v64;
              v65 = a1 + 75;
              v66 = (a2 + 75);
              v67 = a2[78];

              if (v67)
              {
                if (v67 == 1)
                {
                  v68 = *v66;
                  v69 = *(a2 + 79);
                  *(a1 + 77) = *(a2 + 77);
                  *(a1 + 79) = v69;
                  *v65 = v68;
LABEL_43:
                  v72 = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  a1[81] = v72;
                  v73 = a1 + 83;
                  v74 = a2 + 83;
                  if (a2[97] == 1)
                  {
                    v75 = *(a2 + 85);
                    *v73 = *v74;
                    *(a1 + 85) = v75;
                    v76 = *(a2 + 87);
                    v77 = *(a2 + 89);
                    v78 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v78;
                    *(a1 + 87) = v76;
                    *(a1 + 89) = v77;
                    v79 = *(a2 + 95);
                    v80 = *(a2 + 97);
                    v81 = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 97) = v80;
                    *(a1 + 99) = v81;
                    *(a1 + 95) = v79;
                  }

                  else
                  {
                    v82 = *v74;
                    *(a1 + 672) = *(a2 + 672);
                    *v73 = v82;
                    v83 = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    a1[85] = v83;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    a1[88] = a2[88];
                    a1[89] = a2[89];
                    a1[90] = a2[90];
                    a1[91] = a2[91];
                    a1[92] = a2[92];
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    a1[94] = a2[94];
                    a1[95] = a2[95];
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = a2[97];
                    v84 = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 49) = v84;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_47:
                  v85 = a1 + 105;
                  v86 = (a2 + 105);
                  v87 = a2[108];
                  if (v87)
                  {
                    if (v87 == 1)
                    {
                      v88 = *v86;
                      v89 = *(a2 + 107);
                      v90 = *(a2 + 109);
                      a1[111] = a2[111];
                      *(a1 + 107) = v89;
                      *(a1 + 109) = v90;
                      *v85 = v88;
LABEL_54:
                      v95 = a2[112];
                      a1[112] = v95;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v96 = *(v4 + 112);
                      __dst = a1 + v96;
                      v97 = a2 + v96;
                      v98 = type metadata accessor for CommandOperation();
                      v122 = *(v98 - 8);
                      v124 = *(v122 + 48);
                      v99 = v95;
                      v100 = v97;

                      if (v124(v97, 1, v98))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v97, *(*(v101 - 8) + 64));
                        v102 = v129;
                      }

                      else
                      {
                        *__dst = *v97;
                        v103 = *(v98 + 20);
                        v104 = v98;
                        v105 = &__dst[v103];
                        v106 = &v100[v103];
                        v125 = v100;
                        v107 = *&v100[v103];
                        v108 = *(v106 + 1);
                        v109 = v106[16];
                        outlined copy of Text.Storage(v107, v108, v109);
                        *v105 = v107;
                        *(v105 + 1) = v108;
                        v105[16] = v109;
                        *(v105 + 3) = *(v106 + 3);
                        v110 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v111 = type metadata accessor for UUID();
                        v120 = *(*(v111 - 8) + 16);

                        v120(&v105[v110], &v106[v110], v111);
                        v112 = *(v104 + 24);
                        v113 = &__dst[v112];
                        v114 = &v125[v112];
                        if (*v114)
                        {
                          v115 = v114[1];
                          *v113 = *v114;
                          v113[1] = v115;
                        }

                        else
                        {
                          *v113 = *v114;
                        }

                        v102 = v129;
                        (*(v122 + 56))(__dst, 0, 1, v104);
                      }

                      *(a1 + v102[29]) = *(a2 + v102[29]);
                      *(a1 + v102[30]) = *(a2 + v102[30]);
                      *(a1 + v102[31]) = *(a2 + v102[31]);
                      *(a1 + v102[32]) = *(a2 + v102[32]);
                      *(a1 + v102[33]) = *(a2 + v102[33]);
                      *(a1 + v102[34]) = *(a2 + v102[34]);
                      v116 = *(v128 + 56);

                      v116(a1, 0, 1, v102);
                      goto LABEL_61;
                    }

                    a1[108] = v87;
                    a1[109] = a2[109];
                    (**(v87 - 8))(v85, v86);
                    v93 = a2[110];
                    if (!v93)
                    {
LABEL_53:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v91 = *v86;
                    v92 = *(a2 + 107);
                    a1[109] = a2[109];
                    *v85 = v91;
                    *(a1 + 107) = v92;
                    v93 = a2[110];
                    if (!v93)
                    {
                      goto LABEL_53;
                    }
                  }

                  v94 = a2[111];
                  a1[110] = v93;
                  a1[111] = v94;

                  goto LABEL_54;
                }

                a1[78] = v67;
                a1[79] = a2[79];
                (**(v67 - 8))((a1 + 75), (a2 + 75), v67);
              }

              else
              {
                v70 = *v66;
                v71 = *(a2 + 77);
                a1[79] = a2[79];
                *v65 = v70;
                *(a1 + 77) = v71;
              }

              a1[80] = a2[80];

              goto LABEL_43;
            }

LABEL_30:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_31;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v60 = a2[56];
        if (v60)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a2 + 72);
      if (v24 == 255)
      {
        v26 = a2[8];
        *(a1 + 72) = *(a2 + 72);
        a1[8] = v26;
      }

      else
      {
        v25 = a2[8];
        outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
        a1[8] = v25;
        *(a1 + 72) = v24;
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      v27 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v27;
      v28 = *(a2 + 17);
      v29 = *(a2 + 19);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 19) = v29;
      *(a1 + 17) = v28;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v30 = a2[24];
      if (v30 >> 1 == 0xFFFFFFFF)
      {
        v31 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v31;
      }

      else
      {
        v32 = a2[22];
        v33 = a2[23];
        v34 = a2[25];
        outlined copy of AccessibilityImageLabel(v32, v33, a2[24]);
        a1[22] = v32;
        a1[23] = v33;
        a1[24] = v30;
        a1[25] = v34;
      }

      a1[26] = a2[26];
      a1[27] = a2[27];
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v35 = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 57) = v35;
      v36 = a2[30];
      a1[30] = v36;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v37 = v36;
      if (a2[33])
      {
        goto LABEL_8;
      }
    }

    v38 = *(a2 + 16);
    v39 = *(a2 + 18);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 18) = v39;
    *(a1 + 16) = v38;
    goto LABEL_19;
  }

  return a1;
}

_OWORD *initializeWithTake for TabContextMenuKey.Storage.Guts(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for PlatformItemList.Item();
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v12 = a2[13];
      a1[12] = a2[12];
      a1[13] = v12;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v13 = a2[9];
      a1[8] = a2[8];
      a1[9] = v13;
      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
      v15 = a2[5];
      a1[4] = a2[4];
      a1[5] = v15;
      v16 = a2[7];
      a1[6] = a2[6];
      a1[7] = v16;
      v17 = a2[17];
      a1[16] = a2[16];
      a1[17] = v17;
      v18 = a2[23];
      a1[22] = a2[22];
      a1[23] = v18;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v19 = a2[19];
      a1[18] = a2[18];
      a1[19] = v19;
      v20 = a2[21];
      a1[20] = a2[20];
      a1[21] = v20;
      v21 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v21;
      *(a1 + 472) = *(a2 + 472);
      v22 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v22;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v23 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v23;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v24 = v8[28];
      v25 = a1 + v24;
      v26 = a2 + v24;
      v27 = type metadata accessor for CommandOperation();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        *v25 = *v26;
        v30 = *(v27 + 20);
        v31 = &v25[v30];
        v38 = v25;
        v32 = &v26[v30];
        v33 = *&v26[v30 + 16];
        *v31 = *&v26[v30];
        v31[1] = v33;
        v39 = v9;
        v34 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v35 = type metadata accessor for UUID();
        v36 = v31 + v34;
        v37 = &v32[v34];
        v9 = v39;
        (*(*(v35 - 8) + 32))(v36, v37, v35);
        *&v38[*(v27 + 24)] = *&v26[*(v27 + 24)];
        (*(v28 + 56))();
      }

      *(a1 + v8[29]) = *(a2 + v8[29]);
      *(a1 + v8[30]) = *(a2 + v8[30]);
      *(a1 + v8[31]) = *(a2 + v8[31]);
      *(a1 + v8[32]) = *(a2 + v8[32]);
      *(a1 + v8[33]) = *(a2 + v8[33]);
      *(a1 + v8[34]) = *(a2 + v8[34]);
      (*(v9 + 56))(a1, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_OWORD *assignWithTake for TabContextMenuKey.Storage.Guts(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for PlatformItemList.Item();
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v12 = a2[13];
      a1[12] = a2[12];
      a1[13] = v12;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v13 = a2[9];
      a1[8] = a2[8];
      a1[9] = v13;
      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
      v15 = a2[5];
      a1[4] = a2[4];
      a1[5] = v15;
      v16 = a2[7];
      a1[6] = a2[6];
      a1[7] = v16;
      v17 = a2[17];
      a1[16] = a2[16];
      a1[17] = v17;
      v18 = a2[23];
      a1[22] = a2[22];
      a1[23] = v18;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v19 = a2[19];
      a1[18] = a2[18];
      a1[19] = v19;
      v20 = a2[21];
      a1[20] = a2[20];
      a1[21] = v20;
      v21 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v21;
      *(a1 + 472) = *(a2 + 472);
      v22 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v22;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v23 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v23;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v24 = v8[28];
      v25 = a1 + v24;
      v26 = a2 + v24;
      v27 = type metadata accessor for CommandOperation();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        *v25 = *v26;
        v30 = *(v27 + 20);
        v31 = &v25[v30];
        v38 = v25;
        v32 = &v26[v30];
        v33 = *&v26[v30 + 16];
        *v31 = *&v26[v30];
        v31[1] = v33;
        v39 = v9;
        v34 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v35 = type metadata accessor for UUID();
        v36 = v31 + v34;
        v37 = &v32[v34];
        v9 = v39;
        (*(*(v35 - 8) + 32))(v36, v37, v35);
        *&v38[*(v27 + 24)] = *&v26[*(v27 + 24)];
        (*(v28 + 56))();
      }

      *(a1 + v8[29]) = *(a2 + v8[29]);
      *(a1 + v8[30]) = *(a2 + v8[30]);
      *(a1 + v8[31]) = *(a2 + v8[31]);
      *(a1 + v8[32]) = *(a2 + v8[32]);
      *(a1 + v8[33]) = *(a2 + v8[33]);
      *(a1 + v8[34]) = *(a2 + v8[34]);
      (*(v9 + 56))(a1, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void type metadata completion function for TabContextMenuKey.Storage.Guts()
{
  type metadata accessor for TabContextMenuKey.Storage?(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

void type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SwipeActionsUseTraitKeyInput>, lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  type metadata accessor for PlatformItemContextMenuModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(1, a5);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10 = a2[1];
  v42[0] = *a2;
  v42[1] = v10;
  v12 = *a2;
  v11 = a2[1];
  v42[2] = a2[2];
  v36 = v12;
  v37 = v11;
  v38 = a2[2];
  outlined init with copy of _GraphInputs(v42, &v43);
  _ViewInputs.init(withoutGeometry:)();
  v13 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v43, 1, &v36);
  MEMORY[0x1EEE9AC00](v13);
  *&v43 = &type metadata for AllPlatformItemListFlags;
  *(&v43 + 1) = a5;
  *&v44 = &protocol witness table for AllPlatformItemListFlags;
  *(&v44 + 1) = a6;
  v14 = type metadata accessor for PlatformItemListGenerator();
  v29 = v14;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, closure #1 in Attribute.init<A>(_:)partial apply, v28, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v47 = v40;
  v48[0] = v41[0];
  *(v48 + 12) = *(v41 + 12);
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  (*(*(v14 - 8) + 8))(&v43, v14);
  v17 = v34;
  outlined init with copy of _ViewListInputs(a2, &v36);
  if (*(&v40 + 1))
  {
    v34 = *(&v40 + 1);
    LOBYTE(v35) = v41[0] & 1;
    *(&v40 + 1) = 0;
    LOBYTE(v41[0]) = 0;
    specialized Set._Variant.insert(_:)(&v32, &type metadata for TabContextMenuKey);
    v18 = v34;
    v19 = v35;

    *(&v40 + 1) = v18;
    LOBYTE(v41[0]) = v19;
  }

  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  v32 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v20 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v21 = _ViewListInputs.traits.getter();
  v22 = *MEMORY[0x1E698D3F8];
  if ((v21 & 0x100000000) == 0)
  {
    v22 = v21;
  }

  v34 = __PAIR64__(v20, v17);
  v35 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v23 = type metadata accessor for PlatformItemContextMenuModifier.WriteTrait();
  v29 = v23;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, v28, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  LOBYTE(v34) = 0;
  v26 = _ViewListInputs.traits.setter();
  v31(v26, &v36);
  return outlined destroy of _ViewListInputs(&v36);
}

uint64_t closure #1 in static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for PlatformItemContextMenuModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t PlatformItemContextMenuModifier.WriteTrait.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v43 = a1;
  v48 = a3;
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v4;
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for PlatformItemList.Item();
  v44 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *AGGraphGetValue();
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v69);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9[32] = 0;
  *(v9 + 3) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 5) = -1;
  v9[56] = 1;
  v10 = v78;
  *(v9 + 12) = v77;
  *(v9 + 13) = v10;
  *(v9 + 14) = v79[0];
  *(v9 + 235) = *(v79 + 11);
  v11 = v74;
  *(v9 + 8) = v73;
  *(v9 + 9) = v11;
  v12 = v76;
  *(v9 + 10) = v75;
  *(v9 + 11) = v12;
  v13 = v70;
  *(v9 + 4) = v69;
  *(v9 + 5) = v13;
  v14 = v72;
  *(v9 + 6) = v71;
  *(v9 + 7) = v14;
  *(v9 + 19) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 17) = 0u;
  *(v9 + 18) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 42) = 0x3FFFFFFFCLL;
  *(v9 + 344) = 0u;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 392) = 0u;
  *(v9 + 51) = 0;
  *(v9 + 52) = 1;
  *(v9 + 424) = 0u;
  *(v9 + 440) = 0u;
  *(v9 + 456) = 0u;
  v9[472] = 0;
  *(v9 + 60) = 0;
  *(v9 + 488) = 0u;
  v9[504] = 0;
  *(v9 + 32) = 0u;
  v9[528] = 4;
  *(v9 + 536) = 0u;
  *(v9 + 552) = 0u;
  *(v9 + 568) = 0u;
  *(v9 + 584) = 0u;
  *(v9 + 600) = 0u;
  *(v9 + 616) = 0u;
  *(v9 + 632) = 0u;
  *(v9 + 648) = 0u;
  *(v9 + 664) = 0u;
  *(v9 + 680) = 0u;
  *(v9 + 696) = 0u;
  *(v9 + 712) = 0u;
  *(v9 + 728) = 0u;
  *(v9 + 744) = 0u;
  *(v9 + 760) = 0u;
  *(v9 + 776) = 0u;
  *(v9 + 792) = 0u;
  *(v9 + 808) = 0u;
  *(v9 + 824) = 0u;
  *(v9 + 840) = 0u;
  *(v9 + 107) = 0;
  *(v9 + 108) = 1;
  *(v9 + 118) = 0;
  *(v9 + 872) = 0u;
  *(v9 + 888) = 0u;
  *(v9 + 904) = 0u;
  *(v9 + 920) = 0u;
  *(v9 + 953) = 773;
  v15 = v7[28];
  v16 = type metadata accessor for CommandOperation();
  (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
  v9[v7[29]] = 0;
  v9[v7[30]] = 0;
  v9[v7[31]] = 2;
  v41 = v7[32];
  v9[v41] = 0;
  v9[v7[33]] = 0;
  v40 = v7[34];
  *v9 = 0;
  v17 = *(v9 + 13);
  v80[8] = *(v9 + 12);
  v80[9] = v17;
  v81[0] = *(v9 + 14);
  *(v81 + 11) = *(v9 + 235);
  v18 = *(v9 + 9);
  v80[4] = *(v9 + 8);
  v80[5] = v18;
  v19 = *(v9 + 11);
  v80[6] = *(v9 + 10);
  v80[7] = v19;
  v20 = *(v9 + 5);
  v80[0] = *(v9 + 4);
  v80[1] = v20;
  v21 = *(v9 + 7);
  v80[2] = *(v9 + 6);
  v80[3] = v21;
  v22 = v42;

  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(v80, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v23 = v78;
  *(v9 + 12) = v77;
  *(v9 + 13) = v23;
  *(v9 + 14) = v79[0];
  *(v9 + 235) = *(v79 + 11);
  v24 = v74;
  *(v9 + 8) = v73;
  *(v9 + 9) = v24;
  v25 = v76;
  *(v9 + 10) = v75;
  *(v9 + 11) = v25;
  v26 = v70;
  *(v9 + 4) = v69;
  *(v9 + 5) = v26;
  v27 = v72;
  *(v9 + 6) = v71;
  *(v9 + 7) = v27;
  v28 = *(v9 + 456);
  v82[2] = *(v9 + 440);
  v82[3] = v28;
  v83 = v9[472];
  v29 = *(v9 + 424);
  v82[0] = *(v9 + 408);
  v82[1] = v29;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(v82, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v9 + 408) = xmmword_18CD633F0;
  *(v9 + 424) = 0u;
  *(v9 + 440) = 0u;
  *(v9 + 456) = 0u;
  v9[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v50, (v9 + 536));
  *&v9[v40] = 0;
  *(v9 + 6) = 0;
  *(v9 + 117) = v22;
  v9[952] = 0;
  v30 = *(v9 + 24);
  v54 = *(v9 + 23);
  v55 = v30;
  *&v56 = *(v9 + 50);
  v31 = *(v9 + 20);
  v50 = *(v9 + 19);
  v51 = v31;
  v32 = *(v9 + 22);
  v52 = *(v9 + 21);
  v53 = v32;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(&v50, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  *(v9 + 19) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 42) = 0x3FFFFFFFCLL;
  *(v9 + 344) = 0u;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 392) = 0u;
  Value = AGGraphGetValue();
  v34 = v45;
  v9[v41] = *Value;
  if (*MEMORY[0x1E698D3F8] == v34 || (AGGraphGetValue(), (v35 = ) == 0))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v49 = v35;
  }

  v36 = v46;
  outlined init with copy of PlatformItemList.Item(v9, v46);
  (*(v44 + 56))(v36, 0, 1, v7);
  v37 = v47;
  outlined init with take of PlatformItemList.Item?(v36, v47);
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for TabContextMenuKey.Storage(0);
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  ViewTraitCollection.subscript.setter();
  result = outlined destroy of TabContextMenuKey.Storage.Guts(v9, type metadata accessor for PlatformItemList.Item);
  *v48 = v49;
  return result;
}

uint64_t outlined destroy of TabContextMenuKey.Storage.Guts(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 88))();
  v8 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(*v3 + 96);
    v10 = 1;
    while (v8 != v9())
    {
      (*(*v3 + 104))(v13, v8);
      v8 = (*(*v3 + 120))(v8);
      v11 = v13[1];
      *a2 = v13[0];
      *(a2 + 16) = v11;
      *(a2 + 32) = v14;
      if (a3 == v10)
      {
        goto LABEL_12;
      }

      a2 += 40;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a4 + 32;
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        result = outlined init with copy of FocusStoreList.Item(v10, v8);
        if (v11 == v9)
        {
          goto LABEL_11;
        }

        v8 += 72;
        ++v9;
        v10 += 72;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = type metadata accessor for IntelligenceElement();
        v11 = *(v10 - 8);
        v12 = *(v11 + 72);
        result = (*(v11 + 16))(v8, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * (v6 + v9 - 1), v10);
        if (a3 + v9 == 1)
        {
          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v12;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v13 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  result = (*(*v3 + 88))();
  v8 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(*v3 + 96);
    v10 = 1;
    while (v8 != v9())
    {
      (*(*v3 + 104))(&v13, v8);
      v8 = (*(*v3 + 120))(v8);
      v11 = v14[0];
      *a2 = v13;
      a2[1] = v11;
      *(a2 + 25) = *(v14 + 9);
      if (a3 == v10)
      {
        goto LABEL_12;
      }

      a2 += 3;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static TableColumnContent._tableColumnCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v1;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 72))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E73E0];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for Map<Never, Never>, v3, v3, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  return _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(v4, a2);
}

uint64_t static TableColumnContent<>._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v6;
  v22[4] = *(a2 + 64);
  v23 = *(a2 + 80);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  v20 = a3;
  v21 = a4;
  v13 = _GraphValue.value.getter();
  v14 = partial apply for specialized closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  v17 = AssociatedTypeWitness;
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v16, v18, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  _GraphValue.init(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 64))(&v13, v22, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static TableColumnContent._makeContent(content:inputs:) in conformance Never(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(v2, v6);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance TableColumnDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance TableColumnDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TableColumnDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance TableColumnDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t TableColumnListKey.ConcatenatedTableColumnList.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of _Benchmark(i, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 8))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v8);
      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TableColumnListKey.ConcatenatedTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = *a2;
  for (i = a3 + 32; ; i += 40)
  {
    outlined init with copy of _Benchmark(i, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v12 + 8))(v11, v12);
    v14 = v8 + result;
    if (__OFADD__(v8, result))
    {
      break;
    }

    if (v9 < v14)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      v18 = (v9 - v8) & ~((v9 - v8) >> 63);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (((*(v16 + 16))(a1, &v18, a4, a5, v15, v16) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v19);
        return 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = v14;
    if (!--v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance TableColumnListKey(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v7);
  a2(v6, v4);
  result = specialized TableColumnListKey.ConcatenatedTableColumnList.init(_:_:)(v7, v6);
  *(a1 + 24) = &unk_1EFFEB4D0;
  *(a1 + 32) = &protocol witness table for TableColumnListKey.ConcatenatedTableColumnList;
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnID()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnID()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int __swiftcall AnyTableColumnIDs.index(before:)(Swift::Int before)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall AnyTableColumnIDs.index(after:)(Swift::Int after)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance AnyTableColumnIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 112))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AnyTableColumnIDs(uint64_t *a1)
{
  result = (*(**v1 + 112))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs(uint64_t *a1, void *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  (*(**v2 + 104))(*a2);
  return protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs;
}

void protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of AccessibilityRelationshipScope.Key(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = (*(*v6 + 88))();
  result = (*(*v6 + 96))();
  if (result < v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*(*v3 + 88))();
  result = (*(*v3 + 96))();
  if (result < v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AnyTableColumnIDs@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v7 = (*(*v6 + 88))();
    result = (*(*v6 + 96))();
    if (v5 >= v7 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance AnyTableColumnIDs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v5 + 88);
  v7 = v6();
  v8 = *(*v5 + 96);
  result = v8();
  if (v3 < v7 || result < v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = (v6)(result);
  result = v8();
  if (v4 < v11 || result < v4)
  {
    goto LABEL_12;
  }

  result = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnyTableColumnIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AnyTableColumnIDs(uint64_t *a1)
{
  result = (*(**v1 + 120))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AnyTableColumnIDs@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = (*(*v3 + 88))();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AnyTableColumnIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnyTableColumnIDs()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t WrappedTableColumnIDs.startIndex.getter(void (*a1)(uint64_t *__return_ptr, uint64_t, void))
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 144), v4, v6);
  a1(&v11, v4, *(*(*(v3 + 136) + 8) + 8));
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t WrappedTableColumnIDs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-v9 - 8];
  (*(v7 + 16))(&v15[-v9 - 8], v2 + *(v5 + 144), v6, v8);
  v16 = a1;
  v11 = dispatch thunk of Collection.subscript.read();
  outlined init with copy of DropInfo(v12, a2);
  v11(v15, 0);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int __swiftcall WrappedTableColumnIDs.index(before:)(Swift::Int before)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](before);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v1 + *(v3 + 144), v4, v6);
  v10[0] = before;
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v5 + 8))(v8, v4);
  return v10[1];
}

Swift::Int __swiftcall WrappedTableColumnIDs.index(after:)(Swift::Int after)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](after);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v1 + *(v3 + 144), v4, v6);
  v10[0] = after;
  dispatch thunk of Collection.index(after:)();
  (*(v5 + 8))(v8, v4);
  return v10[1];
}

__n128 static TableColumnConfiguration.Key.value(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v3 = MEMORY[0x1E697FE38];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDefaultVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v4 = v12.n128_u8[0];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey, v3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v8 = v12;
    v9 = v13;
    v5 = v14;
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey, v3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v6 = MEMORY[0x1E697FE38];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDefaultVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey);
    PropertyList.subscript.getter();
    v4 = v12.n128_u8[0];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey, v6);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey);
    PropertyList.subscript.getter();
    v8 = v12;
    v9 = v13;
    v5 = v14;
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey, v6);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey);
    PropertyList.subscript.getter();
  }

  lazy protocol witness table accessor for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key();
  EnvironmentValues.subscript.getter();
  lazy protocol witness table accessor for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey();
  EnvironmentValues.subscript.getter();
  *a2 = v4;
  result = v8;
  *(a2 + 24) = v9;
  *(a2 + 8) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v11;
  *(a2 + 56) = v10;
  *(a2 + 57) = v10;
  return result;
}

double specialized implicit closure #1 in _GraphInputs.tableColumnConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  lazy protocol witness table accessor for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key();
  EnvironmentValues.subscript.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[10];
  *(a1 + 42) = *&v5[10];
  return result;
}

uint64_t default associated conformance accessor for TableColumnContent.TableColumnContent.TableColumnSortComparator: SortComparator()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t default associated conformance accessor for TableColumnContent.TableColumnContent.TableRowValue: Identifiable()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t initializeWithCopy for _TableColumnInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for _TableColumnInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _TableColumnInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TableColumnInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
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

uint64_t storeEnumTagSinglePayload for _TableColumnInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnID and conformance TableColumnID()
{
  result = lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID;
  if (!lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID);
  }

  return result;
}

void type metadata accessor for IndexingIterator<AnyTableColumnIDs>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTableColumnIDs();
    v8 = lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, v7, type metadata accessor for AnyTableColumnIDs);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_3(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyTableColumnIDs and conformance AnyTableColumnIDs(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, a2, type metadata accessor for AnyTableColumnIDs);
}

{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, a2, type metadata accessor for AnyTableColumnIDs);
}

uint64_t lazy protocol witness table accessor for type Slice<AnyTableColumnIDs> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<AnyTableColumnIDs>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL specialized static TableColumnConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = a1[40];
  v7 = *(a1 + 6);
  v8 = a1[56];
  v9 = a1[57];
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v14 = a2[40];
  v15 = *(a2 + 6);
  v16 = a2[56];
  v17 = a2[57];
  if (v6 == 255)
  {
    if (v14 == 255)
    {
      return v7 == v15 && v8 == v16 && v9 == v17;
    }

LABEL_14:
    outlined copy of TableColumnCustomizationID?(*(a1 + 1), v2, v4, v5, v6);
    outlined copy of TableColumnCustomizationID?(v11, v10, v12, v13, v14);
    outlined consume of TableColumnCustomizationID?(v3, v2, v4, v5, v6);
    outlined consume of TableColumnCustomizationID?(v11, v10, v12, v13, v14);
    return 0;
  }

  if (v14 == 255)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (v3 != v11 || v2 != v10)
    {
      v18 = a1[57];
      v19 = a1[56];
      v20 = *(a1 + 6);
      v21 = a2[57];
      v22 = *(a2 + 6);
      v23 = a2[56];
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v23;
      v15 = v22;
      v17 = v21;
      v7 = v20;
      v8 = v19;
      v9 = v18;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 != v12 || v5 != v13)
    {
LABEL_19:
      v26 = v9;
      v27 = v8;
      v28 = v7;
      v29 = v17;
      v30 = v15;
      v31 = v16;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v31;
      v15 = v30;
      v17 = v29;
      v7 = v28;
      v8 = v27;
      v9 = v26;
      if (v32)
      {
        return v7 == v15 && v8 == v16 && v9 == v17;
      }

      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    if (v3 != v11 || v2 != v10)
    {
      goto LABEL_19;
    }
  }

  return v7 == v15 && v8 == v16 && v9 == v17;
}

uint64_t specialized TableColumnListKey.ConcatenatedTableColumnList.init(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _Benchmark(a1, v9);
  type metadata accessor for TableColumnList();
  if (swift_dynamicCast())
  {
    v4 = v10;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<TableColumnList>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD63400;
    outlined init with copy of _Benchmark(a1, v4 + 32);
  }

  v10 = v4;
  outlined init with copy of _Benchmark(a2, v9);
  if (swift_dynamicCast())
  {
    specialized Array.append<A>(contentsOf:)(v8);
    __swift_destroy_boxed_opaque_existential_1(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  else
  {
    outlined init with copy of _Benchmark(a2, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    __swift_destroy_boxed_opaque_existential_1(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v4 + 16) = v6 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v9, v4 + 40 * v6 + 32);
  }

  return v4;
}

void type metadata accessor for _ContiguousArrayStorage<TableColumnList>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>)
  {
    type metadata accessor for TableColumnList();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key()
{
  result = lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key;
  if (!lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key);
  }

  return result;
}

uint64_t destroy for TableColumnConfiguration(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 != 255)
  {
    return outlined consume of TableColumnCustomizationID.Base(*(result + 8), *(result + 16), *(result + 24), *(result + 32), v1 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumnConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(a2 + 40);
  if (v3 == 255)
  {
    v10 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v10;
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = v3 & 1;
    v9 = result;
    outlined copy of TableColumnCustomizationID.Base(v4, v5, v6, v7, v3 & 1);
    result = v9;
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
  }

  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t assignWithCopy for TableColumnConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 40);
  if (*(a1 + 40) == 255)
  {
    if (v4 == 255)
    {
      v22 = *(a2 + 8);
      v23 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v23;
      *(a1 + 8) = v22;
    }

    else
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = *(a2 + 24);
      v18 = *(a2 + 32);
      v19 = v4 & 1;
      outlined copy of TableColumnCustomizationID.Base(v15, v16, v17, v18, v4 & 1);
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 24) = v17;
      *(a1 + 32) = v18;
      *(a1 + 40) = v19;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of TableColumnCustomizationID(a1 + 8);
    v20 = *(a2 + 40);
    v21 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v21;
    *(a1 + 40) = v20;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = v4 & 1;
    outlined copy of TableColumnCustomizationID.Base(v5, v6, v7, v8, v4 & 1);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    outlined consume of TableColumnCustomizationID.Base(v10, v11, v12, v13, v14);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t assignWithTake for TableColumnConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(result + 40);
  if (v3 == 255)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = *(a2 + 40);
    if (v4 == 255)
    {
      v10 = result;
      outlined destroy of TableColumnCustomizationID(result + 8);
      result = v10;
      *(v10 + 8) = *(a2 + 8);
      *(v10 + 24) = *(a2 + 24);
      *(v10 + 40) = *(a2 + 40);
    }

    else
    {
      v6 = *(result + 8);
      v5 = *(result + 16);
      v7 = *(result + 24);
      v8 = *(result + 32);
      *(result + 8) = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 40) = v4 & 1;
      v9 = result;
      outlined consume of TableColumnCustomizationID.Base(v6, v5, v7, v8, v3 & 1);
      result = v9;
    }
  }

  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[58])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnConfiguration and conformance TableColumnConfiguration()
{
  result = lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration;
  if (!lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_3(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key()
{
  result = lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key;
  if (!lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey()
{
  result = lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey;
  if (!lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey);
  }

  return result;
}

uint64_t TabSection.init(header:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for TabSection();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 52), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 56), a3, a6);
}

uint64_t TabSection<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v24[0] = a4;
  v24[1] = a3;
  v24[2] = a2;
  v25 = a5;
  v8 = *(a1 + 32);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v18, v19);
  (*(v14 + 16))(v16, v6 + *(a1 + 52), v13);
  (*(v9 + 16))(v11, v6 + *(a1 + 56), v8);
  return TabSection<>.TabSectionView.init(namespace:header:content:footer:)(0, v21, v16, v11, v18, v13, v8, v25);
}

uint64_t TabSection<>.TabSectionView.init(namespace:header:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for TabSection<>.TabSectionView();
  (*(*(a5 - 8) + 32))(&a8[v15[19]], a2, a5);
  (*(*(a6 - 8) + 32))(&a8[v15[20]], a3, a6);
  return (*(*(a7 - 8) + 32))(&a8[v15[21]], a4, a7);
}

uint64_t TabSection<>.TabSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  v69 = &protocol witness table for UpdateDefaultTabFill;
  v38 = *(a1 + 48);
  v31 = *(&v38 + 1);
  v32 = *(&v34 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = v38;
  v33 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v67 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v64 = swift_getWitnessTable();
  v65 = &protocol witness table for AccessibilityAttachmentModifier;
  v62 = swift_getWitnessTable();
  v63 = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v4 = swift_getWitnessTable();
  v56 = MEMORY[0x1E69806B0];
  v57 = v3;
  v58 = &type metadata for TabItem.TraitKey;
  v59 = MEMORY[0x1E69806A0];
  v60 = v4;
  v61 = &protocol witness table for TabItem.TraitKey;
  type metadata accessor for PlatformItemTraitWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>();
  type metadata accessor for ModifiedContent();
  v5 = MEMORY[0x1E697FDB8];
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionHeaderTraitKey>, MEMORY[0x1E6980208], MEMORY[0x1E6980200], MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for StyleContextWriter<SectionHeaderStyleContext>, MEMORY[0x1E6980570], MEMORY[0x1E6980568], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  v6 = a1;
  v29 = a1;
  v7 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v7;
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v55 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  v9 = *(v6 + 32);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsCompactTabRepresentationTraitKey>, &type metadata for IsCompactTabRepresentationTraitKey, &protocol witness table for IsCompactTabRepresentationTraitKey, v5);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v10 = type metadata accessor for Group();
  v54 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v56 = v10;
  v57 = &type metadata for TabSectionIdentifiersTraitKey;
  v58 = v11;
  v59 = &protocol witness table for TabSectionIdentifiersTraitKey;
  swift_getOpaqueTypeMetadata2();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<TabSectionStyleContext>, lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext, &type metadata for TabSectionStyleContext, MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for StaticIf();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  *&v19 = v9;
  *(&v19 + 1) = v30;
  v44 = v34;
  v45 = v19;
  v46 = v38;
  v47 = *(v29 + 64);
  v48 = v35;
  v40 = v19;
  v41 = v38;
  v39 = v34;
  v42 = v47;
  v43 = v35;
  v20 = lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  v56 = v10;
  v57 = &type metadata for TabSectionIdentifiersTraitKey;
  v58 = v11;
  v59 = &protocol witness table for TabSectionIdentifiersTraitKey;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = lazy protocol witness table accessor for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>();
  v52 = OpaqueTypeConformance2;
  v53 = v22;
  v26 = swift_getWitnessTable();
  v27 = swift_getAssociatedConformanceWitness();
  StaticIf<>.init(_:then:else:)();
  v49 = v20;
  v50 = v26;
  v51 = v27;
  v23 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v12, v23);
  v24 = *(v13 + 8);
  v24(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)(v18, v12, v23);
  return (v24)(v18, v12);
}

uint64_t closure #1 in TabSection<>.TabSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v73 = a8;
  v69 = a4;
  v75 = a1;
  v78 = a9;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  v104 = a6;
  v105 = a7;
  v70 = a6;
  v106 = a8;
  v77 = type metadata accessor for TabSection<>.TabSectionView();
  v74 = *(v77 - 8);
  v76 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v54 - v14;
  v67 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v98 = a6;
  v99 = &protocol witness table for UpdateDefaultTabFill;
  v71 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v17 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v96 = WitnessTable;
  v97 = v17;
  v94 = swift_getWitnessTable();
  v95 = &protocol witness table for AccessibilityAttachmentModifier;
  v92 = swift_getWitnessTable();
  v93 = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v18 = swift_getWitnessTable();
  v100 = MEMORY[0x1E69806B0];
  v101 = v15;
  v102 = &type metadata for TabItem.TraitKey;
  v103 = MEMORY[0x1E69806A0];
  v104 = v18;
  v105 = &protocol witness table for TabItem.TraitKey;
  type metadata accessor for PlatformItemTraitWriter();
  v55 = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>();
  type metadata accessor for ModifiedContent();
  v19 = MEMORY[0x1E697FDB8];
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionHeaderTraitKey>, MEMORY[0x1E6980208], MEMORY[0x1E6980200], MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for StyleContextWriter<SectionHeaderStyleContext>, MEMORY[0x1E6980570], MEMORY[0x1E6980568], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = a5;
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v91 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  v21 = v69;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsCompactTabRepresentationTraitKey>, &type metadata for IsCompactTabRepresentationTraitKey, &protocol witness table for IsCompactTabRepresentationTraitKey, v19);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v22 = type metadata accessor for Group();
  v62 = v22;
  AssociatedTypeWitness = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v54 - v23;
  v90 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v100 = v22;
  v101 = &type metadata for TabSectionIdentifiersTraitKey;
  v102 = v61;
  v103 = &protocol witness table for TabSectionIdentifiersTraitKey;
  v65 = MEMORY[0x1E6981298];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v58 = &v54 - v24;
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<TabSectionStyleContext>, lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext, &type metadata for TabSectionStyleContext, MEMORY[0x1E697F4C8]);
  v63 = type metadata accessor for ModifiedContent();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v54 - v27;
  v80 = a2;
  v28 = a3;
  v81 = a3;
  v29 = v21;
  v82 = v21;
  v83 = v79;
  v30 = v70;
  v84 = v70;
  v31 = v67;
  v85 = v67;
  v32 = v73;
  v33 = v75;
  v86 = v73;
  v87 = v75;
  Group<A>.init(content:)();
  v34 = v74;
  v35 = v72;
  v36 = v33;
  v37 = v77;
  (*(v74 + 16))(v72, v36, v77);
  v38 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v55;
  *(v39 + 3) = v28;
  v40 = v79;
  *(v39 + 4) = v29;
  *(v39 + 5) = v40;
  *(v39 + 6) = v30;
  *(v39 + 7) = v31;
  *(v39 + 8) = v32;
  (*(v34 + 32))(&v39[v38], v35, v37);
  v41 = v58;
  v42 = v62;
  v43 = v61;
  v44 = v56;
  View.transformTrait<A>(_:transform:)();

  (*(AssociatedTypeWitness + 8))(v44, v42);
  v100 = v42;
  v101 = &type metadata for TabSectionIdentifiersTraitKey;
  v102 = v43;
  v103 = &protocol witness table for TabSectionIdentifiersTraitKey;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext();
  v46 = v57;
  v47 = OpaqueTypeMetadata2;
  View.styleContext<A>(_:)();
  (*(v66 + 8))(v41, v47);
  v48 = lazy protocol witness table accessor for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>();
  v88 = OpaqueTypeConformance2;
  v89 = v48;
  v49 = v63;
  v50 = swift_getWitnessTable();
  v51 = v60;
  static ViewBuilder.buildExpression<A>(_:)(v46, v49, v50);
  v52 = *(v64 + 8);
  v52(v46, v49);
  static ViewBuilder.buildExpression<A>(_:)(v51, v49, v50);
  return (v52)(v51, v49);
}

uint64_t closure #1 in closure #1 in TabSection<>.TabSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v129 = a8;
  v130 = a1;
  v127 = a4;
  v110 = a3;
  v121 = a9;
  v117 = type metadata accessor for ModifiedContent();
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v88 - v13;
  v135 = MEMORY[0x1E697FDB8];
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsCompactTabRepresentationTraitKey>, &type metadata for IsCompactTabRepresentationTraitKey, &protocol witness table for IsCompactTabRepresentationTraitKey, MEMORY[0x1E697FDB8]);
  v115 = type metadata accessor for ModifiedContent();
  v119 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v88 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v134 = a5;
  v16 = AssociatedConformanceWitness;
  v132 = AssociatedConformanceWitness;
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  v128 = type metadata accessor for _TraitWritingModifier();
  v112 = type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v153 = v16;
  swift_getWitnessTable();
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  v102 = type metadata accessor for _TraitWritingModifier();
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v131 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v88 - v21;
  type metadata accessor for ModifiedContent();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v22 = type metadata accessor for ModifiedContent();
  v151 = a6;
  v152 = &protocol witness table for UpdateDefaultTabFill;
  v105 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v24 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v149 = WitnessTable;
  v150 = v24;
  v147 = swift_getWitnessTable();
  v148 = &protocol witness table for AccessibilityAttachmentModifier;
  v145 = swift_getWitnessTable();
  v146 = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v25 = swift_getWitnessTable();
  v138 = MEMORY[0x1E69806B0];
  v139 = v22;
  v140 = &type metadata for TabItem.TraitKey;
  v141 = MEMORY[0x1E69806A0];
  v142 = v25;
  v143 = &protocol witness table for TabItem.TraitKey;
  v97 = type metadata accessor for PlatformItemTraitWriter();
  v26 = a2;
  v88 = a2;
  v98 = type metadata accessor for ModifiedContent();
  v99 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>();
  v95 = type metadata accessor for ModifiedContent();
  v104 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v88 - v27;
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionHeaderTraitKey>, MEMORY[0x1E6980208], MEMORY[0x1E6980200], v135);
  v94 = type metadata accessor for ModifiedContent();
  v103 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v88 - v28;
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for StyleContextWriter<SectionHeaderStyleContext>, MEMORY[0x1E6980570], MEMORY[0x1E6980568], MEMORY[0x1E697F4C8]);
  v96 = type metadata accessor for ModifiedContent();
  v100 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v88 - v29;
  v101 = type metadata accessor for ModifiedContent();
  v122 = type metadata accessor for ModifiedContent();
  v126 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v133 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v88 - v32;
  v33 = v110;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v135 = &v88 - v38;
  v138 = v26;
  v139 = v33;
  v39 = v127;
  v40 = v134;
  v140 = v127;
  v141 = v134;
  v89 = a6;
  v142 = a6;
  v143 = a7;
  v41 = v129;
  v144 = v129;
  v90 = type metadata accessor for TabSection<>.TabSectionView();
  (*(a7 + 56))(v33);
  v106 = AssociatedTypeWitness;
  v107 = swift_getAssociatedConformanceWitness();
  v123 = v36;
  static ViewBuilder.buildExpression<A>(_:)(v36, AssociatedTypeWitness, v107);
  v42 = *(v124 + 8);
  v108 = v124 + 8;
  v109 = v42;
  v42(v36, AssociatedTypeWitness);
  v136[2] = v88;
  v136[3] = v33;
  v136[4] = v39;
  v136[5] = v40;
  v136[6] = v89;
  v136[7] = a7;
  v136[8] = v41;
  v136[9] = v130;
  v43 = v91;
  v44 = v89;
  View.tabItem<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in TabSection<>.TabSectionView.body.getter, v136, v88, v88, v89, v89, v91);
  LOBYTE(v138) = 1;
  v45 = swift_getWitnessTable();
  v137[23] = v44;
  v137[24] = v45;
  v46 = swift_getWitnessTable();
  v47 = lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified();
  v137[21] = v46;
  v137[22] = v47;
  v48 = swift_getWitnessTable();
  v49 = lazy protocol witness table accessor for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>();
  v137[19] = v48;
  v137[20] = v49;
  v50 = v95;
  v51 = swift_getWitnessTable();
  v52 = v93;
  View._trait<A>(_:_:)();
  (*(v104 + 8))(v43, v50);
  IsSectionHeaderTrait = lazy protocol witness table accessor for type _TraitWritingModifier<IsSectionHeaderTraitKey> and conformance _TraitWritingModifier<A>();
  v137[17] = v51;
  v137[18] = IsSectionHeaderTrait;
  v54 = v94;
  v55 = swift_getWitnessTable();
  v56 = v92;
  View.styleContext<A>(_:)();
  (*(v103 + 8))(v52, v54);
  v57 = lazy protocol witness table accessor for type StyleContextWriter<SectionHeaderStyleContext> and conformance StyleContextWriter<A>();
  v137[15] = v55;
  v137[16] = v57;
  v58 = v96;
  v59 = swift_getWitnessTable();
  v60 = v133;
  View.removeTag<A>(_:)();
  (*(v100 + 8))(v56, v58);
  v61 = swift_getWitnessTable();
  v137[13] = v59;
  v137[14] = v61;
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v137[11] = v62;
  v137[12] = v63;
  v64 = v122;
  v104 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v60, v64, v104);
  v65 = *(v126 + 8);
  v110 = v126 + 8;
  v128 = v65;
  v65(v60, v64);
  v66 = v118;
  v67 = v129;
  View.tabPlatformIdentified()(v127, v129);
  LOBYTE(v138) = 1;
  v137[9] = v67;
  v137[10] = v47;
  v68 = v117;
  v69 = swift_getWitnessTable();
  v70 = v116;
  View._trait<A>(_:_:)();
  (*(v120 + 8))(v66, v68);
  IsCompactTabRepresentationTrait = lazy protocol witness table accessor for type _TraitWritingModifier<IsCompactTabRepresentationTraitKey> and conformance _TraitWritingModifier<A>();
  v137[7] = v69;
  v137[8] = IsCompactTabRepresentationTrait;
  v72 = v115;
  v73 = swift_getWitnessTable();
  v74 = v131;
  View.removeTag<A>(_:)();
  (*(v119 + 8))(v70, v72);
  v137[5] = v73;
  v137[6] = v61;
  v137[3] = swift_getWitnessTable();
  v137[4] = v63;
  v75 = v113;
  v132 = swift_getWitnessTable();
  v76 = v111;
  static ViewBuilder.buildExpression<A>(_:)(v74, v75, v132);
  v77 = v114;
  v134 = *(v114 + 8);
  v134(v74, v75);
  v78 = v123;
  v79 = v106;
  (*(v124 + 16))(v123, v135, v106);
  v138 = v78;
  v80 = v125;
  v81 = v133;
  v82 = v122;
  (*(v126 + 16))(v133, v125, v122);
  v139 = v81;
  (*(v77 + 16))(v74, v76, v75);
  v140 = v74;
  v137[0] = v79;
  v137[1] = v82;
  v83 = v82;
  v137[2] = v75;
  v136[11] = v107;
  v136[12] = v104;
  v136[13] = v132;
  static ViewBuilder.buildBlock<each A>(_:)(&v138, 3uLL, v137);
  v84 = v134;
  v134(v76, v75);
  v85 = v128;
  v128(v80, v82);
  v86 = v109;
  v109(v135, v79);
  v84(v131, v75);
  v85(v133, v83);
  return v86(v123, v79);
}

uint64_t closure #1 in closure #1 in closure #1 in TabSection<>.TabSectionView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  v21[6] = v17;
  v21[7] = v18;
  v19 = type metadata accessor for TabSection<>.TabSectionView();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v19 + 76), a2, a6);
  static ViewBuilder.buildExpression<A>(_:)(v11, a2, a6);
  return (*(v9 + 8))(v11, a2);
}

uint64_t closure #2 in closure #1 in TabSection<>.TabSectionView.body.getter(uint64_t *a1)
{
  type metadata accessor for TabSection<>.TabSectionView();
  v2 = Namespace.wrappedValue.getter();
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = v2;
  *a1 = v3;
  return result;
}

uint64_t closure #2 in TabSection<>.TabSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a8;
  v25[1] = a1;
  v25[2] = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v25 - v20;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a5;
  v25[7] = a6;
  v25[8] = a7;
  v25[9] = v25[0];
  type metadata accessor for TabSection<>.TabSectionView();
  (*(a7 + 56))(a3, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  v23 = *(v16 + 8);
  v23(v18, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v23)(v21, AssociatedTypeWitness);
}

uint64_t TabSection<>.init<>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v11);
  a1(v15);
  return TabSection.init(header:content:footer:)(v13, v9, v16, a2, a3, MEMORY[0x1E6981E70], a4);
}

uint64_t TabSection<>.init<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return TabSection.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}