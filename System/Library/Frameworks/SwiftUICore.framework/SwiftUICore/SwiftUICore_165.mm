uint64_t _AllowsHitTestingModifier.effectValue(size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  if (result)
  {
    v3 = 20;
  }

  else
  {
    v3 = 2;
  }

  *(a2 + 8) = 0;
  *(a2 + 12) = v3;
  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _AllowsHitTestingModifier(uint64_t a1@<X8>)
{
  v2 = *v1 == 0;
  if (*v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 20;
  }

  *(a1 + 8) = 0;
  *(a1 + 12) = v4;
}

uint64_t AllowsHitTestingFilter.updateValue()()
{
  v1 = *(v0 + 8);
  *(v1 + 216) = *AGGraphGetValue();
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t *AllowsHitTestingResponder.hitTestPolicy(options:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 216))
  {
    v3 = *result;
    return MultiViewResponder.hitTestPolicy(options:)(&v3);
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t AllowsHitTestingResponder.extendPrintTree(string:)()
{
  if (*(v0 + 216))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 216))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v1, v2);

  MEMORY[0x193ABEDD0](0, 0xE000000000000000);
}

uint64_t AllowsHitTestingResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  *(v4 + 216) = 1;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v8, a2);
}

uint64_t key path setter for _GraphInputs.allowsHitTestingAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.allowsHitTestingAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.allowsHitTestingAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.allowsHitTestingAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.AllowsHitTestingAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.allowsHitTestingAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.allowsHitTestingAccessibilityProvider.modify;
}

void _GraphInputs.allowsHitTestingAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void *EnvironmentValues.defaultRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t EnvironmentValues.defaultBaselineOffset.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3);
  }

  a1(v3);
}

uint64_t key path getter for EnvironmentValues.textSizing : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, v7);

    v4 = v7[0];
    result = v8;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*a1);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static TextSizingKey.defaultValue;
    }
  }

  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.textSizing : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(a2, v5, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(v4, *a2);
  }
}

uint64_t key path getter for EnvironmentValues.fontModifiers : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.fontModifiers : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013FontModifiersK033_25811D44B7BE5E768C1CBA33158F398BLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.allowsVibrantBlending.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v1);
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    v2 = *(v3 + 72);
  }

  v4 = (v2 == 2) | v2;
  return v4 & 1;
}

uint64_t EnvironmentValues.fallbackFont.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    return v2;
  }

  else
  {
    v4 = *v0;

    return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v4);
  }
}

unint64_t static DisplayGamut.deviceDefault.getter@<X0>(_BYTE *a1@<X8>)
{
  result = _CUIDefaultDisplayGamut();
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

Swift::Int Image.Scale.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::DisplayGamut_optional __swiftcall DisplayGamut.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t View.adjustsTextFrameForOversizedCharacters(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    if (one-time initialization token for adjustsForOversizedCharacters != -1)
    {
      swift_once();
    }

    v7 = &static Text.Sizing.adjustsForOversizedCharacters;
  }

  else
  {
    if (one-time initialization token for standard != -1)
    {
      swift_once();
    }

    v7 = &static Text.Sizing.standard;
  }

  v8 = *(v7 + 1);
  v10[0] = *v7;
  v11 = v8;

  View.environment<A>(_:_:)(KeyPath, v10, a2, a3);
}

uint64_t View.fontWidth(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontWidth(_:), v6, a2);
}

void *closure #1 in View.fontWidth(_:)(void *result, uint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    v4 = *result;
    v21 = result;
    v22 = *result >> 62;
    v5 = *result & 0xFFFFFFFFFFFFFF8;
    if (v22)
    {
      goto LABEL_70;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (v6 == v7)
      {
        if (v22)
        {
          result = __CocoaSet.count.getter();
          v7 = result;
        }

        else
        {
          v7 = *(v5 + 16);
        }

        goto LABEL_27;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_63;
        }
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for AnyDynamicFontModifier);
      v8 = swift_dynamicCastClass();

      v9 = __OFADD__(v7, 1);
      if (v8)
      {
        break;
      }

      ++v7;
      if (v9)
      {
        goto LABEL_64;
      }
    }

    if (!v9)
    {
      if (v22)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *(v5 + 16);
      }

      if ((v7 + 1) != result)
      {
        v12 = v7 + 5;
        do
        {
          v13 = v12 - 4;
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AC03C0](v12 - 4, v4);
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }
          }

          v14 = swift_dynamicCastClass();

          if (!v14)
          {
            if (v13 != v7)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x193AC03C0](v7, v4);
                v16 = MEMORY[0x193AC03C0](v12 - 4, v4);
              }

              else
              {
                if (v7 < 0)
                {
                  goto LABEL_73;
                }

                v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v17)
                {
                  goto LABEL_74;
                }

                if (v13 >= v17)
                {
                  goto LABEL_75;
                }

                v15 = *(v4 + 8 * v7 + 32);
                v16 = *(v4 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
              {
                v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                v18 = (v4 >> 62) & 1;
              }

              else
              {
                LODWORD(v18) = 0;
              }

              v5 = v4 & 0xFFFFFFFFFFFFFF8;
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v16;

              if ((v4 & 0x8000000000000000) != 0 || v18)
              {
                v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                v5 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v13 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  result = __CocoaSet.count.getter();
                  v6 = result;
                  goto LABEL_4;
                }
              }

              else if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v13 >= *(v5 + 16))
              {
                goto LABEL_69;
              }

              *(v5 + 8 * v12) = v15;

              *v21 = v4;
            }

            v19 = __OFADD__(v7++, 1);
            if (v19)
            {
              goto LABEL_68;
            }
          }

          v19 = __OFADD__(v13, 1);
          v20 = (v12 - 3);
          if (v19)
          {
            goto LABEL_67;
          }

          if (v4 >> 62)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v12;
        }

        while (v20 != result);
      }

LABEL_27:
      if (v4 >> 62)
      {
        result = __CocoaSet.count.getter();
        v11 = result;
        if (result >= v7)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v7, v11);
        }
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11 >= v7)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v7, v11);
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

void *closure #1 in View.monospaced(_:)(void *result, char a2, void (*a3)(void), unint64_t *a4)
{
  v4 = result;
  if (a2)
  {
    a3();
    MEMORY[0x193ABF170]();
    if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_69;
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v6 = *result;
  v23 = *result >> 62;
  v24 = result;
  if (v23)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v23)
      {
        result = __CocoaSet.count.getter();
        v8 = result;
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_26;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, a4);
    v9 = swift_dynamicCastClass();

    v10 = (v8 + 1);
    v11 = __OFADD__(v8, 1);
    if (v9)
    {
      break;
    }

    ++v8;
    if (v11)
    {
      goto LABEL_63;
    }
  }

  if (v11)
  {
    goto LABEL_76;
  }

  if (v23)
  {
    result = __CocoaSet.count.getter();
    if (v10 != result)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 == result)
  {
LABEL_26:
    if (v6 >> 62)
    {
      result = __CocoaSet.count.getter();
      v12 = result;
      if (result >= v8)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(v8, v12);
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v8)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(v8, v12);
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return result;
  }

LABEL_29:
  v13 = v8 + 5;
  while (2)
  {
    v14 = v13 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](v13 - 4, v6);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }
    }

    v15 = swift_dynamicCastClass();

    if (v15)
    {
      goto LABEL_53;
    }

    if (v14 == v8)
    {
      goto LABEL_52;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x193AC03C0](v8, v6);
      v17 = MEMORY[0x193AC03C0](v13 - 4, v6);
    }

    else
    {
      if (v8 < 0)
      {
        goto LABEL_73;
      }

      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v18)
      {
        goto LABEL_74;
      }

      if (v14 >= v18)
      {
        goto LABEL_75;
      }

      v16 = *(v6 + 8 * v8 + 32);
      v17 = *(v6 + 8 * v13);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v19 = (v6 >> 62) & 1;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    v20 = v6 & 0xFFFFFFFFFFFFFF8;
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v17;

    if ((v6 & 0x8000000000000000) == 0 && !v19)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

LABEL_50:
      if (v14 >= *(v20 + 16))
      {
        goto LABEL_68;
      }

      *(v20 + 8 * v13) = v16;

      *v24 = v6;
LABEL_52:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_67;
      }

LABEL_53:
      v22 = (v13 - 3);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_66;
      }

      if (v6 >> 62)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v13;
      if (v22 == result)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void *closure #1 in View.fontDesign(_:)(void *result, char a2)
{
  v2 = result;
  if (a2 == 4)
  {
    v3 = *result;
    v20 = result;
    v21 = *result >> 62;
    v4 = *result & 0xFFFFFFFFFFFFFF8;
    if (v21)
    {
      goto LABEL_70;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v21)
        {
          result = __CocoaSet.count.getter();
          v6 = result;
        }

        else
        {
          v6 = *(v4 + 16);
        }

        goto LABEL_27;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_63;
        }
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier, &type metadata for Font.DesignModifier, type metadata accessor for AnyDynamicFontModifier);
      v7 = swift_dynamicCastClass();

      v8 = __OFADD__(v6, 1);
      if (v7)
      {
        break;
      }

      ++v6;
      if (v8)
      {
        goto LABEL_64;
      }
    }

    if (!v8)
    {
      if (v21)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *(v4 + 16);
      }

      if ((v6 + 1) != result)
      {
        v11 = v6 + 5;
        do
        {
          v12 = v11 - 4;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AC03C0](v11 - 4, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }
          }

          v13 = swift_dynamicCastClass();

          if (!v13)
          {
            if (v12 != v6)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x193AC03C0](v6, v3);
                v15 = MEMORY[0x193AC03C0](v11 - 4, v3);
              }

              else
              {
                if (v6 < 0)
                {
                  goto LABEL_73;
                }

                v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v16)
                {
                  goto LABEL_74;
                }

                if (v12 >= v16)
                {
                  goto LABEL_75;
                }

                v14 = *(v3 + 8 * v6 + 32);
                v15 = *(v3 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v17 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v17) = 0;
              }

              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

              if ((v3 & 0x8000000000000000) != 0 || v17)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v4 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  result = __CocoaSet.count.getter();
                  v5 = result;
                  goto LABEL_4;
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v12 >= *(v4 + 16))
              {
                goto LABEL_69;
              }

              *(v4 + 8 * v11) = v14;

              *v20 = v3;
            }

            v18 = __OFADD__(v6++, 1);
            if (v18)
            {
              goto LABEL_68;
            }
          }

          v18 = __OFADD__(v12, 1);
          v19 = (v11 - 3);
          if (v18)
          {
            goto LABEL_67;
          }

          if (v3 >> 62)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v11;
        }

        while (v19 != result);
      }

LABEL_27:
      if (v3 >> 62)
      {
        result = __CocoaSet.count.getter();
        v10 = result;
        if (result >= v6)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v6, v10);
        }
      }

      else
      {
        v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v6)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v6, v10);
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier, &type metadata for Font.DesignModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

void key path getter for EnvironmentValues.defaultKerning : EnvironmentValues(void *a1@<X0>, double (*a2)(uint64_t)@<X3>, double (*a3)(void)@<X4>, double *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    v7 = a3(*a1);
  }

  *a4 = v7;
}

uint64_t EnvironmentValues.configuredForRoot()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = *v1;
  v14 = v1[1];
  *a1 = *v1;
  a1[1] = v14;

  static Locale.current.getter();
  v15 = *(v4 + 16);
  v15(v9, v12, v3);
  v15(v6, v9, v3);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, v6);

  v16 = *(v4 + 8);
  v16(v6, v3);
  if (v14)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v13, *a1);
  }

  v16(v9, v3);
  return (v16)(v12, v3);
}

uint64_t (*EnvironmentValues.font.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.font.modify;
}

ValueMetadata *EnvironmentValues.fallbackFontProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  if (v4)
  {
    return v4;
  }

  else
  {
    return &type metadata for DefaultFallbackFontProvider;
  }
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.FallbackFontKey@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = EnvironmentValues.fallbackFontProvider.getter();
  v7[0] = v8;
  v7[1] = v3;
  result = (*(v5 + 8))(v7, v4, v5);
  *a2 = result;
  return result;
}

uint64_t (*EnvironmentValues.defaultFont.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.defaultFont.modify;
}

uint64_t (*EnvironmentValues.defaultSymbolFont.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017DefaultSymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.defaultSymbolFont.modify;
}

uint64_t (*EnvironmentValues.symbolFont.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010SymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.symbolFont.modify;
}

uint64_t EnvironmentValues.font.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void (*EnvironmentValues.imageScale.modify(char **a1))(uint64_t a1, char a2)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 1;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.imageScale.modify;
}

void (*EnvironmentValues.isInTouchBar.modify(void *a1))(uint64_t a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010InTouchBarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.isInTouchBar.modify;
}

uint64_t static DefaultFallbackFontProvider.makeFont(in:)()
{
  if (one-time initialization token for body != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for EnvironmentValues.defaultKerning : EnvironmentValues(double *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t *, double), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, &v12, v9);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

void (*EnvironmentValues.displayScale.modify(double **a1))(double **a1)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 1.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.displayScale.modify;
}

void EnvironmentValues.displayScale.modify(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  swift_retain_n();
  v3 = *(v1 + 5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*(v1 + 3), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v1 + 4), **(v1 + 3));
  }

  free(v1);
}

uint64_t EnvironmentValues.defaultPixelLength.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.defaultPixelLength : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
      v6 = *(result + 80);
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  return result;
}

void (*EnvironmentValues.defaultPixelLength.modify(uint64_t **a1))(uint64_t **a1)
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
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.defaultPixelLength.modify;
}

void EnvironmentValues.defaultPixelLength.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultPixelLengthF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultPixelLengthK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

uint64_t key path setter for EnvironmentValues.dividerThickness : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a2, v3, 0);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.dividerThickness.setter(double a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v2, *&a1, 0);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.dividerThickness.modify(void *a1))(uint64_t **a1)
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
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = v1[1];
  EnvironmentValues.dividerThickness.getter();
  *v4 = v5;
  return EnvironmentValues.dividerThickness.modify;
}

void EnvironmentValues.dividerThickness.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = **a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[3], v3, 0);

  if (v2)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

uint64_t key path getter for EnvironmentValues.defaultRenderingMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

void (*EnvironmentValues.defaultRenderingMode.modify(char **a1))(uint64_t a1, char a2)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 1;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.defaultRenderingMode.modify;
}

uint64_t EnvironmentValues.displayCornerRadius.getter()
{
  v1 = *v0;
  if (!v0[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

  return v2;
}

uint64_t key path getter for EnvironmentValues.displayCornerRadius : EnvironmentValues@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*a1);
    v4 = result;
    v6 = v8;
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultPixelLength : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  swift_retain_n();
  a5(a2, v9, v10, &v13);

  if (a2[1])
  {
    a6(v11, *a2);
  }
}

void (*EnvironmentValues.displayCornerRadius.modify(uint64_t **a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = v1[1];
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
    v9 = v10;
  }

  v4[7] = 0;
  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.displayCornerRadius.modify;
}

void EnvironmentValues.displayCornerRadius.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019DisplayCornerRadiusK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

void (*EnvironmentValues.legibilityWeight.modify(char **a1))(uint64_t a1, char a2)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.legibilityWeight.modify;
}

void (*EnvironmentValues.locale.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v4 + 16) = v1;
  v6 = type metadata accessor for Locale();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[4] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v7 + 64));
    v5[6] = malloc(v9);
    v5[7] = malloc(v9);
    v5[8] = malloc(v9);
    v5[9] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[10] = v10;
  v12 = *v1;
  v5[11] = *v1;
  v13 = *(v1 + 8);
  v5[12] = v13;
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v11);
  }

  else
  {
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
    if (v14)
    {
      (*(v8 + 16))(v11, &v14[*(*v14 + 248)], v6);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, static LocaleKey.defaultValue);
      (*(v8 + 16))(v11, v15, v6);
    }
  }

  return EnvironmentValues.locale.modify;
}

void EnvironmentValues.locale.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(v3 + 16);
  if (a2)
  {
    v24 = *(v2 + 96);
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    v7 = *(v2 + 40);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v4(v5, *(v2 + 80), v8);
    v4(v6, v5, v8);
    v4(v7, v6, v8);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, v7);

    v10 = *(v3 + 8);
    v10(v7, v8);
    if (v24)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v2 + 88), **(v2 + 16));
    }

    v12 = *(v2 + 72);
    v11 = *(v2 + 80);
    v14 = *(v2 + 56);
    v13 = *(v2 + 64);
    v15 = *(v2 + 48);
    v25 = *(v2 + 40);
    v16 = *(v2 + 24);

    v10(v15, v16);
    v10(v14, v16);
    v10(v11, v16);
  }

  else
  {
    v17 = *(v2 + 96);
    v18 = *(v2 + 72);
    v19 = *(v2 + 64);
    v20 = *(v2 + 16);
    v21 = *(v2 + 24);
    v4(v18, *(v2 + 80), v21);
    v4(v19, v18, v21);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v20, v19);

    v22 = *(v3 + 8);
    v22(v19, v21);
    if (v17)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v2 + 88), **(v2 + 16));
    }

    v12 = *(v2 + 72);
    v11 = *(v2 + 80);
    v14 = *(v2 + 56);
    v13 = *(v2 + 64);
    v15 = *(v2 + 48);
    v25 = *(v2 + 40);
    v23 = *(v2 + 24);

    v22(v12, v23);
    v22(v11, v23);
  }

  free(v11);
  free(v12);
  free(v13);
  free(v14);
  free(v15);
  free(v25);

  free(v2);
}

