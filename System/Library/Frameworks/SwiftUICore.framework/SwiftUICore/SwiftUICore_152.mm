uint64_t implicit closure #1 in Text.Resolved.append<A>(resolvable:in:with:transition:)()
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x193ABEDD0](0xD000000000000023, 0x800000018DD7FBF0);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t protocol witness for ResolvedTextContainer.properties.setter in conformance Text.ResolvedString(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v6[7] = v1;
  v7[0] = a1[8];
  *(v7 + 9) = *(a1 + 137);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return outlined destroy of Text.ResolvedProperties(v6);
}

void (*protocol witness for ResolvedTextContainer.properties.modify in conformance Text.ResolvedString(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x139uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = v4;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = xmmword_18DD85510;
  *(v3 + 112) = v4;

  v5 = MEMORY[0x1E69E7CD0];
  *(v3 + 120) = 0;
  *(v3 + 128) = v5;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 3;
  return protocol witness for ResolvedTextContainer.properties.modify in conformance Text.ResolvedString;
}

void protocol witness for ResolvedTextContainer.properties.modify in conformance Text.ResolvedString(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*a1 + 10);
  v3 = v1[7];
  v1[16] = v1[6];
  v1[17] = v3;
  v1[18] = v1[8];
  *(v2 + 137) = *(v1 + 137);
  v4 = v1[3];
  v1[12] = v1[2];
  v1[13] = v4;
  v5 = v1[5];
  v1[14] = v1[4];
  v1[15] = v5;
  v6 = v1[1];
  v1[10] = *v1;
  v1[11] = v6;
  outlined destroy of Text.ResolvedProperties(v2);

  free(v1);
}

__n128 protocol witness for ResolvedTextContainer.idiom.getter in conformance Text.ResolvedString@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 20));
  *a2 = result;
  return result;
}

uint64_t protocol witness for ResolvedTextContainer.append(_:in:with:) in conformance Text.ResolvedString()
{
  v0 = static String._uncheckedFromUTF8(_:)();
  MEMORY[0x193ABEDD0](v0);
}

uint64_t Text.Style.accessibility.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  v6 = v1[36];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of AccessibilityTextAttributes?(v2, v3, v4, v5, v6);
}

__n128 Text.Style.accessibility.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of AccessibilityTextAttributes?(v1[32], v1[33], v1[34], v1[35], v1[36]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 17) = v5;
  v1[36] = v3;
  return result;
}

uint64_t Text.Style.clearedFontModifiers.getter()
{
  type metadata accessor for Text.Style(0);
}

uint64_t Text.Style.clearedFontModifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Text.Style(0) + 108);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Text.Style.addFontModifier<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyFontModifier();
  static AnyFontModifier.dynamic<A>(_:)(a1, a2);
  MEMORY[0x193ABF170]();
  if (*((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t Text.Style.removeFontModifier<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Text.Style.removeFontModifier<A>(ofType:)(a1, a2, a3, partial apply for closure #1 in Text.Style.removeFontModifier<A>(ofType:));
}

{
  return Text.Style.removeFontModifier<A>(ofType:)(a1, a2, a3, partial apply for closure #1 in Text.Style.removeFontModifier<A>(ofType:));
}

uint64_t Text.Style.removeFontModifier<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v10[2] = a2;
  v10[3] = a3;
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a4, v10);
  v7 = *(v4 + 8);
  if (v7 >> 62)
  {
    v9 = result;
    v8 = __CocoaSet.count.getter();
    result = v9;
    if (v8 >= v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= result)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(result, v8);
      type metadata accessor for Text.Style(0);
      return specialized Set._Variant.insert(_:)(&v11, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Text.Style.removeFontModifier<A>(ofType:)(uint64_t a1, ValueMetadata *a2)
{
  type metadata accessor for AnyStaticFontModifier();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  if (a2 != &type metadata for Font.BoldModifier)
  {
    return 0;
  }

  _s7SwiftUI22AnyDynamicFontModifierCyAA0E0V06WeightF0VGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + 16) < 0.3)
    {
      return 0;
    }

    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v4 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v5 = dyld_program_sdk_at_least();
    }

    else
    {
      v5 = static Semantics.forced >= v4;
    }

    return v5 ^ 1u;
  }

  return result;
}

void Text.ResolvedProperties.insets.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t Text.ResolvedProperties.styles.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Text.ResolvedProperties.transitions.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void *Text.ResolvedProperties.suffix.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return outlined copy of ResolvedTextSuffix(v2, v3, v4, v5, v6, v7);
}

__n128 Text.ResolvedProperties.suffix.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  outlined consume of ResolvedTextSuffix(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t Text.ResolvedProperties.CustomAttachments.characterIndices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Text.ResolvedProperties.customAttachments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 112) = v2;
  return result;
}

uint64_t Text.ResolvedProperties.Transition.transition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 14);
  *a1 = *v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v6 = *(v1 + 13);
  *(a1 + 13) = v6;
  *(a1 + 14) = v5;
  return outlined copy of ContentTransition.Storage(v2, v4 | (v3 << 32), v6);
}

uint64_t Text.ResolvedProperties.Transition.transition.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  v5 = *(a1 + 14);
  result = outlined consume of ContentTransition.Storage(*v1, *(v1 + 8) | (*(v1 + 12) << 32), *(v1 + 13));
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 12) = v3;
  *(v1 + 14) = v5;
  return result;
}

uint64_t Text.ResolvedProperties.paragraph.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  v3 = *(v1 + 136);
  *(a1 + 16) = v3;
  v4 = v3;
}

__n128 Text.ResolvedProperties.paragraph.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = *(v1 + 136);

  result = v6;
  *(v1 + 120) = v6;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  return result;
}

void *Text.ResolvedProperties.Paragraph.markParagraphBoundary(at:in:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = v5;
  if ([v8 baseWritingDirection] != -1 || objc_msgSend(v8, sel_horizontalAlignment) && objc_msgSend(v8, sel_horizontalAlignment) != 1)
  {

    v3[2] = 0;
LABEL_4:

    v3[1] = MEMORY[0x1E69E7CD0];
    v3[3] = a1;
    return v5;
  }

  v21 = v6;
  v5 = v3[2];
  v22 = v3[3];
  v10 = v5;

  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_10Foundation16AttributedStringV16WritingDirectionOSgs5NeverOTg5066_s7SwiftUI4TextV18ResolvedPropertiesV9ParagraphVAAE29languageBasedg61Direction030_7AFAB46D18FA6D189589CFA78D8B2Q1ELL10Foundation16eF19V0iJ0OSgyFAOSSXEfU_Tf1cn_n(v11);
  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV16WritingDirectionOSg_SayAIGTt0g5Tf4g_n(v12);

  if (*(v13 + 16) == 1)
  {
    v14 = specialized Collection.first.getter(v13);

    if ((v14 & 0xFE) != 2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  result = v22;
  if (!__OFSUB__(a1, v22))
  {
    v15 = NSAttributedString.naturalWritingDirection(in:)(v22, a1 - v22);
    if (v15 == 2)
    {
      if (v7)
      {
        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v6, v24);

        v16 = v24[0];
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v21, &v23);

        v17 = v23;
      }

      else
      {
        v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v6);
        if (v19)
        {
          v16 = *(v19 + 72);
        }

        else
        {
          v16 = 0;
        }

        v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v21);
        if (v20)
        {
          v17 = *(v20 + 72);
        }

        else
        {
          v17 = 0;
        }
      }

      v18 = 0;
      if ((v16 & 1) != 0 || !v17)
      {
        goto LABEL_27;
      }
    }

    else if ((v15 & 1) == 0)
    {
LABEL_17:
      v18 = 0;
LABEL_27:
      [v8 setBaseWritingDirection_];

      v3[2] = 0;
      goto LABEL_4;
    }

LABEL_26:
    v18 = 1;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void *EnvironmentValues.disableLinkColor.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.disableLinkColor : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.disableLinkColor : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016DisableLinkColorF0030_7AFAB46D18FA6D189589CFA78D8B2R1ELLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016DisableLinkColorK0030_7AFAB46D18FA6D189589CFA78D8B2W1ELLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.disableLinkColor.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016DisableLinkColorF0030_7AFAB46D18FA6D189589CFA78D8B2R1ELLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016DisableLinkColorK0030_7AFAB46D18FA6D189589CFA78D8B2W1ELLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.disableLinkColor.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.disableLinkColor.modify;
}

void EnvironmentValues.disableLinkColor.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016DisableLinkColorF0030_7AFAB46D18FA6D189589CFA78D8B2R1ELLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016DisableLinkColorK0030_7AFAB46D18FA6D189589CFA78D8B2W1ELLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = specialized Collection.firstIndex(where:)(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AC03C0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x193AC03C0](v2, v6);
    v15 = MEMORY[0x193AC03C0](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t outlined destroy of ParagraphStyleResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features()
{
  result = lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features;
  if (!lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features;
  if (!lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features;
  if (!lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features;
  if (!lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.ResolvedProperties.Features and conformance Text.ResolvedProperties.Features);
  }

  return result;
}

uint64_t dispatch thunk of ResolvedTextContainer.append(_:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 80))();
}

{
  return (*(a5 + 88))();
}

unint64_t initializeBufferWithCopyOfBuffer for Text.Resolved(unint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = *a2;
    if (*a2 >= 2uLL)
    {
    }

    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    *a1 = v6;
    *(a1 + 8) = v7;

    outlined copy of Text.Style.TextStyleColor(v8);
    v9 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v10 = *(a2 + 88);
    *(a1 + 16) = v8;

    if ((v10 - 1) >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v10;
    }

    else
    {
      *(a1 + 80) = *(a2 + 80);
    }

    v12 = *(a2 + 104);
    if ((v12 - 1) >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v12;
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
    }

    v13 = *(a2 + 176);
    if (v13 == 1)
    {
      v14 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v14;
      *(a1 + 208) = *(a2 + 208);
      v15 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v15;
      v16 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v16;
    }

    else
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 192) = *(a2 + 192);
      v17 = *(a2 + 184);
      *(a1 + 176) = v13;
      *(a1 + 184) = v17;
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
    }

    v18 = *(a2 + 248);
    if (v18 == 1)
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v18;
    }

    v19 = *(a2 + 288);
    if (v19 == 1)
    {
      v20 = *(a2 + 272);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v20;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 257) = *(a2 + 257);
      if (v19)
      {
        v21 = *(a2 + 264);
        v22 = *(a2 + 272);
        v23 = *(a2 + 280);
        outlined copy of Text.Storage(v21, v22, v23);
        *(a1 + 264) = v21;
        *(a1 + 272) = v22;
        *(a1 + 280) = v23;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v24 = *(a2 + 280);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 280) = v24;
      }
    }

    v25 = *(a2 + 296);
    v26 = *(a2 + 304);
    *(a1 + 296) = v25;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = *(a2 + 320);
    v27 = type metadata accessor for Text.Style(0);
    v28 = *(v27 + 84);
    __dst = (a1 + v28);
    v76 = v27;
    v29 = (a2 + v28);
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = *(v32 + 48);
    v34 = v25;

    if (v33(v29, 2, v31))
    {
      v35 = type metadata accessor for TypesettingLanguage.Storage(0);
      v36 = __dst;
      memcpy(__dst, v29, *(*(v35 - 8) + 64));
    }

    else
    {
      v37 = type metadata accessor for Locale.Language();
      v36 = __dst;
      (*(*(v37 - 8) + 16))(__dst, v29, v37);
      __dst[*(v31 + 48)] = v29[*(v31 + 48)];
      (*(v32 + 56))(__dst, 0, 2, v31);
    }

    v38 = *(type metadata accessor for TypesettingConfiguration() + 20);
    v39 = &v36[v38];
    v40 = &v29[v38];
    *v39 = *v40;
    v39[8] = v40[8];
    *(a1 + v76[22]) = *(a2 + v76[22]);
    v41 = v76[23];
    v42 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);

    if (v44(a2 + v41, 1, v42))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
      memcpy((a1 + v41), (a2 + v41), *(*(v45 - 8) + 64));
    }

    else
    {
      (*(v43 + 16))(a1 + v41, a2 + v41, v42);
      (*(v43 + 56))(a1 + v41, 0, 1, v42);
    }

    v46 = v76[24];
    v47 = type metadata accessor for AttributedString.TextAlignment();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(a2 + v46, 1, v47))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      memcpy((a1 + v46), (a2 + v46), *(*(v49 - 8) + 64));
    }

    else
    {
      (*(v48 + 16))(a1 + v46, a2 + v46, v47);
      (*(v48 + 56))(a1 + v46, 0, 1, v47);
    }

    *(a1 + v76[25]) = *(a2 + v76[25]);
    v50 = v76[26];
    v51 = type metadata accessor for AttributedString.LineHeight();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(a2 + v50, 1, v51))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy((a1 + v50), (a2 + v50), *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v52 + 16))(a1 + v50, a2 + v50, v51);
      (*(v52 + 56))(a1 + v50, 0, 1, v51);
    }

    *(a1 + v76[27]) = *(a2 + v76[27]);
    v54 = a3[5];
    v55 = a3[6];
    v77 = *(a2 + v54);
    *(a1 + v54) = v77;
    *(a1 + v55) = *(a2 + v55);
    v56 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v57 = a1 + v56;
    v58 = a2 + v56;
    v59 = *(a2 + v56 + 16);
    *v57 = *(a2 + v56);
    *(v57 + 16) = v59;
    *(v57 + 32) = *(a2 + v56 + 32);
    v60 = *(a2 + v56 + 48);
    *(v57 + 40) = *(a2 + v56 + 40);
    *(v57 + 48) = v60;
    v61 = *(a2 + v56 + 64);
    __dsta = *(a2 + v56 + 56);
    v62 = *(a2 + v56 + 72);
    v63 = *(a2 + v56 + 80);
    v64 = *(a2 + v56 + 88);
    v65 = *(a2 + v56 + 96);
    v79 = *(a2 + v56 + 104);

    v66 = v77;

    outlined copy of ResolvedTextSuffix(__dsta, v61, v62, v63, v64, v65);
    *(v57 + 56) = __dsta;
    *(v57 + 64) = v61;
    *(v57 + 72) = v62;
    *(v57 + 80) = v63;
    *(v57 + 88) = v64;
    *(v57 + 96) = v65;
    v67 = *(v58 + 112);
    v68 = *(v58 + 120);
    *(v57 + 104) = v79;
    *(v57 + 112) = v67;
    v69 = *(v58 + 128);
    v70 = *(v58 + 136);
    *(v57 + 120) = v68;
    *(v57 + 128) = v69;
    v71 = *(v58 + 144);
    *(v57 + 136) = v70;
    *(v57 + 144) = v71;
    *(v57 + 152) = *(v58 + 152);

    v72 = v70;
  }

  return a1;
}