void (*EnvironmentValues.calendar.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Calendar();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v5[7] = malloc(v8);
    v5[8] = malloc(v8);
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[11] = v9;
  v11 = *v1;
  v5[12] = *v1;
  v12 = *(v1 + 8);
  v5[13] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11, v10);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v11, v9);
  }

  v5[14] = 0;
  return EnvironmentValues.calendar.modify;
}

uint64_t key path setter for EnvironmentValues.locale : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(v9 + 16);
  (v16)(&v19 - v14, a1, v8, v13);
  v16(v11, v15, v8);
  a6(v11);
  v17 = *(v9 + 8);
  v17(v11, v8);
  return (v17)(v15, v8);
}

void (*EnvironmentValues.timeZone.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for TimeZone();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v5[7] = malloc(v8);
    v5[8] = malloc(v8);
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[11] = v9;
  v11 = *v1;
  v5[12] = *v1;
  v12 = *(v1 + 8);
  v5[13] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11, v10);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v11, v9);
  }

  v5[14] = 0;
  return EnvironmentValues.timeZone.modify;
}

void EnvironmentValues.calendar.modify(uint64_t a1, char a2, void (*a3)(uint64_t, void *, void *), void (*a4)(void, void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(v6 + 16);
  v29 = *(*a1 + 104);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v10 = v5[7];
    v9 = v5[8];
    v11 = v5[6];
    v12 = v5[4];
    v26 = v5[3];
    v7(v9, v8, v12);
    v7(v10, v9, v12);
    v7(v11, v10, v12);
    swift_retain_n();
    v13 = v11;
    a3(v26, v11, v5 + 1);

    v14 = *(v6 + 8);
    v14(v13, v12);
    if (v29)
    {
      a4(v5[12], *v5[3]);
    }

    v16 = v5[10];
    v15 = v5[11];
    v17 = v5[8];
    v30 = v5[9];
    v19 = v5[6];
    v18 = v5[7];
    v20 = v5[4];

    v14(v18, v20);
    v21 = v17;
  }

  else
  {
    v23 = v5[9];
    v22 = v5[10];
    v24 = v5[3];
    v25 = v5[4];
    v7(v22, v8, v25);
    v7(v23, v22, v25);
    swift_retain_n();
    a3(v24, v23, v5 + 2);

    v14 = *(v6 + 8);
    v14(v23, v25);
    if (v29)
    {
      a4(v5[12], *v5[3]);
    }

    v16 = v5[10];
    v15 = v5[11];
    v17 = v5[8];
    v30 = v5[9];
    v19 = v5[6];
    v18 = v5[7];
    v20 = v5[4];

    v21 = v16;
  }

  v14(v21, v20);
  v14(v15, v20);
  free(v15);
  free(v16);
  free(v30);
  free(v17);
  free(v18);
  free(v19);

  free(v5);
}

void (*EnvironmentValues.displayGamut.modify(void *a1))(uint64_t a1, char a2)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.displayGamut.modify;
}

void EnvironmentValues.defaultRenderingMode.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

void (*EnvironmentValues.horizontalSizeClass.modify(char **a1))(uint64_t a1, char a2)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.horizontalSizeClass.modify;
}

uint64_t (*EnvironmentValues.realHorizontalSizeClass.modify(char **a1))()
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.realHorizontalSizeClass.modify;
}

void (*EnvironmentValues.verticalSizeClass.modify(char **a1))(uint64_t a1, char a2)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.verticalSizeClass.modify;
}

uint64_t (*EnvironmentValues.realVerticalSizeClass.modify(char **a1))()
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.realVerticalSizeClass.modify;
}

void EnvironmentValues.imageScale.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

uint64_t key path setter for EnvironmentValues.allowsVibrantBlending : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.allowsVibrantBlending.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(v2, a1 & 1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.allowsVibrantBlending.modify(void *a1))(uint64_t *a1)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v5);
    if (!v8)
    {
      v9 = 1;
      goto LABEL_9;
    }

    v7 = *(v8 + 72);
  }

  v9 = (v7 == 2) | v7;
LABEL_9:
  *(v4 + 40) = v9 & 1;
  return EnvironmentValues.allowsVibrantBlending.modify;
}

void EnvironmentValues.allowsVibrantBlending.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void (*EnvironmentValues.defaultKerning.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  *(v3 + 4) = *v1;
  v6 = v1[1];
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultKerning.modify;
}

void (*EnvironmentValues.defaultTracking.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  *(v3 + 4) = *v1;
  v6 = v1[1];
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultTracking.modify;
}

void (*EnvironmentValues.defaultBaselineOffset.modify(double **a1))(double **a1, char a2)
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
  *(v3 + 3) = v1;
  v5 = *v1;
  *(v3 + 4) = *v1;
  v6 = v1[1];
  *(v3 + 5) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultBaselineOffset.modify;
}

void EnvironmentValues.defaultKerning.modify(double **a1, char a2, void (*a3)(void, void *, double), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = **a1;
  swift_retain_n();
  v9 = *(v7 + 5);
  if (a2)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7 + 2;
  }

  a3(*(v7 + 3), v10, v8);

  if (v9)
  {
    a4(*(v7 + 4), **(v7 + 3));
  }

  free(v7);
}

uint64_t one-time initialization function for horizontalSizeClass()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.horizontalSizeClass = result;
  return result;
}

uint64_t one-time initialization function for verticalSizeClass()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.verticalSizeClass = result;
  return result;
}

uint64_t one-time initialization function for isContainedInPlatter()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isContainedInPlatter = result;
  return result;
}

uint64_t _GraphInputs.verticalSizeClass.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  swift_beginAccess();
  v3 = specialized CachedEnvironment.attribute<A>(id:_:)(v2);
  swift_endAccess();
  return v3;
}

uint64_t specialized implicit closure #1 in _GraphInputs.horizontalSizeClass.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10[0] = v8;
  v10[1] = v7;

  key path getter for EnvironmentValues.legibilityWeight : EnvironmentValues(v10, a2, a3, a4);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance LocaleKey@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

SwiftUI::CodableDisplayGamut::CodingKind_optional __swiftcall CodableDisplayGamut.CodingKind.init(rawValue:)(SwiftUI::CodableDisplayGamut::CodingKind_optional rawValue)
{
  if (rawValue.value == SwiftUI_CodableDisplayGamut_CodingKind_displayP3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SwiftUI_CodableDisplayGamut_CodingKind_sRGB)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CodableDisplayGamut.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CodableDisplayGamut.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double EnvironmentValues.readableWidth.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesVAAE013ReadableWidthJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
  }

  else
  {
    v4[0] = *v0;
    v4[1] = 0;

    v2 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(v4);
  }

  return v2;
}

unint64_t one-time initialization function for cache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15DynamicTypeSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static EnvironmentValues.ReadableWidthKey.cache = 0;
  qword_1EAB0BE60 = result;
  return result;
}

uint64_t _s7SwiftUI17EnvironmentValuesVAAE16ReadableWidthKey33_1B17C64D9E901A0054B49B69A4A2439DLLV5value2in12CoreGraphics7CGFloatVAC_tFZAKSgSDyAA15DynamicTypeSizeOAKGzYuYTXEfU_@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(a2, &v13);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a2);
    if (result)
    {
      v8 = *(result + 72);
    }

    else
    {
      v8 = 3;
    }

    v13 = v8;
  }

  v9 = *a1;
  if (*(*a1 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v10 & 1) != 0))
  {
    v11 = 0;
    v12 = *(*(v9 + 56) + 8 * result);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  return result;
}

uint64_t EnvironmentValues.isInTouchBar.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

uint64_t key path getter for EnvironmentValues.isInTouchBar : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    v7 = result;
  }

  *a4 = v7 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.isInTouchBar : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

void (*EnvironmentValues.isLowPowerModeEnabled.modify(void *a1))(uint64_t a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 & 1;
  return EnvironmentValues.isLowPowerModeEnabled.modify;
}

void EnvironmentValues.isInTouchBar.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

unint64_t lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind()
{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }

  return result;
}

double specialized static EnvironmentValues.ReadableWidthKey.value(in:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static EnvironmentValues.ReadableWidthKey.cache);
  _s7SwiftUI17EnvironmentValuesVAAE16ReadableWidthKey33_1B17C64D9E901A0054B49B69A4A2439DLLV5value2in12CoreGraphics7CGFloatVAC_tFZAKSgSDyAA15DynamicTypeSizeOAKGzYuYTXEfU_(&qword_1EAB0BE60, v2, v1, v35);
  os_unfair_lock_unlock(&static EnvironmentValues.ReadableWidthKey.cache);
  if ((BYTE8(v35[0]) & 1) == 0)
  {
    return *v35;
  }

  if (one-time initialization token for body != -1)
  {
    swift_once();
  }

  v3 = static Font.body;
  if (v1)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v2, &v32);
  }

  else
  {
    v35[0] = v2;

    static EnvironmentValues.FontContextKey.value(in:)(v35, &v32);
  }

  v26[0] = v32;
  v26[1] = v33;
  v26[2] = v34;
  outlined init with copy of Font.Context(v26, v35);

  v27[0] = v32;
  v27[1] = v33;
  v5 = MEMORY[0x1E69E7CC0];
  *&v28 = v34;
  *(&v28 + 1) = MEMORY[0x1E69E7CC0];
  v35[1] = v32;
  v35[2] = v33;
  v35[3] = v28;
  *&v35[0] = v3;
  *(&v35[0] + 1) = MEMORY[0x1E69E7CC0];

  outlined init with copy of Font.Context(v27, v29);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v35);
  v7 = v6;
  outlined destroy of Font.FontCache.Key(v35);
  v29[0] = v32;
  v29[1] = v33;
  v30 = v34;
  v31 = v5;
  outlined destroy of Font.Context(v29);
  outlined destroy of Font.Context(v26);
  v8._countAndFlagsBits = 77;
  v8._object = 0xE100000000000000;
  v9 = String.init(repeating:count:)(v8, 62);
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFontRef(0);
  *(inited + 64) = v12;
  *(inited + 40) = v7;
  v13 = v11;
  v14 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = MEMORY[0x193ABEC20](v9._countAndFlagsBits, v9._object);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithString:v16 attributes:isa];

  v19 = CTLineCreateWithAttributedString(v18);
  v4 = ceil(CTLineGetTypographicBounds(v19, 0, 0, 0) * 0.125) * 8.0;
  os_unfair_lock_lock(&static EnvironmentValues.ReadableWidthKey.cache);
  if (v1)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v2, &v25);

    v20 = v25;
  }

  else
  {
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v2);
    if (v21)
    {
      v20 = *(v21 + 72);
    }

    else
    {
      v20 = 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = qword_1EAB0BE60;
  qword_1EAB0BE60 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, isUniquelyReferenced_nonNull_native, v4);
  qword_1EAB0BE60 = v24;

  os_unfair_lock_unlock(&static EnvironmentValues.ReadableWidthKey.cache);

  return v4;
}

unint64_t lazy protocol witness table accessor for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode()
{
  result = lazy protocol witness table cache variable for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode;
  if (!lazy protocol witness table cache variable for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.Scale and conformance Image.Scale()
{
  result = lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale;
  if (!lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass()
{
  result = lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass;
  if (!lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayGamut and conformance DisplayGamut()
{
  result = lazy protocol witness table cache variable for type DisplayGamut and conformance DisplayGamut;
  if (!lazy protocol witness table cache variable for type DisplayGamut and conformance DisplayGamut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayGamut and conformance DisplayGamut);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlActiveState and conformance ControlActiveState()
{
  result = lazy protocol witness table cache variable for type ControlActiveState and conformance ControlActiveState;
  if (!lazy protocol witness table cache variable for type ControlActiveState and conformance ControlActiveState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlActiveState and conformance ControlActiveState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ControlActiveState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ControlActiveState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ControlActiveState] and conformance [A])
  {
    type metadata accessor for [ControlActiveState](255, &lazy cache variable for type metadata for [ControlActiveState], &type metadata for ControlActiveState, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ControlActiveState] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LegibilityWeight and conformance LegibilityWeight()
{
  result = lazy protocol witness table cache variable for type LegibilityWeight and conformance LegibilityWeight;
  if (!lazy protocol witness table cache variable for type LegibilityWeight and conformance LegibilityWeight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegibilityWeight and conformance LegibilityWeight);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableDisplayGamut(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut();
  result = lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [ControlActiveState](255, a2, a3, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void type metadata accessor for [ControlActiveState](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  type metadata accessor for (NSAttributedStringKey, Any)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AnyStaticFontModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t static PlatformItemsDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformItemsDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

uint64_t PlatformItemsDefinition.MakePlatformImage.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

__n128 PlatformItemsDefinition.MakePlatformImage.image.setter(uint64_t a1)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v15[0] = v1[10];
  *(v15 + 11) = *(v1 + 171);
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined destroy of Image.Resolved(v14);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  v1[10] = *(a1 + 160);
  *(v1 + 171) = *(a1 + 171);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v13;
  return result;
}

uint64_t PlatformItemsDefinition.MakePlatformImage.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[23];
  v3 = v1[25];
  v35 = v1[24];
  v36 = v3;
  v4 = v1[25];
  v37 = v1[26];
  v5 = v1[19];
  v6 = v1[21];
  v31 = v1[20];
  v7 = v31;
  v32 = v6;
  v8 = v1[21];
  v9 = v1[23];
  v33 = v1[22];
  v10 = v33;
  v34 = v9;
  v11 = v1[15];
  v12 = v1[17];
  v27 = v1[16];
  v13 = v27;
  v28 = v12;
  v14 = v1[17];
  v15 = v1[19];
  v29 = v1[18];
  v16 = v29;
  v30 = v15;
  v17 = v1[13];
  v24[0] = v1[12];
  v24[1] = v17;
  v18 = v1[15];
  v20 = v1[12];
  v19 = v1[13];
  v25 = v1[14];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[26];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return outlined init with copy of PlatformItem.PrimaryContent?(v24, &v23);
}

__n128 PlatformItemsDefinition.MakePlatformImage.content.setter(uint64_t a1)
{
  v3 = v1[25];
  v17[12] = v1[24];
  v17[13] = v3;
  v17[14] = v1[26];
  v4 = v1[21];
  v17[8] = v1[20];
  v17[9] = v4;
  v5 = v1[23];
  v17[10] = v1[22];
  v17[11] = v5;
  v6 = v1[17];
  v17[4] = v1[16];
  v17[5] = v6;
  v7 = v1[19];
  v17[6] = v1[18];
  v17[7] = v7;
  v8 = v1[13];
  v17[0] = v1[12];
  v17[1] = v8;
  v9 = v1[15];
  v17[2] = v1[14];
  v17[3] = v9;
  outlined destroy of PlatformItem.PrimaryContent?(v17);
  v10 = *(a1 + 208);
  v1[24] = *(a1 + 192);
  v1[25] = v10;
  v1[26] = *(a1 + 224);
  v11 = *(a1 + 144);
  v1[20] = *(a1 + 128);
  v1[21] = v11;
  v12 = *(a1 + 176);
  v1[22] = *(a1 + 160);
  v1[23] = v12;
  v13 = *(a1 + 80);
  v1[16] = *(a1 + 64);
  v1[17] = v13;
  v14 = *(a1 + 112);
  v1[18] = *(a1 + 96);
  v1[19] = v14;
  v15 = *(a1 + 16);
  v1[12] = *a1;
  v1[13] = v15;
  result = *(a1 + 48);
  v1[14] = *(a1 + 32);
  v1[15] = result;
  return result;
}

uint64_t static PlatformItemsDefinition.uiKit.setter(void *a1)
{
  result = swift_beginAccess();
  static PlatformItemsDefinition.uiKit = a1;
  return result;
}

uint64_t static PlatformItemsDefinition.appKit.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PlatformItemsDefinition.appKit = a1;
  return result;
}

uint64_t static PlatformItemsDefinition.setDefinition(_:system:)(uint64_t result, _BYTE *a2)
{
  v2 = result;
  if (*a2 == 1)
  {
    v3 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    v3 = &static PlatformItemsDefinition.uiKit;
  }

  result = swift_beginAccess();
  if (!*v3)
  {
    *v3 = v2;
  }

  return result;
}

uint64_t outlined init with copy of PlatformItem.PrimaryContent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItem.PrimaryContent?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for PlatformItemsDefinition.CombineAccessibilityProperties(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  v3 = a1[47];
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 44));
  }

LABEL_11:
  if (a1[66] != 1)
  {
  }

  v4 = a1[83];
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 80));
  }

LABEL_17:
  if (a1[102] != 1)
  {
  }
}

uint64_t initializeWithCopy for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
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

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  v16 = *(a2 + 376);

  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a2 + 368);
      *(a1 + 352) = *(a2 + 352);
      *(a1 + 368) = v17;
      *(a1 + 384) = *(a2 + 384);
      goto LABEL_16;
    }

    v19 = *(a2 + 384);
    *(a1 + 376) = v16;
    *(a1 + 384) = v19;
    (**(v16 - 8))(a1 + 352, a2 + 352, v16);
  }

  else
  {
    v18 = *(a2 + 368);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v18;
    *(a1 + 384) = *(a2 + 384);
  }

  *(a1 + 392) = *(a2 + 392);

LABEL_16:
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  v20 = *(a2 + 528);
  if (v20 == 1)
  {
    v21 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v21;
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    v22 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v22;
    v23 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v23;
    v24 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v24;
  }

  else
  {
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 441) = *(a2 + 441);
    *(a1 + 443) = *(a2 + 443);
    *(a1 + 444) = *(a2 + 444);
    v25 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v25;
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    v26 = *(a2 + 512);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = v26;
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = v20;
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
  }

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  v27 = (a1 + 640);
  v28 = (a2 + 640);
  v29 = *(a2 + 664);

  if (v29)
  {
    if (v29 == 1)
    {
      v30 = *(a2 + 656);
      *v27 = *v28;
      *(a1 + 656) = v30;
      *(a1 + 672) = *(a2 + 672);
      goto LABEL_25;
    }

    *(a1 + 664) = v29;
    *(a1 + 672) = *(a2 + 672);
    (**(v29 - 8))(a1 + 640, a2 + 640, v29);
  }

  else
  {
    v31 = *(a2 + 656);
    *v27 = *v28;
    *(a1 + 656) = v31;
    *(a1 + 672) = *(a2 + 672);
  }

  *(a1 + 680) = *(a2 + 680);

LABEL_25:
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  v32 = (a1 + 704);
  v33 = (a2 + 704);
  v34 = *(a2 + 816);
  if (v34 == 1)
  {
    v35 = *(a2 + 816);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 816) = v35;
    *(a1 + 832) = *(a2 + 832);
    *(a1 + 848) = *(a2 + 848);
    v36 = *(a2 + 752);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 752) = v36;
    v37 = *(a2 + 784);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = v37;
    v38 = *(a2 + 720);
    *v32 = *v33;
    *(a1 + 720) = v38;
  }

  else
  {
    *v32 = *v33;
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 729) = *(a2 + 729);
    *(a1 + 731) = *(a2 + 731);
    *(a1 + 732) = *(a2 + 732);
    v39 = *(a2 + 752);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 752) = v39;
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 816) = v34;
    *(a1 + 824) = *(a2 + 824);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 848) = *(a2 + 848);
  }

  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t assignWithCopy for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
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
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v40 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v40;
  v41 = *(a1 + 376);
  v42 = *(a2 + 376);
  if (v41 == 1)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        v43 = *(a2 + 352);
        v44 = *(a2 + 384);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 384) = v44;
        *(a1 + 352) = v43;
        goto LABEL_42;
      }

      *(a1 + 376) = v42;
      *(a1 + 384) = *(a2 + 384);
      (**(v42 - 8))(a1 + 352, a2 + 352);
    }

    else
    {
      v48 = *(a2 + 352);
      v49 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 352) = v48;
      *(a1 + 368) = v49;
    }

    *(a1 + 392) = *(a2 + 392);
  }

  else if (v42 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 352);
    v46 = *(a2 + 368);
    v45 = *(a2 + 384);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v46;
    *(a1 + 384) = v45;
  }

  else
  {
    if (v41)
    {
      v47 = (a1 + 352);
      if (v42)
      {
        __swift_assign_boxed_opaque_existential_1(v47, (a2 + 352));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v47);
        v50 = *(a2 + 384);
        v51 = *(a2 + 368);
        *(a1 + 352) = *(a2 + 352);
        *(a1 + 368) = v51;
        *(a1 + 384) = v50;
      }
    }

    else if (v42)
    {
      *(a1 + 376) = v42;
      *(a1 + 384) = *(a2 + 384);
      (**(v42 - 8))(a1 + 352, a2 + 352);
    }

    else
    {
      v52 = *(a2 + 352);
      v53 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 352) = v52;
      *(a1 + 368) = v53;
    }

    *(a1 + 392) = *(a2 + 392);
  }

LABEL_42:
  v54 = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 400) = v54;
  v55 = *(a2 + 528);
  if (*(a1 + 528) == 1)
  {
    if (v55 == 1)
    {
      v56 = *(a2 + 432);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 432) = v56;
      v57 = *(a2 + 448);
      v58 = *(a2 + 464);
      v59 = *(a2 + 496);
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 496) = v59;
      *(a1 + 448) = v57;
      *(a1 + 464) = v58;
      v60 = *(a2 + 512);
      v61 = *(a2 + 528);
      v62 = *(a2 + 544);
      *(a1 + 560) = *(a2 + 560);
      *(a1 + 528) = v61;
      *(a1 + 544) = v62;
      *(a1 + 512) = v60;
    }

    else
    {
      v70 = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 416) = v70;
      v71 = *(a2 + 432);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 432) = v71;
      *(a1 + 441) = *(a2 + 441);
      *(a1 + 442) = *(a2 + 442);
      *(a1 + 443) = *(a2 + 443);
      *(a1 + 444) = *(a2 + 444);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 464) = *(a2 + 464);
      *(a1 + 472) = *(a2 + 472);
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 497) = *(a2 + 497);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 520) = *(a2 + 520);
      *(a1 + 528) = *(a2 + 528);
      v72 = *(a2 + 536);
      *(a1 + 552) = *(a2 + 552);
      *(a1 + 536) = v72;
      *(a1 + 560) = *(a2 + 560);
    }
  }

  else if (v55 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 416);
    v63 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v63;
    v64 = *(a2 + 496);
    v66 = *(a2 + 448);
    v65 = *(a2 + 464);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v64;
    *(a1 + 448) = v66;
    *(a1 + 464) = v65;
    v68 = *(a2 + 528);
    v67 = *(a2 + 544);
    v69 = *(a2 + 512);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 528) = v68;
    *(a1 + 544) = v67;
    *(a1 + 512) = v69;
  }

  else
  {
    v73 = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 416) = v73;
    v74 = *(a2 + 432);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 432) = v74;
    *(a1 + 441) = *(a2 + 441);
    *(a1 + 442) = *(a2 + 442);
    *(a1 + 443) = *(a2 + 443);
    *(a1 + 444) = *(a2 + 444);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 497) = *(a2 + 497);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);

    v75 = *(a2 + 536);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 536) = v75;
    *(a1 + 560) = *(a2 + 560);
  }

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);

  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);
  v76 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v76;
  v77 = (a1 + 640);
  v78 = (a2 + 640);
  v79 = *(a1 + 664);
  v80 = *(a2 + 664);
  if (v79 == 1)
  {
    if (v80)
    {
      if (v80 == 1)
      {
        v81 = *v78;
        v82 = *(a2 + 672);
        *(a1 + 656) = *(a2 + 656);
        *(a1 + 672) = v82;
        *v77 = v81;
        goto LABEL_66;
      }

      *(a1 + 664) = v80;
      *(a1 + 672) = *(a2 + 672);
      (**(v80 - 8))(a1 + 640, a2 + 640);
    }

    else
    {
      v85 = *v78;
      v86 = *(a2 + 656);
      *(a1 + 672) = *(a2 + 672);
      *v77 = v85;
      *(a1 + 656) = v86;
    }

    *(a1 + 680) = *(a2 + 680);
  }

  else if (v80 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 640);
    v84 = *(a2 + 656);
    v83 = *(a2 + 672);
    *v77 = *v78;
    *(a1 + 656) = v84;
    *(a1 + 672) = v83;
  }

  else
  {
    if (v79)
    {
      if (v80)
      {
        __swift_assign_boxed_opaque_existential_1((a1 + 640), (a2 + 640));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(a1 + 640);
        v87 = *(a2 + 672);
        v88 = *(a2 + 656);
        *v77 = *v78;
        *(a1 + 656) = v88;
        *(a1 + 672) = v87;
      }
    }

    else if (v80)
    {
      *(a1 + 664) = v80;
      *(a1 + 672) = *(a2 + 672);
      (**(v80 - 8))(a1 + 640, a2 + 640);
    }

    else
    {
      v89 = *v78;
      v90 = *(a2 + 656);
      *(a1 + 672) = *(a2 + 672);
      *v77 = v89;
      *(a1 + 656) = v90;
    }

    *(a1 + 680) = *(a2 + 680);
  }

LABEL_66:
  v91 = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 688) = v91;
  v92 = (a1 + 704);
  v93 = (a2 + 704);
  v94 = *(a2 + 816);
  if (*(a1 + 816) == 1)
  {
    if (v94 == 1)
    {
      v95 = *(a2 + 720);
      *v92 = *v93;
      *(a1 + 720) = v95;
      v96 = *(a2 + 736);
      v97 = *(a2 + 752);
      v98 = *(a2 + 784);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 784) = v98;
      *(a1 + 736) = v96;
      *(a1 + 752) = v97;
      v99 = *(a2 + 800);
      v100 = *(a2 + 816);
      v101 = *(a2 + 832);
      *(a1 + 848) = *(a2 + 848);
      *(a1 + 816) = v100;
      *(a1 + 832) = v101;
      *(a1 + 800) = v99;
    }

    else
    {
      v109 = *v93;
      *(a1 + 712) = *(a2 + 712);
      *v92 = v109;
      v110 = *(a2 + 720);
      *(a1 + 728) = *(a2 + 728);
      *(a1 + 720) = v110;
      *(a1 + 729) = *(a2 + 729);
      *(a1 + 730) = *(a2 + 730);
      *(a1 + 731) = *(a2 + 731);
      *(a1 + 732) = *(a2 + 732);
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(a2 + 744);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 760) = *(a2 + 760);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = *(a2 + 776);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 792) = *(a2 + 792);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 816) = *(a2 + 816);
      v111 = *(a2 + 824);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 824) = v111;
      *(a1 + 848) = *(a2 + 848);
    }
  }

  else if (v94 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 704);
    v102 = *(a2 + 720);
    *v92 = *v93;
    *(a1 + 720) = v102;
    v103 = *(a2 + 784);
    v105 = *(a2 + 736);
    v104 = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = v103;
    *(a1 + 736) = v105;
    *(a1 + 752) = v104;
    v107 = *(a2 + 816);
    v106 = *(a2 + 832);
    v108 = *(a2 + 800);
    *(a1 + 848) = *(a2 + 848);
    *(a1 + 816) = v107;
    *(a1 + 832) = v106;
    *(a1 + 800) = v108;
  }

  else
  {
    v112 = *v93;
    *(a1 + 712) = *(a2 + 712);
    *v92 = v112;
    v113 = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 720) = v113;
    *(a1 + 729) = *(a2 + 729);
    *(a1 + 730) = *(a2 + 730);
    *(a1 + 731) = *(a2 + 731);
    *(a1 + 732) = *(a2 + 732);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 816) = *(a2 + 816);

    v114 = *(a2 + 824);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 824) = v114;
    *(a1 + 848) = *(a2 + 848);
  }

  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t assignWithTake for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
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
  if (*(a1 + 240) == 1)
  {
LABEL_13:
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
    goto LABEL_15;
  }

  v11 = *(a2 + 240);
  if (v11 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    goto LABEL_13;
  }

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
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  v17 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v17;

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  v18 = *(a1 + 376);
  if (v18 == 1)
  {
LABEL_18:
    v20 = *(a2 + 368);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v20;
    *(a1 + 384) = *(a2 + 384);
    goto LABEL_24;
  }

  v19 = *(a2 + 376);
  if (v19 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 352);
    goto LABEL_18;
  }

  if (v18)
  {
    v21 = a1 + 352;
    if (v19)
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v21);
    }
  }

  v22 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v22;
  v23 = *(a2 + 392);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = v23;

LABEL_24:
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  if (*(a1 + 528) == 1)
  {
LABEL_27:
    v25 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v25;
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    v26 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v26;
    v27 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v27;
    v28 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v28;
    goto LABEL_29;
  }

  v24 = *(a2 + 528);
  if (v24 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 416);
    goto LABEL_27;
  }

  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 441) = *(a2 + 441);
  *(a1 + 443) = *(a2 + 443);
  *(a1 + 444) = *(a2 + 444);
  v29 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v29;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 497) = *(a2 + 497);
  *&v29 = *(a2 + 512);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = v29;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = v24;

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
LABEL_29:
  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);

  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  v30 = (a1 + 640);
  v31 = (a2 + 640);
  v32 = *(a1 + 664);
  if (v32 == 1)
  {
LABEL_32:
    v34 = *(a2 + 656);
    *v30 = *v31;
    *(a1 + 656) = v34;
    *(a1 + 672) = *(a2 + 672);
    goto LABEL_38;
  }

  v33 = *(a2 + 664);
  if (v33 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 640);
    goto LABEL_32;
  }

  if (v32)
  {
    v35 = a1 + 640;
    if (v33)
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v35);
    }
  }

  v36 = *(a2 + 656);
  *v30 = *v31;
  *(a1 + 656) = v36;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 680) = *(a2 + 680);

LABEL_38:
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  v37 = (a1 + 704);
  v38 = (a2 + 704);
  if (*(a1 + 816) != 1)
  {
    v39 = *(a2 + 816);
    if (v39 != 1)
    {
      *v37 = *v38;
      *(a1 + 712) = *(a2 + 712);
      *(a1 + 720) = *(a2 + 720);
      *(a1 + 728) = *(a2 + 728);
      *(a1 + 729) = *(a2 + 729);
      *(a1 + 731) = *(a2 + 731);
      *(a1 + 732) = *(a2 + 732);
      v44 = *(a2 + 752);
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 752) = v44;
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 792) = *(a2 + 792);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 816) = v39;

      *(a1 + 824) = *(a2 + 824);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 848) = *(a2 + 848);
      goto LABEL_43;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 704);
  }

  v40 = *(a2 + 816);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = v40;
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  v41 = *(a2 + 752);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = v41;
  v42 = *(a2 + 784);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 784) = v42;
  v43 = *(a2 + 720);
  *v37 = *v38;
  *(a1 + 720) = v43;
LABEL_43:
  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 864))
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

uint64_t storeEnumTagSinglePayload for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 856) = 0;
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
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
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
      *(result + 864) = 1;
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

    *(result + 864) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3);
  }

  swift_unknownObjectRelease();

  v4 = *(a1 + 192);
  if (v4 != 1)
  {

    v5 = *(a1 + 344);
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v6 = *(a1 + 224);
      if (v6 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 216), v6);
      }

      if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 328), *(a1 + 336), v5);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t initializeWithCopy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[24];
  v12 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v12;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v13 = a2[22];
  *(a1 + 176) = v13;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  swift_unknownObjectRetain();

  v14 = v13;
  if (v11 == 1)
  {
    v15 = *(a2 + 25);
    *(a1 + 384) = *(a2 + 24);
    *(a1 + 400) = v15;
    *(a1 + 416) = *(a2 + 26);
    v16 = *(a2 + 21);
    *(a1 + 320) = *(a2 + 20);
    *(a1 + 336) = v16;
    v17 = *(a2 + 23);
    *(a1 + 352) = *(a2 + 22);
    *(a1 + 368) = v17;
    v18 = *(a2 + 17);
    *(a1 + 256) = *(a2 + 16);
    *(a1 + 272) = v18;
    v19 = *(a2 + 19);
    *(a1 + 288) = *(a2 + 18);
    *(a1 + 304) = v19;
    v20 = *(a2 + 13);
    *(a1 + 192) = *(a2 + 12);
    *(a1 + 208) = v20;
    v21 = *(a2 + 15);
    *(a1 + 224) = *(a2 + 14);
    *(a1 + 240) = v21;
  }

  else
  {
    v22 = a2[25];
    v23 = a2[26];
    *(a1 + 192) = v11;
    *(a1 + 200) = v22;
    *(a1 + 208) = v23;
    v24 = (a1 + 216);
    v25 = a2 + 27;
    v26 = a2[43];
    v27 = v11;
    v28 = v22;
    v29 = v23;
    if (v26 >> 1 == 4294967294)
    {
      v30 = *(a2 + 45);
      *(a1 + 344) = *(a2 + 43);
      *(a1 + 360) = v30;
      *(a1 + 376) = *(a2 + 47);
      *(a1 + 387) = *(a2 + 387);
      v31 = *(a2 + 37);
      *(a1 + 280) = *(a2 + 35);
      *(a1 + 296) = v31;
      v32 = *(a2 + 41);
      *(a1 + 312) = *(a2 + 39);
      *(a1 + 328) = v32;
      v33 = *(a2 + 29);
      *v24 = *v25;
      *(a1 + 232) = v33;
      v34 = *(a2 + 33);
      *(a1 + 248) = *(a2 + 31);
      *(a1 + 264) = v34;
    }

    else
    {
      v35 = *(a2 + 224);
      if (v35 == 255)
      {
        *v24 = *v25;
        *(a1 + 224) = *(a2 + 224);
      }

      else
      {
        v36 = a2[27];
        outlined copy of GraphicsImage.Contents(v36, *(a2 + 224));
        *(a1 + 216) = v36;
        *(a1 + 224) = v35;
        v26 = a2[43];
      }

      *(a1 + 232) = a2[29];
      *(a1 + 240) = *(a2 + 15);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 260) = *(a2 + 260);
      *(a1 + 273) = *(a2 + 273);
      v37 = *(a2 + 19);
      *(a1 + 288) = *(a2 + 18);
      *(a1 + 304) = v37;
      *(a1 + 320) = *(a2 + 160);
      *(a1 + 322) = *(a2 + 322);
      *(a1 + 323) = *(a2 + 323);
      if (v26 >> 1 == 0xFFFFFFFF)
      {
        v38 = *(a2 + 43);
        *(a1 + 328) = *(a2 + 41);
        *(a1 + 344) = v38;
      }

      else
      {
        v39 = a2[41];
        v40 = a2[42];
        v41 = a2[44];
        outlined copy of AccessibilityImageLabel(v39, v40, v26);
        *(a1 + 328) = v39;
        *(a1 + 336) = v40;
        *(a1 + 344) = v26;
        *(a1 + 352) = v41;
      }

      v42 = a2[46];
      *(a1 + 360) = a2[45];
      *(a1 + 368) = v42;
      *(a1 + 376) = *(a2 + 188);
      *(a1 + 380) = *(a2 + 95);
      *(a1 + 384) = *(a2 + 384);
      v43 = a2[49];
      *(a1 + 392) = v43;
      *(a1 + 400) = *(a2 + 200);
      *(a1 + 402) = *(a2 + 402);
      swift_unknownObjectRetain();

      v44 = v43;
    }

    *(a1 + 408) = a2[51];
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = a2[53];
  }

  return a1;
}