uint64_t assignWithCopy for Text.Resolved(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a1;
  v6 = *a2;
  if (v5 >= 2)
  {
    if (v6 >= 2)
    {
      *a1 = v6;
    }

    else
    {
      outlined destroy of Font(a1);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v6;
    if (v6 >= 2)
    {
    }
  }

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  outlined copy of Text.Style.TextStyleColor(v7);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  outlined consume of Gradient.ProviderTag(v8);
  *(a1 + 24) = *(a2 + 24);

  v9 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v9;
  v10 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v10;
  v11 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v11;
  v12 = *(a2 + 88) - 1;
  if ((*(a1 + 88) - 1) < 2)
  {
    if (v12 >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v12 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
LABEL_13:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

LABEL_15:
  v13 = *(a2 + 104) - 1;
  if ((*(a1 + 104) - 1) < 2)
  {
    if (v13 >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v13 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
LABEL_20:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_22;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

LABEL_22:
  v14 = *(a2 + 176);
  if (*(a1 + 176) == 1)
  {
    if (v14 == 1)
    {
      v15 = *(a2 + 112);
      v16 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v16;
      *(a1 + 112) = v15;
      v17 = *(a2 + 160);
      v18 = *(a2 + 176);
      v19 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 176) = v18;
      *(a1 + 192) = v19;
      *(a1 + 160) = v17;
    }

    else
    {
      v25 = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 112) = v25;
      v26 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v26;
      v27 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v27;
      v28 = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = v28;
      *(a1 + 176) = *(a2 + 176);
      v29 = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 184) = v29;
      v30 = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = v30;
    }
  }

  else if (v14 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    v21 = *(a2 + 128);
    v20 = *(a2 + 144);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 144) = v20;
    v23 = *(a2 + 176);
    v22 = *(a2 + 192);
    v24 = *(a2 + 160);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 176) = v23;
    *(a1 + 192) = v22;
    *(a1 + 160) = v24;
  }

  else
  {
    v31 = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = v31;
    v32 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v32;
    v33 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v33;
    v34 = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 160) = v34;
    *(a1 + 176) = *(a2 + 176);

    v35 = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 184) = v35;
    v36 = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = v36;
  }

  v37 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v37 == 1)
    {
      v38 = *(a2 + 216);
      v39 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v39;
      *(a1 + 216) = v38;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v42 = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 224) = v42;
      *(a1 + 233) = *(a2 + 233);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
    }
  }

  else if (v37 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    v40 = *(a2 + 248);
    v41 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v41;
    *(a1 + 248) = v40;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    v43 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v43;
    *(a1 + 233) = *(a2 + 233);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
  }

  v44 = *(a1 + 288);
  v45 = *(a2 + 288);
  if (v44 == 1)
  {
    if (v45 == 1)
    {
      v46 = *(a2 + 256);
      v47 = *(a2 + 272);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 256) = v46;
      *(a1 + 272) = v47;
      goto LABEL_50;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    *(a1 + 258) = *(a2 + 258);
    if (!*(a2 + 288))
    {
      v50 = *(a2 + 280);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 280) = v50;
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v45 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    v48 = *(a2 + 288);
    v49 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v49;
    *(a1 + 288) = v48;
    goto LABEL_50;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  *(a1 + 258) = *(a2 + 258);
  v51 = (a1 + 264);
  v52 = (a2 + 264);
  v53 = *(a2 + 288);
  if (v44)
  {
    if (v53)
    {
      v54 = *(a2 + 264);
      v55 = *(a2 + 272);
      v56 = *(a2 + 280);
      outlined copy of Text.Storage(v54, v55, v56);
      v57 = *(a1 + 264);
      v58 = *(a1 + 272);
      v59 = *(a1 + 280);
      *(a1 + 264) = v54;
      *(a1 + 272) = v55;
      *(a1 + 280) = v56;
      outlined consume of Text.Storage(v57, v58, v59);
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      outlined destroy of Text(a1 + 264);
      v63 = *(a2 + 280);
      *v51 = *v52;
      *(a1 + 280) = v63;
    }
  }

  else
  {
    if (v53)
    {
LABEL_47:
      v60 = *(a2 + 264);
      v61 = *(a2 + 272);
      v62 = *(a2 + 280);
      outlined copy of Text.Storage(v60, v61, v62);
      *(a1 + 264) = v60;
      *(a1 + 272) = v61;
      *(a1 + 280) = v62;
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_50;
    }

    v64 = *(a2 + 280);
    *v51 = *v52;
    *(a1 + 280) = v64;
  }

LABEL_50:
  v65 = *(a1 + 296);
  v66 = *(a2 + 296);
  *(a1 + 296) = v66;
  v67 = v66;

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  v68 = type metadata accessor for Text.Style(0);
  v69 = v68[21];
  v70 = (a1 + v69);
  v71 = (a2 + v69);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v73 = v72;
  v74 = *(v72 - 8);
  v75 = *(v74 + 48);
  v76 = v75(v70, 2, v72);
  v77 = v75(v71, 2, v73);
  if (v76)
  {
    if (!v77)
    {
      v78 = type metadata accessor for Locale.Language();
      (*(*(v78 - 8) + 16))(v70, v71, v78);
      v70[*(v73 + 48)] = v71[*(v73 + 48)];
      (*(v74 + 56))(v70, 0, 2, v73);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v77)
  {
    outlined destroy of ParagraphStyleResolutionContext(v70, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_55:
    v79 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v70, v71, *(*(v79 - 8) + 64));
    goto LABEL_56;
  }

  v129 = type metadata accessor for Locale.Language();
  (*(*(v129 - 8) + 24))(v70, v71, v129);
  v70[*(v73 + 48)] = v71[*(v73 + 48)];
LABEL_56:
  v80 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v81 = &v70[v80];
  v82 = &v71[v80];
  v83 = v82[8];
  *v81 = *v82;
  v81[8] = v83;
  *(a1 + v68[22]) = *(a2 + v68[22]);

  v84 = v68[23];
  v85 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  v88 = v87(a1 + v84, 1, v85);
  v89 = v87(a2 + v84, 1, v85);
  if (v88)
  {
    if (!v89)
    {
      (*(v86 + 16))(a1 + v84, a2 + v84, v85);
      (*(v86 + 56))(a1 + v84, 0, 1, v85);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v89)
  {
    (*(v86 + 8))(a1 + v84, v85);
LABEL_61:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v84), (a2 + v84), *(*(v90 - 8) + 64));
    goto LABEL_62;
  }

  (*(v86 + 24))(a1 + v84, a2 + v84, v85);
LABEL_62:
  v91 = v68[24];
  v92 = type metadata accessor for AttributedString.TextAlignment();
  v93 = *(v92 - 8);
  v94 = *(v93 + 48);
  v95 = v94(a1 + v91, 1, v92);
  v96 = v94(a2 + v91, 1, v92);
  if (v95)
  {
    if (!v96)
    {
      (*(v93 + 16))(a1 + v91, a2 + v91, v92);
      (*(v93 + 56))(a1 + v91, 0, 1, v92);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v96)
  {
    (*(v93 + 8))(a1 + v91, v92);
LABEL_67:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v91), (a2 + v91), *(*(v97 - 8) + 64));
    goto LABEL_68;
  }

  (*(v93 + 24))(a1 + v91, a2 + v91, v92);
LABEL_68:
  *(a1 + v68[25]) = *(a2 + v68[25]);
  v98 = v68[26];
  v99 = type metadata accessor for AttributedString.LineHeight();
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  v102 = v101(a1 + v98, 1, v99);
  v103 = v101(a2 + v98, 1, v99);
  if (!v102)
  {
    if (!v103)
    {
      (*(v100 + 24))(a1 + v98, a2 + v98, v99);
      goto LABEL_74;
    }

    (*(v100 + 8))(a1 + v98, v99);
    goto LABEL_73;
  }

  if (v103)
  {
LABEL_73:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v98), (a2 + v98), *(*(v104 - 8) + 64));
    goto LABEL_74;
  }

  (*(v100 + 16))(a1 + v98, a2 + v98, v99);
  (*(v100 + 56))(a1 + v98, 0, 1, v99);
LABEL_74:
  *(a1 + v68[27]) = *(a2 + v68[27]);

  v105 = a3[5];
  v106 = *(a1 + v105);
  v107 = *(a2 + v105);
  *(a1 + v105) = v107;
  v108 = v107;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v109 = a3[8];
  v110 = a1 + v109;
  v111 = a2 + v109;
  *v110 = *(a2 + v109);
  *(v110 + 8) = *(a2 + v109 + 8);
  *(v110 + 16) = *(a2 + v109 + 16);
  *(v110 + 24) = *(a2 + v109 + 24);
  *(v110 + 32) = *(a2 + v109 + 32);
  *(v110 + 40) = *(a2 + v109 + 40);

  *(v110 + 48) = *(v111 + 48);

  v112 = *(v111 + 56);
  v113 = *(v111 + 64);
  v114 = *(v111 + 72);
  v115 = *(v111 + 80);
  v116 = *(v111 + 88);
  v117 = *(v111 + 96);
  v118 = *(v111 + 104);
  outlined copy of ResolvedTextSuffix(v112, v113, v114, v115, v116, v117);
  v119 = *(v110 + 56);
  v120 = *(v110 + 64);
  v121 = *(v110 + 72);
  v122 = *(v110 + 80);
  v123 = *(v110 + 88);
  v124 = *(v110 + 96);
  *(v110 + 56) = v112;
  *(v110 + 64) = v113;
  *(v110 + 72) = v114;
  *(v110 + 80) = v115;
  *(v110 + 88) = v116;
  *(v110 + 96) = v117;
  *(v110 + 104) = v118;
  outlined consume of ResolvedTextSuffix(v119, v120, v121, v122, v123, v124);
  *(v110 + 112) = *(v111 + 112);

  *(v110 + 120) = *(v111 + 120);
  *(v110 + 128) = *(v111 + 128);

  v125 = *(v110 + 136);
  v126 = *(v111 + 136);
  *(v110 + 136) = v126;
  v127 = v126;

  *(v110 + 144) = *(v111 + 144);
  *(v110 + 152) = *(v111 + 152);
  return a1;
}

uint64_t initializeWithTake for Text.Resolved(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v8;
  *(a1 + 208) = *(a2 + 208);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  v15 = type metadata accessor for Text.Style(0);
  v16 = v15[21];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v18, 2, v19))
  {
    v22 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v17, v18, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = type metadata accessor for Locale.Language();
    (*(*(v23 - 8) + 32))(v17, v18, v23);
    v17[*(v20 + 48)] = v18[*(v20 + 48)];
    (*(v21 + 56))(v17, 0, 2, v20);
  }

  v24 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v25 = &v17[v24];
  v26 = &v18[v24];
  *v25 = *v26;
  v25[8] = v26[8];
  *(a1 + v15[22]) = *(a2 + v15[22]);
  v27 = v15[23];
  v28 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a2 + v27, 1, v28))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v27), (a2 + v27), *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 32))(a1 + v27, a2 + v27, v28);
    (*(v29 + 56))(a1 + v27, 0, 1, v28);
  }

  v31 = v15[24];
  v32 = type metadata accessor for AttributedString.TextAlignment();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(a2 + v31, 1, v32))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v31), (a2 + v31), *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v33 + 32))(a1 + v31, a2 + v31, v32);
    (*(v33 + 56))(a1 + v31, 0, 1, v32);
  }

  *(a1 + v15[25]) = *(a2 + v15[25]);
  v35 = v15[26];
  v36 = type metadata accessor for AttributedString.LineHeight();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a2 + v35, 1, v36))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v35), (a2 + v35), *(*(v38 - 8) + 64));
  }

  else
  {
    (*(v37 + 32))(a1 + v35, a2 + v35, v36);
    (*(v37 + 56))(a1 + v35, 0, 1, v36);
  }

  *(a1 + v15[27]) = *(a2 + v15[27]);
  v39 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v39) = *(a2 + v39);
  v40 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v41 = (a1 + v40);
  v42 = (a2 + v40);
  v43 = v42[7];
  v41[6] = v42[6];
  v41[7] = v43;
  v41[8] = v42[8];
  *(v41 + 137) = *(v42 + 137);
  v44 = v42[3];
  v41[2] = v42[2];
  v41[3] = v44;
  v45 = v42[5];
  v41[4] = v42[4];
  v41[5] = v45;
  v46 = v42[1];
  *v41 = *v42;
  v41[1] = v46;
  return a1;
}

uint64_t assignWithTake for Text.Resolved(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  if (*a1 < 2uLL)
  {
    goto LABEL_4;
  }

  if (v5 < 2)
  {
    outlined destroy of Font(a1);
    v5 = *a2;
LABEL_4:
    *a1 = v5;
    goto LABEL_6;
  }

  *a1 = v5;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  outlined consume of Gradient.ProviderTag(v6);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  if ((*(a1 + 88) - 1) < 2)
  {
LABEL_9:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

  v7 = *(a2 + 88);
  if ((v7 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
    goto LABEL_9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;

LABEL_11:
  if ((*(a1 + 104) - 1) < 2)
  {
LABEL_14:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_16;
  }

  v8 = *(a2 + 104);
  if ((v8 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
    goto LABEL_14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;

LABEL_16:
  if (*(a1 + 176) == 1)
  {
LABEL_19:
    v10 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v10;
    *(a1 + 208) = *(a2 + 208);
    v11 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v11;
    v12 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v12;
    goto LABEL_21;
  }

  v9 = *(a2 + 176);
  if (v9 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    goto LABEL_19;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
LABEL_21:
  if (*(a1 + 248) == 1)
  {
LABEL_24:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    goto LABEL_26;
  }

  v13 = *(a2 + 248);
  if (v13 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    goto LABEL_24;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v13;

LABEL_26:
  v14 = *(a1 + 288);
  if (v14 == 1)
  {
LABEL_29:
    v16 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v16;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_30;
  }

  v15 = *(a2 + 288);
  if (v15 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    goto LABEL_29;
  }

  v71 = (a1 + 264);
  v72 = (a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  if (v14)
  {
    if (v15)
    {
      v73 = *(a2 + 280);
      v74 = *(a1 + 264);
      v75 = *(a1 + 272);
      v76 = *(a1 + 280);
      *v71 = *v72;
      *(a1 + 280) = v73;
      outlined consume of Text.Storage(v74, v75, v76);
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_30;
    }

    outlined destroy of Text(a1 + 264);
  }

  v78 = *(a2 + 280);
  *v71 = *v72;
  *(a1 + 280) = v78;
LABEL_30:
  v17 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v18 = type metadata accessor for Text.Style(0);
  v19 = v18[21];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v20, 2, v22);
  v27 = v25(v21, 2, v23);
  if (v26)
  {
    if (!v27)
    {
      v28 = type metadata accessor for Locale.Language();
      (*(*(v28 - 8) + 32))(v20, v21, v28);
      v20[*(v23 + 48)] = v21[*(v23 + 48)];
      (*(v24 + 56))(v20, 0, 2, v23);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v27)
  {
    outlined destroy of ParagraphStyleResolutionContext(v20, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_35:
    v29 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v20, v21, *(*(v29 - 8) + 64));
    goto LABEL_36;
  }

  v77 = type metadata accessor for Locale.Language();
  (*(*(v77 - 8) + 40))(v20, v21, v77);
  v20[*(v23 + 48)] = v21[*(v23 + 48)];
LABEL_36:
  v30 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v31 = &v20[v30];
  v32 = &v21[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  *(a1 + v18[22]) = *(a2 + v18[22]);

  v33 = v18[23];
  v34 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 32))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_41:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_42;
  }

  (*(v35 + 40))(a1 + v33, a2 + v33, v34);
LABEL_42:
  v40 = v18[24];
  v41 = type metadata accessor for AttributedString.TextAlignment();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(a1 + v40, 1, v41);
  v45 = v43(a2 + v40, 1, v41);
  if (v44)
  {
    if (!v45)
    {
      (*(v42 + 32))(a1 + v40, a2 + v40, v41);
      (*(v42 + 56))(a1 + v40, 0, 1, v41);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v45)
  {
    (*(v42 + 8))(a1 + v40, v41);
LABEL_47:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v40), (a2 + v40), *(*(v46 - 8) + 64));
    goto LABEL_48;
  }

  (*(v42 + 40))(a1 + v40, a2 + v40, v41);
LABEL_48:
  *(a1 + v18[25]) = *(a2 + v18[25]);
  v47 = v18[26];
  v48 = type metadata accessor for AttributedString.LineHeight();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v51 = v50(a1 + v47, 1, v48);
  v52 = v50(a2 + v47, 1, v48);
  if (!v51)
  {
    if (!v52)
    {
      (*(v49 + 40))(a1 + v47, a2 + v47, v48);
      goto LABEL_54;
    }

    (*(v49 + 8))(a1 + v47, v48);
    goto LABEL_53;
  }

  if (v52)
  {
LABEL_53:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v47), (a2 + v47), *(*(v53 - 8) + 64));
    goto LABEL_54;
  }

  (*(v49 + 32))(a1 + v47, a2 + v47, v48);
  (*(v49 + 56))(a1 + v47, 0, 1, v48);
LABEL_54:
  *(a1 + v18[27]) = *(a2 + v18[27]);

  v54 = a3[5];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);

  v56 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v56) = *(a2 + v56);
  v57 = a3[8];
  v58 = a1 + v57;
  v59 = a2 + v57;
  v60 = *(v59 + 16);
  *v58 = *v59;
  *(v58 + 16) = v60;
  *(v58 + 32) = *(v59 + 32);
  *(v58 + 40) = *(v59 + 40);

  *(v58 + 48) = *(v59 + 48);

  v61 = *(v59 + 104);
  v62 = *(v58 + 56);
  v63 = *(v58 + 64);
  v64 = *(v58 + 72);
  v65 = *(v58 + 80);
  v66 = *(v58 + 88);
  v67 = *(v58 + 96);
  *(v58 + 56) = *(v59 + 56);
  *(v58 + 72) = *(v59 + 72);
  *(v58 + 88) = *(v59 + 88);
  *(v58 + 104) = v61;
  outlined consume of ResolvedTextSuffix(v62, v63, v64, v65, v66, v67);
  *(v58 + 112) = *(v59 + 112);

  v68 = *(v59 + 128);
  *(v58 + 120) = *(v59 + 120);
  *(v58 + 128) = v68;

  v69 = *(v58 + 136);
  *(v58 + 136) = *(v59 + 136);

  *(v58 + 144) = *(v59 + 144);
  *(v58 + 152) = *(v59 + 152);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for Text.Style(unint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = v12 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    if (*a2 >= 2uLL)
    {
    }

    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    *a1 = v7;
    *(a1 + 8) = v8;

    outlined copy of Text.Style.TextStyleColor(v9);
    v10 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v11 = *(a2 + 88);
    *(a1 + 16) = v9;

    if ((v11 - 1) >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v11;
    }

    else
    {
      *(a1 + 80) = *(a2 + 80);
    }

    v13 = *(a2 + 104);
    if ((v13 - 1) >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v13;
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
    }

    v14 = *(a2 + 176);
    if (v14 == 1)
    {
      v15 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v15;
      *(a1 + 208) = *(a2 + 208);
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
      v17 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v17;
    }

    else
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 192) = *(a2 + 192);
      v18 = *(a2 + 184);
      *(a1 + 176) = v14;
      *(a1 + 184) = v18;
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
    }

    v19 = *(a2 + 248);
    if (v19 == 1)
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v19;
    }

    v20 = *(a2 + 288);
    if (v20 == 1)
    {
      v21 = *(a2 + 272);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v21;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 257) = *(a2 + 257);
      if (v20)
      {
        v22 = *(a2 + 264);
        v23 = *(a2 + 272);
        v24 = *(a2 + 280);
        outlined copy of Text.Storage(v22, v23, v24);
        *(a1 + 264) = v22;
        *(a1 + 272) = v23;
        *(a1 + 280) = v24;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v25 = *(a2 + 280);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 280) = v25;
      }
    }

    v27 = *(a2 + 296);
    v26 = *(a2 + 304);
    *(a1 + 296) = v27;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = *(a2 + 320);
    v28 = a3[21];
    __dst = (a1 + v28);
    v56 = a3;
    v29 = (a2 + v28);
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = *(v32 + 48);
    v34 = v27;

    if (v33(v29, 2, v31))
    {
      v35 = type metadata accessor for TypesettingLanguage.Storage(0);
      v36 = __dst;
      memcpy(__dst, v29, *(*(v35 - 8) + 64));
    }

    else
    {
      v37 = type metadata accessor for Locale.Language();
      v36 = __dst;
      (*(*(v37 - 8) + 16))(__dst, v29, v37);
      __dst[*(v31 + 48)] = v29[*(v31 + 48)];
      (*(v32 + 56))(__dst, 0, 2, v31);
    }

    v38 = *(type metadata accessor for TypesettingConfiguration() + 20);
    v39 = &v36[v38];
    v40 = &v29[v38];
    *v39 = *v40;
    v39[8] = v40[8];
    v41 = v56[23];
    *(a1 + v56[22]) = *(a2 + v56[22]);
    v42 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);

    if (v44(a2 + v41, 1, v42))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
      memcpy((a1 + v41), (a2 + v41), *(*(v45 - 8) + 64));
    }

    else
    {
      (*(v43 + 16))(a1 + v41, a2 + v41, v42);
      (*(v43 + 56))(a1 + v41, 0, 1, v42);
    }

    v46 = v56[24];
    v47 = type metadata accessor for AttributedString.TextAlignment();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(a2 + v46, 1, v47))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      memcpy((a1 + v46), (a2 + v46), *(*(v49 - 8) + 64));
    }

    else
    {
      (*(v48 + 16))(a1 + v46, a2 + v46, v47);
      (*(v48 + 56))(a1 + v46, 0, 1, v47);
    }

    v50 = v56[26];
    *(a1 + v56[25]) = *(a2 + v56[25]);
    v51 = type metadata accessor for AttributedString.LineHeight();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(a2 + v50, 1, v51))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy((a1 + v50), (a2 + v50), *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v52 + 16))(a1 + v50, a2 + v50, v51);
      (*(v52 + 56))(a1 + v50, 0, 1, v51);
    }

    *(a1 + v56[27]) = *(a2 + v56[27]);
  }

  return a1;
}

uint64_t assignWithCopy for Text.Style(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  if (v6 >= 2)
  {
    if (v7 >= 2)
    {
      *a1 = v7;
    }

    else
    {
      outlined destroy of Font(a1);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v7;
    if (v7 >= 2)
    {
    }
  }

  *(a1 + 8) = *(a2 + 8);

  v8 = *(a2 + 16);
  outlined copy of Text.Style.TextStyleColor(v8);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  outlined consume of Gradient.ProviderTag(v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v10;
  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  v12 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v12;
  v13 = *(a2 + 88) - 1;
  if ((*(a1 + 88) - 1) < 2)
  {
    if (v13 >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v13 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
LABEL_13:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

LABEL_15:
  v14 = *(a2 + 104) - 1;
  if ((*(a1 + 104) - 1) < 2)
  {
    if (v14 >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v14 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
LABEL_20:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_22;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

LABEL_22:
  v15 = *(a2 + 176);
  if (*(a1 + 176) == 1)
  {
    if (v15 == 1)
    {
      v16 = *(a2 + 112);
      v17 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v17;
      *(a1 + 112) = v16;
      v18 = *(a2 + 160);
      v19 = *(a2 + 176);
      v20 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 176) = v19;
      *(a1 + 192) = v20;
      *(a1 + 160) = v18;
    }

    else
    {
      v26 = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 112) = v26;
      v27 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v27;
      v28 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v28;
      v29 = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = v29;
      *(a1 + 176) = *(a2 + 176);
      v30 = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 184) = v30;
      v31 = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = v31;
    }
  }

  else if (v15 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    v22 = *(a2 + 128);
    v21 = *(a2 + 144);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v22;
    *(a1 + 144) = v21;
    v24 = *(a2 + 176);
    v23 = *(a2 + 192);
    v25 = *(a2 + 160);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 176) = v24;
    *(a1 + 192) = v23;
    *(a1 + 160) = v25;
  }

  else
  {
    v32 = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = v32;
    v33 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v33;
    v34 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v34;
    v35 = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 160) = v35;
    *(a1 + 176) = *(a2 + 176);

    v36 = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 184) = v36;
    v37 = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = v37;
  }

  v38 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v38 == 1)
    {
      v39 = *(a2 + 216);
      v40 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v40;
      *(a1 + 216) = v39;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v43 = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 224) = v43;
      *(a1 + 233) = *(a2 + 233);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
    }
  }

  else if (v38 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    v41 = *(a2 + 248);
    v42 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v42;
    *(a1 + 248) = v41;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    v44 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v44;
    *(a1 + 233) = *(a2 + 233);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
  }

  v45 = *(a1 + 288);
  v46 = *(a2 + 288);
  if (v45 == 1)
  {
    if (v46 == 1)
    {
      v47 = *(a2 + 256);
      v48 = *(a2 + 272);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 256) = v47;
      *(a1 + 272) = v48;
      goto LABEL_50;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    *(a1 + 258) = *(a2 + 258);
    if (!*(a2 + 288))
    {
      v51 = *(a2 + 280);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 280) = v51;
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v46 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    v49 = *(a2 + 288);
    v50 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v50;
    *(a1 + 288) = v49;
    goto LABEL_50;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  *(a1 + 258) = *(a2 + 258);
  v52 = (a1 + 264);
  v53 = (a2 + 264);
  v54 = *(a2 + 288);
  if (v45)
  {
    if (v54)
    {
      v55 = *(a2 + 264);
      v56 = *(a2 + 272);
      v57 = *(a2 + 280);
      outlined copy of Text.Storage(v55, v56, v57);
      v58 = *(a1 + 264);
      v59 = *(a1 + 272);
      v60 = *(a1 + 280);
      *(a1 + 264) = v55;
      *(a1 + 272) = v56;
      *(a1 + 280) = v57;
      outlined consume of Text.Storage(v58, v59, v60);
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      outlined destroy of Text(a1 + 264);
      v64 = *(a2 + 280);
      *v52 = *v53;
      *(a1 + 280) = v64;
    }
  }

  else
  {
    if (v54)
    {
LABEL_47:
      v61 = *(a2 + 264);
      v62 = *(a2 + 272);
      v63 = *(a2 + 280);
      outlined copy of Text.Storage(v61, v62, v63);
      *(a1 + 264) = v61;
      *(a1 + 272) = v62;
      *(a1 + 280) = v63;
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_50;
    }

    v65 = *(a2 + 280);
    *v52 = *v53;
    *(a1 + 280) = v65;
  }

LABEL_50:
  v66 = *(a1 + 296);
  v67 = *(a2 + 296);
  *(a1 + 296) = v67;
  v68 = v67;

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  v69 = a3[21];
  v70 = (a1 + v69);
  v71 = (a2 + v69);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v73 = v72;
  v74 = *(v72 - 8);
  v75 = *(v74 + 48);
  v76 = v75(v70, 2, v72);
  v77 = v75(v71, 2, v73);
  if (v76)
  {
    if (!v77)
    {
      v78 = type metadata accessor for Locale.Language();
      (*(*(v78 - 8) + 16))(v70, v71, v78);
      v70[*(v73 + 48)] = v71[*(v73 + 48)];
      (*(v74 + 56))(v70, 0, 2, v73);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v77)
  {
    outlined destroy of ParagraphStyleResolutionContext(v70, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_55:
    v79 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v70, v71, *(*(v79 - 8) + 64));
    goto LABEL_56;
  }

  v106 = type metadata accessor for Locale.Language();
  (*(*(v106 - 8) + 24))(v70, v71, v106);
  v70[*(v73 + 48)] = v71[*(v73 + 48)];
LABEL_56:
  v80 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v81 = &v70[v80];
  v82 = &v71[v80];
  v83 = v82[8];
  *v81 = *v82;
  v81[8] = v83;
  *(a1 + a3[22]) = *(a2 + a3[22]);

  v84 = a3[23];
  v85 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  v88 = v87(a1 + v84, 1, v85);
  v89 = v87(a2 + v84, 1, v85);
  if (v88)
  {
    if (!v89)
    {
      (*(v86 + 16))(a1 + v84, a2 + v84, v85);
      (*(v86 + 56))(a1 + v84, 0, 1, v85);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v89)
  {
    (*(v86 + 8))(a1 + v84, v85);
LABEL_61:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v84), (a2 + v84), *(*(v90 - 8) + 64));
    goto LABEL_62;
  }

  (*(v86 + 24))(a1 + v84, a2 + v84, v85);
LABEL_62:
  v91 = a3[24];
  v92 = type metadata accessor for AttributedString.TextAlignment();
  v93 = *(v92 - 8);
  v94 = *(v93 + 48);
  v95 = v94(a1 + v91, 1, v92);
  v96 = v94(a2 + v91, 1, v92);
  if (v95)
  {
    if (!v96)
    {
      (*(v93 + 16))(a1 + v91, a2 + v91, v92);
      (*(v93 + 56))(a1 + v91, 0, 1, v92);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v96)
  {
    (*(v93 + 8))(a1 + v91, v92);
LABEL_67:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v91), (a2 + v91), *(*(v97 - 8) + 64));
    goto LABEL_68;
  }

  (*(v93 + 24))(a1 + v91, a2 + v91, v92);
LABEL_68:
  *(a1 + a3[25]) = *(a2 + a3[25]);
  v98 = a3[26];
  v99 = type metadata accessor for AttributedString.LineHeight();
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  v102 = v101(a1 + v98, 1, v99);
  v103 = v101(a2 + v98, 1, v99);
  if (!v102)
  {
    if (!v103)
    {
      (*(v100 + 24))(a1 + v98, a2 + v98, v99);
      goto LABEL_74;
    }

    (*(v100 + 8))(a1 + v98, v99);
    goto LABEL_73;
  }

  if (v103)
  {
LABEL_73:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v98), (a2 + v98), *(*(v104 - 8) + 64));
    goto LABEL_74;
  }

  (*(v100 + 16))(a1 + v98, a2 + v98, v99);
  (*(v100 + 56))(a1 + v98, 0, 1, v99);
LABEL_74:
  *(a1 + a3[27]) = *(a2 + a3[27]);

  return a1;
}

uint64_t initializeWithTake for Text.Style(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v8;
  *(a1 + 208) = *(a2 + 208);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  v15 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  v16 = a3[21];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  *(a1 + 304) = v15;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v18, 2, v19))
  {
    v22 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v17, v18, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = type metadata accessor for Locale.Language();
    (*(*(v23 - 8) + 32))(v17, v18, v23);
    v17[*(v20 + 48)] = v18[*(v20 + 48)];
    (*(v21 + 56))(v17, 0, 2, v20);
  }

  v24 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v25 = &v17[v24];
  v26 = &v18[v24];
  *v25 = *v26;
  v25[8] = v26[8];
  v27 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  v28 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a2 + v27, 1, v28))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v27), (a2 + v27), *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 32))(a1 + v27, a2 + v27, v28);
    (*(v29 + 56))(a1 + v27, 0, 1, v28);
  }

  v31 = a3[24];
  v32 = type metadata accessor for AttributedString.TextAlignment();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(a2 + v31, 1, v32))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v31), (a2 + v31), *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v33 + 32))(a1 + v31, a2 + v31, v32);
    (*(v33 + 56))(a1 + v31, 0, 1, v32);
  }

  v35 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  v36 = type metadata accessor for AttributedString.LineHeight();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a2 + v35, 1, v36))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v35), (a2 + v35), *(*(v38 - 8) + 64));
  }

  else
  {
    (*(v37 + 32))(a1 + v35, a2 + v35, v36);
    (*(v37 + 56))(a1 + v35, 0, 1, v36);
  }

  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

unint64_t destroy for Text.Style.LineStyle(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Text.Style.LineStyle(void *result, void *a2)
{
  v2 = a2[1];
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = a2[1];
  }

  if (v3 - 1 < 0)
  {
    *result = *a2;
    result[1] = v2;
    v4 = result;

    return v4;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for Text.Style.LineStyle(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] >= 0xFFFFFFFFuLL)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = result[1];
  }

  v4 = v3 - 1;
  if (a2[1] < 0xFFFFFFFFuLL)
  {
    v2 = a2[1];
  }

  v5 = v2 - 1;
  if (v4 < 0)
  {
    if (v5 < 0)
    {
      *result = *a2;
      v6 = result;
      result[1] = a2[1];
    }

    else
    {
      v6 = result;

      *v6 = *a2;
    }
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v6 = result;
    result[1] = a2[1];
  }

  return v6;
}

void *assignWithTake for Text.Style.LineStyle(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] < 0xFFFFFFFFuLL)
  {
    v2 = result[1];
  }

  if (v2 - 1 < 0)
  {
    v3 = a2[1];
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = a2[1];
    }

    if (v4 - 1 < 0)
    {
      *result = *a2;
      result[1] = v3;
      v5 = result;
    }

    else
    {
      v5 = result;

      *v5 = *a2;
    }

    return v5;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Style.LineStyle(uint64_t a1, unsigned int a2)
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
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Style.LineStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
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