uint64_t assignWithCopy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128));
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128));
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v27 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v27;
  v28 = *(a1 + 176);
  v29 = *(a2 + 176);
  *(a1 + 176) = v29;
  v30 = v29;

  v31 = (a1 + 192);
  v32 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  v34 = (a2 + 192);
  v33 = *(a2 + 192);
  if (v32 == 1)
  {
    if (v33 == 1)
    {
      v35 = *v34;
      v36 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v36;
      *v31 = v35;
      v37 = *(a2 + 240);
      v38 = *(a2 + 256);
      v39 = *(a2 + 288);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 288) = v39;
      *(a1 + 240) = v37;
      *(a1 + 256) = v38;
      v40 = *(a2 + 304);
      v41 = *(a2 + 320);
      v42 = *(a2 + 352);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 352) = v42;
      *(a1 + 304) = v40;
      *(a1 + 320) = v41;
      v43 = *(a2 + 368);
      v44 = *(a2 + 384);
      v45 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v45;
      *(a1 + 368) = v43;
      *(a1 + 384) = v44;
    }

    else
    {
      *(a1 + 192) = v33;
      v57 = *(a2 + 200);
      *(a1 + 200) = v57;
      v58 = *(a2 + 208);
      *(a1 + 208) = v58;
      v59 = (a1 + 216);
      v60 = (a2 + 216);
      v61 = *(a2 + 344);
      v62 = v33;
      v63 = v57;
      v64 = v58;
      if (v61 >> 1 == 4294967294)
      {
        v65 = *v60;
        v66 = *(a2 + 232);
        v67 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v67;
        *v59 = v65;
        *(a1 + 232) = v66;
        v68 = *(a2 + 280);
        v69 = *(a2 + 296);
        v70 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 328) = v70;
        *(a1 + 280) = v68;
        *(a1 + 296) = v69;
        v71 = *(a2 + 344);
        v72 = *(a2 + 360);
        v73 = *(a2 + 376);
        *(a1 + 387) = *(a2 + 387);
        *(a1 + 360) = v72;
        *(a1 + 376) = v73;
        *(a1 + 344) = v71;
      }

      else
      {
        v93 = *(a2 + 224);
        if (v93 == 255)
        {
          v110 = *v60;
          *(a1 + 224) = *(a2 + 224);
          *v59 = v110;
        }

        else
        {
          v94 = *v60;
          outlined copy of GraphicsImage.Contents(*v60, *(a2 + 224));
          *(a1 + 216) = v94;
          *(a1 + 224) = v93;
        }

        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = *(a2 + 256);
        v111 = *(a2 + 260);
        *(a1 + 273) = *(a2 + 273);
        *(a1 + 260) = v111;
        v112 = *(a2 + 288);
        v113 = *(a2 + 304);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 288) = v112;
        *(a1 + 304) = v113;
        *(a1 + 321) = *(a2 + 321);
        *(a1 + 322) = *(a2 + 322);
        *(a1 + 323) = *(a2 + 323);
        v114 = *(a2 + 344);
        if (v114 >> 1 == 0xFFFFFFFF)
        {
          v115 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v115;
        }

        else
        {
          v116 = *(a2 + 328);
          v117 = *(a2 + 336);
          v118 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 344));
          *(a1 + 328) = v116;
          *(a1 + 336) = v117;
          *(a1 + 344) = v114;
          *(a1 + 352) = v118;
        }

        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        *(a1 + 377) = *(a2 + 377);
        v119 = *(a2 + 380);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 380) = v119;
        v120 = *(a2 + 392);
        *(a1 + 392) = v120;
        *(a1 + 400) = *(a2 + 400);
        *(a1 + 402) = *(a2 + 402);
        swift_unknownObjectRetain();

        v121 = v120;
      }

      *(a1 + 408) = *(a2 + 408);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
    }
  }

  else if (v33 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 192);
    v47 = *(a2 + 208);
    v46 = *(a2 + 224);
    *v31 = *v34;
    *(a1 + 208) = v47;
    *(a1 + 224) = v46;
    v48 = *(a2 + 288);
    v50 = *(a2 + 240);
    v49 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v48;
    *(a1 + 240) = v50;
    *(a1 + 256) = v49;
    v51 = *(a2 + 352);
    v53 = *(a2 + 304);
    v52 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v51;
    *(a1 + 304) = v53;
    *(a1 + 320) = v52;
    v54 = *(a2 + 416);
    v56 = *(a2 + 368);
    v55 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v54;
    *(a1 + 368) = v56;
    *(a1 + 384) = v55;
  }

  else
  {
    *(a1 + 192) = v33;
    v74 = v33;

    v75 = *(a1 + 200);
    v76 = *(a2 + 200);
    *(a1 + 200) = v76;
    v77 = v76;

    v78 = *(a1 + 208);
    v79 = *(a2 + 208);
    *(a1 + 208) = v79;
    v80 = v79;

    v81 = (a1 + 216);
    v82 = (a2 + 216);
    v83 = *(a2 + 344) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 344) >> 1 == 4294967294)
    {
      if (v83 == 0x1FFFFFFFCLL)
      {
        v84 = *v82;
        v85 = *(a2 + 232);
        v86 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v86;
        *v81 = v84;
        *(a1 + 232) = v85;
        v87 = *(a2 + 280);
        v88 = *(a2 + 296);
        v89 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 328) = v89;
        *(a1 + 280) = v87;
        *(a1 + 296) = v88;
        v90 = *(a2 + 344);
        v91 = *(a2 + 360);
        v92 = *(a2 + 376);
        *(a1 + 387) = *(a2 + 387);
        *(a1 + 360) = v91;
        *(a1 + 376) = v92;
        *(a1 + 344) = v90;
      }

      else
      {
        v104 = *(a2 + 224);
        if (v104 == 255)
        {
          v122 = *v82;
          *(a1 + 224) = *(a2 + 224);
          *v81 = v122;
        }

        else
        {
          v105 = *v82;
          outlined copy of GraphicsImage.Contents(*v82, *(a2 + 224));
          *(a1 + 216) = v105;
          *(a1 + 224) = v104;
        }

        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = *(a2 + 256);
        v123 = *(a2 + 260);
        *(a1 + 273) = *(a2 + 273);
        *(a1 + 260) = v123;
        v124 = *(a2 + 288);
        v125 = *(a2 + 304);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 288) = v124;
        *(a1 + 304) = v125;
        *(a1 + 321) = *(a2 + 321);
        *(a1 + 322) = *(a2 + 322);
        *(a1 + 323) = *(a2 + 323);
        v126 = *(a2 + 344);
        if (v126 >> 1 == 0xFFFFFFFF)
        {
          v127 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v127;
        }

        else
        {
          v128 = *(a2 + 328);
          v129 = *(a2 + 336);
          v130 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v128, v129, *(a2 + 344));
          *(a1 + 328) = v128;
          *(a1 + 336) = v129;
          *(a1 + 344) = v126;
          *(a1 + 352) = v130;
        }

        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        *(a1 + 377) = *(a2 + 377);
        v131 = *(a2 + 380);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 380) = v131;
        v132 = *(a2 + 392);
        *(a1 + 392) = v132;
        *(a1 + 400) = *(a2 + 400);
        *(a1 + 402) = *(a2 + 402);
        swift_unknownObjectRetain();

        v133 = v132;
      }
    }

    else if (v83 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 216);
      v95 = *(a2 + 264);
      v97 = *v82;
      v96 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v95;
      *v81 = v97;
      *(a1 + 232) = v96;
      v98 = *(a2 + 328);
      v100 = *(a2 + 280);
      v99 = *(a2 + 296);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 328) = v98;
      *(a1 + 280) = v100;
      *(a1 + 296) = v99;
      v102 = *(a2 + 360);
      v101 = *(a2 + 376);
      v103 = *(a2 + 344);
      *(a1 + 387) = *(a2 + 387);
      *(a1 + 360) = v102;
      *(a1 + 376) = v101;
      *(a1 + 344) = v103;
    }

    else
    {
      v106 = *(a2 + 224);
      if (*(a1 + 224) == 255)
      {
        if (v106 == 255)
        {
          v136 = *v82;
          *(a1 + 224) = *(a2 + 224);
          *v81 = v136;
        }

        else
        {
          v134 = *v82;
          outlined copy of GraphicsImage.Contents(*v82, *(a2 + 224));
          *(a1 + 216) = v134;
          *(a1 + 224) = v106;
        }
      }

      else if (v106 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 216);
        v135 = *(a2 + 224);
        *v81 = *v82;
        *(a1 + 224) = v135;
      }

      else
      {
        v107 = *v82;
        outlined copy of GraphicsImage.Contents(*v82, *(a2 + 224));
        v108 = *(a1 + 216);
        *(a1 + 216) = v107;
        v109 = *(a1 + 224);
        *(a1 + 224) = v106;
        outlined consume of GraphicsImage.Contents(v108, v109);
      }

      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      v137 = *(a2 + 260);
      *(a1 + 273) = *(a2 + 273);
      *(a1 + 260) = v137;
      v138 = *(a2 + 288);
      v139 = *(a2 + 304);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 288) = v138;
      *(a1 + 304) = v139;
      *(a1 + 321) = *(a2 + 321);
      *(a1 + 322) = *(a2 + 322);
      *(a1 + 323) = *(a2 + 323);
      v140 = (a1 + 328);
      v141 = (a2 + 328);
      v142 = *(a2 + 344);
      v143 = v142 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 344) >> 1 == 0xFFFFFFFFLL)
      {
        if (v143 == 0x1FFFFFFFELL)
        {
          v144 = *(a2 + 344);
          *v140 = *v141;
          *(a1 + 344) = v144;
        }

        else
        {
          v146 = *(a2 + 328);
          v147 = *(a2 + 336);
          v148 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v146, v147, *(a2 + 344));
          *(a1 + 328) = v146;
          *(a1 + 336) = v147;
          *(a1 + 344) = v142;
          *(a1 + 352) = v148;
        }
      }

      else if (v143 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 328);
        v145 = *(a2 + 344);
        *v140 = *v141;
        *(a1 + 344) = v145;
      }

      else
      {
        v149 = *(a2 + 328);
        v150 = *(a2 + 336);
        v151 = *(a2 + 352);
        outlined copy of AccessibilityImageLabel(v149, v150, *(a2 + 344));
        v152 = *(a1 + 328);
        v153 = *(a1 + 336);
        v154 = *(a1 + 344);
        *(a1 + 328) = v149;
        *(a1 + 336) = v150;
        *(a1 + 344) = v142;
        *(a1 + 352) = v151;
        outlined consume of AccessibilityImageLabel(v152, v153, v154);
      }

      *(a1 + 360) = *(a2 + 360);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 368) = *(a2 + 368);

      *(a1 + 376) = *(a2 + 376);
      *(a1 + 377) = *(a2 + 377);
      v155 = *(a2 + 380);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 380) = v155;
      v156 = *(a1 + 392);
      v157 = *(a2 + 392);
      *(a1 + 392) = v157;
      v158 = v157;

      *(a1 + 400) = *(a2 + 400);
      *(a1 + 402) = *(a2 + 402);
    }

    *(a1 + 408) = *(a2 + 408);

    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
  }

  return a1;
}

uint64_t assignWithTake for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a1 + 128);
  *(a1 + 106) = *(a2 + 106);
  if (v7 >> 1 == 0xFFFFFFFF)
  {
LABEL_9:
    v9 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v9;
    goto LABEL_11;
  }

  v8 = *(a2 + 128);
  if (v8 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    goto LABEL_9;
  }

  v10 = *(a2 + 136);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 136) = v10;
  outlined consume of AccessibilityImageLabel(v11, v12, v7);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v13 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  v14 = *(a2 + 192);
  v15 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  if (v15 != 1)
  {
    if (v14 == 1)
    {
      outlined destroy of PlatformItem.PrimaryContent(a1 + 192);
      goto LABEL_14;
    }

    *(a1 + 192) = v14;

    v23 = *(a1 + 200);
    *(a1 + 200) = *(a2 + 200);

    v24 = *(a1 + 208);
    *(a1 + 208) = *(a2 + 208);

    v25 = (a1 + 216);
    v26 = (a2 + 216);
    if (*(a1 + 344) >> 1 == 4294967294)
    {
      goto LABEL_18;
    }

    if (*(a2 + 344) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(a1 + 216);
LABEL_18:
      v27 = *(a2 + 360);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 360) = v27;
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 387) = *(a2 + 387);
      v28 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 296) = v28;
      v29 = *(a2 + 328);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 328) = v29;
      v30 = *(a2 + 232);
      *v25 = *v26;
      *(a1 + 232) = v30;
      v31 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v31;
LABEL_30:
      *(a1 + 408) = *(a2 + 408);

      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);

      return a1;
    }

    v32 = *(a1 + 224);
    if (v32 != 255)
    {
      v33 = *(a2 + 224);
      if (v33 != 255)
      {
        v34 = *(a1 + 216);
        *(a1 + 216) = *v26;
        *(a1 + 224) = v33;
        outlined consume of GraphicsImage.Contents(v34, v32);
        goto LABEL_24;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 216);
    }

    *v25 = *v26;
    *(a1 + 224) = *(a2 + 224);
LABEL_24:
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 260) = *(a2 + 260);
    *(a1 + 273) = *(a2 + 273);
    v35 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v35;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 321) = *(a2 + 321);
    v36 = *(a1 + 344);
    v37 = (a1 + 328);
    *(a1 + 322) = *(a2 + 322);
    if (v36 >> 1 != 0xFFFFFFFF)
    {
      v38 = *(a2 + 344);
      if (v38 >> 1 != 0xFFFFFFFF)
      {
        v40 = *(a2 + 352);
        v41 = *(a1 + 328);
        v42 = *(a1 + 336);
        *v37 = *(a2 + 328);
        *(a1 + 344) = v38;
        *(a1 + 352) = v40;
        outlined consume of AccessibilityImageLabel(v41, v42, v36);
        goto LABEL_29;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 328);
    }

    v39 = *(a2 + 344);
    *v37 = *(a2 + 328);
    *(a1 + 344) = v39;
LABEL_29:
    *(a1 + 360) = *(a2 + 360);
    swift_unknownObjectRelease();
    *(a1 + 368) = *(a2 + 368);

    *(a1 + 376) = *(a2 + 376);
    *(a1 + 377) = *(a2 + 377);
    *(a1 + 380) = *(a2 + 380);
    *(a1 + 384) = *(a2 + 384);
    v43 = *(a1 + 392);
    *(a1 + 392) = *(a2 + 392);

    *(a1 + 400) = *(a2 + 400);
    *(a1 + 402) = *(a2 + 402);
    goto LABEL_30;
  }

LABEL_14:
  v16 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v16;
  *(a1 + 416) = *(a2 + 416);
  v17 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v17;
  v18 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v18;
  v19 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v19;
  v20 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v20;
  v21 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v21;
  v22 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v22;
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 432))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemsDefinition.MakePlatformImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 424) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 432) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 432) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 120) = 0;
      *(result + 128) = 2 * ~a2;
      *(result + 136) = 0;
    }
  }

  return result;
}

uint64_t WeakUncheckedSendable.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Int UncheckedSendable<A>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> UncheckedSendable<A>()
{
  Hasher.init(_seed:)();
  UncheckedSendable<A>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path getter for WeakUncheckedSendable.value : <A>WeakUncheckedSendable<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeakUncheckedSendable();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t WeakUncheckedSendable.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakUncheckedSendable.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.base.modify;
}

void TransactionID.init(graph:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  Counter = AGGraphGetCounter();

  *a2 = Counter;
}

void TransactionID.init(context:)(uint64_t *a1@<X8>)
{
  v2 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *a1 = Counter;
}

Swift::Int TransactionID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TransactionID and conformance TransactionID()
{
  result = lazy protocol witness table cache variable for type TransactionID and conformance TransactionID;
  if (!lazy protocol witness table cache variable for type TransactionID and conformance TransactionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionID and conformance TransactionID);
  }

  return result;
}

Swift::Int Gradient.ColorSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Gradient.colorSpace(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for GradientBox<ColorSpaceGradientProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 0;
  *(v4 + 25) = v3;

  return v4;
}

void type metadata accessor for GradientBox<ColorSpaceGradientProvider>()
{
  if (!lazy cache variable for type metadata for GradientBox<ColorSpaceGradientProvider>)
  {
    lazy protocol witness table accessor for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider();
    v0 = type metadata accessor for GradientBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GradientBox<ColorSpaceGradientProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider()
{
  result = lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }

  return result;
}

uint64_t AnyGradient.colorSpace(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for GradientBox<ColorSpaceGradientProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 1;
  *(v4 + 25) = v3;

  return v4;
}

unint64_t lazy protocol witness table accessor for type Gradient.ColorSpace and conformance Gradient.ColorSpace()
{
  result = lazy protocol witness table cache variable for type Gradient.ColorSpace and conformance Gradient.ColorSpace;
  if (!lazy protocol witness table cache variable for type Gradient.ColorSpace and conformance Gradient.ColorSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ColorSpace and conformance Gradient.ColorSpace);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ColorSpaceGradientProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithCopy for ColorSpaceGradientProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for ColorSpaceGradientProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

__int128 *protocol witness for GradientProvider.resolve(in:) in conformance ColorSpaceGradientProvider@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = *(v2 + 9);
  if (*(v2 + 8))
  {
    *&v8 = *a1;
    *(&v8 + 1) = v4;
    result = (*(*v5 + 112))(&v8);
  }

  else
  {
    *&v8 = *a1;
    *(&v8 + 1) = v4;
    result = Gradient.resolve(in:)(&v8, v5, a2);
  }

  *(a2 + 8) = v6;
  return result;
}

uint64_t protocol witness for GradientProvider.fallbackColor(in:) in conformance ColorSpaceGradientProvider(__int128 *a1)
{
  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColorSpaceGradientProvider()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v5);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v5, v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ColorSpaceGradientProvider(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 9);
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorSpaceGradientProvider()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v5);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v5, v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for ColorSpaceGradientProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static ColorSpaceGradientProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v10 = *a1;
  v11 = v2;
  v8 = v4;
  v9 = v5;
  outlined copy of EitherGradient(v10, v2);
  outlined copy of EitherGradient(v4, v5);
  LOBYTE(v4) = static EitherGradient.== infix(_:_:)(&v10, &v8);
  outlined consume of EitherGradient(v8, v9);
  outlined consume of EitherGradient(v10, v11);
  return v4 & (v3 == v6);
}

unint64_t _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextState and conformance GlassEffectContextState();
  v1 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter(v3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
  *(v0 + 28) = Attribute.init<A>(body:value:flags:update:)();
  return v1 | (v2 << 32);
}

uint64_t GlassMaterialContext.updateState(material:environment:transaction:updateSeed:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v8 = a1[1];
  if (v8 == 1)
  {
    v10 = *a1;
    v11 = *a2;
    v12 = a2[1];
    if ((*(**a1 + 120))())
    {
      v43 = 0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v42[0] = v11;
      v42[1] = v12;
      outlined copy of Material?(v10, v8);
      outlined copy of Material?(v10, v8);

      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v14 = *WeakValue;
      }

      else
      {
        v14 = NAN;
      }

      v20 = AGGraphGetWeakValue();
      if (v20)
      {
        v21 = *v20;

        if (v14 == v21)
        {

          v22 = AGGraphGetWeakValue();
          if (v22)
          {
            v23 = *v22;
          }

          else
          {
            v23 = 2143289344;
          }

          v43 = v23;
          v44 = 0;
        }
      }

      else
      {
      }

      v40 = *(v5 + 32);
      v24 = *(*v10 + 128);

      v24(&v41, &v40, v42);

      v25 = v41;
      v26 = *(v5 + 32);
      if (v41)
      {
        if (v26)
        {
          if (v41 != v26)
          {
            v39 = *(*v41 + 88);
            swift_retain_n();
            swift_retain_n();
            v27 = v39(v26);

            if ((v27 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

LABEL_20:
          v28 = *(v6 + 40);
          if (v28 != 1)
          {
            outlined copy of GlassMaterialContext.State?(v28);
            outlined consume of Material?(v10, v8);
            outlined consume of Material?(v10, v8);

            outlined consume of GlassMaterialContext.State?(v28);

            return 0;
          }

          v29 = *(v6 + 32);

          v31 = (a3)(v30);
          v32 = a3();
          outlined consume of Material?(v10, v8);
          outlined consume of Material?(v10, v8);

          v33 = *(v6 + 40);
          *(v6 + 40) = v29;
          *(v6 + 48) = v31;
          *(v6 + 56) = v32;
          *(v6 + 64) = 0;
          goto LABEL_24;
        }
      }

      else if (!v26)
      {
        goto LABEL_20;
      }

LABEL_23:
      *(v6 + 32) = v25;

      v34 = v45;
      v35 = v46;

      v37 = a5(v36);
      outlined consume of Material?(v10, v8);
      outlined consume of Material?(v10, v8);

      v33 = *(v6 + 40);
      *(v6 + 40) = v25;
      *(v6 + 48) = v34;
      *(v6 + 56) = v35;
      *(v6 + 64) = v37;
LABEL_24:
      outlined consume of GlassMaterialContext.State?(v33);
      return 1;
    }
  }

  v15 = *(v5 + 32) != 0;
  *(v5 + 32) = 0;

  v17 = (a3)(v16);
  v18 = a3();
  v19 = *(v5 + 40);
  *(v5 + 40) = 0;
  *(v5 + 48) = v17;
  *(v5 + 56) = v18;
  *(v5 + 64) = 0;
  outlined consume of GlassMaterialContext.State?(v19);
  return v15;
}

uint64_t GlassMaterialContext.__deallocating_deinit()
{

  outlined consume of GlassMaterialContext.State?(*(v0 + 40));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall GlassEffectBackdropObserver.luminanceDidChange(_:)(Swift::Float_optional *a1)
{
  if (swift_weakLoadStrong())
  {
    v3 = *(v1 + 24);
    if ((a1 & 0x100000000) != 0)
    {
      v4 = NAN;
    }

    else
    {
      v4 = *&a1;
    }

    v5 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v5, v3, 0, 1, 1, v4);
  }
}

uint64_t specialized static GlassMaterialEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v91 = *(a2 + 32);
  v92 = v7;
  v93 = *(a2 + 64);
  v94 = *(a2 + 80);
  v8 = *(a2 + 16);
  v89 = *a2;
  v90 = v8;
  *v95 = v89;
  *&v95[16] = v8;
  v96 = v91;
  v9 = v89;
  outlined init with copy of _GraphInputs(v95, &v83);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v9, &v83);
  Strong = swift_weakLoadStrong();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(&v83, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  if (!Strong)
  {
    outlined destroy of _GraphInputs(v95);
    return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v89, a4);
  }

  v56 = a3;
  v55 = a4;
  v51 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v54 = AGGraphCreateOffsetAttribute2();
  v12 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for GlassMaterialContext();
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_18DD85550;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 16) = *(Strong + 120);
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v88 = v94;
  v83 = v89;
  v84 = v90;

  _ViewInputs.materialSubstrate.getter(&v74);
  *(v13 + 24) = v74;
  v14 = *(Strong + 120);
  v53 = v12;
  LODWORD(v83) = v12;
  *(&v83 + 1) = v13;
  v84 = v14;
  LODWORD(v85) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

  v15 = Attribute.init<A>(body:value:flags:update:)();

  v16 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v57 = *(v16 + 64);

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v9, v83);
  if (v17 && *(v17 + 72) == 1)
  {
    v18 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v18 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  v19 = *v18;
  v20 = *&v95[16];
  swift_beginAccess();
  *&v83 = __PAIR64__(*(v20 + 16), OffsetAttribute2);
  v50 = *&v95[28];
  DWORD2(v83) = *&v95[28];
  *&v84 = Strong;
  *(&v84 + 1) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  v76 = v91;
  v77 = v92;
  v78 = v93;
  v79 = v94;
  v74 = v89;
  v75 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v88 = v94;
  v83 = v89;
  v84 = v90;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v89, &v68);
  LODWORD(v19) = CachedEnvironment.animatedPosition(for:)(&v83);
  swift_endAccess();
  DWORD1(v78) = v19;
  v22 = v77;
  *&v83 = v77;
  v23 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);

  v24 = *(v22 + 2);
  if (v23 != v24)
  {
    if (v23 >= v24)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*&v22[16 * v23 + 32] == &type metadata for GlassMaterialShapeKey)
    {
      goto LABEL_14;
    }
  }

  if (v24 < v23)
  {
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v24 >= *(v22 + 3) >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v22);
    *&v77 = v22;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v23, v23, 1, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
  *&v77 = v22;
LABEL_14:
  LODWORD(v24) = v15;
  v26 = v57;
  v21 = _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)();
  v85 = v76;
  v86 = v77;
  v87 = v78;
  v88 = v79;
  v83 = v74;
  v84 = v75;
  outlined init with copy of _ViewInputs(&v83, &v68);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v83, v60);
  outlined destroy of _ViewInputs(&v83);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v92))
  {
    LODWORD(v22) = lastIdentity + 1;
    lastIdentity = v22;
    v56 = v22;
    if ((BYTE5(v96) & 1) == 0)
    {
      v27 = *MEMORY[0x1E698D3F8];
LABEL_17:
      v58 = v27;
      v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA018GlassMaterialShapeI033_62A32D59B8A902A88963544196023CF7LLV_TtB5(v60[0]);
      if ((v28 & 0x100000000) != 0)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      *&v68 = __PAIR64__(v29, v51);
      *(&v68 + 1) = Strong;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet();

      v30 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v68) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
      v49 = Attribute.init<A>(body:value:flags:update:)();
      v67[0] = *v95;
      *(v67 + 12) = *&v95[12];
      v59 = v96;
      *&v68 = __PAIR64__(v21, v50);
      *(&v68 + 1) = __PAIR64__(v24, v26);
      LOBYTE(v69) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
      v52 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v68) = HIDWORD(v21);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial();
      v31 = Attribute.init<A>(body:value:flags:update:)();
      *v80 = v67[0];
      *&v80[12] = *(v67 + 12);
      v81 = v52;
      v82 = v59;
      LODWORD(v68) = v31;
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(&v68, v80);
      v32 = v68;
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v73 = v94;
      v68 = v89;
      v69 = v90;
      swift_beginAccess();
      v33 = CachedEnvironment.animatedPosition(for:)(&v68);
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v73 = v94;
      v68 = v89;
      v69 = v90;
      v34 = CachedEnvironment.animatedCGSize(for:)(&v68);
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v73 = v94;
      v68 = v89;
      v69 = v90;
      v35 = CachedEnvironment.animatedSize(for:)(&v68);
      swift_endAccess();
      v36 = HIDWORD(v92);
      v37 = *(v20 + 16);
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v38 = HIDWORD(v93);
      v73 = v94;
      v68 = v89;
      v69 = v90;
      _ViewInputs.materialSubstrate.getter(&v66 + 8);
      *v64 = v32;
      *&v64[4] = v54;
      *&v64[8] = v53;
      *&v64[12] = v49;
      *&v64[16] = v33;
      *&v64[20] = v34;
      *&v64[24] = v35;
      v65 = v36;
      *&v66 = __PAIR64__(v37, v38);
      HIDWORD(v66) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
      lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData();
      v39 = Attribute.init<A>(body:value:flags:update:)();
      v40 = *(v20 + 16);
      v41 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v60[0]);
      v42 = v58;
      if ((v41 & 0x100000000) == 0)
      {
        v42 = v41;
      }

      v43 = *(Strong + 120);
      *&v61 = __PAIR64__(v39, v56);
      *(&v61 + 1) = __PAIR64__(v34, v33);
      *&v62 = __PAIR64__(v40, DWORD1(v93));
      DWORD2(v62) = v42;
      v63 = v43;
      v68 = v61;
      v69 = v62;
      v70 = v43;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList();

      v44 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of MaterialEffectDisplayList(&v61);
      LOBYTE(v68) = 0;
      PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v64 = v67[0];
      *&v64[12] = *(v67 + 12);
      v65 = v52;
      v66 = v59;
      v45 = v64;
      goto LABEL_25;
    }

LABEL_29:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v68);
    result = AGWeakAttributeGetAttribute();
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
      return result;
    }

    v47 = *MEMORY[0x1E698D3F8];
    *v80 = v22;
    v48 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v80);
    v48(&v68, 0);
    v26 = v57;
    v27 = v47;
    goto LABEL_17;
  }

  v45 = v95;
LABEL_25:
  outlined destroy of _GraphInputs(v45);
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v68 = v74;
  v69 = v75;
  result = outlined destroy of _ViewInputs(&v68);
  *v55 = v60[0];
  v55[1] = v60[1];
  return result;
}

uint64_t static GlassMaterialEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v93 = *(a2 + 32);
  v94 = v7;
  v95 = *(a2 + 64);
  v96 = *(a2 + 80);
  v8 = *(a2 + 16);
  *v92 = *a2;
  *&v92[16] = v8;
  v9 = *v92;
  outlined init with copy of _GraphInputs(v92, &v83);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v9, &v83);
  Strong = swift_weakLoadStrong();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(&v83, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  if (!Strong)
  {
    v47 = outlined destroy of _GraphInputs(v92);
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v83 = *v92;
    v84 = *&v92[16];
    return a3(v47, &v83);
  }

  v56 = a4;
  v57 = a3;
  v52 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v55 = AGGraphCreateOffsetAttribute2();
  v12 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for GlassMaterialContext();
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_18DD85550;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 16) = *(Strong + 120);
  v85 = v93;
  v86 = v94;
  v87 = v95;
  v88 = v96;
  v83 = *v92;
  v84 = *&v92[16];

  _ViewInputs.materialSubstrate.getter(&v77);
  *(v13 + 24) = v77;
  v14 = *(Strong + 120);
  v54 = v12;
  LODWORD(v83) = v12;
  *(&v83 + 1) = v13;
  v84 = v14;
  LODWORD(v85) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

  v15 = Attribute.init<A>(body:value:flags:update:)();

  v16 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v58 = *(v16 + 64);

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v9, v83);
  if (v17 && *(v17 + 72) == 1)
  {
    v18 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v18 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  v19 = *v18;
  v20 = *&v92[16];
  swift_beginAccess();
  *&v83 = __PAIR64__(*(v20 + 16), OffsetAttribute2);
  v51 = *&v92[28];
  DWORD2(v83) = *&v92[28];
  *&v84 = Strong;
  *(&v84 + 1) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  v85 = v93;
  v86 = v94;
  v87 = v95;
  v88 = v96;
  v83 = *v92;
  v84 = *&v92[16];
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v77 = *v92;
  v78 = *&v92[16];
  swift_beginAccess();
  outlined init with copy of _ViewInputs(v92, v75);
  LODWORD(v19) = CachedEnvironment.animatedPosition(for:)(&v77);
  swift_endAccess();
  DWORD1(v87) = v19;
  v22 = v86;
  *&v77 = v86;
  v23 = &type metadata for GlassMaterialShapeKey;
  v24 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);

  v25 = *(v22 + 2);
  if (v24 != v25)
  {
    if (v24 >= v25)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*&v22[16 * v24 + 32] == &type metadata for GlassMaterialShapeKey)
    {
      goto LABEL_14;
    }
  }

  if (v25 < v24)
  {
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v25 >= *(v22 + 3) >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v22);
    *&v86 = v22;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v24, 1, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
  *&v86 = v22;