uint64_t getEnumTag for Text.Style.LineStyle(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *destructiveInjectEnumTag for Text.Style.LineStyle(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t *assignWithCopy for Text.Style.TextStyleColor(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Text.Style.TextStyleColor(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of Gradient.ProviderTag(v4);
  return a1;
}

unint64_t *assignWithTake for Text.Style.TextStyleColor(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of Gradient.ProviderTag(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Style.TextStyleColor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Text.Style.TextStyleColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t getEnumTag for Text.Style.TextStyleColor(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *destructiveInjectEnumTag for Text.Style.TextStyleColor(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t assignWithCopy for Text.ResolvedProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  outlined copy of ResolvedTextSuffix(v4, v5, v6, v7, v8, v9);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  outlined consume of ResolvedTextSuffix(v11, v12, v13, v14, v15, v16);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  v17 = *(a1 + 136);
  v18 = *(a2 + 136);
  *(a1 + 136) = v18;
  v19 = v18;

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for Text.ResolvedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 104);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v5;
  outlined consume of ResolvedTextSuffix(v6, v7, v8, v9, v10, v11);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  v12 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.ResolvedProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.ResolvedProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeWithCopy for Text.ResolvedProperties.Paragraph(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;

  v6 = v5;
  return a1;
}

void *assignWithCopy for Text.ResolvedProperties.Paragraph(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for Text.ResolvedProperties.Paragraph(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for Text.ResolvedString(unint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = *a2;
    if (*a2 >= 2uLL)
    {
    }

    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    *a1 = v6;
    *(a1 + 8) = v7;

    outlined copy of Text.Style.TextStyleColor(v8);
    v9 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v10 = *(a2 + 88);
    *(a1 + 16) = v8;

    if ((v10 - 1) >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v10;
    }

    else
    {
      *(a1 + 80) = *(a2 + 80);
    }

    v12 = *(a2 + 104);
    if ((v12 - 1) >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v12;
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
    }

    v13 = *(a2 + 176);
    if (v13 == 1)
    {
      v14 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v14;
      *(a1 + 208) = *(a2 + 208);
      v15 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v15;
      v16 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v16;
    }

    else
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 192) = *(a2 + 192);
      v17 = *(a2 + 184);
      *(a1 + 176) = v13;
      *(a1 + 184) = v17;
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
    }

    v18 = *(a2 + 248);
    if (v18 == 1)
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v18;
    }

    v19 = *(a2 + 288);
    if (v19 == 1)
    {
      v20 = *(a2 + 272);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v20;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 257) = *(a2 + 257);
      if (v19)
      {
        v21 = *(a2 + 264);
        v22 = *(a2 + 272);
        v23 = *(a2 + 280);
        outlined copy of Text.Storage(v21, v22, v23);
        *(a1 + 264) = v21;
        *(a1 + 272) = v22;
        *(a1 + 280) = v23;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v24 = *(a2 + 280);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 280) = v24;
      }
    }

    v25 = *(a2 + 296);
    v26 = *(a2 + 304);
    *(a1 + 296) = v25;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = *(a2 + 320);
    v27 = type metadata accessor for Text.Style(0);
    v28 = *(v27 + 84);
    __dst = (a1 + v28);
    v60 = v27;
    v29 = (a2 + v28);
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = *(v32 + 48);
    v34 = v25;

    if (v33(v29, 2, v31))
    {
      v35 = type metadata accessor for TypesettingLanguage.Storage(0);
      v36 = __dst;
      memcpy(__dst, v29, *(*(v35 - 8) + 64));
    }

    else
    {
      v37 = type metadata accessor for Locale.Language();
      v36 = __dst;
      (*(*(v37 - 8) + 16))(__dst, v29, v37);
      __dst[*(v31 + 48)] = v29[*(v31 + 48)];
      (*(v32 + 56))(__dst, 0, 2, v31);
    }

    v38 = *(type metadata accessor for TypesettingConfiguration() + 20);
    v39 = &v36[v38];
    v40 = &v29[v38];
    *v39 = *v40;
    v39[8] = v40[8];
    *(a1 + v60[22]) = *(a2 + v60[22]);
    v41 = v60[23];
    v42 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);

    if (v44(a2 + v41, 1, v42))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
      memcpy((a1 + v41), (a2 + v41), *(*(v45 - 8) + 64));
    }

    else
    {
      (*(v43 + 16))(a1 + v41, a2 + v41, v42);
      (*(v43 + 56))(a1 + v41, 0, 1, v42);
    }

    v46 = v60[24];
    v47 = type metadata accessor for AttributedString.TextAlignment();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(a2 + v46, 1, v47))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      memcpy((a1 + v46), (a2 + v46), *(*(v49 - 8) + 64));
    }

    else
    {
      (*(v48 + 16))(a1 + v46, a2 + v46, v47);
      (*(v48 + 56))(a1 + v46, 0, 1, v47);
    }

    *(a1 + v60[25]) = *(a2 + v60[25]);
    v50 = v60[26];
    v51 = type metadata accessor for AttributedString.LineHeight();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(a2 + v50, 1, v51))
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy((a1 + v50), (a2 + v50), *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v52 + 16))(a1 + v50, a2 + v50, v51);
      (*(v52 + 56))(a1 + v50, 0, 1, v51);
    }

    *(a1 + v60[27]) = *(a2 + v60[27]);
    v54 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v55 = (a1 + v54);
    v56 = (a2 + v54);
    v57 = v56[1];
    *v55 = *v56;
    v55[1] = v57;
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t initializeWithCopy for Text.ResolvedString(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  if (*a2 >= 2uLL)
  {
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;

  outlined copy of Text.Style.TextStyleColor(v7);
  v8 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 88);
  *(a1 + 16) = v7;

  if ((v9 - 1) >= 2)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v9;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v10 = *(a2 + 104);
  if ((v10 - 1) >= 2)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v10;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v11 = *(a2 + 176);
  if (v11 == 1)
  {
    v12 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v12;
    *(a1 + 208) = *(a2 + 208);
    v13 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v13;
    v14 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v14;
  }

  else
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 192) = *(a2 + 192);
    v15 = *(a2 + 184);
    *(a1 + 176) = v11;
    *(a1 + 184) = v15;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = *(a2 + 200);
  }

  v16 = *(a2 + 248);
  if (v16 == 1)
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = v16;
  }

  v17 = *(a2 + 288);
  if (v17 == 1)
  {
    v18 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v18;
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    if (v17)
    {
      v19 = *(a2 + 264);
      v20 = *(a2 + 272);
      v21 = *(a2 + 280);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 264) = v19;
      *(a1 + 272) = v20;
      *(a1 + 280) = v21;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v22 = *(a2 + 280);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 280) = v22;
    }
  }

  v23 = *(a2 + 296);
  v24 = *(a2 + 304);
  *(a1 + 296) = v23;
  *(a1 + 304) = v24;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  v25 = type metadata accessor for Text.Style(0);
  v26 = *(v25 + 84);
  __dst = (a1 + v26);
  v58 = v25;
  v27 = (a2 + v26);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v23;

  if (v31(v27, 2, v29))
  {
    v33 = type metadata accessor for TypesettingLanguage.Storage(0);
    v34 = __dst;
    memcpy(__dst, v27, *(*(v33 - 8) + 64));
  }

  else
  {
    v35 = type metadata accessor for Locale.Language();
    v34 = __dst;
    (*(*(v35 - 8) + 16))(__dst, v27, v35);
    __dst[*(v29 + 48)] = v27[*(v29 + 48)];
    (*(v30 + 56))(__dst, 0, 2, v29);
  }

  v36 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v37 = &v34[v36];
  v38 = &v27[v36];
  *v37 = *v38;
  v37[8] = v38[8];
  *(a1 + v58[22]) = *(a2 + v58[22]);
  v39 = v58[23];
  v40 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);

  if (v42(a2 + v39, 1, v40))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v39), (a2 + v39), *(*(v43 - 8) + 64));
  }

  else
  {
    (*(v41 + 16))(a1 + v39, a2 + v39, v40);
    (*(v41 + 56))(a1 + v39, 0, 1, v40);
  }

  v44 = v58[24];
  v45 = type metadata accessor for AttributedString.TextAlignment();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(a2 + v44, 1, v45))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v44), (a2 + v44), *(*(v47 - 8) + 64));
  }

  else
  {
    (*(v46 + 16))(a1 + v44, a2 + v44, v45);
    (*(v46 + 56))(a1 + v44, 0, 1, v45);
  }

  *(a1 + v58[25]) = *(a2 + v58[25]);
  v48 = v58[26];
  v49 = type metadata accessor for AttributedString.LineHeight();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(a2 + v48, 1, v49))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v48), (a2 + v48), *(*(v51 - 8) + 64));
  }

  else
  {
    (*(v50 + 16))(a1 + v48, a2 + v48, v49);
    (*(v50 + 56))(a1 + v48, 0, 1, v49);
  }

  *(a1 + v58[27]) = *(a2 + v58[27]);
  v52 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v55 = v54[1];
  *v53 = *v54;
  v53[1] = v55;
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t assignWithCopy for Text.ResolvedString(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a1;
  v6 = *a2;
  if (v5 >= 2)
  {
    if (v6 >= 2)
    {
      *a1 = v6;
    }

    else
    {
      outlined destroy of Font(a1);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v6;
    if (v6 >= 2)
    {
    }
  }

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  outlined copy of Text.Style.TextStyleColor(v7);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  outlined consume of Gradient.ProviderTag(v8);
  *(a1 + 24) = *(a2 + 24);

  v9 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v9;
  v10 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v10;
  v11 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v11;
  v12 = *(a2 + 88) - 1;
  if ((*(a1 + 88) - 1) < 2)
  {
    if (v12 >= 2)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v12 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
LABEL_13:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

LABEL_15:
  v13 = *(a2 + 104) - 1;
  if ((*(a1 + 104) - 1) < 2)
  {
    if (v13 >= 2)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v13 < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
LABEL_20:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_22;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

LABEL_22:
  v14 = *(a2 + 176);
  if (*(a1 + 176) == 1)
  {
    if (v14 == 1)
    {
      v15 = *(a2 + 112);
      v16 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v16;
      *(a1 + 112) = v15;
      v17 = *(a2 + 160);
      v18 = *(a2 + 176);
      v19 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 176) = v18;
      *(a1 + 192) = v19;
      *(a1 + 160) = v17;
    }

    else
    {
      v25 = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 112) = v25;
      v26 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v26;
      v27 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v27;
      v28 = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 160) = v28;
      *(a1 + 176) = *(a2 + 176);
      v29 = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 184) = v29;
      v30 = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 200) = v30;
    }
  }

  else if (v14 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    v21 = *(a2 + 128);
    v20 = *(a2 + 144);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 144) = v20;
    v23 = *(a2 + 176);
    v22 = *(a2 + 192);
    v24 = *(a2 + 160);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 176) = v23;
    *(a1 + 192) = v22;
    *(a1 + 160) = v24;
  }

  else
  {
    v31 = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = v31;
    v32 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v32;
    v33 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v33;
    v34 = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 160) = v34;
    *(a1 + 176) = *(a2 + 176);

    v35 = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 184) = v35;
    v36 = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = v36;
  }

  v37 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v37 == 1)
    {
      v38 = *(a2 + 216);
      v39 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v39;
      *(a1 + 216) = v38;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v42 = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 224) = v42;
      *(a1 + 233) = *(a2 + 233);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
    }
  }

  else if (v37 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    v40 = *(a2 + 248);
    v41 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v41;
    *(a1 + 248) = v40;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    v43 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v43;
    *(a1 + 233) = *(a2 + 233);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
  }

  v44 = *(a1 + 288);
  v45 = *(a2 + 288);
  if (v44 == 1)
  {
    if (v45 == 1)
    {
      v46 = *(a2 + 256);
      v47 = *(a2 + 272);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 256) = v46;
      *(a1 + 272) = v47;
      goto LABEL_50;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    *(a1 + 258) = *(a2 + 258);
    if (!*(a2 + 288))
    {
      v50 = *(a2 + 280);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 280) = v50;
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v45 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    v48 = *(a2 + 288);
    v49 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v49;
    *(a1 + 288) = v48;
    goto LABEL_50;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  *(a1 + 258) = *(a2 + 258);
  v51 = (a1 + 264);
  v52 = (a2 + 264);
  v53 = *(a2 + 288);
  if (v44)
  {
    if (v53)
    {
      v54 = *(a2 + 264);
      v55 = *(a2 + 272);
      v56 = *(a2 + 280);
      outlined copy of Text.Storage(v54, v55, v56);
      v57 = *(a1 + 264);
      v58 = *(a1 + 272);
      v59 = *(a1 + 280);
      *(a1 + 264) = v54;
      *(a1 + 272) = v55;
      *(a1 + 280) = v56;
      outlined consume of Text.Storage(v57, v58, v59);
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      outlined destroy of Text(a1 + 264);
      v63 = *(a2 + 280);
      *v51 = *v52;
      *(a1 + 280) = v63;
    }
  }

  else
  {
    if (v53)
    {
LABEL_47:
      v60 = *(a2 + 264);
      v61 = *(a2 + 272);
      v62 = *(a2 + 280);
      outlined copy of Text.Storage(v60, v61, v62);
      *(a1 + 264) = v60;
      *(a1 + 272) = v61;
      *(a1 + 280) = v62;
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_50;
    }

    v64 = *(a2 + 280);
    *v51 = *v52;
    *(a1 + 280) = v64;
  }

LABEL_50:
  v65 = *(a1 + 296);
  v66 = *(a2 + 296);
  *(a1 + 296) = v66;
  v67 = v66;

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  v68 = type metadata accessor for Text.Style(0);
  v69 = v68[21];
  v70 = (a1 + v69);
  v71 = (a2 + v69);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v73 = v72;
  v74 = *(v72 - 8);
  v75 = *(v74 + 48);
  v76 = v75(v70, 2, v72);
  v77 = v75(v71, 2, v73);
  if (v76)
  {
    if (!v77)
    {
      v78 = type metadata accessor for Locale.Language();
      (*(*(v78 - 8) + 16))(v70, v71, v78);
      v70[*(v73 + 48)] = v71[*(v73 + 48)];
      (*(v74 + 56))(v70, 0, 2, v73);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v77)
  {
    outlined destroy of ParagraphStyleResolutionContext(v70, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_55:
    v79 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v70, v71, *(*(v79 - 8) + 64));
    goto LABEL_56;
  }

  v109 = type metadata accessor for Locale.Language();
  (*(*(v109 - 8) + 24))(v70, v71, v109);
  v70[*(v73 + 48)] = v71[*(v73 + 48)];
LABEL_56:
  v80 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v81 = &v70[v80];
  v82 = &v71[v80];
  v83 = v82[8];
  *v81 = *v82;
  v81[8] = v83;
  *(a1 + v68[22]) = *(a2 + v68[22]);

  v84 = v68[23];
  v85 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  v88 = v87(a1 + v84, 1, v85);
  v89 = v87(a2 + v84, 1, v85);
  if (v88)
  {
    if (!v89)
    {
      (*(v86 + 16))(a1 + v84, a2 + v84, v85);
      (*(v86 + 56))(a1 + v84, 0, 1, v85);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v89)
  {
    (*(v86 + 8))(a1 + v84, v85);
LABEL_61:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v84), (a2 + v84), *(*(v90 - 8) + 64));
    goto LABEL_62;
  }

  (*(v86 + 24))(a1 + v84, a2 + v84, v85);
LABEL_62:
  v91 = v68[24];
  v92 = type metadata accessor for AttributedString.TextAlignment();
  v93 = *(v92 - 8);
  v94 = *(v93 + 48);
  v95 = v94(a1 + v91, 1, v92);
  v96 = v94(a2 + v91, 1, v92);
  if (v95)
  {
    if (!v96)
    {
      (*(v93 + 16))(a1 + v91, a2 + v91, v92);
      (*(v93 + 56))(a1 + v91, 0, 1, v92);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v96)
  {
    (*(v93 + 8))(a1 + v91, v92);
LABEL_67:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v91), (a2 + v91), *(*(v97 - 8) + 64));
    goto LABEL_68;
  }

  (*(v93 + 24))(a1 + v91, a2 + v91, v92);
LABEL_68:
  *(a1 + v68[25]) = *(a2 + v68[25]);
  v98 = v68[26];
  v99 = type metadata accessor for AttributedString.LineHeight();
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  v102 = v101(a1 + v98, 1, v99);
  v103 = v101(a2 + v98, 1, v99);
  if (!v102)
  {
    if (!v103)
    {
      (*(v100 + 24))(a1 + v98, a2 + v98, v99);
      goto LABEL_74;
    }

    (*(v100 + 8))(a1 + v98, v99);
    goto LABEL_73;
  }

  if (v103)
  {
LABEL_73:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v98), (a2 + v98), *(*(v104 - 8) + 64));
    goto LABEL_74;
  }

  (*(v100 + 16))(a1 + v98, a2 + v98, v99);
  (*(v100 + 56))(a1 + v98, 0, 1, v99);
LABEL_74:
  *(a1 + v68[27]) = *(a2 + v68[27]);

  *(a1 + a3[5]) = *(a2 + a3[5]);
  v105 = a3[6];
  v106 = (a1 + v105);
  v107 = (a2 + v105);
  *v106 = *v107;
  v106[1] = v107[1];

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t initializeWithTake for Text.ResolvedString(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v8;
  *(a1 + 208) = *(a2 + 208);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  v15 = type metadata accessor for Text.Style(0);
  v16 = v15[21];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v18, 2, v19))
  {
    v22 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v17, v18, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = type metadata accessor for Locale.Language();
    (*(*(v23 - 8) + 32))(v17, v18, v23);
    v17[*(v20 + 48)] = v18[*(v20 + 48)];
    (*(v21 + 56))(v17, 0, 2, v20);
  }

  v24 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v25 = &v17[v24];
  v26 = &v18[v24];
  *v25 = *v26;
  v25[8] = v26[8];
  *(a1 + v15[22]) = *(a2 + v15[22]);
  v27 = v15[23];
  v28 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a2 + v27, 1, v28))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v27), (a2 + v27), *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 32))(a1 + v27, a2 + v27, v28);
    (*(v29 + 56))(a1 + v27, 0, 1, v28);
  }

  v31 = v15[24];
  v32 = type metadata accessor for AttributedString.TextAlignment();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(a2 + v31, 1, v32))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v31), (a2 + v31), *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v33 + 32))(a1 + v31, a2 + v31, v32);
    (*(v33 + 56))(a1 + v31, 0, 1, v32);
  }

  *(a1 + v15[25]) = *(a2 + v15[25]);
  v35 = v15[26];
  v36 = type metadata accessor for AttributedString.LineHeight();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a2 + v35, 1, v36))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v35), (a2 + v35), *(*(v38 - 8) + 64));
  }

  else
  {
    (*(v37 + 32))(a1 + v35, a2 + v35, v36);
    (*(v37 + 56))(a1 + v35, 0, 1, v36);
  }

  *(a1 + v15[27]) = *(a2 + v15[27]);
  v39 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v39) = *(a2 + v39);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for Text.ResolvedString(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  if (*a1 < 2uLL)
  {
    goto LABEL_4;
  }

  if (v5 < 2)
  {
    outlined destroy of Font(a1);
    v5 = *a2;
LABEL_4:
    *a1 = v5;
    goto LABEL_6;
  }

  *a1 = v5;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  outlined consume of Gradient.ProviderTag(v6);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  if ((*(a1 + 88) - 1) < 2)
  {
LABEL_9:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

  v7 = *(a2 + 88);
  if ((v7 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
    goto LABEL_9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;

LABEL_11:
  if ((*(a1 + 104) - 1) < 2)
  {
LABEL_14:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_16;
  }

  v8 = *(a2 + 104);
  if ((v8 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
    goto LABEL_14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;

LABEL_16:
  if (*(a1 + 176) == 1)
  {
LABEL_19:
    v10 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v10;
    *(a1 + 208) = *(a2 + 208);
    v11 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v11;
    v12 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v12;
    goto LABEL_21;
  }

  v9 = *(a2 + 176);
  if (v9 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    goto LABEL_19;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
LABEL_21:
  if (*(a1 + 248) == 1)
  {
LABEL_24:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    goto LABEL_26;
  }

  v13 = *(a2 + 248);
  if (v13 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    goto LABEL_24;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v13;

LABEL_26:
  v14 = *(a1 + 288);
  if (v14 == 1)
  {
LABEL_29:
    v16 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v16;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_30;
  }

  v15 = *(a2 + 288);
  if (v15 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    goto LABEL_29;
  }

  v60 = (a1 + 264);
  v61 = (a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  if (v14)
  {
    if (v15)
    {
      v62 = *(a2 + 280);
      v63 = *(a1 + 264);
      v64 = *(a1 + 272);
      v65 = *(a1 + 280);
      *v60 = *v61;
      *(a1 + 280) = v62;
      outlined consume of Text.Storage(v63, v64, v65);
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_30;
    }

    outlined destroy of Text(a1 + 264);
  }

  v67 = *(a2 + 280);
  *v60 = *v61;
  *(a1 + 280) = v67;
LABEL_30:
  v17 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v18 = type metadata accessor for Text.Style(0);
  v19 = v18[21];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v20, 2, v22);
  v27 = v25(v21, 2, v23);
  if (v26)
  {
    if (!v27)
    {
      v28 = type metadata accessor for Locale.Language();
      (*(*(v28 - 8) + 32))(v20, v21, v28);
      v20[*(v23 + 48)] = v21[*(v23 + 48)];
      (*(v24 + 56))(v20, 0, 2, v23);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v27)
  {
    outlined destroy of ParagraphStyleResolutionContext(v20, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_35:
    v29 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v20, v21, *(*(v29 - 8) + 64));
    goto LABEL_36;
  }

  v66 = type metadata accessor for Locale.Language();
  (*(*(v66 - 8) + 40))(v20, v21, v66);
  v20[*(v23 + 48)] = v21[*(v23 + 48)];
LABEL_36:
  v30 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v31 = &v20[v30];
  v32 = &v21[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  *(a1 + v18[22]) = *(a2 + v18[22]);

  v33 = v18[23];
  v34 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 32))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_41:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_42;
  }

  (*(v35 + 40))(a1 + v33, a2 + v33, v34);
LABEL_42:
  v40 = v18[24];
  v41 = type metadata accessor for AttributedString.TextAlignment();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(a1 + v40, 1, v41);
  v45 = v43(a2 + v40, 1, v41);
  if (v44)
  {
    if (!v45)
    {
      (*(v42 + 32))(a1 + v40, a2 + v40, v41);
      (*(v42 + 56))(a1 + v40, 0, 1, v41);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v45)
  {
    (*(v42 + 8))(a1 + v40, v41);
LABEL_47:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v40), (a2 + v40), *(*(v46 - 8) + 64));
    goto LABEL_48;
  }

  (*(v42 + 40))(a1 + v40, a2 + v40, v41);
LABEL_48:
  *(a1 + v18[25]) = *(a2 + v18[25]);
  v47 = v18[26];
  v48 = type metadata accessor for AttributedString.LineHeight();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v51 = v50(a1 + v47, 1, v48);
  v52 = v50(a2 + v47, 1, v48);
  if (!v51)
  {
    if (!v52)
    {
      (*(v49 + 40))(a1 + v47, a2 + v47, v48);
      goto LABEL_54;
    }

    (*(v49 + 8))(a1 + v47, v48);
    goto LABEL_53;
  }

  if (v52)
  {
LABEL_53:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v47), (a2 + v47), *(*(v53 - 8) + 64));
    goto LABEL_54;
  }

  (*(v49 + 32))(a1 + v47, a2 + v47, v48);
  (*(v49 + 56))(a1 + v47, 0, 1, v48);
LABEL_54:
  *(a1 + v18[27]) = *(a2 + v18[27]);

  v54 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v55 = (a1 + v54);
  v56 = (a2 + v54);
  v58 = *v56;
  v57 = v56[1];
  *v55 = v58;
  v55[1] = v57;

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Text.ResolvedString.append<A>(_:in:with:isUniqueSizeVariant:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = *v3;
  v5 = v3[1];
  (*(v6 + 16))(&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7, v1);
  v9 = String.init<A>(_:)();
  v16 = v4;
  v17 = v5;
  v11 = String.caseConvertedIfNeeded(_:)(&v16, v9, v10);

  v16 = v4;
  v17 = v5;
  v12 = String.redactedIfNeeded(_:)(&v16, v11);
  v14 = v13;

  type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x193ABEDD0](v12, v14);
}

uint64_t ResolvableTimer.init(interval:pause:countdown:units:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  v13 = *(a7 + 8);
  v15 = type metadata accessor for ResolvableTimer();
  v16 = a8 + v15[5];
  v17 = type metadata accessor for DateInterval();
  v33 = *(v17 - 8);
  (*(v33 + 16))(a8, a1, v17);
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  *(a8 + v15[6]) = a4;
  v18 = 224;
  if ((a6 & 1) == 0)
  {
    v18 = a5;
  }

  *(a8 + v15[7]) = v18;
  v19 = v15[8];
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, a8 + v19);

    v20 = v15[9];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, a8 + v20);

    v21 = v15[10];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, a8 + v21);

    v22 = *(v33 + 8);

    return v22(a1, v17);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v14, a8 + v19);
    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
    if (v24)
    {
      v25 = *(*v24 + 248);
      v26 = v15[9];
      v27 = v24;
      v28 = type metadata accessor for Locale();
      (*(*(v28 - 8) + 16))(a8 + v26, &v27[v25], v28);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Locale();
      v30 = __swift_project_value_buffer(v29, static LocaleKey.defaultValue);
      (*(*(v29 - 8) + 16))(a8 + v15[9], v30, v29);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v14, a8 + v15[10]);
    (*(v33 + 8))(a1, v17);
  }
}