LABEL_14:
  LODWORD(v23) = v15;
  v21 = _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)();
  v75[2] = v85;
  v75[3] = v86;
  v75[4] = v87;
  v76 = v88;
  v75[0] = v83;
  v75[1] = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v69 = v83;
  v70 = v84;
  v27 = outlined init with copy of _ViewInputs(v75, &v77);
  v57(v61, v27, &v69);
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v77 = v69;
  v78 = v70;
  outlined destroy of _ViewInputs(&v77);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v94))
  {
    LODWORD(v25) = lastIdentity + 1;
    lastIdentity = v25;
    LODWORD(v57) = v25;
    if ((BYTE5(v93) & 1) == 0)
    {
      v28 = *MEMORY[0x1E698D3F8];
LABEL_17:
      v50 = v28;
      v29 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA018GlassMaterialShapeI033_62A32D59B8A902A88963544196023CF7LLV_TtB5(v61[0]);
      if ((v29 & 0x100000000) != 0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *&v69 = __PAIR64__(v30, v52);
      *(&v69 + 1) = Strong;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet();

      v31 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v69) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
      v53 = Attribute.init<A>(body:value:flags:update:)();
      v68[0] = *v92;
      *(v68 + 12) = *&v92[12];
      v60 = v93;
      *&v69 = __PAIR64__(v21, v51);
      *(&v69 + 1) = __PAIR64__(v23, v58);
      LOBYTE(v70) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
      v59 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v69) = HIDWORD(v21);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial();
      v32 = Attribute.init<A>(body:value:flags:update:)();
      *v89 = v68[0];
      *&v89[12] = *(v68 + 12);
      v90 = v59;
      v91 = v60;
      LODWORD(v69) = v32;
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(&v69, v89);
      v33 = v69;
      v71 = v93;
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v69 = *v92;
      v70 = *&v92[16];
      swift_beginAccess();
      v34 = CachedEnvironment.animatedPosition(for:)(&v69);
      v71 = v93;
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v69 = *v92;
      v70 = *&v92[16];
      v35 = CachedEnvironment.animatedCGSize(for:)(&v69);
      v71 = v93;
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v69 = *v92;
      v70 = *&v92[16];
      v36 = CachedEnvironment.animatedSize(for:)(&v69);
      swift_endAccess();
      v37 = HIDWORD(v94);
      v38 = *(v20 + 16);
      v71 = v93;
      v72 = v94;
      v73 = v95;
      v39 = HIDWORD(v95);
      v74 = v96;
      v69 = *v92;
      v70 = *&v92[16];
      _ViewInputs.materialSubstrate.getter(&v67 + 8);
      *v65 = v33;
      *&v65[4] = v55;
      *&v65[8] = v54;
      *&v65[12] = v53;
      *&v65[16] = v34;
      *&v65[20] = v35;
      *&v65[24] = v36;
      v66 = v37;
      *&v67 = __PAIR64__(v38, v39);
      HIDWORD(v67) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
      lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData();
      v40 = Attribute.init<A>(body:value:flags:update:)();
      v41 = *(v20 + 16);
      v42 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v61[0]);
      v43 = v50;
      if ((v42 & 0x100000000) == 0)
      {
        v43 = v42;
      }

      v44 = *(Strong + 120);
      *&v62 = __PAIR64__(v40, v57);
      *(&v62 + 1) = __PAIR64__(v35, v34);
      *&v63 = __PAIR64__(v41, DWORD1(v95));
      DWORD2(v63) = v43;
      v64 = v44;
      v69 = v62;
      v70 = v63;
      v71 = v44;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList();

      v45 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of MaterialEffectDisplayList(&v62);
      LOBYTE(v69) = 0;
      PreferencesOutputs.subscript.setter(v45, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v65 = v68[0];
      *&v65[12] = *(v68 + 12);
      v66 = v59;
      v67 = v60;
      v46 = v65;
      goto LABEL_25;
    }

LABEL_29:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v69);
    result = AGWeakAttributeGetAttribute();
    v28 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
      return result;
    }

    *v89 = v25;
    v49 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v89);
    v49(&v69, 0);
    goto LABEL_17;
  }

  v46 = v92;
LABEL_25:
  outlined destroy of _GraphInputs(v46);
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v69 = v83;
  v70 = v84;
  result = outlined destroy of _ViewInputs(&v69);
  *v56 = v61[0];
  v56[1] = v61[1];
  return result;
}

Swift::Void __swiftcall GlassMaterialContextData.Init.updateValue()()
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, v0, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  if (*Value)
  {
    v3 = *Value;
    v4 = *(v1 + 24);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(v1 + 16);

    v4 = *(v1 + 24);
    if (!v4)
    {
LABEL_7:
      *(*(v1 + 8) + 16) = v3;

      ++*(v1 + 32);
      goto LABEL_8;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  AGGraphSetOutputValue();

  *(v1 + 24) = v3;
}

uint64_t GlassEffectMaterial.updateValue()()
{
  v1 = v0;
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  if (!v2)
  {
    *__dst = xmmword_18DDA6AB0;
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    return AGGraphSetOutputValue();
  }

  v3 = *(v1 + 16);
  AGGraphRegisterDependency();
  Value = AGGraphGetValue();
  v5 = *(Value + 48);
  v7 = *Value;
  v6 = *(Value + 16);
  *&v69[16] = *(Value + 32);
  v70 = v5;
  v68 = v7;
  *v69 = v6;
  v8 = *(Value + 112);
  v10 = *(Value + 64);
  v9 = *(Value + 80);
  v73 = *(Value + 96);
  v74 = v8;
  v71 = v10;
  v72 = v9;
  v12 = *(Value + 144);
  v11 = *(Value + 160);
  v13 = *(Value + 128);
  v78 = *(Value + 176);
  v76 = v12;
  v77 = v11;
  v75 = v13;
  outlined init with copy of GlassContainer.DisplayMaterial(&v68, __dst);
  v14 = AGGraphGetValue();
  if (*(&v73 + 1) == 1 && *(&v76 + 1) == 1 && v78 == 1 && v3[25] <= 0)
  {
    v28 = *(v14 + 192);
    v29 = *(v28 + 16);
    if (v29)
    {
      v58 = v2;

      swift_beginAccess();
      if (*(v28 + 16))
      {
        v30 = 0;
        v31 = v29 - 1;
        v32 = 32;
        __asm { FMOV            V0.2D, #1.0 }

        v61 = _Q0;
        v59 = v31;
        v60 = v28;
        do
        {
          memcpy(__dst, (v28 + v32), sizeof(__dst));
          v38 = *&__dst[328];
          v39 = v3[14];
          if (!AGSubgraphIsValid())
          {
            goto LABEL_36;
          }

          if (*(v3[19] + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v38);
            if (v40)
            {
              outlined init with copy of GlassContainer.Entry(__dst, &v62);
              goto LABEL_35;
            }

            v39 = v3[14];
          }

          outlined init with copy of GlassContainer.Entry(__dst, &v62);
          v41 = v39;
          AGGraphClearUpdate();
          v42 = AGSubgraphGetCurrent();
          AGSubgraphSetCurrent();
          v62 = v61;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v43 = Attribute.init<A>(body:value:flags:update:)();
          AGSubgraphSetCurrent();

          AGGraphSetUpdate();
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v3[19];
          v45 = v66[0];
          v3[19] = 0x8000000000000000;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
          v48 = *(v45 + 16);
          v49 = (v46 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            __break(1u);
LABEL_43:
            __break(1u);
          }

          v51 = v46;
          if (*(v45 + 24) >= v50)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v54 = v66[0];
              if ((v46 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v54 = v66[0];
              if ((v51 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
            if ((v51 & 1) != (v53 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v47 = v52;
            v54 = v66[0];
            if ((v51 & 1) == 0)
            {
LABEL_32:
              v54[(v47 >> 6) + 8] |= 1 << v47;
              *(v54[6] + 8 * v47) = v38;
              *(v54[7] + 4 * v47) = v43;
              v55 = v54[2];
              _VF = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (_VF)
              {
                goto LABEL_43;
              }

              v54[2] = v56;
              goto LABEL_34;
            }
          }

          *(v54[7] + 4 * v47) = v43;
LABEL_34:
          v31 = v59;
          v28 = v60;
          v3[19] = v54;
          swift_endAccess();
LABEL_35:
          v57 = *(AGGraphGetValue() + 32);
          outlined destroy of GlassContainer.Entry(__dst);
          if (v57 == 1)
          {

            v2 = v58;
            goto LABEL_6;
          }

LABEL_36:
          if (v31 == v30)
          {
            goto LABEL_39;
          }

          ++v30;
          v32 += 344;
        }

        while (v30 < *(v28 + 16));
      }

      __break(1u);
LABEL_39:

      v2 = v58;
    }

    v15 = *(&v68 + 1);
    v16 = v69[0];
    v18 = *&v69[8];
    v17 = v69[24];
    goto LABEL_7;
  }

LABEL_6:
  v15 = *(&v68 + 1);
  v16 = v69[0];
  v17 = 1;
  v18 = *&v69[8];
LABEL_7:
  v19 = v68;
  *__dst = v68;
  *&__dst[8] = v15;
  __dst[16] = v16;
  *&__dst[24] = v18;
  __dst[40] = v17;
  outlined copy of _Glass.Variant.Role(v68, v15);

  v20 = AGGraphGetValue();
  v22 = *v20;
  v21 = v20[1];
  v66[0] = v22;
  v66[1] = v21;
  v23 = *(v2 + 88);

  v23(&v62, __dst, v66);

  v24 = v62;
  v25 = BYTE8(v62);
  if (BYTE8(v62) == 255)
  {
    v26 = 0;
  }

  else
  {
    v26 = v62;
  }

  if (BYTE8(v62) != 255)
  {
    v25 = *(&v62 + 1) & 0xFFFFFFFF000000FFLL;
  }

  *__dst = v26;
  *&__dst[8] = v25;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  outlined copy of Material?(v24, BYTE8(v24));
  AGGraphSetOutputValue();
  outlined consume of _Glass.Variant.Role(v19, v15);

  outlined destroy of GlassContainer.DisplayMaterial(&v68);
  outlined consume of Material?(v24, BYTE8(v24));
  return outlined consume of Material?(v24, BYTE8(v24));
}

uint64_t GlassEffectShapeSet.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  Value = AGGraphGetValue();
  v26[0] = *Value;
  v7 = *(Value + 64);
  v9 = *(Value + 16);
  v8 = *(Value + 32);
  v26[3] = *(Value + 48);
  v26[4] = v7;
  v26[1] = v9;
  v26[2] = v8;
  v10 = *(Value + 128);
  v12 = *(Value + 80);
  v11 = *(Value + 96);
  v28 = *(Value + 112);
  v29 = v10;
  v26[5] = v12;
  v27 = v11;
  v14 = *(Value + 160);
  v13 = *(Value + 176);
  v15 = *(Value + 144);
  v33 = *(Value + 192);
  v31 = v14;
  v32 = v13;
  v30 = v15;
  v16 = *(&v13 + 1);
  v25 = *(&v13 + 1);
  v17 = *&v26[0];
  v18 = DWORD2(v26[0]);
  v23 = v26[0];
  v24 = MEMORY[0x1E69E7CC0];
  v22 = xmmword_18DDAA050;
  outlined init with copy of GlassContainer.Effect(v26, v21);
  outlined init with copy of GlassContainer.DisplayMaterial(v26, v21);
  outlined copy of _Glass.Variant.Role(v17, v18);
  LOBYTE(v17) = specialized static _Glass.Variant.== infix(_:_:)(&v23, &v22);
  outlined consume of _Glass.Variant.Role(v22, DWORD2(v22));
  outlined consume of _Glass.Variant.Role(v23, DWORD2(v23));
  if (v17 & 1) != 0 && *(&v27 + 1) == 1 && *(&v30 + 1) == 1 && (v32)
  {
    outlined destroy of GlassContainer.DisplayMaterial(v26);
    result = outlined destroy of GlassContainer.Effect(v26);
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    GlassEffectShapeSet.updateShapeSet(_:)(&v24, a1, a2);
    outlined destroy of GlassContainer.DisplayMaterial(v26);
    result = outlined destroy of GlassContainer.Effect(v26);
    v20 = v24;
    v16 = v25;
  }

  *a3 = v20;
  a3[1] = v16;
  return result;
}

uint64_t GlassEffectShapeSet.updateShapeSet(_:)(char **a1, unint64_t a2, uint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v6 = *(Value + 232);
  v72 = *(Value + 216);
  v73 = v6;
  v74 = *(Value + 248);
  v75 = *(Value + 264);
  if (*MEMORY[0x1E698D3F8] == v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
LABEL_3:
      swift_beginAccess();
      if (!*(v7 + 16))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v9 = 0;
      v10 = v8 - 1;
      v11 = 32;
      v62 = v10;
      while (1)
      {
        memcpy(__dst, (v7 + v11), sizeof(__dst));
        if (__dst[136] == 1 && (__dst[137] & 1) == 0)
        {
          break;
        }

LABEL_38:
        if (v10 == v9)
        {
        }

        ++v9;
        v11 += 360;
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_48;
        }
      }

      v12 = *&__dst[352];
      v66 = *&__dst[328];
      v13 = *(a3 + 112);
      if (!AGSubgraphIsValid())
      {
        outlined init with copy of GlassMaterialShape(__dst, &v79);
        outlined init with copy of GlassContainer.Entry(__dst, &v79);

        goto LABEL_25;
      }

      if (*(*(a3 + 160) + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v66);
        if (v14)
        {
          outlined init with copy of GlassMaterialShape(__dst, &v79);
          outlined init with copy of GlassContainer.Entry(__dst, &v79);

          goto LABEL_23;
        }

        v13 = *(a3 + 112);
      }

      outlined init with copy of GlassMaterialShape(__dst, &v79);
      outlined init with copy of GlassContainer.Entry(__dst, &v79);

      v15 = v13;
      AGGraphClearUpdate();
      v16 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LOBYTE(v79) = 0;
      v17 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = *(a3 + 160);
      v19 = v76[0];
      *(a3 + 160) = 0x8000000000000000;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_49;
      }

      v25 = v20;
      if (*(v19 + 24) < v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        if ((v25 & 1) != (v27 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v21 = v26;
        v28 = v76[0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_21:
        *(v28[7] + 4 * v21) = v17;
LABEL_22:
        *(a3 + 160) = v28;
        swift_endAccess();
LABEL_23:
        if (*AGGraphGetValue())
        {

          outlined destroy of GlassContainer.Entry(__dst);
          outlined destroy of GlassMaterialShape(__dst);
LABEL_37:
          v10 = v62;
          goto LABEL_38;
        }

LABEL_25:
        specialized static Update.begin()();
        v79 = v72;
        v80 = v73;
        v81 = v74;
        v82 = v75;
        v32 = GeometryProxy.placementContext.getter(v77);
        if (v78)
        {
          (*(*v12 + 88))(&v79, v32);
          v33 = v79;
          v34 = v80;
        }

        else
        {
          InputValue = AGGraphGetInputValue();
          v36 = *InputValue;
          v37 = *(InputValue + 8);
          v38 = *(InputValue + 16);
          v39 = *(InputValue + 24);
          v40 = *(InputValue + 32);
          v41 = *(InputValue + 40);
          type metadata accessor for CGPoint(0);

          v42 = AGGraphGetInputValue();
          v43 = *v42;
          v44 = *(v42 + 8);
          v45 = v40 - (*v42 - v38);
          v76[0] = v36;
          v76[1] = v37;
          *&v76[2] = v43;
          *&v76[3] = v44;
          *&v76[4] = v45;
          *&v76[5] = v41 - (v44 - v39);
          (*(*v12 + 96))(v67, v76);

          v33 = v67[0];
          v34 = v67[1];
        }

        v64 = v34;
        v63 = v33;
        v46 = *&__dst[344];
        v84[0] = *__dst;
        v84[1] = *&__dst[16];
        v85 = __dst[32];
        static Update.end()();
        type metadata accessor for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 40) = v64;
        *(v47 + 24) = v63;
        type metadata accessor for _SizedShape<OffsetShape<AnyShape>>();
        swift_beginAccess();
        v48 = *(a3 + 184);
        v49 = *(v48 + 16);

        if (v49 && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v84), (v51 & 1) != 0))
        {
          v52 = *(v48 + 56) + 32 * v50;
          v53 = *v52;
          v54 = *(v52 + 24);
          v55 = *(a3 + 192);
          v68 = *v52;
          v69 = *(v52 + 8);
          v70 = v54;
          v71 = v55;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v76[0] = *(a3 + 184);
          *(a3 + 184) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v68, v84, v56);
          *(a3 + 184) = v76[0];
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v53 = 0;
        }

        v57 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        if (v59 >= v58 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
        }

        outlined destroy of GlassContainer.Entry(__dst);
        outlined destroy of GlassMaterialShape(__dst);
        *(v57 + 2) = v59 + 1;
        v60 = &v57[32 * v59];
        *(v60 + 4) = v47;
        *(v60 + 5) = v66;
        *(v60 + 6) = v53;
        v60[56] = 0;
        *(v60 + 15) = 0;
        *a1 = v57;
        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v76[0];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v28 = v76[0];
        if (v25)
        {
          goto LABEL_21;
        }
      }

LABEL_17:
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v66;
      *(v28[7] + 4 * v21) = v17;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_50;
      }

      v28[2] = v31;
      goto LABEL_22;
    }
  }

  else
  {
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for [GlassMaterialShape], &type metadata for GlassMaterialShape, MEMORY[0x1E69E62F8]);
    v7 = *AGGraphGetValue();

    v8 = *(v7 + 16);
    if (v8)
    {
      goto LABEL_3;
    }
  }
}