uint64_t ResolvableTimer.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolvableTimer();
  if (*(v1 + *(v7 + 20) + 8))
  {
    type metadata accessor for (pauseDate: Date)(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    v11 = (v4 + 8);
    if (*(v1 + *(v7 + 24)) == 1)
    {
      DateInterval.end.getter();
      static Date.- infix(_:_:)();
    }

    else
    {
      DateInterval.start.getter();
      static Date.+ infix(_:_:)();
    }

    (*v11)(v6, v3);
    type metadata accessor for (pauseDate: Date)(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t ResolvableTimer.format.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SystemFormatStyle.Timer();
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: Date, upper: Date)();
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  type metadata accessor for Range<Date>();
  v90 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v88 = (&v80 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v80 - v28;
  DateInterval.start.getter();
  v89 = v1;
  DateInterval.end.getter();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v83 = v3;
    v80 = v20;
    v85 = a1;
    v30 = *(v12 + 32);
    v30(v10, v17, v11);
    v31 = v87;
    v30(&v10[*(v87 + 48)], v14, v11);
    _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v10, v7, type metadata accessor for (lower: Date, upper: Date));
    v32 = *(v31 + 48);
    v33 = v91;
    v30(v91, v7, v11);
    v84 = v12;
    v34 = *(v12 + 8);
    v34(&v7[v32], v11);
    outlined init with take of (lower: Date, upper: Date)(v10, v7);
    v30((v33 + *(v90 + 36)), &v7[*(v31 + 48)], v11);
    v34(v7, v11);
    v35 = type metadata accessor for ResolvableTimer();
    v36 = v35[6];
    v37 = *(v89 + v35[7]);
    v87 = v37 & 0x20;
    v38 = 1000000000000000000;
    if ((v37 & 0x80) == 0)
    {
      v38 = 0x40AAD21B3B700000;
    }

    if ((v37 & 0x8000) != 0)
    {
      v39 = 10000000000000000;
    }

    else
    {
      v39 = v38;
    }

    if ((v37 & 0x8080) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = 3;
    }

    if (*(v89 + v36) == 1)
    {
      v41 = v88;
      _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v91, v88, type metadata accessor for Range<Date>);
      v42 = v81;
      _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v41, v81, type metadata accessor for Range<Date>);
      v43 = v83;
      v44 = v86;
      *&v86[v83[11]] = 0;
      v45 = static Locale.autoupdatingCurrent.getter();
      v44[v43[13]] = 1;
      v44[v43[14]] = 0;
      MEMORY[0x193ABCD20](v45);
      v44[v43[16]] = 3;
      v46 = v43[17];
      *&v44[v46] = 0;

      *&v44[v46] = 0;
      v47 = v43[18];
      *&v44[v47] = 0;

      *&v44[v47] = 0;
      v48 = v43[19];
      *&v44[v48] = 0;

      *&v44[v48] = 0;
      v49 = 0x28093E61EE400000;
      if (static Duration.< infix(_:_:)())
      {
        v40 = 195;
      }

      else
      {
        v49 = v39;
      }

      *v44 = 1;
      (*(v84 + 16))(&v44[v43[5]], v42, v11);
      Date.timeIntervalSince(_:)();
      v50 = static Duration.seconds(_:)();
      v52 = v51;
      v53 = v42;
      v54 = v89;
      _sSny10Foundation4DateVGWOhTm_0(v53, type metadata accessor for Range<Date>);
      _sSny10Foundation4DateVGWOhTm_0(v88, type metadata accessor for Range<Date>);
      _sSny10Foundation4DateVGWOhTm_0(v91, type metadata accessor for Range<Date>);
      v55 = &v44[v43[6]];
      *v55 = v50;
      v55[1] = v52;
      v44[v43[7]] = v87 >> 5;
      *&v44[v43[8]] = 3;
      v56 = &v44[v43[9]];
      *v56 = v49;
      v56[1] = v40;
      v57 = &v44[v43[10]];
      *v57 = v49;
      v57[1] = v40;
    }

    else
    {
      v58 = v89;
      v88 = v35;
      v59 = v82;
      _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v91, v82, type metadata accessor for Range<Date>);
      v60 = v80;
      _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v59, v80, type metadata accessor for Range<Date>);
      v43 = v83;
      v44 = v86;
      *&v86[v83[11]] = 0;
      v61 = static Locale.autoupdatingCurrent.getter();
      v44[v43[13]] = 1;
      v81 = v43[14];
      v44[v81] = 0;
      MEMORY[0x193ABCD20](v61);
      v44[v43[16]] = 3;
      v62 = v43[17];
      *&v44[v62] = 0;

      *&v44[v62] = 0;
      v63 = v43[18];
      *&v44[v63] = 0;

      *&v44[v63] = 0;
      v64 = v43[19];
      *&v44[v64] = 0;

      *&v44[v64] = 0;
      v65 = static Duration.< infix(_:_:)();
      v66 = v11;
      v67 = v58;
      if (v65)
      {
        v68 = 0x28093E61EE400000;
      }

      else
      {
        v68 = v39;
      }

      if (v65)
      {
        v40 = 195;
      }

      *v44 = 0;
      (*(v84 + 16))(&v44[v43[5]], v60, v66);
      Date.timeIntervalSince(_:)();
      v69 = static Duration.seconds(_:)();
      v71 = v70;
      _sSny10Foundation4DateVGWOhTm_0(v60, type metadata accessor for Range<Date>);
      v72 = v59;
      v35 = v88;
      _sSny10Foundation4DateVGWOhTm_0(v72, type metadata accessor for Range<Date>);
      _sSny10Foundation4DateVGWOhTm_0(v91, type metadata accessor for Range<Date>);
      v73 = &v44[v43[6]];
      *v73 = v69;
      v73[1] = v71;
      v44[v43[7]] = v87 >> 5;
      *&v44[v43[8]] = 3;
      v74 = &v44[v43[9]];
      *v74 = v68;
      v74[1] = v40;
      v75 = &v44[v43[10]];
      *v75 = v68;
      v75[1] = v40;
      v54 = v67;
      *v44 = 2;
      v44[v81] = 1;
    }

    v76 = v35[9];
    v77 = v85;
    _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v44, v85, type metadata accessor for SystemFormatStyle.Timer);
    v78 = v43[12];
    v79 = type metadata accessor for Locale();
    (*(*(v79 - 8) + 24))(v77 + v78, v54 + v76, v79);
    result = _sSny10Foundation4DateVGWOhTm_0(v44, type metadata accessor for SystemFormatStyle.Timer);
    *(v77 + v43[13]) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ResolvableTimer.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResolvableTimer.interval.setter(uint64_t a1)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResolvableTimer.pause.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ResolvableTimer();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ResolvableTimer.countdown.setter(char a1)
{
  result = type metadata accessor for ResolvableTimer();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ResolvableTimer.units.setter(uint64_t a1)
{
  result = type metadata accessor for ResolvableTimer();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ResolvableTimer.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableTimer() + 32);
  v4 = type metadata accessor for Calendar();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableTimer.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableTimer() + 36);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableTimer.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableTimer() + 40);
  v4 = type metadata accessor for TimeZone();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableTimer.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x656C61636F6CLL;
  if (v1 != 5)
  {
    v3 = 0x656E6F5A656D6974;
  }

  v4 = 0x7374696E75;
  if (v1 != 3)
  {
    v4 = 0x7261646E656C6163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x776F64746E756F63;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableTimer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableTimer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableTimer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableTimer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static ResolvableTimer.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableTimer.attribute;

  return v1;
}

uint64_t static ResolvableTimer.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (pauseDate: Date)(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  v14 = type metadata accessor for ResolvableTimer();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTrackedValue(a1, v29);
  result = ResolvableTimer.init(from:)(v29, v16);
  if (!v2)
  {
    v18 = v5;
    v19 = v28;
    if (v16[*(v14 + 20) + 8])
    {
      v20 = 1;
    }

    else
    {
      v21 = v16[*(v14 + 24)];
      v22 = (v18 + 8);
      if (v21 == 1)
      {
        DateInterval.end.getter();
        static Date.- infix(_:_:)();
      }

      else
      {
        DateInterval.start.getter();
        static Date.+ infix(_:_:)();
      }

      (*v22)(v7, v4);
      v20 = 0;
    }

    type metadata accessor for (pauseDate: Date)(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    (*(*(v23 - 8) + 56))(v10, v20, 1, v23);
    outlined init with take of TimeDataSource<Date><A>.DateStorage(v10, v13);
    type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>();
    v25 = v24;
    v19[3] = v24;
    v19[4] = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer> and conformance TimeDataFormatting.Resolvable<A, B>, type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v27 = v25[15];
    ResolvableTimer.format.getter(boxed_opaque_existential_1 + v27);
    _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO5TimerVTt4B5(boxed_opaque_existential_1 + v25[17], v13, boxed_opaque_existential_1 + v27, 0, 60.0);
    outlined init with take of TimeDataSource<Date><A>.DateStorage(v13, boxed_opaque_existential_1);
    *(boxed_opaque_existential_1 + v25[16]) = 0x404E000000000000;
    *(boxed_opaque_existential_1 + v25[18]) = 0;
    return _sSny10Foundation4DateVGWOhTm_0(v16, type metadata accessor for ResolvableTimer);
  }

  return result;
}

uint64_t ResolvableTimer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for TimeZone();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Locale();
  v44 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateInterval();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<ResolvableTimer.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableTimer.CodingKeys>, MEMORY[0x1E69E6F48]);
  v49 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for ResolvableTimer();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys();
  v48 = v14;
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v9;
  v35 = v15;
  v20 = v17;
  v21 = v44;
  v22 = v45;
  v58 = 0;
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v43 + 32))(v20, v47, v10);
  v57 = 1;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v10;
  v24 = v35;
  v25 = &v20[v35[5]];
  *v25 = v23;
  v25[8] = v26 & 1;
  v56 = 2;
  v20[v24[6]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  type metadata accessor for CodableRawRepresentable<NSCalendarUnit>();
  v55 = 3;
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSCalendarUnit> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSCalendarUnit>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = a1;
  *&v20[v24[7]] = v51;
  v54 = 4;
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  v27 = v19;
  v28 = v20;
  v29 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v42 + 32))(v28 + v24[8], v27, v29);
  v53 = 5;
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v30 = v40;
  v31 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 32))(v28 + v24[9], v31, v30);
  v52 = 6;
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  v32 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v46 + 8))(v48, v49);
  (*(v36 + 32))(v28 + v35[10], v38, v32);
  _s10Foundation4DateV5lower_AC5uppertWOcTm_0(v28, v22, type metadata accessor for ResolvableTimer);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return _sSny10Foundation4DateVGWOhTm_0(v28, type metadata accessor for ResolvableTimer);
}

uint64_t ResolvableTimer.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v4 = *(v3 + 48);
  v5 = type metadata accessor for DateInterval();
  (*(*(v5 - 8) + 16))(a1, v1, v5);
  *(a1 + v4) = *(v1 + *(type metadata accessor for ResolvableTimer() + 24));
  type metadata accessor for ResolvableAttributeConfiguration(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ResolvableTimer.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<ResolvableTimer.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableTimer.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for DateInterval();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for ResolvableTimer();
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + *(v10 + 28));
    v12[15] = 3;
    type metadata accessor for CodableRawRepresentable<NSCalendarUnit>();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSCalendarUnit> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSCalendarUnit>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[14] = 4;
    type metadata accessor for Calendar();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[13] = 5;
    type metadata accessor for Locale();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[12] = 6;
    type metadata accessor for TimeZone();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for ConfigurationBasedResolvableStringAttributeRepresentation.invalidationConfiguration.getter in conformance ResolvableTimer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for DateInterval();
  (*(*(v7 - 8) + 16))(a2, v2, v7);
  *(a2 + v6) = *(v2 + *(a1 + 24));
  type metadata accessor for ResolvableAttributeConfiguration(0);

  return swift_storeEnumTagMultiPayload();
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableTimer()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableTimer.attribute;

  return v1;
}

uint64_t ResolvableTimer.hash(into:)()
{
  type metadata accessor for DateInterval();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ResolvableTimer();
  v2 = (v0 + v1[5]);
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x193AC11E0](v4);
  }

  Hasher._combine(_:)(*(v0 + v1[6]));
  MEMORY[0x193AC11A0](*(v0 + v1[7]));
  type metadata accessor for Calendar();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvableTimer.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ResolvableTimer();
  v2 = (v0 + v1[5]);
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x193AC11E0](v4);
  }

  Hasher._combine(_:)(*(v0 + v1[6]));
  MEMORY[0x193AC11A0](*(v0 + v1[7]));
  type metadata accessor for Calendar();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableTimer()
{
  Hasher.init(_seed:)();
  ResolvableTimer.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ResolvableTimer.debugDescription.getter()
{
  _StringGuts.grow(_:)(82);
  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD7FC90);
  type metadata accessor for DateInterval();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0x756170202020202CLL, 0xEC000000203A6573);
  v2 = type metadata accessor for ResolvableTimer();
  if (*(v0 + *(v2 + 20) + 8))
  {
    v3 = 0xA300000000000000;
    v4 = 9666786;
  }

  else
  {
    v4 = Double.debugDescription.getter();
    v3 = v5;
  }

  MEMORY[0x193ABEDD0](v4, v3);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7FCB0);
  if (*(v0 + *(v2 + 24)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v6, v7);

  MEMORY[0x193ABEDD0](0x6E7520202020202CLL, 0xED0000203A737469);
  type metadata accessor for NSCalendarUnit(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0;
}

uint64_t type metadata accessor for ResolvableTimer()
{
  result = type metadata singleton initialization cache for ResolvableTimer;
  if (!type metadata singleton initialization cache for ResolvableTimer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: Date, upper: Date)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (pauseDate: Date)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>()
{
  if (!lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>)
  {
    type metadata accessor for (pauseDate: Date)(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    type metadata accessor for SystemFormatStyle.Timer();
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    v0 = type metadata accessor for TimeDataFormatting.Resolvable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>);
    }
  }
}

uint64_t _sSny10Foundation4DateVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys);
  }

  return result;
}

uint64_t _s10Foundation4DateV5lower_AC5uppertWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for KeyedDecodingContainer<ResolvableTimer.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvableTimer.CodingKeys and conformance ResolvableTimer.CodingKeys();
    v7 = a3(a1, &unk_1F00A1698, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized static ResolvableTimer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ResolvableTimer();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (*v6 != *v8)
  {
    LOBYTE(v9) = 1;
  }

  if ((v9 & 1) == 0)
  {
LABEL_8:
    if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      v10 = v4;
      if (MEMORY[0x193ABDC80](a1 + v4[8], a2 + v4[8]) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + v10[9], a2 + v10[9]))
      {

        JUMPOUT(0x193ABDE90);
      }
    }
  }

  return 0;
}

uint64_t instantiation function for generic protocol witness table for ResolvableTimer(uint64_t a1)
{
  *(a1 + 8) = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvableTimer and conformance ResolvableTimer, type metadata accessor for ResolvableTimer);
  result = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvableTimer and conformance ResolvableTimer, type metadata accessor for ResolvableTimer);
  *(a1 + 16) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ResolvableTimer(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = a1 + v8;
    v11 = a2 + v8;
    *v10 = *v11;
    v10[8] = v11[8];
    *(a1 + v9) = *(a2 + v9);
    v12 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v13 = type metadata accessor for Calendar();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    v14 = a3[9];
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    v16 = a3[10];
    v17 = type metadata accessor for TimeZone();
    (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
  }

  return a1;
}