uint64_t GlassEffectContextEnvironment.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v1 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    *v10 = *AGGraphGetValue();
    return AGGraphSetOutputValue();
  }

  else
  {
    v3 = *Value;
    v4 = Value[1];
    outlined copy of Material.ID(*Value, v1);
    v5 = AGGraphGetValue();
    v6 = *v5;
    v7 = v5[1];
    v10[0] = *v5;
    v10[1] = v7;

    AGGraphGetValue();
    if (v4 == 1)
    {
      *&v9 = v3;
      BYTE8(v9) = 1;
      HIDWORD(v9) = HIDWORD(v1);
      v8 = *(*v3 + 112);
      outlined copy of Material.ID(v3, 1u);
      v8(v10, &v9);
      outlined consume of Material?(v3, v1);
    }

    else
    {
      outlined copy of Material?(v3, v1);

      outlined copy of Material?(v3, v1);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v10, v3, v1 & 0xFFFFFFFF000000FFLL);

      outlined consume of Material?(v3, v1);
      if (v7)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v6, v10[0]);
      }

      outlined consume of Material?(v3, v1);
    }

    v9 = *v10;

    AGGraphSetOutputValue();
    outlined consume of Material?(v3, v1);
  }
}

uint64_t GlassEffectContextState.updateValue()()
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44[-v9];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v54 = type metadata accessor for ObservationCenter();
    v52 = v19[3];
    outlined init with take of Any(&v52, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_22:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *(v22 + 24) = v15;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v49 = v18;
  swift_beginAccess();
  v46 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v25 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  closure #1 in GlassEffectContextState.updateValue()(v50, &v52);
  *(StatusReg + 848) = v25;
  v45 = v52;
  v26 = v15;
  v27 = v49;
  outlined init with take of ObservationTracking._AccessList?(v26, v49);
  v28 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v27, v47);
  if ((*(v3 + 48))(v28, 1, v2) == 1)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v29 = v28;
    goto LABEL_12;
  }

  v0 = v10;
  v47 = *(v3 + 32);
  (v47)(v10, v28, v2);
  (*(v3 + 16))(v48, v10, v2);
  v15 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v32 = v15[2];
  v31 = v15[3];
  if (v32 >= v31 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v15);
  }

  v15[2] = v32 + 1;
  (v47)(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v48, v2);
  *(v22 + 24) = v15;
  (*(v3 + 8))(v0, v2);
  v29 = v49;
LABEL_12:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v33 = *(v22 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v37 = *(v3 + 16);
    v35 = v3 + 16;
    v36 = v37;
    v38 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    v49 = *(v22 + 24);

    do
    {
      v36(v5, v38, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v5);
      (*(v35 - 8))(v5, v2);
      v38 += v39;
      --v34;
    }

    while (v34);

    v33 = *(v22 + 24);
  }

  *(v22 + 24) = v46;

  if ((v45 & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    Value = AGGraphGetValue();
    v42 = *Value;
    if (*(*Value + 40) == 1)
    {
      __break(1u);
      result = _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      __break(1u);
    }

    else
    {
      v43 = *(v42 + 64);
      v52 = *(*Value + 40);
      v53 = *(v42 + 48);
      LODWORD(v54) = v43;
      return AGGraphSetOutputValue();
    }
  }

  return result;
}

uint64_t closure #1 in GlassEffectContextState.updateValue()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  v5 = Value[1];
  v13 = *Value;
  v14 = v5;
  outlined copy of Material?(v13, v5);
  v6 = AGGraphGetValue();
  v8 = *v6;
  v7 = v6[1];
  v12[0] = v8;
  v12[1] = v7;
  v11 = a1;

  LOBYTE(a1) = GlassMaterialContext.updateState(material:environment:transaction:updateSeed:)(&v13, v12, partial apply for closure #1 in closure #1 in GlassEffectContextState.updateValue(), v10, partial apply for closure #2 in closure #1 in GlassEffectContextState.updateValue());

  result = outlined consume of Material?(v13, v14);
  *a2 = a1 & 1;
  return result;
}

uint64_t GlassEffectContextUpdatedMaterial.value.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v3 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    v4 = AGGraphGetValue();
    v6 = *v4;
    v5 = v4[1];
    *a1 = *v4;
    a1[1] = v5;

    return outlined copy of Material?(v6, v5);
  }

  else
  {
    v8 = *Value;
    v9 = Value[1];
    v10 = HIDWORD(v3);
    outlined copy of Material.ID(*Value, v3);
    AGGraphGetValue();
    result = AGGraphGetValue();
    if (v9 == 1)
    {
      v11 = *result;
      result = (*(*v8 + 120))();
      if (result)
      {
        v13 = v11;
        v12 = *(*v8 + 136);

        swift_retain_n();

        v12(&v14, &v13);
        outlined consume of Material?(v8, v3);

        v8 = v14;
        LOBYTE(v3) = v15;
        v10 = v16;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }

    *a1 = v8;
    a1[1] = v3 | (v10 << 32);
  }

  return result;
}

double GlassContainerCache.UnwrappedMaterial.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (v3 == 255)
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, a1);
  }

  else
  {
    if (v3 == 1 && (v5 = *v1, v6 = *(*v5 + 144), v7 = , v6(v9, v7), outlined consume of Material?(v5, v3), *&v9[0]))
    {
      v11 = v9[0];
      v12 = v9[1];
      v13 = v10;
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v11);
    }

    result = *&v11;
    v8 = v12;
    *a1 = v11;
    *(a1 + 16) = v8;
    *(a1 + 32) = v13;
  }

  return result;
}

uint64_t GlassContainerCache.UnwrappedMaterial.animatableData.setter(void *a1)
{
  if (v1[8] == 0xFF)
  {

    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    if (v1[8] == 1)
    {
      v4 = *v1;
      v5 = *(**v1 + 152);

      v6 = v1;
      v7 = v5(v8);
      outlined consume of Material.ID(v4, 1u);
      outlined destroy of _AnyAnimatableData(a1);
      outlined destroy of _AnyAnimatableData(v8);
      result = outlined consume of Material.ID(*v6, v6[8]);
      *v6 = v7;
      v6[8] = 1;
    }

    else
    {
      outlined destroy of _AnyAnimatableData(a1);
      return outlined destroy of _AnyAnimatableData(v8);
    }
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = v1[1];
  if (v5 == 255)
  {
    *(v3 + 72) = 0;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v4);
    if (*(v4 + 40))
    {
      outlined destroy of _AnyAnimatableData?(v4 + 40);
    }
  }

  else
  {
    if (v5 == 1 && (v6 = *v1, v7 = *(*v6 + 144), v8 = outlined copy of Material.ID(v6, 1u), v7(v12, v8), outlined consume of Material?(v6, v5), *&v12[0]))
    {
      v9 = v12[1];
      *(v4 + 40) = v12[0];
      *(v4 + 56) = v9;
      *(v4 + 72) = v13;
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, (v4 + 40));
    }

    v10 = *(v4 + 56);
    *v4 = *(v4 + 40);
    *(v4 + 16) = v10;
    *(v4 + 32) = *(v4 + 72);
  }

  return protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial;
}

void protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    GlassContainerCache.UnwrappedMaterial.animatableData.setter(v2 + 5);
  }

  else if (*(v3 + 8) != 0xFF)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    if (*(v3 + 8) == 1)
    {
      v4 = v2[10];
      v5 = *v4;
      v6 = *(**v4 + 152);

      v7 = v6(v2 + 5);
      outlined consume of Material.ID(v5, 1u);
      outlined destroy of _AnyAnimatableData((v2 + 5));
      outlined destroy of _AnyAnimatableData(v2);
      outlined consume of Material.ID(*v4, *(v4 + 8));
      *v4 = v7;
      *(v4 + 8) = 1;
      goto LABEL_8;
    }

    outlined destroy of _AnyAnimatableData((v2 + 5));
  }

  outlined destroy of _AnyAnimatableData(v2);
LABEL_8:

  free(v2);
}

uint64_t protocol witness for Rule.value.getter in conformance GlassEffectContextUnwrappedMaterial@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  return outlined copy of Material?(v4, v3);
}

void *GlassEffectContextTransaction.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *AGGraphGetValue();

  AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);

  if (*AGGraphGetValue() != v8)
  {
LABEL_12:

    return v4;
  }

  if (a3)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4)
  {
    if (v9)
    {
      if (v4[3])
      {
        _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
        swift_allocObject();
        swift_retain_n();

        v10.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v9, v4).value;
      }

      else
      {
        v11 = v4[4];
        v12 = *(*v4 + 216);

        v10.value = v12(v13, v11);
      }

      v4 = v10.value;
    }

    goto LABEL_12;
  }

  return v9;
}

void *protocol witness for Rule.value.getter in conformance GlassEffectContextTransaction@<X0>(void *a1@<X8>)
{
  result = GlassEffectContextTransaction.value.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t GlassEffectContextResolvedData.updateValue()()
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v73 - v10);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  Value = AGGraphGetValue();
  v22 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    return AGGraphSetOutputValue();
  }

  v83 = v14;
  v85 = v20;
  v24 = *Value;
  LODWORD(v86) = *(v0 + 44) + 1;
  *(v0 + 44) = v86;
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v82) = *MEMORY[0x1E698D3F8];
    v74 = v17;
    v75 = v8;
    v76 = v11;
    v84 = v3;
    v87 = v24;
    v88 = v22;
    outlined copy of Material?(v24, v22);
    v25 = AGCreateWeakAttribute();
    v26 = v25;
    v80 = HIDWORD(v25);
    v27 = AGCreateWeakAttribute();
    v89 = v0;
    v28 = v27;
    v79 = HIDWORD(v27);
    v29 = AGCreateWeakAttribute();
    v30 = v29;
    v78 = HIDWORD(v29);
    v31 = AGCreateWeakAttribute();
    v32 = v31;
    v77 = HIDWORD(v31);
    v8 = AGCreateWeakAttribute();
    v33 = AGCreateWeakAttribute();
    v34 = v33;
    v35 = HIDWORD(v33);
    v81 = _threadGeometryProxyData();
    *&v93 = __PAIR64__(v80, v26);
    *(&v93 + 1) = __PAIR64__(v79, v28);
    v22 = v89;
    *&v94 = __PAIR64__(v78, v30);
    *(&v94 + 1) = __PAIR64__(v77, v32);
    *&v95 = v8;
    *(&v95 + 1) = __PAIR64__(v35, v34);
    v96 = v86;
    _setThreadGeometryProxyData();
    v36 = AGGraphGetValue();
    v37 = v36[1];
    v90 = *v36;
    v91 = v37;
    type metadata accessor for CGSize(0);
    v11 = v38;

    v39 = AGGraphGetValue();
    _ShapeSet.Wrapper.pathSet(in:)(v92, *v39, v39[1]);

    _setThreadGeometryProxyData();
    v86 = v92[0];
    v1 = *&v92[1];
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v40 = static ObservationCenter._current;
  swift_beginAccess();
  v41 = pthread_getspecific(v40[2]);
  v42 = v84;
  if (!v41)
  {
    v43 = swift_slowAlloc();
    pthread_setspecific(v40[2], v43);
    *(&v94 + 1) = type metadata accessor for ObservationCenter();
    v40 = v40[3];
    *&v93 = v40;
    outlined init with take of Any(&v93, v43);

    v41 = v43;
  }

  outlined init with copy of Any(v41, &v93);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v44 = v90;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == v82)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = CurrentAttribute;
  swift_beginAccess();
  v79 = *(v44 + 24);
  *(v44 + 24) = MEMORY[0x1E69E7CC0];
  v46 = v74;
  (*(v42 + 56))(v74, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(StatusReg + 848);
  *(StatusReg + 848) = v46;
  closure #2 in GlassEffectContextResolvedData.updateValue()(v87, v88 & 0xFFFFFFFF000000FFLL, v22, v86, &v93, v1);
  *(StatusReg + 848) = v48;
  v81 = v93;
  v82 = BYTE8(v93);
  v49 = HIDWORD(v93);
  v50 = v85;
  outlined init with take of ObservationTracking._AccessList?(v46, v85);
  v51 = v83;
  outlined init with copy of ObservationTracking._AccessList?(v50, v83);
  v52 = (*(v42 + 48))(v51, 1, v2);
  v80 = v49;
  if (v52 != 1)
  {
    v54 = v51;
    v40 = *(v42 + 32);
    v55 = v76;
    (v40)(v76, v54, v2);
    (*(v42 + 16))(v75, v55, v2);
    v11 = *(v44 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v44 + 24) = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v58 = v11[2];
      v57 = v11[3];
      if (v58 >= v57 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v11);
      }

      v11[2] = v58 + 1;
      v59 = v84;
      (v40)(v11 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v84 + 72) * v58, v75, v2);
      v42 = v59;
      *(v44 + 24) = v11;
      (*(v59 + 8))(v76, v2);
      v53 = v85;
      goto LABEL_14;
    }

LABEL_22:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v44 + 24) = v11;
    goto LABEL_11;
  }

  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v50, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v53 = v51;
LABEL_14:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v53, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v60 = *(v44 + 24);
  v61 = *(v60 + 16);
  if (v61)
  {
    v64 = *(v42 + 16);
    v63 = v42 + 16;
    v62 = v64;
    v65 = v60 + ((*(v63 + 64) + 32) & ~*(v63 + 64));
    v66 = *(v63 + 56);
    v85 = *(v44 + 24);

    do
    {
      v62(v5, v65, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v8, v5);
      (*(v63 - 8))(v5, v2);
      v65 += v66;
      --v61;
    }

    while (v61);
  }

  *(v44 + 24) = v79;

  v67 = MEMORY[0x1E69E6720];
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  v68 = v81;
  v69 = v82;
  outlined copy of Material.ID(v81, v82);
  v70 = *AGGraphGetValue();
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, v71, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);

  v72 = *AGGraphGetValue();
  *&v93 = v86;
  *(&v93 + 1) = v1;
  *&v94 = v68;
  *(&v94 + 1) = v69 | (v80 << 32);
  *&v95 = v70;
  *(&v95 + 1) = v72;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, v67);

  AGGraphSetOutputValue();
  outlined consume of Material?(v87, v88);
  outlined consume of Material.ID(v68, v69);

  outlined consume of Material.ID(v68, v69);
}

uint64_t closure #2 in GlassEffectContextResolvedData.updateValue()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = a2;
  v12 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = Value[1];
  v16 = *(a3 + 40);
  *&v40 = *Value;
  *(&v40 + 1) = v15;
  *&v38[0] = a1;
  BYTE8(v38[0]) = v9;
  HIDWORD(v38[0]) = v12;

  v17 = EnvironmentValues.materialProvider(for:)(v38);
  if (v17)
  {
    v18 = v17;
    *&v38[0] = a4;
    *(v38 + 1) = a6;
    outlined copy of Material.ID(a1, v9);

    result = Material.ShapeMetrics.init(_:)(v38, &v40);
    v20 = v40;
    v21 = v41;
    if (*&v40 > v41)
    {
      __break(1u);
    }

    else
    {
      v26 = *(&v40 + 1);
      v33 = 0;
      v32 = 0;
      *&v34 = v14;
      *(&v34 + 1) = v15;
      LOBYTE(v35) = 3;
      v22 = v16;
      BYTE1(v35) = v16;
      *(&v35 + 1) = v40;
      *&v36 = v41;
      BYTE8(v36) = 0;
      *v37 = v40;
      *&v37[16] = v41;
      v37[24] = 0;
      v29 = v36;
      v30[0] = v40;
      *(v30 + 9) = *&v37[9];
      v27 = v34;
      v28 = v35;
      v23 = *(*v18 + 80);
      outlined init with copy of Material.Context(&v34, &v40);
      v23(&v31, &v27);

      v38[2] = v29;
      v39[0] = v30[0];
      *(v39 + 9) = *(v30 + 9);
      v38[0] = v27;
      v38[1] = v28;
      outlined destroy of Material.Context(v38);
      *&v40 = v14;
      *(&v40 + 1) = v15;
      LOBYTE(v41) = 3;
      BYTE1(v41) = v22;
      v42 = v20;
      v43 = v21;
      v44 = 0;
      v45 = v20;
      v46 = v26;
      v47 = v21;
      v48 = 0;
      outlined destroy of Material.Context(&v40);
      v24 = v31;
      outlined consume of Material.ID(a1, v9);
      *a5 = v24;
      *(a5 + 8) = 2;
      *(a5 + 12) = v12;
      outlined copy of Material.ID(v24, 2u);
      return outlined consume of Material.ID(v24, 2u);
    }
  }

  else
  {
    *&v40 = v14;
    *(&v40 + 1) = v15;
    v25 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v40);
    *a5 = a1;
    *(a5 + 8) = v9;
    *(a5 + 12) = v25 | v12;
    return outlined copy of Material.ID(a1, v9);
  }

  return result;
}