uint64_t destroy for ResolvableTimer(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[8];
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[9];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[10];
  v10 = type metadata accessor for TimeZone();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for ResolvableTimer(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(a1 + v8) = *(a2 + v8);
  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  v13 = a3[9];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  v15 = a3[10];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t assignWithCopy for ResolvableTimer(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *v8 = v10;
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = a3[8];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[9];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[10];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t initializeWithTake for ResolvableTimer(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(a1 + v8) = *(a2 + v8);
  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  v13 = a3[9];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
  v15 = a3[10];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 32))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t assignWithTake for ResolvableTimer(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(a1 + v8) = *(a2 + v8);
  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[9];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 40))(a1 + v13, a2 + v13, v14);
  v15 = a3[10];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 40))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t type metadata completion function for ResolvableTimer()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Locale();
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

uint64_t specialized ResolvableTimer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374696E75 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t LazyLayoutViewCache.item(for:)()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 176);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    result = AGSubgraphIsAncestor();
    if (result)
    {

      return v10;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = (*v1 + 80 * v2);
  v13 = v4[2];
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[6];
  v16 = v4[5];
  v17 = v7;
  v14 = v5;
  v15 = v6;
  v1[1] = v2 + 1;
  v8 = v1[2];
  if (__OFADD__(v8, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v8 + 1;
  *a1 = v8;
  v9 = v13;
  *(a1 + 24) = v14;
  v10 = v16;
  *(a1 + 40) = v15;
  *(a1 + 56) = v10;
  *(a1 + 72) = v17;
  *(a1 + 8) = v9;
  return outlined init with copy of _LazyLayout_PlacedSubview(&v13, &v12);
}

Swift::Void __swiftcall LazyLayoutViewCache.resetPrefetchPhases()()
{
  if ((*(*v0 + 360))())
  {
    if (one-time initialization token for v7 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v1 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          return;
        }
      }

      else if (static Semantics.forced < v1)
      {
        return;
      }

      swift_beginAccess();
      if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*(v0 + 32)))
      {
        return;
      }

      swift_beginAccess();
      v2 = *(v0 + 176);
      v3 = 1 << *(v2 + 32);
      v4 = -1;
      if (v3 < 64)
      {
        v4 = ~(-1 << v3);
      }

      v5 = v4 & *(v2 + 64);
      v6 = (v3 + 63) >> 6;

      v7 = 0;
      v8 = 0;
      if (v5)
      {
        break;
      }

LABEL_15:
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v6)
        {

          if (v7)
          {
            v28 = *(v0 + 156);
            swift_beginAccess();
            updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v0 + 32));
            swift_endAccess();
            v38[0] = 10;
            v30 = swift_allocObject();
            *(v30 + 16) = v28;
            *(v30 + 24) = updated & 1;
            static Update.enqueueAction(reason:_:)(v38, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v30);
          }

          return;
        }

        v5 = *(v2 + 64 + 8 * v11);
        ++v8;
        if (v5)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
    }

    while (1)
    {
LABEL_13:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
        if (*(v10 + 212))
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v12 = *(v0 + 352);
      *(v0 + 344) = 0;
      *(v0 + 352) = 1;
      if ((v12 & 1) == 0)
      {
        break;
      }

LABEL_34:
      LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v10);
      *(v10 + 212) = 0;

      v7 = 1;
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    v13 = *(v0 + 156);
    swift_beginAccess();
    v35 = *(v0 + 32);
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
    v14 = v42;

    v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v35, v14);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      if (byte_1ED53C51C)
      {
        v36 = dyld_program_sdk_at_least();
LABEL_27:
        swift_endAccess();
        v17 = swift_allocObject();
        *(v17 + 16) = v13;
        *(v17 + 24) = v36;
        specialized static Update.begin()();
        LOBYTE(v42) = 10;

        Update.Action.init(reason:thunk:)(&v42, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v17, v38);
        v34 = v38[0];
        v33 = v39;
        v32 = v41;
        v18 = one-time initialization token for actions;
        v37 = v40;

        if (v18 != -1)
        {
          swift_once();
        }

        v19 = static Update.actions;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        v22 = v21 + 1;
        v23 = &type metadata instantiation cache for TupleTypeDescription;
        if (v21 >= v20 >> 1)
        {
          v31 = v21 + 1;
          v25 = v19;
          v26 = *(v19 + 2);
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v25);
          v22 = v31;
          v21 = v26;
          v23 = &type metadata instantiation cache for TupleTypeDescription;
          v19 = v27;
        }

        *(v19 + 2) = v22;
        v24 = &v19[32 * v21];
        v24[32] = v34;
        *(v24 + 5) = v33;
        *(v24 + 6) = v37;
        *(v24 + 14) = v32;
        v23[110] = v19;

        static Update.end()();

        goto LABEL_34;
      }

      v16 = static Semantics.forced >= v1;
    }

    v36 = v16;
    goto LABEL_27;
  }
}

SwiftUI::_LazyLayout_PrefetchResult __swiftcall LazyLayoutViewCache.prefetchOutputs()()
{
  v32 = v0;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v33 = 0;
  swift_beginAccess();
  v6 = *(v1 + 176);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = *MEMORY[0x1E698D3F8];

  v11 = 0;
  v12 = 0;
  if (v9)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = *(*(v6 + 56) + ((v12 << 9) | (8 * v13)));
        if (*(v14 + 208) == *(v1 + 228))
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_6;
        }
      }

      v31 = v11 + 1;
      v16 = *(v14 + 44);

      if (v16 != v30)
      {
        v29 = specialized prefetchOutput #1 (_:label:) in LazyLayoutViewCache.prefetchOutputs()(v16, 0x6F4374756F79616CLL, 0xEE0072657475706DLL, v14, &v33);

        if (!v29)
        {
          break;
        }
      }

      v17 = *(v14 + 32);
      v18 = (v17 + 32);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 3;
        v21 = *v18;
        v18 += 3;
        if (v21 == &type metadata for DisplayList.Key)
        {
          v29 = specialized prefetchOutput #1 (_:label:) in LazyLayoutViewCache.prefetchOutputs()(*(v20 - 2), 0x4C79616C70736964, 0xEB00000000747369, v14, &v33);

          if (!v29)
          {
            goto LABEL_28;
          }

          break;
        }
      }

      v11 = v31;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        v31 = v11;
        goto LABEL_19;
      }

      v9 = *(v6 + 64 + 8 * v15);
      ++v12;
      if (v9)
      {
        v12 = v15;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

LABEL_28:

LABEL_19:

  if (one-time initialization token for lazyLayoutPrefetch != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v3, static Log.lazyLayoutPrefetch);
  _s2os6LoggerVSgWOcTm_1(v22, v5, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v5, 1, v23) == 1)
  {
    _s2os6LoggerVSgWOhTm_1(v5, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v31;
      _os_log_impl(&dword_18D018000, v25, v26, "Finish prefetchOutputs for %ld items", v27, 0xCu);
      MEMORY[0x193AC4820](v27, -1, -1);
    }

    (*(v24 + 8))(v5, v23);
  }

  result = swift_beginAccess();
  *v32 = v33;
  return result;
}

uint64_t specialized LazyLayoutViewCache.advancePrefetchPhaseForDisplay(notify:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int64_t a3@<X2>, unint64_t a4@<X8>)
{
  LODWORD(v5) = a2;
  result = (*(*a1 + 360))();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for v7 != -1)
  {
LABEL_52:
    swift_once();
  }

  v9 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (static Semantics.forced < v9)
  {
LABEL_10:
    *a4 = 0;
    return result;
  }

  swift_beginAccess();
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(a1[4]);
  if (result)
  {
    goto LABEL_10;
  }

  v30 = v5;
  v31 = a3;
  v32 = a4;
  v5 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v10 = a1[22];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  a4 = v12 & *(v10 + 64);
  v13 = (v11 + 63) >> 6;

  v33 = 0;
  a3 = 0;
  while (a4)
  {
LABEL_21:
    v15 = __clz(__rbit64(a4));
    a4 &= a4 - 1;
    v16 = *(*(v10 + 56) + ((a3 << 9) | (8 * v15)));
    v17 = *(v16 + 212);

    if (v17 != 2)
    {
      goto LABEL_24;
    }

    if (LazyLayoutViewCache.hasChildPrefetchPhaseWork(item:)(v16))
    {

      MEMORY[0x193ABF170](v19);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_33:
      v5 = v35;
    }

    else
    {
      v17 = *(v16 + 212);
LABEL_24:
      if (v17 == 1)
      {
        if (v5 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_27;
          }
        }

        else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_27:

          MEMORY[0x193ABF170](v18);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v33 = 1;
          goto LABEL_33;
        }
      }
    }
  }

  while (1)
  {
    v14 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v14 >= v13)
    {
      break;
    }

    a4 = *(v10 + 64 + 8 * v14);
    ++a3;
    if (a4)
    {
      a3 = v14;
      goto LABEL_21;
    }
  }

  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = result;
    if (!result)
    {
      goto LABEL_54;
    }

LABEL_36:
    if (v20 < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v20; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x193AC03C0](i, v5);
      }

      else
      {
        v24 = *(v5 + 8 * i + 32);
      }

      if (*(v24 + 212) == 2)
      {
        v22 = LazyLayoutViewCache.advanceChildPrefetchPhase(item:)(v24);
      }

      else
      {
        *(v24 + 212) = 2;
        v22 = LazyLayoutViewCache.setupChildPrefetchPhase(item:)(v24);
      }

      v23 = v22;
    }

    if (v23)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if ((v33 | v23))
    {
      result = closure #2 in LazySubviewPrefetcher.update(info:owner:)(v30, v31);
      v26 = v32;
      if (v33)
      {
        goto LABEL_56;
      }

      goto LABEL_59;
    }

LABEL_58:
    v26 = v32;
    goto LABEL_59;
  }

  v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    goto LABEL_36;
  }

LABEL_54:

  if ((v33 & 1) == 0)
  {
    v25 = 0;
    goto LABEL_58;
  }

  closure #2 in LazySubviewPrefetcher.update(info:owner:)(v30, v31);
  v25 = 0;
  v26 = v32;
LABEL_56:
  v27 = *(a1 + 156);
  swift_beginAccess();
  updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(a1[4]);
  swift_endAccess();
  v34[0] = 10;
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = updated & 1;
  static Update.enqueueAction(reason:_:)(v34, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v29);

LABEL_59:
  *v26 = v25;
  return result;
}

uint64_t specialized LazyLayoutViewCache.advancePrefetchPhaseForRemoval(notify:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(*a1 + 360))();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for v7 != -1)
  {
LABEL_32:
    swift_once();
  }

  v9 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (static Semantics.forced < v9)
  {
LABEL_36:
    *a4 = 2;
    return result;
  }

  swift_beginAccess();
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(a1[4]);
  if (result)
  {
    goto LABEL_36;
  }

  v27 = a3;
  v10 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v11 = a1[22];
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  a3 = 0;
  if (!v14)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_13:
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      if (*(*(*(v11 + 56) + ((a3 << 9) | (8 * v17))) + 212) == 3)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v19 = swift_retain_n();
    MEMORY[0x193ABF170](v19);
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v16 = 1;
    v10 = v29;
  }

  while (v14);
  while (1)
  {
LABEL_15:
    v18 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++a3;
    if (v14)
    {
      a3 = v18;
      goto LABEL_13;
    }
  }

  v20 = v16;

  if (!(v10 >> 62))
  {
    v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_34:

    if (v20)
    {
      closure #3 in LazySubviewPrefetcher.update(info:owner:)(a2, v27);
      v24 = *(a1 + 156);
      swift_beginAccess();
      updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(a1[4]);
      swift_endAccess();
      v28[0] = 10;
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = updated & 1;
      static Update.enqueueAction(reason:_:)(v28, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v26);
    }

    goto LABEL_36;
  }

  result = __CocoaSet.count.getter();
  v21 = result;
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AC03C0](i, v10);
      }

      else
      {
      }

      *(v23 + 212) = 0;
    }

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t LazyLayoutCacheItem.beginPrefetching(at:)(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (*(v4 + 224) == 1)
  {
    v5 = v4;
    v6 = (v4 + 264);
    v7 = (v4 + 257);
    v8 = 0uLL;
    v9 = 0uLL;
    if ((*(v4 + 296) & 1) == 0)
    {
      v8 = *v6;
      v9 = *(v4 + 280);
      *v14 = *(v4 + 241);
      *&v14[3] = *(v4 + 244);
      *v13 = *v7;
      *&v13[3] = *(v4 + 260);
    }

    *(v4 + 232) = result;
    *(v4 + 240) = a2 & 1;
    *(v4 + 241) = *v14;
    *(v4 + 244) = *&v14[3];
    *(v4 + 248) = a3;
    *(v4 + 256) = a4 & 1;
    *v7 = *v13;
    *(v4 + 260) = *&v13[3];
    *v6 = v8;
    *(v4 + 280) = v9;
    *(v4 + 296) = 0;
    swift_beginAccess();
    result = swift_unownedRetainStrong();
    if (result)
    {
      v10 = *(result + 228);

      *(v5 + 208) = v10;
      v11 = *(v5 + 16);
      result = swift_unownedRetainStrong();
      if (v11)
      {
        v12 = LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter();

        *(v5 + 212) = v12 & 1;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    AGGraphClearUpdate();
    swift_beginAccess();
    v5 = *AGGraphGetValue();
    AGGraphSetUpdate();

    if (*(v2 + 336) == v5)
    {
      v6 = *(v2 + 340);
      if (!v6)
      {
        return result;
      }
    }

    else
    {
      *(v2 + 336) = v5;
      v6 = 2;
    }

    *(v2 + 340) = v6 - 1;
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = AGCreateWeakAttribute();
      if (a2)
      {
        v15 = 0;
        swift_retain_n();
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v15, a2);

        v9 = v15;
        v10 = _threadTransactionID();
        specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v9, v10, v8, 1, 0);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v7 + 208);
          ObjectType = swift_getObjectType();
          (*(v11 + 24))(ObjectType, v11, 0.0);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v14[0] = 17;
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        static Update.enqueueAction(reason:_:)(v14, partial apply for closure #1 in LazyLayoutViewCache.invalidateSize(layoutComputer:animation:), v13);
      }
    }
  }

  return result;
}

Swift::Int LazyLayoutCacheItem.PrefetchPhase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int LazyLayoutCacheItem.ParentingPhase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall LazyLayoutCacheItem.AllItemsPhaseMutation.apply()()
{
  if (swift_weakLoadStrong())
  {
    LazyLayoutViewCache.updateItemPhases()();
  }
}

Swift::Void __swiftcall LazyLayoutCacheItem.SingleItemPhaseMutation.apply()()
{
  if (swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      LazyLayoutViewCache.updateItemPhase(_:)(Strong);
    }
  }
}

BOOL LazyLayoutCacheItem.SingleItemPhaseMutation.combine<A>(with:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  if (!swift_dynamicCast())
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 1;
    outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(v11, &lazy cache variable for type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation?, &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation);
    return 0;
  }

  v12 = 0;
  outlined init with take of LazyLayoutCacheItem.SingleItemPhaseMutation(v11, v13);
  Strong = swift_weakLoadStrong();
  v5 = swift_weakLoadStrong();
  if (!Strong)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

  v6 = v5;

  if (Strong != v6)
  {
LABEL_12:
    outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v13);
    return 0;
  }

LABEL_8:
  v7 = swift_weakLoadStrong();
  v8 = swift_weakLoadStrong();
  outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v13);
  if (v7)
  {
    if (v8)
    {

      return v7 == v8;
    }

    goto LABEL_15;
  }

  if (v8)
  {
LABEL_15:

    return 0;
  }

  return 1;
}

uint64_t protocol witness for GraphMutation.apply() in conformance LazyLayoutCacheItem.SingleItemPhaseMutation()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      LazyLayoutViewCache.updateItemPhase(_:)(Strong);
    }
  }

  return result;
}

Swift::Void __swiftcall LazyLayoutCacheItem.animationWasRemoved()()
{
  v1 = *(v0 + 192) - 1;
  *(v0 + 192) = v1;
  if (!v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    swift_unownedRetainStrong();
    if (v2)
    {
      if (swift_weakLoadStrong())
      {
        swift_weakInit();
        swift_weakInit();
        specialized GraphHost.continueTransaction<A>(_:)(v3);

        outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v3);
      }

      else
      {
      }
    }
  }
}

uint64_t LazyLayoutCacheItem.__ivar_destroyer()
{
  swift_unownedRelease();

  outlined destroy of _ViewList_SubgraphElements(v0 + 56);
}

uint64_t LazyLayoutCacheItem.deinit()
{
  swift_unownedRelease();

  outlined destroy of _ViewList_SubgraphElements(v0 + 56);

  return v0;
}

uint64_t LazyLayoutCacheItem.__deallocating_deinit()
{
  LazyLayoutCacheItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in LazyLayoutViewCache.init<A>(layout:list:inputs:)(uint64_t a1, uint64_t a2)
{

  *(a1 + 8) = a2;
  return result;
}

uint64_t LazyLayoutViewCache.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = )
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));
    swift_beginAccess();

    swift_unownedRelease();
    *(v10 + 16) = 0;
    swift_endAccess();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      swift_weakDestroy();

      v11 = *(v0 + 80);
      v13[2] = *(v0 + 64);
      v13[3] = v11;
      v13[4] = *(v0 + 96);
      v14 = *(v0 + 112);
      v12 = *(v0 + 48);
      v13[0] = *(v0 + 32);
      v13[1] = v12;
      outlined destroy of _ViewInputs(v13);

      swift_weakDestroy();

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t LazyLayoutViewCache.__deallocating_deinit()
{
  LazyLayoutViewCache.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall LazyLayoutViewCache.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_11:
    v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    v9 = *(v8 + 386);
    if (v9 != 2 && (v9 & 1) == 0)
    {
    }

    else
    {

      AGSubgraphRef.willInvalidate(isInserted:)(0);
      AGSubgraphInvalidate();
    }

    v4 &= v4 - 1;
    swift_beginAccess();
    swift_unownedRelease();
    *(v8 + 16) = 0;
    swift_endAccess();
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void specialized implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 16;
}

__n128 implicit closure #7 in LazyLayoutViewCache.reusedItem(data:anyTransition:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = a1[19];
  v13.n128_u64[0] = a1[18];
  v13.n128_u64[1] = v6;

  _ViewList_ID.Canonical.init(id:)(&v13, v12);
  v7 = v12[0];
  v8 = v12[1];
  v9 = a1[20];
  outlined init with copy of _LazyLayout_Subview.Data(a2, v12);
  v11[0] = v12[6];
  v11[1] = v12[7];

  _ViewList_ID.Canonical.init(id:)(v11, &v13);
  outlined destroy of _LazyLayout_Subview.Data(v12);
  result = v13;
  a3->n128_u64[0] = v7;
  a3->n128_u64[1] = v8;
  a3[1].n128_u64[0] = v9;
  a3[1].n128_u64[1] = 0;
  a3[2] = result;
  a3[3].n128_u64[0] = 0;
  a3[3].n128_u8[8] = 113;
  return result;
}

uint64_t LazyLayoutViewCache.hasChildPrefetchPhaseWork(item:)(uint64_t a1)
{
  if (*(a1 + 208) != *(v1 + 228))
  {
    goto LABEL_20;
  }

  v2 = *(a1 + 152);
  v21[0] = *(a1 + 144);
  v21[1] = v2;

  _ViewList_ID.Canonical.init(id:)(v21, v22);
  v3 = v22[0];
  v4 = v22[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v7 & 1) == 0))
  {

    swift_endAccess();
LABEL_20:
    v12 = 0;
    return v12 & 1;
  }

  v8 = *(*(v5 + 56) + 16 * v6 + 8);

  swift_endAccess();

  v10 = *(v8 + 16);
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = 0;
  v12 = 0;
  v13 = -v10;
  do
  {
    v14 = v8 + 32 + 8 * v11++;
    while (1)
    {
      _s2os6LoggerVSgWOcTm_1(v14, v21, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v9, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
      Strong = swift_weakLoadStrong();
      _s2os6LoggerVSgWOhTm_1(v21, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v16, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
      if (!Strong)
      {
        goto LABEL_8;
      }

      if ((*(Strong + 352) & 1) != 0 || (v17 = *(Strong + 280), v17 < 0))
      {

        goto LABEL_8;
      }

      v18 = *(Strong + 344);
      v19 = *(Strong + 288);

      if (v19 < 1)
      {
        goto LABEL_8;
      }

      if (v19 <= v17)
      {
        break;
      }

      if (v19 - v17 >= v18)
      {
        goto LABEL_17;
      }

LABEL_8:
      ++v11;
      v14 += 8;
      if (v13 + v11 == 1)
      {
        goto LABEL_18;
      }
    }

    if (v18 > 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v12 = 1;
  }

  while (v13 + v11);
LABEL_18:

  return v12 & 1;
}

uint64_t LazyLayoutViewCache.setupChildPrefetchPhase(item:)(uint64_t a1)
{
  if (*(a1 + 208) != *(v1 + 228))
  {
    goto LABEL_27;
  }

  v2 = *(a1 + 152);
  v32 = *(a1 + 144);
  v33 = v2;

  _ViewList_ID.Canonical.init(id:)(&v32, v36);
  v3 = v36[0];
  v4 = v36[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v7 & 1) == 0))
  {

    swift_endAccess();
LABEL_27:
    v11 = 0;
    return v11 & 1;
  }

  v8 = *(*(v5 + 56) + 16 * v6 + 8);

  swift_endAccess();

  v10 = *(v8 + 16);
  if (!v10)
  {

    goto LABEL_27;
  }

  v11 = 0;
  v12 = v8 + 32;
  do
  {
    _s2os6LoggerVSgWOcTm_1(v12, v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v9, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 352) == 1)
      {
        *(Strong + 344) = 0;
        *(Strong + 352) = 0;
        v16 = *(Strong + 156);
        v17 = Strong;
        swift_beginAccess();
        v18 = *(v17 + 32);
        BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
        updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v18, v37);
        if (updated)
        {
          v20 = *(updated + 72);
        }

        else
        {
          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v21 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C)
          {
            v20 = dyld_program_sdk_at_least();
          }

          else
          {
            v20 = static Semantics.forced >= v21;
          }
        }

        swift_endAccess();
        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        *(v22 + 24) = v20;
        specialized static Update.begin()();
        LOBYTE(v37) = 10;

        Update.Action.init(reason:thunk:)(&v37, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v22, &v32);
        v23 = v32;
        v25 = v33;
        v24 = v34;
        v26 = v35;
        v27 = one-time initialization token for actions;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = static Update.actions;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
        }

        *(v28 + 2) = v30 + 1;
        v13 = &v28[32 * v30];
        v13[32] = v23;
        *(v13 + 5) = v25;
        *(v13 + 6) = v24;
        *(v13 + 14) = v26;
        static Update.actions = v28;

        static Update.end()();

        v11 = 1;
      }
    }

    _s2os6LoggerVSgWOhTm_1(v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v14, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
    v12 += 8;
    --v10;
  }

  while (v10);

  return v11 & 1;
}

uint64_t LazyLayoutViewCache.advanceChildPrefetchPhase(item:)(uint64_t a1)
{
  if (*(a1 + 208) != *(v1 + 228))
  {
    goto LABEL_27;
  }

  v2 = *(a1 + 152);
  v32 = *(a1 + 144);
  v33 = v2;

  _ViewList_ID.Canonical.init(id:)(&v32, v36);
  v3 = v36[0];
  v4 = v36[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v7 & 1) == 0))
  {

    swift_endAccess();
LABEL_27:
    v11 = 0;
    return v11 & 1;
  }

  v8 = *(*(v5 + 56) + 16 * v6 + 8);

  swift_endAccess();

  v10 = *(v8 + 16);
  if (!v10)
  {

    goto LABEL_27;
  }

  v11 = 0;
  v12 = v8 + 32;
  do
  {
    _s2os6LoggerVSgWOcTm_1(v12, v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v9, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if ((*(Strong + 352) & 1) == 0)
      {
        ++*(Strong + 344);
        *(Strong + 352) = 0;
        v16 = *(Strong + 156);
        v17 = Strong;
        swift_beginAccess();
        v18 = *(v17 + 32);
        BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
        updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v18, v37);
        if (updated)
        {
          v20 = *(updated + 72);
        }

        else
        {
          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v21 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C)
          {
            v20 = dyld_program_sdk_at_least();
          }

          else
          {
            v20 = static Semantics.forced >= v21;
          }
        }

        swift_endAccess();
        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        *(v22 + 24) = v20;
        specialized static Update.begin()();
        LOBYTE(v37) = 10;

        Update.Action.init(reason:thunk:)(&v37, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v22, &v32);
        v23 = v32;
        v25 = v33;
        v24 = v34;
        v26 = v35;
        v27 = one-time initialization token for actions;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = static Update.actions;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
        }

        *(v28 + 2) = v30 + 1;
        v13 = &v28[32 * v30];
        v13[32] = v23;
        *(v13 + 5) = v25;
        *(v13 + 6) = v24;
        *(v13 + 14) = v26;
        static Update.actions = v28;

        static Update.end()();

        v11 = 1;
      }
    }

    _s2os6LoggerVSgWOhTm_1(v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v14, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
    v12 += 8;
    --v10;
  }

  while (v10);

  return v11 & 1;
}

BOOL specialized prefetchOutput #1 (_:label:) in LazyLayoutViewCache.prefetchOutputs()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  if (AGGraphHasDeadlinePassed())
  {
    v86 = a5;
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, static Log.lazyLayoutPrefetch);
    _s2os6LoggerVSgWOcTm_1(v22, v21, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v23 = type metadata accessor for Logger();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v21, 1, v23) == 1)
    {
      _s2os6LoggerVSgWOhTm_1(v21, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      v85 = a2;

      v28 = a3;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v87[0] = v32;
        *v31 = 136446466;
        v33 = *(a4 + 152);
        v90 = *(a4 + 144);
        v91 = v33;

        _ViewList_ID.Canonical.init(id:)(&v90, v89);
        v34 = _ViewList_ID.Canonical.description.getter();
        v36 = v35;

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v87);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2082;
        *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v28, v87);
        _os_log_impl(&dword_18D018000, v29, v30, "%{public}s Skip prefetch %{public}s, past deadline", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AC4820](v32, -1, -1);
        MEMORY[0x193AC4820](v31, -1, -1);
      }

      (*(v24 + 8))(v21, v23);
    }

    v38 = v86;
    swift_beginAccess();
    result = 0;
    *v38 = 1;
  }

  else if (AGGraphGetValueState())
  {
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v85 = __swift_project_value_buffer(v10, static Log.lazyLayoutPrefetch);
    _s2os6LoggerVSgWOcTm_1(v85, v15, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v40 = type metadata accessor for Logger();
    v83 = *(v40 - 8);
    v84 = v40;
    v82 = *(v83 + 48);
    v41 = v82(v15, 1);
    v86 = a5;
    if (v41 == 1)
    {
      _s2os6LoggerVSgWOhTm_1(v15, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v42 = v84;
    }

    else
    {

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v80 = v54;
        v56 = v55;
        v81 = swift_slowAlloc();
        v87[0] = v81;
        *v56 = 136446466;
        v57 = *(a4 + 152);
        v90 = *(a4 + 144);
        v91 = v57;

        _ViewList_ID.Canonical.init(id:)(&v90, v89);
        v79 = v53;
        v58 = _ViewList_ID.Canonical.description.getter();
        v59 = a3;
        v61 = v60;

        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v61, v87);
        a3 = v59;

        *(v56 + 4) = v62;
        *(v56 + 12) = 2082;
        *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v59, v87);
        v53 = v79;
        _os_log_impl(&dword_18D018000, v79, v80, "%{public}s: start prefetch %{public}s", v56, 0x16u);
        v63 = v81;
        swift_arrayDestroy();
        MEMORY[0x193AC4820](v63, -1, -1);
        MEMORY[0x193AC4820](v56, -1, -1);
      }

      v64 = v15;
      v42 = v84;
      (*(v83 + 8))(v64, v84);
    }

    AGGraphPrefetchValue();
    v65 = AGGraphGetValueState() & 1;
    if (v65)
    {
      v66 = 1;
    }

    else
    {
      v66 = 2;
    }

    v67 = v86;
    swift_beginAccess();
    *v67 = v66;
    _s2os6LoggerVSgWOcTm_1(v85, v12, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    if ((v82)(v12, 1, v42) == 1)
    {
      _s2os6LoggerVSgWOhTm_1(v12, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      v85 = a2;

      v68 = Logger.logObject.getter();
      v69 = a3;
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v68, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v88 = v72;
        *v71 = 136446722;
        v73 = *(a4 + 152);
        v87[0] = *(a4 + 144);
        v87[1] = v73;

        _ViewList_ID.Canonical.init(id:)(v87, &v90);
        v74 = _ViewList_ID.Canonical.description.getter();
        v76 = v75;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v88);

        *(v71 + 4) = v77;
        *(v71 + 12) = 2082;
        *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v69, &v88);
        *(v71 + 22) = 1024;
        *(v71 + 24) = v65 ^ 1;
        _os_log_impl(&dword_18D018000, v68, v70, "%{public}s: end prefetch %{public}s, done = %{BOOL}d", v71, 0x1Cu);
        swift_arrayDestroy();
        v78 = v72;
        v42 = v84;
        MEMORY[0x193AC4820](v78, -1, -1);
        MEMORY[0x193AC4820](v71, -1, -1);
      }

      (*(v83 + 8))(v12, v42);
    }

    return v65 == 0;
  }

  else
  {
    v85 = a2;
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v10, static Log.lazyLayoutPrefetch);
    _s2os6LoggerVSgWOcTm_1(v25, v18, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v26 = type metadata accessor for Logger();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v18, 1, v26) == 1)
    {
      _s2os6LoggerVSgWOhTm_1(v18, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {

      v43 = Logger.logObject.getter();
      v44 = a3;
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v87[0] = v47;
        *v46 = 136446466;
        v48 = *(a4 + 152);
        v90 = *(a4 + 144);
        v91 = v48;

        _ViewList_ID.Canonical.init(id:)(&v90, v89);
        v49 = _ViewList_ID.Canonical.description.getter();
        v51 = v50;

        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v87);

        *(v46 + 4) = v52;
        *(v46 + 12) = 2082;
        *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v44, v87);
        _os_log_impl(&dword_18D018000, v43, v45, "%{public}s Skip prefetch %{public}s, already done", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AC4820](v47, -1, -1);
        MEMORY[0x193AC4820](v46, -1, -1);
      }

      (*(v27 + 8))(v18, v26);
    }

    return 1;
  }

  return result;
}