uint64_t GlassEffectContextDisplayList.updateValue()()
{
  v1 = v0;
  v112 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if (v0[6] == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = *Value;
    v3 = *(Value + 8);
    v4 = *(Value + 12);
  }

  v100 = v2;
  v101 = v3;
  v102 = v4;
  type metadata accessor for CGPoint(0);
  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  v9 = AGGraphGetValue();
  v10 = v7 - *v9;
  v11 = v8 - v9[1];
  v12 = ++static DisplayList.Version.lastValue;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
  v13 = AGGraphGetValue();
  v92 = *v13;
  if (!*v13)
  {
    *&__src[0] = v12;
    DisplayList.translate(by:version:)(__PAIR128__(*&v11, *&v10), __src);
    *&__src[0] = v100;
    WORD4(__src[0]) = v101;
    HIDWORD(__src[0]) = v102;
    AGGraphSetOutputValue();
  }

  v93 = v4;
  v15 = v13[1];
  v14 = v13[2];
  v16 = v13[3];
  v87 = v13[5];
  v88 = v15;
  v89 = v13[4];
  v90 = v16;
  v91 = v14;
  if (v16 != 2)
  {
LABEL_8:
    v18 = HIDWORD(v16);
    *&v110[72] = 0x20000000;
    v111 = 0;
    memset(v110, 0, 72);
    v19 = v16;
    v20 = v14;
    type metadata accessor for CGSize(0);
    v21 = v92;
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v20, v19);

    v22 = AGGraphGetValue();
    if (v12)
    {
      v23 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
    }

    else
    {
      LOWORD(v23) = 0;
    }

    v24 = MEMORY[0x1E69E7CC0];
    v25 = *v22;
    v26 = v22[1];
    v27 = *v0;
    v28 = v0[5];
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    v29 = v91;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
      v29 = v91;
    }

    v30 = static GraphicsBlendMode.normal;
    v31 = byte_1ED52F818;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    *&__src[0] = v92;
    *(&__src[0] + 1) = v88;
    *&__src[4] = 0;
    DWORD2(__src[6]) = 0x20000000;
    WORD6(__src[6]) = v23;
    *&__src[7] = v10;
    *(&__src[7] + 1) = v11;
    *&__src[8] = v25;
    *(&__src[8] + 1) = v26;
    *&__src[10] = v10;
    *(&__src[10] + 1) = v11;
    *&__src[11] = v25;
    *(&__src[11] + 1) = v26;
    __src[12] = v12;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = v27;
    BYTE12(__src[14]) = 0;
    LODWORD(__src[15]) = v28;
    v96 = v24;
    *&__dst[0] = v29;
    BYTE8(__dst[0]) = v90;
    HIDWORD(__dst[0]) = v18;
    BYTE5(__dst[5]) = 3;
    DWORD2(__dst[5]) = 1065353216;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = -1;
    *&__dst[7] = v24;
    LOBYTE(v104) = 0;
    outlined copy of Material.ID(v29, v90);
    outlined copy of GraphicsBlendMode(v30, v31);
    _ShapeStyle_Pack.subscript.setter(__dst, &v104, 0);
    LOBYTE(__dst[0]) = 0;
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v110, __src, &v96);
    LOBYTE(__dst[0]) = 0;
    _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v97);
    *&__dst[0] = v12;
    DisplayList.translate(by:version:)(__PAIR128__(*&v11, *&v10), __dst);
    v32 = *(v100 + 16);
    if (v32)
    {
      v33 = 0;
      v94 = v100 + 32;
      v34 = v97;
      while (1)
      {
        v36 = (v94 + 80 * v33);
        v37 = *(v36 + 60);
        v38 = v36[3];
        v39 = v36[1];
        __dst[2] = v36[2];
        __dst[3] = v38;
        *(&__dst[3] + 12) = v37;
        __dst[0] = *v36;
        __dst[1] = v39;
        v40 = *(&__dst[2] + 1);
        v42 = v38;
        v41 = v37 >> 32;
        v43 = DWORD1(v37) >> 30;
        if (DWORD1(v37) >> 30 == 3 && !(*&__dst[3] | *(&__dst[2] + 1) | *(&__dst[3] + 1)) && *&__dst[4] == 3221225472)
        {
          goto LABEL_18;
        }

        outlined init with copy of DisplayList.Item(__dst, &v104);
        outlined init with copy of DisplayList.Item(__dst, &v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v45 = *(v34 + 2);
        v44 = *(v34 + 3);
        if (v45 >= v44 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v34);
        }

        *(v34 + 2) = v45 + 1;
        v46 = &v34[80 * v45];
        *(v46 + 2) = __dst[0];
        v47 = __dst[1];
        v48 = __dst[2];
        v49 = __dst[3];
        *(v46 + 92) = *(&__dst[3] + 12);
        *(v46 + 4) = v48;
        *(v46 + 5) = v49;
        *(v46 + 3) = v47;
        v105 = __dst[1];
        v106 = __dst[2];
        v107[0] = __dst[3];
        *(v107 + 12) = *(&__dst[3] + 12);
        v104 = __dst[0];
        DisplayList.Item.features.getter(&v95);
        v98 |= v95;
        if (v43 > 1)
        {
          if (v43 == 2)
          {
            v50 = *(v40 + 16);
            if (v50)
            {
              if (v50 > 7)
              {
                v51 = v50 & 0x7FFFFFFFFFFFFFF8;
                v53 = (v40 + 188);
                v54 = 0uLL;
                v55 = v50 & 0x7FFFFFFFFFFFFFF8;
                v56 = 0uLL;
                do
                {
                  v57.i32[0] = *(v53 - 30);
                  v57.i32[1] = *(v53 - 20);
                  v57.i32[2] = *(v53 - 10);
                  v57.i32[3] = *v53;
                  v58.i32[0] = v53[10];
                  v58.i32[1] = v53[20];
                  v58.i32[2] = v53[30];
                  v58.i32[3] = v53[40];
                  v54 = vorrq_s8(v57, v54);
                  v56 = vorrq_s8(v58, v56);
                  v53 += 80;
                  v55 -= 8;
                }

                while (v55);
                v59 = vorrq_s8(v56, v54);
                v60 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
                v35 = v60.i32[0] | v60.i32[1];
                if (v50 == v51)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v35 = 0;
                v51 = 0;
              }

              v61 = v50 - v51;
              v62 = (v40 + 40 * v51 + 68);
              do
              {
                v63 = *v62;
                v62 += 10;
                v35 |= v63;
                --v61;
              }

              while (v61);
            }

            else
            {
              v35 = 0;
            }

LABEL_45:
            outlined destroy of DisplayList.Item(__dst);
            goto LABEL_17;
          }
        }

        else
        {
          if (v43)
          {
            switch(BYTE4(v42))
            {
              case 2u:

                v52 = v40;
                break;
              case 7u:
                v52 = *(v40 + 28);
                outlined init with copy of DisplayList.Item(__dst, &v104);
                outlined consume of DisplayList.Effect(v40, v42, 7);

                outlined destroy of DisplayList.Item(__dst);
                break;
              case 0x12u:
                (*(*v40 + 120))(&v95);
                outlined init with copy of DisplayList.Item(__dst, &v104);
                outlined consume of DisplayList.Effect(v40, v42, 18);

                outlined destroy of DisplayList.Item(__dst);
                v52 = v95;
                break;
              default:
                outlined copy of DisplayList.Effect(v40, v42, SBYTE4(v42));

                outlined consume of DisplayList.Effect(v40, v42, SBYTE4(v42));

                outlined destroy of DisplayList.Item(__dst);
                v52 = 0;
                break;
            }

            v35 = v52 | HIDWORD(v41);
            goto LABEL_17;
          }

          if (v40 >> 60 == 6 || v40 >> 60 == 11)
          {
            v35 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_45;
          }
        }

        outlined destroy of DisplayList.Item(__dst);
        v35 = 0;
LABEL_17:
        v99 |= v35;
LABEL_18:
        if (++v33 == v32)
        {
          v97 = v34;

          v21 = v92;
          goto LABEL_52;
        }
      }
    }

    v34 = v97;
LABEL_52:
    *&v104 = v34;
    WORD4(v104) = v98;
    HIDWORD(v104) = v99;
    AGGraphSetOutputValue();
    outlined consume of GlassEffectContextResolvedData.Data?(v21, v88, v91, v90);
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);

    v106 = *&v110[32];
    v107[0] = *&v110[48];
    v107[1] = *&v110[64];
    v108 = v111;
    v104 = *v110;
    v105 = *&v110[16];
    outlined destroy of _ShapeStyle_RenderedLayers(&v104);
  }

  *&__dst[0] = v13[2];
  Material.Layers.singletonSDFLayer.getter(__src);
  v17 = *&__src[0];
  if ((~*&__src[0] & 0xF000000000000007) == 0)
  {
    v16 = v90;
    v14 = v91;
    goto LABEL_8;
  }

  v65 = 0.5;
  if ((BYTE8(__src[0]) & 1) == 0)
  {
    v65 = 0.0;
  }

  if (*(__src + 3) == 0.0)
  {
    v66 = v65;
  }

  else
  {
    v66 = *(__src + 3);
  }

  v86 = DWORD2(__src[0]);
  if (v89)
  {
    v67 = v87;
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v91, v90);

    outlined copy of Material.Layer.SDFLayer?(v17);
    v68 = v89;
    if (v87)
    {
LABEL_61:
      v69 = v67;
      goto LABEL_70;
    }
  }

  else
  {
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v91, v90);

    outlined copy of Material.Layer.SDFLayer?(v17);
    v70 = AGGraphGetValue();
    v71 = *v70;
    if (*(v70 + 8))
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5(v71, __src);

      v68 = *&__src[0];
    }

    else
    {
      _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v72);
      v73 = *&__src[0];

      v75 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(v74, v73);
      if (v75)
      {
        v68 = v75[9];
      }

      else
      {
        v68 = 0;
      }
    }

    v67 = v87;
    if (v87)
    {
      goto LABEL_61;
    }
  }

  v69 = *(v1 + 4);

LABEL_70:
  v76 = *(v1 + 5);
  if (v68)
  {

    if (v76)
    {

      v77 = v68;
      if (v68 == v76)
      {
        goto LABEL_81;
      }

LABEL_78:
      *(v1 + 5) = v68;

      if (v68)
      {

        os_unfair_lock_lock((v77 + 16));
        v78 = *(v77 + 24);
        v79 = *(v77 + 28);
        os_unfair_lock_unlock((v77 + 16));
        LOBYTE(__src[0]) = v79;
        GlassEffectBackdropObserver.luminanceDidChange(_:)((v78 | (v79 << 32)));
      }

      goto LABEL_81;
    }

    v77 = v68;
LABEL_77:

    goto LABEL_78;
  }

  if (v76)
  {

    v77 = 0;
    goto LABEL_77;
  }

LABEL_81:
  if (*(v1 + 5))
  {
    v80 = 0;
  }

  else
  {

    v80 = v69;
  }

  v81 = swift_allocObject();
  v104 = 0uLL;
  *&v105 = v92;
  *(&v105 + 1) = v88;
  *&v106 = v17;
  *(&v106 + 1) = __PAIR64__(v86, LODWORD(v66));
  *&v107[0] = v80;
  *(v81 + 64) = v80;
  v82 = v105;
  *(v81 + 16) = v104;
  *(v81 + 32) = v82;
  *(v81 + 48) = v106;
  type metadata accessor for CGSize(0);
  outlined init with copy of SDFShape(&v104, __src);
  v83 = AGGraphGetValue();
  v84 = *v1;
  v85 = *v83;
  *__src = v10;
  *(__src + 1) = v11;
  __src[1] = v85;
  *&__src[2] = v12;
  *(&__src[2] + 1) = v81;
  *&__src[3] = 0x800000000;
  *(&__src[3] + 1) = v2;
  *&__src[4] = v3 | (v93 << 32) | 0x40000000;
  DWORD2(__src[4]) = v84;
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  *(&__dst[3] + 12) = *(&__src[3] + 12);
  __dst[0] = __src[0];
  __dst[1] = v85;
  outlined init with copy of DisplayList.Item(__src, v110);
  DisplayList.init(_:)(__dst, v110);
  *&__dst[0] = *v110;
  WORD4(__dst[0]) = *&v110[8];
  HIDWORD(__dst[0]) = *&v110[12];
  AGGraphSetOutputValue();
  outlined consume of GlassEffectContextResolvedData.Data?(v92, v88, v91, v90);
  outlined destroy of DisplayList.Item(__src);

  outlined consume of SDFStyle?(v17);

  __dst[0] = 0uLL;
  *&__dst[1] = v92;
  *(&__dst[1] + 1) = v88;
  *&__dst[2] = v17;
  *(&__dst[2] + 1) = __PAIR64__(v86, LODWORD(v66));
  *&__dst[3] = v80;
  return outlined destroy of SDFShape(__dst);
}

uint64_t GlassEffectShapeModifier.animatableData.setter(void *a1)
{
  v2 = v1;
  outlined init with copy of _AnyAnimatableData(a1, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 120);
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v9, v8);
    (*(*v5 + 104))(v8);
    outlined destroy of _AnyAnimatableData(a1);
    return outlined destroy of _AnyAnimatableData(v9);
  }

  else
  {
    v7 = (*(*v5 + 120))(v9);
    outlined destroy of _AnyAnimatableData(a1);
    outlined destroy of _AnyAnimatableData(v9);

    *(v2 + 120) = v7;
  }

  return result;
}

uint64_t closure #1 in GlassEffectShapeModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassMaterialShape>, &type metadata for GlassMaterialShape, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  *(v6 + 112) = *(a2 + 80);
  *(v6 + 128) = v8;
  v9 = *a2;
  v10 = *(a2 + 16);
  *(v6 + 16) = xmmword_18DDA6EB0;
  *(v6 + 32) = v9;
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  *(v6 + 48) = v10;
  *(v6 + 64) = v11;
  v14 = *(a2 + 112);
  v23 = *(a2 + 120);
  v13 = v23;
  *(v6 + 80) = v12;
  *(v6 + 96) = v7;
  *(v6 + 144) = v14;
  *(v6 + 152) = v13;
  *(v6 + 368) = *(a2 + 336);
  v15 = *(a2 + 320);
  *(v6 + 336) = *(a2 + 304);
  *(v6 + 352) = v15;
  v16 = *(a2 + 288);
  *(v6 + 304) = *(a2 + 272);
  *(v6 + 320) = v16;
  v17 = *(a2 + 256);
  *(v6 + 272) = *(a2 + 240);
  *(v6 + 288) = v17;
  v18 = *(a2 + 224);
  *(v6 + 240) = *(a2 + 208);
  *(v6 + 256) = v18;
  v19 = *(a2 + 192);
  *(v6 + 208) = *(a2 + 176);
  *(v6 + 224) = v19;
  v20 = *(a2 + 160);
  *(v6 + 176) = *(a2 + 144);
  *(v6 + 192) = v20;
  *(v6 + 160) = *(a2 + 128);
  *(v6 + 376) = v13;
  *(v6 + 384) = a1;
  *a3 = v6;
  outlined init with copy of GlassEffectShapeModifier(a2, v22);
  outlined init with copy of AnyShape(&v23, v22);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GlassEffectShapeModifier@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0x154uLL);
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for AnchorBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorBox);
  v3 = swift_allocObject();
  v4 = xmmword_1ED52E568;
  *(v3 + 16) = static UnitRect.one;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  memcpy((v5 + 16), v1, 0x154uLL);
  *a1 = v3;
  a1[1] = partial apply for closure #1 in GlassEffectShapeModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of GlassEffectShapeModifier(__dst, v7);
}

void (*protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  (*(**(v1 + 120) + 96))();
  return protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier;
}

void protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    GlassEffectShapeModifier.animatableData.setter(v2 + 5);
    outlined destroy of _AnyAnimatableData(v2);
  }

  else
  {
    GlassEffectShapeModifier.animatableData.setter(*a1);
  }

  free(v2);
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextState and conformance GlassEffectContextState()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextState and conformance GlassEffectContextState;
  if (!lazy protocol witness table cache variable for type GlassEffectContextState and conformance GlassEffectContextState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextState and conformance GlassEffectContextState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial;
  if (!lazy protocol witness table cache variable for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment;
  if (!lazy protocol witness table cache variable for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction;
  if (!lazy protocol witness table cache variable for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in GlassEffectContextState.updateValue()()
{
  AGGraphGetValue();
}

uint64_t outlined consume of GlassMaterialContext.State?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of GlassMaterialContext.State?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t destroy for GlassMaterialContextData.Init()
{
}

uint64_t initializeWithCopy for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for GlassMaterialContextData.Init(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();
  *(a1 + 8) = result;
  return result;
}