void Array<A>.sortForDisplay()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 > 0x20)
  {
    Array<A>.sortForDisplayLarge()();
    v1 = *v0;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
LABEL_42:
    v38 = *(v1 + 2);
    if (v38)
    {
      v39 = 0;
      v40 = (v1 + 32);
      do
      {
        v41 = *v40;
        v40 += 10;
        *(v41 + 216) = v39;
        *(v41 + 224) = 0;
        ++v39;
      }

      while (v38 != v39);
    }

    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    if (*(v1 + 2) < 2uLL)
    {
      goto LABEL_48;
    }

    v3 = v1 + 32;
    v4 = v1 + 112;
    v5 = 1;
LABEL_7:
    v6 = &v3[80 * v5];
    v52 = *v6;
    v7 = *(v6 + 1);
    v8 = *(v6 + 2);
    v9 = *(v6 + 4);
    v55 = *(v6 + 3);
    v56 = v9;
    v53 = v7;
    v54 = v8;
    outlined init with copy of _LazyLayout_PlacedSubview(&v52, &v47);
    v10 = v5 - 1;
    v11 = *(v1 + 2);
    if (v5 - 1 < v11)
    {
      break;
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
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v12 = 0;
  v13 = v52;
  v14 = v4;
  while (1)
  {
    v47 = *(v14 - 5);
    v15 = *(v14 - 4);
    v16 = *(v14 - 3);
    v17 = *(v14 - 1);
    v50 = *(v14 - 2);
    v51 = v17;
    v48 = v15;
    v49 = v16;
    v18 = *(v13 + 176);
    v19 = *(v47 + 176);
    if (v18 != v19)
    {
      if (v18 >= v19)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (*(v13 + 173))
    {
      if ((*(v47 + 173) & 1) == 0 && (*(v47 + 174) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v20 = *(v13 + 174);
      if (*(v47 + 173))
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (v20 != *(v47 + 174))
      {
        if (v20)
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      }
    }

    v21 = *(v13 + 228);
    v22 = *(v47 + 228);
    if (v21 != v22)
    {
      if (v21 >= v22)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (*(v13 + 224))
    {
      break;
    }

    if (*(v47 + 224))
    {
      goto LABEL_52;
    }

    if (*(v13 + 216) >= *(v47 + 216))
    {
LABEL_32:
      if (v12)
      {
        v29 = v10 + 1;
        goto LABEL_35;
      }

      v37 = &v52;
LABEL_37:
      outlined destroy of _LazyLayout_PlacedSubview(v37);
      if (++v5 == *(v1 + 2))
      {
        *v0 = v1;
        goto LABEL_42;
      }

      v4 += 80;
      if (v5 < *(v1 + 2))
      {
        goto LABEL_7;
      }

      goto LABEL_48;
    }

LABEL_28:
    outlined init with copy of _LazyLayout_PlacedSubview(&v47, &v42);
    if (v10 + 1 >= v11)
    {
      goto LABEL_47;
    }

    v42 = *v14;
    v23 = *(v14 + 1);
    v24 = *(v14 + 2);
    v25 = *(v14 + 4);
    v45 = *(v14 + 3);
    v46 = v25;
    v43 = v23;
    v44 = v24;
    v26 = v51;
    v28 = v48;
    v27 = v49;
    *(v14 + 3) = v50;
    *(v14 + 4) = v26;
    *(v14 + 1) = v28;
    *(v14 + 2) = v27;
    *v14 = v47;
    outlined destroy of _LazyLayout_PlacedSubview(&v42);
    if (!v10)
    {
      v29 = 0;
LABEL_35:
      if (v29 >= *(v1 + 2))
      {
        goto LABEL_49;
      }

      v30 = &v3[80 * v29];
      v42 = *v30;
      v31 = *(v30 + 1);
      v32 = *(v30 + 2);
      v33 = *(v30 + 4);
      v45 = *(v30 + 3);
      v46 = v33;
      v43 = v31;
      v44 = v32;
      v34 = v56;
      v36 = v53;
      v35 = v54;
      *(v30 + 3) = v55;
      *(v30 + 4) = v34;
      *(v30 + 1) = v36;
      *(v30 + 2) = v35;
      *v30 = v52;
      v37 = &v42;
      goto LABEL_37;
    }

    --v10;
    v11 = *(v1 + 2);
    ++v12;
    v14 -= 80;
    if (v10 >= v11)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

__n128 implicit closure #2 in LazyLayoutViewCache.reusedItem(data:anyTransition:)@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1[19];
  v9[0] = a1[18];
  v9[1] = v6;

  _ViewList_ID.Canonical.init(id:)(v9, &v10);
  result = v10;
  v8 = a1[20];
  *a3 = v10;
  *(a3 + 16) = v8;
  *(a3 + 24) = 0;
  *(a3 + 31) = 0;
  *(a3 + 29) = 0;
  *(a3 + 25) = 0;
  *(a3 + 56) = a2;
  return result;
}

uint64_t closure #1 in LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    AGGraphInvalidateValue();
    v1 = AGGraphGetAttributeGraph();
    result = AGGraphGetContext();
    if (result)
    {
      v2 = result;

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 208);

        ObjectType = swift_getObjectType();
        (*(*(v3 + 8) + 16))(ObjectType);
        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _LazyLayoutViewCache.__ivar_destroyer()
{
  v1 = *(*v0 + 464);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t _LazyLayoutViewCache.deinit()
{
  LazyLayoutViewCache.deinit();
  v1 = *(*v0 + 464);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t _LazyLayoutViewCache.__deallocating_deinit()
{
  _LazyLayoutViewCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in _LazyLayoutViewCache.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:)(uint64_t a1, const void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  v18[0] = a5;
  v18[1] = a1;
  v10 = *(*a3 + 448);
  v11 = *(*a3 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v18 - v14;
  v16 = memcpy(v23, a2, 0x129uLL);
  _LazyLayoutViewCache.copyCacheState<A>(type:)(v16, AssociatedTypeWitness);
  LazyLayoutViewCache.subviews(context:)(a4, v22);
  (*(v10 + 96))(v18[0], v19, v20, v21, v23, v22, v15, v11, v10);
  outlined destroy of _LazyLayout_Subviews(v22);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

void ReuseMessage.log<A>(layout:log:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 56);
  v6 = v5 >> 4;
  if (v5 >> 4 > 4)
  {
    if (v5 >> 4 > 6)
    {
      if (v6 == 7)
      {
        v34 = *(v0 + 40);
        v35 = *(v0 + 48);
        v11 = *(v0 + 32);
        _StringGuts.grow(_:)(23);

        strcpy(v39, "reused item ");
        BYTE5(v39[1]) = 0;
        HIWORD(v39[1]) = -5120;
        v38 = v4 & 1;
        v12 = CacheItemDescription.description.getter();
        MEMORY[0x193ABEDD0](v12);

        MEMORY[0x193ABEDD0](0x20676E69737520, 0xE700000000000000);
        v36[0] = v11;
        v36[1] = v34;
        v37 = v35;
        v13 = v5 & 1;
LABEL_21:
        v38 = v13;
        v14 = CacheItemDescription.description.getter();
        MEMORY[0x193ABEDD0](v14);

        v15 = v39[0];
        v16 = v39[1];
        goto LABEL_22;
      }

      v7 = HIDWORD(v1);
      if (v6 != 8)
      {
        v36[0] = 0;
        v36[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v39[0] = 0x657463656C6C6F63;
        v39[1] = 0xEF206D6574692064;
        goto LABEL_19;
      }

      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v9 = 0x800000018DD80110;
      v10 = 0xD000000000000014;
LABEL_18:
      v39[0] = v10;
      v39[1] = v9;
LABEL_19:
      v36[0] = __PAIR64__(v7, v1);
LABEL_20:
      v36[1] = v2;
      v37 = v3;
      v13 = v4 & 1;
      goto LABEL_21;
    }

    if (v6 != 5)
    {
      strcpy(v39, "created item ");
      HIWORD(v39[1]) = -4864;
      v36[0] = v1;
      goto LABEL_20;
    }

    v7 = HIDWORD(v1);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v8 = "skip reuse (failed) for ";
LABEL_14:
    v9 = (v8 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000018;
    goto LABEL_18;
  }

  if (v5 >> 4 > 1)
  {
    v7 = HIDWORD(v1);
    if (v6 == 2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v9 = 0x800000018DD80190;
      v10 = 0xD00000000000001ALL;
      goto LABEL_18;
    }

    if (v6 != 3)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v9 = 0x800000018DD80150;
      v10 = 0xD00000000000001ELL;
      goto LABEL_18;
    }

    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v8 = "skip reuse (placed) for ";
    goto LABEL_14;
  }

  if (v6)
  {
    _StringGuts.grow(_:)(45);

    v36[0] = 0xD00000000000002BLL;
    v36[1] = 0x800000018DD801B0;
  }

  else
  {
    strcpy(v36, "total items ");
    BYTE5(v36[1]) = 0;
    HIWORD(v36[1]) = -5120;
  }

  v39[0] = v1;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v33);

  v15 = v36[0];
  v16 = v36[1];
LABEL_22:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = AGGraphGetAttributeGraph();
    v18 = 0xE000000000000000;
    if (v19)
    {
      v20 = v19;
      AGGraphGetCounter();
      Counter = AGGraphGetCounter();
      _StringGuts.grow(_:)(27);

      strcpy(v36, "attributes=");
      HIDWORD(v36[1]) = -352321536;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v22);

      MEMORY[0x193ABEDD0](0x617267627573202CLL, 0xEC0000003D736870);
      v39[0] = Counter;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v23);

      v17 = v36[0];
      v18 = v36[1];
    }

    else
    {
      v17 = 0;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36[0] = v27;
    *v26 = 136315650;
    v28 = _typeName(_:qualified:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v36);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v36);

    *(v26 + 14) = v31;
    *(v26 + 22) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v36);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_18D018000, v24, v25, "%s: %s %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v27, -1, -1);
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  else
  {
  }
}

void protocol witness for ObservedAttribute.destroy() in conformance UpdateViewCache()
{
  if (*(v0 + 8))
  {
    LazyLayoutViewCache.invalidate()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for static _AttributeBody._destroySelf(_:) in conformance UpdateViewCache(uint64_t a1)
{
  if (*(a1 + 8))
  {
    LazyLayoutViewCache.invalidate()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for Rule.value.getter in conformance LazyCollectedPlacements@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized LazyCollectedPlacements.value.getter();
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance HiddenForReuseEffect(uint64_t a1@<X8>)
{
  v2 = 256;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

uint64_t *protocol witness for Rule.value.getter in conformance LazyPreferencePrefetchSubviews@<X0>(uint64_t **a1@<X8>)
{
  result = LazyPreferencePrefetchSubviews.value.getter(*v1, *(v1 + 1));
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance LazyPreference<A>(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  static PreferenceCombiner.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v14);
  v16[-2] = a2;
  v16[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v16[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t CompareTransitionType.visit<A>(_:)(uint64_t result)
{
  if (*v1)
  {
    v2 = *v1 == result;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t implicit closure #1 in Array<A>.sortForDisplayLarge()(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static _LazyLayout_PlacedSubview.orderedForDisplay(lhs:rhs:)(v8, v7) & 1;
}

unint64_t LazyLayoutViewCache.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(23);

  (*(v1 + 392))(v2);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t CacheItemDescription.description.getter()
{
  if (*(v0 + 24))
  {
    return _ViewList_ID.Canonical.description.getter();
  }

  v3 = _ViewList_ID.Canonical.description.getter();
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.LazyLayoutCacheParentKey()
{
  result = swift_weakInit();
  *(result + 8) = -1;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 80 * a3);
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v55 = v9;
    while (1)
    {
      v53[0] = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[4];
      v53[3] = v9[3];
      v53[4] = v14;
      v53[1] = v12;
      v53[2] = v13;
      v15 = v9[3];
      v50 = v9[2];
      v51 = v15;
      v52 = v9[4];
      v16 = v9[1];
      v48 = *v9;
      v49 = v16;
      v54[0] = *(v9 - 5);
      v17 = *(v9 - 1);
      v19 = *(v9 - 4);
      v18 = *(v9 - 3);
      v54[3] = *(v9 - 2);
      v54[4] = v17;
      v54[1] = v19;
      v54[2] = v18;
      v20 = *(v9 - 2);
      v45 = *(v9 - 3);
      v46 = v20;
      v47 = *(v9 - 1);
      v21 = *(v9 - 4);
      v43 = *(v9 - 5);
      v44 = v21;
      outlined init with copy of _LazyLayout_PlacedSubview(v53, &v38);
      outlined init with copy of _LazyLayout_PlacedSubview(v54, &v38);
      v22 = a4(&v48, &v43);
      if (v5)
      {
        v35 = v45;
        v36 = v46;
        v37 = v47;
        v33 = v43;
        v34 = v44;
        outlined destroy of _LazyLayout_PlacedSubview(&v33);
        v40 = v50;
        v41 = v51;
        v42 = v52;
        v38 = v48;
        v39 = v49;
        return outlined destroy of _LazyLayout_PlacedSubview(&v38);
      }

      v23 = v22;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      outlined destroy of _LazyLayout_PlacedSubview(&v33);
      v40 = v50;
      v41 = v51;
      v42 = v52;
      v38 = v48;
      v39 = v49;
      result = outlined destroy of _LazyLayout_PlacedSubview(&v38);
      if ((v23 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v55 + 5;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v24 = v9 - 5;
      v30 = v9[2];
      v31 = v9[3];
      v32 = v9[4];
      v28 = *v9;
      v29 = v9[1];
      v25 = *(v9 - 2);
      v9[2] = *(v9 - 3);
      v9[3] = v25;
      v9[4] = *(v9 - 1);
      v26 = *(v9 - 4);
      *v9 = *(v9 - 5);
      v9[1] = v26;
      v24[3] = v31;
      v24[4] = v32;
      v24[1] = v29;
      v24[2] = v30;
      *v24 = v28;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 5;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v121 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v7 = *v121;
    if (*v121)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_13;
    }

    v12 = *a3;
    v13 = (*a3 + 80 * v11);
    v162 = *v13;
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[4];
    v165 = v13[3];
    v166 = v16;
    v163 = v14;
    v164 = v15;
    v17 = v13[3];
    v159 = v13[2];
    v160 = v17;
    v161 = v13[4];
    v18 = v13[1];
    v157 = *v13;
    v158 = v18;
    v19 = (v12 + 80 * v10);
    v167 = *v19;
    v20 = v19[4];
    v22 = v19[1];
    v21 = v19[2];
    v170 = v19[3];
    v171 = v20;
    v168 = v22;
    v169 = v21;
    v23 = v19[3];
    v154 = v19[2];
    v155 = v23;
    v156 = v19[4];
    v24 = v19[1];
    v152 = *v19;
    v153 = v24;
    outlined init with copy of _LazyLayout_PlacedSubview(&v162, &v147);
    outlined init with copy of _LazyLayout_PlacedSubview(&v167, &v147);
    v25 = a4(&v157, &v152);
    if (v6)
    {
LABEL_104:
      v144 = v154;
      v145 = v155;
      v146 = v156;
      v142 = v152;
      v143 = v153;
      outlined destroy of _LazyLayout_PlacedSubview(&v142);
      v149 = v159;
      v150 = v160;
      v151 = v161;
      v147 = v157;
      v148 = v158;
      outlined destroy of _LazyLayout_PlacedSubview(&v147);
    }

    v26 = v25;
    v144 = v154;
    v145 = v155;
    v146 = v156;
    v142 = v152;
    v143 = v153;
    outlined destroy of _LazyLayout_PlacedSubview(&v142);
    v149 = v159;
    v150 = v160;
    v151 = v161;
    v147 = v157;
    v148 = v158;
    result = outlined destroy of _LazyLayout_PlacedSubview(&v147);
    v27 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      v8 = v10 + 2;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_82;
    }

    v28 = (v12 + 80 * v10 + 160);
    while (1)
    {
      v8 = v27;
      v136[0] = *v28;
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[4];
      v136[3] = v28[3];
      v136[4] = v31;
      v136[1] = v29;
      v136[2] = v30;
      v32 = v28[3];
      v133 = v28[2];
      v134 = v32;
      v135 = v28[4];
      v33 = v28[1];
      v131 = *v28;
      v132 = v33;
      v137 = *(v28 - 5);
      v34 = *(v28 - 1);
      v36 = *(v28 - 4);
      v35 = *(v28 - 3);
      v140 = *(v28 - 2);
      v141 = v34;
      v138 = v36;
      v139 = v35;
      v37 = *(v28 - 2);
      v128 = *(v28 - 3);
      v129 = v37;
      v130 = *(v28 - 1);
      v38 = *(v28 - 4);
      v126 = *(v28 - 5);
      v127 = v38;
      outlined init with copy of _LazyLayout_PlacedSubview(v136, v125);
      outlined init with copy of _LazyLayout_PlacedSubview(&v137, v125);
      v39 = a4(&v131, &v126);
      v124[2] = v128;
      v124[3] = v129;
      v124[4] = v130;
      v124[0] = v126;
      v124[1] = v127;
      outlined destroy of _LazyLayout_PlacedSubview(v124);
      v125[2] = v133;
      v125[3] = v134;
      v125[4] = v135;
      v125[0] = v131;
      v125[1] = v132;
      result = outlined destroy of _LazyLayout_PlacedSubview(v125);
      if ((v26 ^ v39))
      {
        break;
      }

      v27 = v8 + 1;
      v28 += 5;
      if (v7 == v8 + 1)
      {
        v11 = v8;
        v8 = v7;
        if ((v26 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_82:
        if (v8 >= v10)
        {
          if (v10 <= v11)
          {
            v7 = 80 * v8 - 80;
            v108 = 80 * v10;
            v109 = v8;
            v119 = v10;
            do
            {
              if (v10 != --v109)
              {
                v110 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v111 = (v110 + v7);
                v138 = *(v110 + v108 + 16);
                v139 = *(v110 + v108 + 32);
                v140 = *(v110 + v108 + 48);
                v141 = *(v110 + v108 + 64);
                v137 = *(v110 + v108);
                result = memmove((v110 + v108), (v110 + v7), 0x50uLL);
                v111[1] = v138;
                v111[2] = v139;
                v111[3] = v140;
                v111[4] = v141;
                *v111 = v137;
              }

              ++v10;
              v7 -= 80;
              v108 += 80;
            }

            while (v10 < v109);
            v10 = v119;
          }

          goto LABEL_13;
        }

LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    v11 = v8 - 1;
    if (v26)
    {
      goto LABEL_82;
    }

LABEL_13:
    v40 = a3[1];
    if (v8 >= v40)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v41 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v41 >= v40)
    {
      v41 = a3[1];
    }

    if (v41 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v41)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v88 = *a3;
      v89 = (*a3 + 80 * v8);
      v7 = v10 - v8 + 1;
      v116 = v41;
      do
      {
        v117 = v7;
        v118 = v89;
        while (1)
        {
          v162 = *v89;
          v90 = v89[1];
          v91 = v89[2];
          v92 = v89[4];
          v165 = v89[3];
          v166 = v92;
          v163 = v90;
          v164 = v91;
          v93 = v89[3];
          v159 = v89[2];
          v160 = v93;
          v161 = v89[4];
          v94 = v89[1];
          v157 = *v89;
          v158 = v94;
          v167 = *(v89 - 5);
          v95 = *(v89 - 1);
          v97 = *(v89 - 4);
          v96 = *(v89 - 3);
          v170 = *(v89 - 2);
          v171 = v95;
          v168 = v97;
          v169 = v96;
          v98 = *(v89 - 2);
          v154 = *(v89 - 3);
          v155 = v98;
          v156 = *(v89 - 1);
          v99 = *(v89 - 4);
          v152 = *(v89 - 5);
          v153 = v99;
          outlined init with copy of _LazyLayout_PlacedSubview(&v162, &v147);
          outlined init with copy of _LazyLayout_PlacedSubview(&v167, &v147);
          v100 = a4(&v157, &v152);
          if (v6)
          {
            goto LABEL_104;
          }

          v101 = v100;
          v144 = v154;
          v145 = v155;
          v146 = v156;
          v142 = v152;
          v143 = v153;
          outlined destroy of _LazyLayout_PlacedSubview(&v142);
          v149 = v159;
          v150 = v160;
          v151 = v161;
          v147 = v157;
          v148 = v158;
          result = outlined destroy of _LazyLayout_PlacedSubview(&v147);
          if ((v101 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_129;
          }

          v102 = v89 - 5;
          v138 = v89[1];
          v139 = v89[2];
          v140 = v89[3];
          v141 = v89[4];
          v137 = *v89;
          v103 = *(v89 - 2);
          v89[2] = *(v89 - 3);
          v89[3] = v103;
          v89[4] = *(v89 - 1);
          v104 = *(v89 - 4);
          *v89 = *(v89 - 5);
          v89[1] = v104;
          *v102 = v137;
          v105 = v138;
          v106 = v139;
          v107 = v141;
          v102[3] = v140;
          v102[4] = v107;
          v102[1] = v105;
          v102[2] = v106;
          if (!v7)
          {
            break;
          }

          ++v7;
          v89 -= 5;
        }

        ++v8;
        v89 = v118 + 5;
        v7 = v117 - 1;
      }

      while (v8 != v116);
      v8 = v116;
      if (v116 < v10)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v10;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v7;
    *(v45 + 5) = v8;
    v46 = *v121;
    if (!*v121)
    {
      goto LABEL_132;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_109;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_110;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_112;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_115;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v44 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_41:
      if (v51)
      {
        goto LABEL_111;
      }

      v64 = &v9[16 * v44];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v70 = &v9[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_118;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_55;
    }

    v74 = &v9[16 * v44];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_55:
    if (v69)
    {
      goto LABEL_113;
    }

    v77 = &v9[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_116;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_62:
    v7 = v47 - 1;
    if (v47 - 1 >= v44)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v85 = *&v9[16 * v7 + 32];
    v86 = *&v9[16 * v47 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 80 * v85), (*a3 + 80 * *&v9[16 * v47 + 32]), (*a3 + 80 * v86), v46, a4);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v87 = &v9[16 * v7];
    *(v87 + 4) = v85;
    *(v87 + 5) = v86;
    v172 = v9;
    result = specialized Array.remove(at:)(v47);
    v9 = v172;
    v44 = *(v172 + 2);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
LABEL_95:
  v172 = v9;
  v112 = *(v9 + 2);
  if (v112 < 2)
  {
  }

  while (*a3)
  {
    v113 = *&v9[16 * v112];
    v114 = *&v9[16 * v112 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 80 * v113), (*a3 + 80 * *&v9[16 * v112 + 16]), (*a3 + 80 * v114), v7, a4);
    if (v6)
    {
    }

    if (v114 < v113)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v112 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v115 = &v9[16 * v112];
    *v115 = v113;
    *(v115 + 1) = v114;
    v172 = v9;
    result = specialized Array.remove(at:)(v112 - 1);
    v9 = v172;
    v112 = *(v172 + 2);
    if (v112 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}