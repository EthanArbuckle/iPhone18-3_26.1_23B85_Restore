uint64_t initializeWithCopy for ViewListArchivedAnimation.Effect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 21) = *(a2 + 21);

  return a1;
}

uint64_t assignWithCopy for ViewListArchivedAnimation.Effect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithTake for ViewListArchivedAnimation.Effect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 21) = *(a2 + 21);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewListArchivedAnimation.Effect(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
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

uint64_t storeEnumTagSinglePayload for ViewListArchivedAnimation.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransitionHelper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = v7 + ((v6 + 12) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
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

    if (v14 < 2)
    {
LABEL_26:
      v16 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))(v16);
      }

      v17 = *(v16 + v7);
      if (v17 >= 3)
      {
        return v17 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

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

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for TransitionHelper(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 12) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 12) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
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
  v20 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
  if (v7 < 0xFD)
  {
    *(v20 + v10) = a2 + 2;
  }

  else
  {
    v21 = *(v6 + 56);

    v21(v20);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TransitionHelper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || v6 - ((-13 - v5) | v5) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v5 + 4) & ~v5;
    v15 = (v13 + v5 + 4) & ~v5;
    (*(v4 + 16))(v14, v15);
    *(v14 + v6) = *(v15 + v6);
  }

  return v3;
}

_DWORD *assignWithCopy for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 24))(v11, v12);
  *(*(v9 + 40) + v11) = *(*(v9 + 40) + v12);
  return a1;
}

_DWORD *initializeWithTake for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 32))(v11, v12);
  *(*(v9 + 32) + v11) = *(*(v9 + 32) + v12);
  return a1;
}

_DWORD *assignWithTake for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 40))(v11, v12);
  *(*(v9 + 24) + v11) = *(*(v9 + 24) + v12);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ViewListArchivedAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ViewListContentTransition<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

SwiftUI::LayoutProperties __swiftcall LayoutProperties.init()()
{
  *v0 = 2;
  *(v0 + 2) = 0;
  return result;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init(_:layoutDirection:)(SwiftUI::Spacing _, SwiftUI::LayoutDirection layoutDirection)
{
  v3 = *layoutDirection;
  *v2 = *_.minima._rawValue;
  *(v2 + 8) = v3;
  result.spacing = _;
  result.layoutDirection.value = layoutDirection;
  return result;
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance _ZStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance ZStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance VStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, void (*a4)(_BYTE *, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = outlined init with copy of _ViewListInputs(a1, v20);
  v10 = a2(v9);
  if (v12 == -1)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(v20, a5);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    if (v12)
    {
      v15 = v10;
      v10();
      v16 = v15;
    }

    else
    {
      v17 = v10;
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v13;
      outlined copy of BodyInputElement();
      a4(v20, a3, v18);

      v16 = v17;
    }

    outlined consume of BodyInputElement?(v16, v13, v14);
  }

  return outlined destroy of _ViewListInputs(v20);
}

uint64_t _ProposedSize.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

__n128 ViewSizeCache.init(cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance FlexibleButtonFrameLayout@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_18D3B0F84(*(a1 + 8), v2 | *(a1 + 16), a2);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance FlexibleButtonFrameLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t ProposedViewSize.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return a4;
  }

  else
  {
    return a2;
  }
}

uint64_t ProposedViewSize.init(_:in:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a4;
  }

  return a1;
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(__int128 *a1, uint64_t a2)
{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 0, 128, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVACyAA0ouE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0op10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGG_AA21_BackdropGroupEffect2VTt2B5, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 88, 48, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(a1, a2, 488, 48, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v20 = *a1;
  v21 = v3;
  v22 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v20, *&v9[0]);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v12 = *MEMORY[0x1E698D3F8];
  v13 = MEMORY[0x1E69E7CD0];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  swift_weakInit();
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v9[0] = v20;
  v9[1] = v21;
  v9[2] = v22;
  v10 = 0;
  v11 = v5;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v20, v8);
    AGSubgraphBeginTreeElement();
    specialized static View.makeViewList(view:inputs:)(OffsetAttribute2, v9, a2);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v20, v8);
    specialized static View.makeViewList(view:inputs:)(OffsetAttribute2, v9, a2);
  }

  return outlined destroy of _ViewListInputs(v9);
}

{
  v3 = a1[1];
  v19 = *a1;
  v20 = v3;
  v21 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v19, *&v8[0]);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  v11 = *MEMORY[0x1E698D3F8];
  v12 = MEMORY[0x1E69E7CD0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  swift_weakInit();
  v16 = 0;
  v17 = 0;
  v18 = -1;
  v8[0] = v19;
  v8[1] = v20;
  v8[2] = v21;
  v9 = 0;
  v10 = v5;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v19, v7);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(v8, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameL0VG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v19, v7);
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(v8, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameL0VG_Tt0t3g5, a2);
  }

  return outlined destroy of _ViewListInputs(v8);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *), void (*a6)(void))
{
  v8 = a1[1];
  v25 = *a1;
  v26 = v8;
  v27 = a1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v25, *&v14[0]);
  if (v9)
  {
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0;
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v17 = *MEMORY[0x1E698D3F8];
  v18 = MEMORY[0x1E69E7CD0];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  swift_weakInit();
  v22 = 0;
  v23 = 0;
  v24 = -1;
  v14[0] = v25;
  v14[1] = v26;
  v14[2] = v27;
  v15 = 0;
  v16 = v10;
  if (AGSubgraphShouldRecordTree())
  {
    a6(0);
    outlined init with copy of _GraphInputs(&v25, v13);
    AGSubgraphBeginTreeElement();
    a5(OffsetAttribute2, v14);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v25, v13);
    a5(OffsetAttribute2, v14);
  }

  return outlined destroy of _ViewListInputs(v14);
}

double ViewPlacementCache.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1;
  return result;
}

CGSize __swiftcall ProposedViewSize.replacingUnspecifiedDimensions(by:)(CGSize by)
{
  if ((v2 & 1) == 0)
  {
    by.width = v1;
  }

  if ((v4 & 1) == 0)
  {
    by.height = v3;
  }

  return by;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06ZStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06VStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06HStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06ZStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06VStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *), uint64_t a5)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, a5, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, a5, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *), uint64_t a5, void (*a6)(void, void, void), void (*a7)(uint64_t, __int128 *, uint64_t, _BYTE *))
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *(a2 + 36);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v47 = *(a2 + 32);
  v48 = v13;
  v49 = v14;
  v50 = *(a2 + 80);
  v15 = *(a2 + 16);
  v45 = *a2;
  v46 = v15;
  DWORD1(v47) = v12 & 0xFFFFFFF3;
  v51 = v11;
  v16 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v52);
  outlined init with copy of PropertyList(&v51, &v52);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v45, v16);
  outlined destroy of PropertyList(&v51);
  v17 = v45;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, v52);
  if (v18)
  {
    if ((*(v18 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v12 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = a1;
  v22 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v17, v52);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v45, v24);

  a6 = v22;
  a1 = v21;
  if ((v12 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v47) = v12 & 0xFFFFFFF3;
  }

LABEL_5:
  v41[2] = v47;
  v41[3] = v48;
  v41[4] = v49;
  v42 = v50;
  v41[0] = v45;
  v41[1] = v46;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v52 = v45;
  v53 = v46;
  v19 = outlined init with copy of _ViewInputs(v41, v43);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v19, &v52, a4);
  v43[2] = v54;
  v43[3] = v55;
  v43[4] = v56;
  v44 = v57;
  v43[0] = v52;
  v43[1] = v53;
  outlined destroy of _ViewInputs(v43);
  outlined init with copy of _ViewListOutputs.Views(v40, &v37);
  if (v39)
  {
    v20 = v37;
    if (v38)
    {
      LODWORD(v52) = v37;
      *(&v52 + 1) = v38;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v20 = Attribute.init<A>(body:value:flags:update:)();
    }

    v54 = v47;
    v55 = v48;
    v56 = v49;
    v57 = v50;
    v52 = v45;
    v53 = v46;
    a6(a1, &v52, v20);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v37, v30);
    v54 = v47;
    v55 = v48;
    v56 = v49;
    v57 = v50;
    v52 = v45;
    v53 = v46;
    if ((v12 & 0x800) != 0)
    {
      v25 = *(a2 + 48);
      v33 = *(a2 + 32);
      v34 = v25;
      v35 = *(a2 + 64);
      v36 = *(a2 + 80);
      v26 = *(a2 + 16);
      v31 = *a2;
      v32 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v31);
      a6(a1, &v52, v27);
    }

    else
    {
      a7(a1, &v52, 2, v30);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  outlined destroy of _ViewListOutputs(v40);
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v31 = v45;
  v32 = v46;
  outlined destroy of _ViewInputs(&v31);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void (*a5)(void *__return_ptr, _OWORD *, void), void (*a6)(void, void, void), void (*a7)(uint64_t, __int128 *, uint64_t, _BYTE *))
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v13 = *(a2 + 36);
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v43 = *(a2 + 32);
  v44 = v14;
  v45 = v15;
  v46 = *(a2 + 80);
  v16 = *(a2 + 16);
  v41 = *a2;
  v42 = v16;
  DWORD1(v43) = v13 & 0xFFFFFFF3;
  v47 = v12;
  v17 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, v54);
  outlined init with copy of PropertyList(&v47, v54);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v41, v17);
  outlined destroy of PropertyList(&v47);
  v18 = v41;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v18, *&v54[0]);
  if (v19)
  {
    if ((*(v19 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v13 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = a1;
  v22 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v18, *&v54[0]);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v41, v24);

  a6 = v22;
  a1 = v21;
  if ((v13 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v43) = v13 & 0xFFFFFFF3;
  }

LABEL_5:
  v54[2] = v43;
  v54[3] = v44;
  v54[4] = v45;
  v55 = v46;
  v54[0] = v41;
  v54[1] = v42;
  outlined init with copy of _ViewInputs(v54, &v48);
  a5(v40, v54, a4);
  outlined destroy of _ViewInputs(v54);
  outlined init with copy of _ViewListOutputs.Views(v40, &v37);
  if (v39)
  {
    v20 = v37;
    if (v38)
    {
      LODWORD(v48) = v37;
      *(&v48 + 1) = v38;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v20 = Attribute.init<A>(body:value:flags:update:)();
    }

    v50 = v43;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v48 = v41;
    v49 = v42;
    a6(a1, &v48, v20);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v37, v30);
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v48 = v41;
    v49 = v42;
    if ((v13 & 0x800) != 0)
    {
      v25 = *(a2 + 48);
      v33 = *(a2 + 32);
      v34 = v25;
      v35 = *(a2 + 64);
      v36 = *(a2 + 80);
      v26 = *(a2 + 16);
      v31 = *a2;
      v32 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v31);
      a6(a1, &v48, v27);
    }

    else
    {
      a7(a1, &v48, 2, v30);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  outlined destroy of _ViewListOutputs(v40);
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v31 = v41;
  v32 = v42;
  return outlined destroy of _ViewInputs(&v31);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), a4);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), a4);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (*a4)(void *__return_ptr, void, void)@<X4>, uint64_t a5@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v10;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v11 = *(a2 + 16);
  v43 = *a2;
  v44 = v11;
  outlined init with copy of _ViewInputs(a2, v56);
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v13 = dyld_program_sdk_at_least();
  }

  else
  {
    v13 = static Semantics.forced >= v12;
  }

  v14 = *a2;
  v15 = *(a2 + 36);
  DWORD1(v45) = v15 & 0xFFFFFFF3;
  v49 = v14;
  v16 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v16);
  outlined destroy of PropertyList(&v49);
  v17 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, *&v56[0]);
  if (v18)
  {
    if ((*(v18 + 72) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_10:
      if ((v15 & 0x800) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v31 = a3;
  v21 = a4;
  v22 = v13;
  v23 = a5;
  v24 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v25 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v17, *&v56[0]);
  if (v25)
  {
    v26 = *(v25 + 72) | 0x4000;
  }

  else
  {
    v26 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v26);

  a1 = v24;
  a5 = v23;
  v13 = v22;
  a4 = v21;
  a3 = v31;
  if ((v15 & 0x800) == 0)
  {
LABEL_11:
    DWORD1(v45) = v15 & 0xFFFFFFF3;
  }

LABEL_12:
  v56[2] = v45;
  v56[3] = v46;
  v56[4] = v47;
  v57 = v48;
  v56[0] = v43;
  v56[1] = v44;
  outlined init with copy of _ViewInputs(v56, &v50);
  a4(v42, v56, a3);
  outlined destroy of _ViewInputs(v56);
  outlined init with copy of _ViewListOutputs.Views(v42, &v39);
  if (v41)
  {
    v19 = v39;
    if (v40)
    {
      LODWORD(v50) = v39;
      *(&v50 + 1) = v40;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v19 = Attribute.init<A>(body:value:flags:update:)();
    }

    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v50, v19, a5);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v39, v32);
    if ((v15 & 0x800) != 0)
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      v50 = v43;
      v51 = v44;
      v27 = *(a2 + 48);
      v35 = *(a2 + 32);
      v36 = v27;
      v37 = *(a2 + 64);
      v38 = *(a2 + 80);
      v28 = *(a2 + 16);
      v33 = *a2;
      v34 = v28;
      v29 = _ViewListOutputs.makeAttribute(viewInputs:)(&v33);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v50, v29, a5);
    }

    else
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      if (v13)
      {
        v20 = 2;
      }

      else
      {
        v20 = 65794;
      }

      v50 = v43;
      v51 = v44;
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5(a1, &v50, v20, v32, a5);
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  outlined destroy of _ViewListOutputs(v42);
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  return outlined destroy of _ViewInputs(&v33);
}

uint64_t _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_ds29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_w4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(a2 + 36);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v41 = *(a2 + 32);
  v42 = v10;
  v43 = v11;
  v44 = *(a2 + 80);
  v12 = *(a2 + 16);
  v39 = *a2;
  v40 = v12;
  DWORD1(v41) = v9 & 0xFFFFFFF3;
  v45 = v8;
  v13 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v46);
  outlined init with copy of PropertyList(&v45, &v46);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v39, v13);
  outlined destroy of PropertyList(&v45);
  v14 = v39;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v46);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v14, v46);
  if (v18)
  {
    v19 = *(v18 + 72) | 0x4000;
  }

  else
  {
    v19 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v39, v19);

  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v41) = v9 & 0xFFFFFFF3;
  }

LABEL_5:
  v35[2] = v41;
  v35[3] = v42;
  v35[4] = v43;
  v36 = v44;
  v35[0] = v39;
  v35[1] = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  v46 = v39;
  v47 = v40;
  v16 = outlined init with copy of _ViewInputs(v35, v37);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v16, &v46, a3);
  v37[2] = v48;
  v37[3] = v49;
  v37[4] = v50;
  v38 = v51;
  v37[0] = v46;
  v37[1] = v47;
  outlined destroy of _ViewInputs(v37);
  outlined init with copy of _ViewListOutputs.Views(v34, &v31);
  if (v33)
  {
    v17 = v31;
    if (v32)
    {
      LODWORD(v46) = v31;
      *(&v46 + 1) = v32;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v17 = Attribute.init<A>(body:value:flags:update:)();
    }

    v48 = v41;
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v46 = v39;
    v47 = v40;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v46, v17, a4);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v31, v24);
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v46 = v39;
    v47 = v40;
    if ((v9 & 0x800) != 0)
    {
      v20 = *(a2 + 48);
      v27 = *(a2 + 32);
      v28 = v20;
      v29 = *(a2 + 64);
      v30 = *(a2 + 80);
      v21 = *(a2 + 16);
      v25 = *a2;
      v26 = v21;
      v22 = _ViewListOutputs.makeAttribute(viewInputs:)(&v25);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v46, v22, a4);
    }

    else
    {
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5(a1, &v46, 65538, v24, a4);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  outlined destroy of _ViewListOutputs(v34);
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v25 = v39;
  v26 = v40;
  outlined destroy of _ViewInputs(&v25);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X3>, uint64_t a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 36);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v39 = *(a2 + 32);
  v40 = v9;
  v41 = v10;
  v42 = *(a2 + 80);
  v11 = *(a2 + 16);
  v37 = *a2;
  v38 = v11;
  DWORD1(v39) = v8 | 0xC;
  outlined init with copy of _ViewInputs(a2, &v43);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v37, v43);
  if (v12)
  {
    if ((*(v12 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v37, v43);
  if (v15)
  {
    v16 = *(v15 + 72) | 0x4000;
  }

  else
  {
    v16 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v37, v16);

  if ((v8 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v39) = v8 | 0xC;
  }

LABEL_5:
  v33[2] = v39;
  v33[3] = v40;
  v33[4] = v41;
  v34 = v42;
  v33[0] = v37;
  v33[1] = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v43 = v37;
  v44 = v38;
  v13 = outlined init with copy of _ViewInputs(v33, v35);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v13, &v43, a3);
  v35[2] = v45;
  v35[3] = v46;
  v35[4] = v47;
  v36 = v48;
  v35[0] = v43;
  v35[1] = v44;
  outlined destroy of _ViewInputs(v35);
  outlined init with copy of _ViewListOutputs.Views(v32, &v29);
  if (v31)
  {
    v14 = v29;
    if (v30)
    {
      LODWORD(v43) = v29;
      *(&v43 + 1) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v14 = Attribute.init<A>(body:value:flags:update:)();
    }

    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    outlined init with copy of _ViewInputs(&v43, &v23);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5(a1, &v43, v14, a4);

    outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v29, v22);
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    if ((v8 & 0x800) != 0)
    {
      v17 = *(a2 + 48);
      v25 = *(a2 + 32);
      v26 = v17;
      v27 = *(a2 + 64);
      v28 = *(a2 + 80);
      v18 = *(a2 + 16);
      v23 = *a2;
      v24 = v18;
      outlined init with copy of _ViewInputs(&v43, v21);
      v19 = _ViewListOutputs.makeAttribute(viewInputs:)(&v23);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5(a1, &v43, v19, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v43, &v23);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5(a1, &v43, 0x10000, v22, a4);
    }

    outlined destroy of _ViewInputs(&v43);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  outlined destroy of _ViewListOutputs(v32);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v23 = v37;
  v24 = v38;
  outlined destroy of _ViewInputs(&v23);
}

{
  v49 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 36);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v39 = *(a2 + 32);
  v40 = v9;
  v41 = v10;
  v42 = *(a2 + 80);
  v11 = *(a2 + 16);
  v37 = *a2;
  v38 = v11;
  DWORD1(v39) = v8 & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, &v43);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v37, v43);
  if (v12)
  {
    if ((*(v12 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v37, v43);
  if (v15)
  {
    v16 = *(v15 + 72) | 0x4000;
  }

  else
  {
    v16 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v37, v16);

  if ((v8 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v39) = v8 & 0xFFFFFFF3 | 4;
  }

LABEL_5:
  v33[2] = v39;
  v33[3] = v40;
  v33[4] = v41;
  v34 = v42;
  v33[0] = v37;
  v33[1] = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v43 = v37;
  v44 = v38;
  v13 = outlined init with copy of _ViewInputs(v33, v35);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v13, &v43, a3);
  v35[2] = v45;
  v35[3] = v46;
  v35[4] = v47;
  v36 = v48;
  v35[0] = v43;
  v35[1] = v44;
  outlined destroy of _ViewInputs(v35);
  outlined init with copy of _ViewListOutputs.Views(v32, &v29);
  if (v31)
  {
    v14 = v29;
    if (v30)
    {
      LODWORD(v43) = v29;
      *(&v43 + 1) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v14 = Attribute.init<A>(body:value:flags:update:)();
    }

    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    outlined init with copy of _ViewInputs(&v43, &v23);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5(a1, &v43, v14, a4);

    outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v29, v22);
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    if ((v8 & 0x800) != 0)
    {
      v17 = *(a2 + 48);
      v25 = *(a2 + 32);
      v26 = v17;
      v27 = *(a2 + 64);
      v28 = *(a2 + 80);
      v18 = *(a2 + 16);
      v23 = *a2;
      v24 = v18;
      outlined init with copy of _ViewInputs(&v43, v21);
      v19 = _ViewListOutputs.makeAttribute(viewInputs:)(&v23);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5(a1, &v43, v19, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v43, &v23);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5(a1, &v43, 65537, v22, a4);
    }

    outlined destroy of _ViewInputs(&v43);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  outlined destroy of _ViewListOutputs(v32);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v23 = v37;
  v24 = v38;
  outlined destroy of _ViewInputs(&v23);
}

uint64_t _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a13UI13_Variadice38O4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_d21D04view6inputsAA01_D7i6VAA11_jk19VyAEy_xq_GG_AA01_D6l11VtFZAA01_d4m26J0VAA01_K0V_ARtXEfU0_AA07_c9F0VyAA019noP44O0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTG5AKyAA01_sE0O0U0Vy_AA01_cZ0VyATGAA01_E16Modifier_ContentVyAA0noP8ModifierVGGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a2 + 36);
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v36 = *(a2 + 32);
  v37 = v8;
  v38 = v9;
  v10 = *(a2 + 80);
  v11 = *(a2 + 16);
  v34 = *a2;
  v35 = v11;
  v39 = v10;
  DWORD1(v36) = v7 & 0xFFFFFFF3;
  v40 = v6;
  v12 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, v47);
  outlined init with copy of PropertyList(&v40, v47);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v34, v12);
  outlined destroy of PropertyList(&v40);
  v13 = v34;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v13, *&v47[0]);
  if (v14)
  {
    if ((*(v14 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v7 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v13, *&v47[0]);
  if (v16)
  {
    v17 = *(v16 + 72) | 0x4000;
  }

  else
  {
    v17 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v34, v17);

  if ((v7 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v36) = v7 & 0xFFFFFFF3;
  }

LABEL_5:
  v47[2] = v36;
  v47[3] = v37;
  v47[4] = v38;
  v48 = v39;
  v47[0] = v34;
  v47[1] = v35;
  outlined init with copy of _ViewInputs(v47, &v41);
  specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(v47, v33);
  outlined destroy of _ViewInputs(v47);
  outlined init with copy of _ViewListOutputs.Views(v33, &v30);
  if (v32)
  {
    v15 = v30;
    if (v31)
    {
      LODWORD(v41) = v30;
      *(&v41 + 1) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v15 = Attribute.init<A>(body:value:flags:update:)();
    }

    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v41 = v34;
    v42 = v35;
    outlined init with copy of _ViewInputs(&v41, &v24);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v41, v15, a3);

    outlined destroy of _ViewInputs(&v41);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v30, v23);
    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v41 = v34;
    v42 = v35;
    if ((v7 & 0x800) != 0)
    {
      v18 = *(a2 + 48);
      v26 = *(a2 + 32);
      v27 = v18;
      v28 = *(a2 + 64);
      v29 = *(a2 + 80);
      v19 = *(a2 + 16);
      v24 = *a2;
      v25 = v19;
      outlined init with copy of _ViewInputs(&v41, v22);
      v20 = _ViewListOutputs.makeAttribute(viewInputs:)(&v24);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v41, v20, a3);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v41, &v24);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5(a1, &v41, 2, v23, a3);
    }

    outlined destroy of _ViewInputs(&v41);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  outlined destroy of _ViewListOutputs(v33);
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v24 = v34;
  v25 = v35;
  return outlined destroy of _ViewInputs(&v24);
}

uint64_t _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_du29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_y4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(a2 + 36);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v45 = *(a2 + 32);
  v46 = v10;
  v47 = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 16);
  v43 = *a2;
  v44 = v13;
  v48 = v12;
  DWORD1(v45) = v9 & 0xFFFFFFF3;
  v49 = v8;
  v14 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v50);
  outlined init with copy of PropertyList(&v49, &v50);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v14);
  outlined destroy of PropertyList(&v49);
  v15 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v15, v50);
  if (v16)
  {
    if ((*(v16 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v19 = a4;
  v20 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v21 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v15, v50);
  if (v21)
  {
    v22 = *(v21 + 72) | 0x4000;
  }

  else
  {
    v22 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v22);

  a1 = v20;
  a4 = v19;
  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v45) = v9 & 0xFFFFFFF3;
  }

LABEL_5:
  v39[2] = v45;
  v39[3] = v46;
  v39[4] = v47;
  v40 = v48;
  v39[0] = v43;
  v39[1] = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v50 = v43;
  v51 = v44;
  v17 = outlined init with copy of _ViewInputs(v39, v41);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v17, &v50, a3);
  v41[2] = v52;
  v41[3] = v53;
  v41[4] = v54;
  v42 = v55;
  v41[0] = v50;
  v41[1] = v51;
  outlined destroy of _ViewInputs(v41);
  outlined init with copy of _ViewListOutputs.Views(v38, &v35);
  if (v37)
  {
    v18 = v35;
    if (v36)
    {
      LODWORD(v50) = v35;
      *(&v50 + 1) = v36;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v18 = Attribute.init<A>(body:value:flags:update:)();
    }

    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    outlined init with copy of _ViewInputs(&v50, &v29);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v50, v18, a4);

    outlined destroy of _ViewInputs(&v50);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v35, v28);
    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    if ((v9 & 0x800) != 0)
    {
      v23 = *(a2 + 48);
      v31 = *(a2 + 32);
      v32 = v23;
      v33 = *(a2 + 64);
      v34 = *(a2 + 80);
      v24 = *(a2 + 16);
      v29 = *a2;
      v30 = v24;
      outlined init with copy of _ViewInputs(&v50, v27);
      v25 = _ViewListOutputs.makeAttribute(viewInputs:)(&v29);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v50, v25, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v50, &v29);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5(a1, &v50, 2, v28, a4);
    }

    outlined destroy of _ViewInputs(&v50);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  outlined destroy of _ViewListOutputs(v38);
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v29 = v43;
  v30 = v44;
  outlined destroy of _ViewInputs(&v29);
}

uint64_t _ViewInputs.needsDynamicLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFF7FF | v2;
  return result;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  *(v1 + 8) = 2;
  result.spacing.minima._rawValue = v2;
  result.layoutDirection.value = v3;
  return result;
}

uint64_t ViewSpacing.formUnion(_:edges:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(v1 + 8) != 2)
  {
    v3 = *(v1 + 8);
  }

  *(v1 + 8) = v3;
  v7 = v3 & 1;
  AbsoluteEdge.Set.init(_:layoutDirection:)(&v7, &v6);
  v5 = v2;

  Spacing.incorporate(_:of:)(&v6, &v5);
}

uint64_t ProposedViewSize.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ProposedViewSize.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ProposedViewSize.subscript.setter(uint64_t result, char a2, char a3)
{
  v4 = 24;
  if ((a3 & 1) == 0)
  {
    v4 = 8;
  }

  *(v3 + 16 * (a3 & 1)) = result;
  *(v3 + v4) = a2 & 1;
  return result;
}

uint64_t (*ProposedViewSize.subscript.modify(uint64_t a1, char a2))(uint64_t result)
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 8);
  v4 = (v2 + 16);
  if ((a2 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *v4;
  if (a2)
  {
    v3 = (v2 + 24);
  }

  v6 = *v3;
  *a1 = v5;
  *(a1 + 8) = v6;
  return _ProposedSize.subscript.modify;
}

uint64_t static ProposedViewSize.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a6 & 1) != 0 || *&a1 != *&a5)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || *&a3 != *&a7)
    {
      return 0;
    }

    return 1;
  }

  if (a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProposedViewSize(uint64_t a1, uint64_t a2)
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

uint64_t ViewSpacing.spacing.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init(_:)(SwiftUI::Spacing a1)
{
  *v1 = *a1.minima._rawValue;
  *(v1 + 8) = 2;
  result.spacing = a1;
  return result;
}

uint64_t static ViewSpacing.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1ED52A120;
  *a1 = static ViewSpacing.zero;
  *(a1 + 8) = v2;
}

uint64_t ViewSpacing.union(_:edges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v6;
  v8 = v4;
  v9 = v5;

  return ViewSpacing.formUnion(_:edges:)(&v8);
}

double ViewSpacing.distance(to:along:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v10 = *(v2 + 8) & 1;
  v9 = v3;
  v4 = a2 & 1;

  v5 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v4, &v10, &v9);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    return *&v5;
  }

  swift_beginAccess();
  v7 = &dbl_1EAB21528;
  if (!v4)
  {
    v7 = &static Spacing.defaultValue;
  }

  return *v7;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LayoutSubviews.Storage(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLO17IndexedAttributesV_Tt1g5(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21LayoutProxyAttributesV_Tt1g5(v4, v5);
}

char *LayoutSubviews.subscript.getter@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return specialized LayoutSubviews.selecting<A>(indices:)(a1, a2, *v3, *(v3 + 8), v4 | *(v3 + 16), a3);
}

char *specialized LayoutSubviews.selecting<A>(indices:)@<X0>(char *result@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a2;
  v7 = result;
  v22 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = a6;
  v13 = v22;
  if (v8)
  {
    if (v6 < v7)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = a4 + 32 + 12 * v7;
    while (v6 != v7)
    {
      if (a5)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v7 >= *(a4 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(v14 + 8);
        v16 = v14;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v7 >= *(a4 + 16))
        {
          goto LABEL_23;
        }

        v16 = (a4 + 32 + 8 * v7);
        v15 = v7;
      }

      v17 = *v16;
      v23 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v13 = v23;
      }

      ++v7;
      *(v13 + 16) = v19 + 1;
      v20 = v13 + 12 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v15;
      v14 += 12;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 == v6)
  {
LABEL_19:
    *v21 = a3;
    *(v21 + 8) = v13;
    *(v21 + 16) = 1;
    *(v21 + 17) = HIBYTE(a5) & 1;
    return result;
  }

LABEL_28:
  if (v6 < v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t LayoutSubviews.selecting<A>(indices:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 1);
  v8 = *(v4 + 16);
  v9 = *(v4 + 17);
  v12 = *v4;
  v6 = v12;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  result = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in LayoutSubviews.selecting<A>(indices:), &v11, a1, &type metadata for LayoutSubviews.Storage.IndexedAttributes, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a3);
  *a4 = v6;
  *(a4 + 8) = result;
  *(a4 + 16) = 1;
  *(a4 + 17) = v9;
  return result;
}

unint64_t *closure #1 in LayoutSubviews.selecting<A>(indices:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (a3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *(a2 + 16))
      {
        v4 = a2 + 12 * v4;
        v5 = (v4 + 32);
        LODWORD(v4) = *(v4 + 40);
LABEL_8:
        *a4 = *v5;
        *(a4 + 8) = v4;
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (v4 < *(a2 + 16))
  {
    v5 = (a2 + 8 * v4 + 32);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *protocol witness for Collection.subscript.getter in conformance LayoutSubviews@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return specialized LayoutSubviews.selecting<A>(indices:)(*a1, a1[1], *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance LayoutSubviews()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

double LayoutSubview.proxy.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = v2;
  return result;
}

uint64_t LayoutSubview.lengthThatFits(_:in:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = *(v5 + 2);
  v12 = *v5;
  v13 = v6;
  v8 = a1;
  v9 = a2 & 1;
  v10 = a3;
  v11 = a4 & 1;
  return LayoutProxy.lengthThatFits(_:in:)(&v8, a5 & 1);
}

uint64_t AnyLayoutProperties.value.getter()
{
  v0 = *(**AGGraphGetValue() + 80);

  v0(&v3, v1);

  return v3;
}

uint64_t protocol witness for Rule.value.getter in conformance AnyLayoutProperties@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(**AGGraphGetValue() + 80);

  v2(&v5, v3);

  *a1 = v5;
  return result;
}

Swift::Void __swiftcall ViewLayoutEngine.updateCache()()
{
  v2 = v0;
  v3 = *(v1 + *(v0 + 44));
  v4 = *(v1 + *(v0 + 40));

  v6 = 0;
  v7 = v3;
  (*(*(v2 + 24) + 40))(v1 + *(v2 + 36), &v4, *(v2 + 16));
}

uint64_t _GraphInputs.needsDynamicLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFF7FF | v2;
  return result;
}

uint64_t (*_GraphInputs.needsDynamicLayout.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x800) != 0;
  return _GraphInputs.needsDynamicLayout.modify;
}

uint64_t (*_ViewInputs.needsDynamicLayout.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x800) != 0;
  return _ViewInputs.needsDynamicLayout.modify;
}

uint64_t _ViewInputs.needsDynamicLayout.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 2048;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFF7FF;
  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for _ValueActionModifier2);
    AGSubgraphBeginTreeElement();
  }

  v7 = *(a1 + 24);
  v8 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v9 = *(v8 + 64);

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>();
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type ValueActionDispatcher<_ValueActionModifier2<Int>> and conformance ValueActionDispatcher<A>, type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>);
  Attribute.init<A>(body:value:flags:update:)();
  v11[0] = OffsetAttribute2;
  v11[1] = v7;
  v12 = 0;
  v13 = 0u;
  v14 = 0;
  v15 = v9;
  v16 = 0xFFFFFFFFLL;
  v17 = 0;
  outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(v11);
  AGGraphSetFlags();
  AGGraphCreateOffsetAttribute2();
  if ((v6 & 1) == 0)
  {
    return _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5, a2);
  }

  type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>();
  AGSubgraphBeginTreeElement();
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5, a2);
  AGSubgraphEndTreeElement();
  return AGSubgraphEndTreeElement();
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0pF0ATLLVTt2B5@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v8 = a2[1];
    v12 = *a2;
    v13 = v8;
    v14 = a2[2];
    v11 = OffsetAttribute2;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v11, &v12);
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5(v11, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    v14 = a2[2];
    v11 = OffsetAttribute2;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v11, &v12);
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5(v11, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYG_AA05_BlurZ0VTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>();
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseV033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseV033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0O21AppearanceScaleEffectATLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>();
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>();
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5() & 1) == 0)
  {
    AGGraphCreateOffsetAttribute2();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5(a2, a3);
      AGSubgraphEndTreeElement();
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5(a2, a3);
    }

    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
    if (!ShouldRecordTree)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v11 = HIDWORD(v9);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 20) = v11;
  *(v12 + 24) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v12 + 32) = v7;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA28GlassEffectContainerModifier33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt0t3g5(a2, _s7SwiftUI12ViewModifierPAAE09makeUnaryC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cG6InputsVAiA01_L0V_ANtctFZAA01_cK0VAA01_cN0VcfU_AA020GlassEffectContainerD033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2G5TA, v12, a3);

  if (ShouldRecordTree)
  {
LABEL_10:
    AGSubgraphEndTreeElement();
  }

LABEL_11:
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectLocalL008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectLocalL008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015FlexInteractionL0VG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015FlexInteractionL0VG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  *(v11 + 24) = &type metadata for GlassMaterialEffect;
  *(v11 + 32) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v11 + 40) = v6;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3g5(&type metadata for GlassMaterialEffect, a2, partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:), v11, a3);

  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(a1, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVG_AA0st15FlexInteractionF0AXLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v5 = AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5(v5, a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v7 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5(v7, a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  *(v11 + 24) = &type metadata for GlassEntryInteractionModifier;
  *(v11 + 32) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v11 + 40) = v6;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3g5(&type metadata for GlassEntryInteractionModifier, a2, partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:), v11, a3);

  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0s18EffectPlatformItemF0AXLLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v5 = AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v5, a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v7 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v7, a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = a2[1];
  v29[0] = *a2;
  v29[1] = v9;
  v29[2] = a2[2];
  LODWORD(v26) = OffsetAttribute2;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(&v26, v29);
  v10 = v26;
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassEffectShapeModifier, &v26);
  v11 = v26;
  v12 = v27;
  v13 = v28;
  outlined init with copy of _ViewListInputs(a2, &v26);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  LOBYTE(v21) = v12;
  v20 = v10;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v26, v11, *(&v11 + 1), v12 | (v13 << 32), v10, &v21);
  v18 = v22;
  v19 = *(&v21 + 1);
  v14 = BYTE8(v22);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, 1);
  if (!ShouldRecordTree)
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v26, &v21);
    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of _ViewListInputs(&v26);
    outlined consume of DynamicPropertyCache.Fields.Layout();
    goto LABEL_9;
  }

  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
  AGSubgraphBeginTreeElement();
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v26, &v21);
  AGSubgraphEndTreeElement();
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v20, v11, *(&v11 + 1), v12, v19, v18);
  outlined consume of DynamicPropertyCache.Fields.Layout();
  outlined destroy of _ViewListInputs(&v26);
LABEL_9:
  v15 = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v15;
  *(a3 + 64) = v25;
  v16 = v22;
  *a3 = v21;
  *(a3 + 16) = v16;
  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a1, v16);
  v14 = __PAIR64__(*(a1 + 64), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait();
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait);
  v17 = Attribute.init<A>(body:value:flags:update:)();
  v7 = v18;
  if (v18)
  {
    v8 = v19;
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v14 = v7;
    v15 = v8 & 1;
    v18 = 0;
    v19 = 0;
    specialized Set._Variant.insert(_:)(&v13, v9);
    v10 = v14;
    v11 = v15;

    v18 = v10;
    v19 = v11;
  }

  AGGraphCreateOffsetAttribute2();
  if (v6)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5(v16, a2);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v16);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5(v16, a2);
    return outlined destroy of _ViewListInputs(v16);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a1, v13);
  v11 = __PAIR64__(*(a1 + 64), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>.AddTrait, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  if (v15)
  {
    v11 = v15;
    v12 = v16 & 1;
    v15 = 0;
    v16 = 0;
    specialized Set._Variant.insert(_:)(&v10, &type metadata for TransitionTraitKey);
    v7 = v11;
    v8 = v12;

    v15 = v7;
    v16 = v8;
  }

  AGGraphCreateOffsetAttribute2();
  if (v6)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>();
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5(v13, a2);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v13);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5(v13, a2);
    return outlined destroy of _ViewListInputs(v13);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v5 = AGGraphCreateOffsetAttribute2();
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, &type metadata for PrimitiveGlassItemView, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(v5, a1, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v7 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(v7, a1, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  static DynamicPropertyCache.fields(of:)(&type metadata for GlassTransitionStateModifier, v27);
  v10 = v27[0];
  v9 = v27[1];
  v11 = v28;
  v12 = v29;
  outlined init with copy of _ViewListInputs(a2, v27);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  LOBYTE(v22) = v11;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v27, v10, v9, v11 | (v12 << 32), OffsetAttribute2, &v22);
  v13 = v22;
  v18 = v23;
  v19 = *(&v22 + 1);
  v14 = BYTE8(v23);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a3, v7, 1);
  if (!ShouldRecordTree)
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v13, v27, &v22);
    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of _ViewListInputs(v27);
    outlined consume of DynamicPropertyCache.Fields.Layout();
    goto LABEL_9;
  }

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
  AGSubgraphBeginTreeElement();
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v13, v27, &v22);
  AGSubgraphEndTreeElement();
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(OffsetAttribute2, v10, v9, v11, v19, v18);
  outlined consume of DynamicPropertyCache.Fields.Layout();
  outlined destroy of _ViewListInputs(v27);
LABEL_9:
  v15 = v25;
  *(a4 + 32) = v24;
  *(a4 + 48) = v15;
  *(a4 + 64) = v26;
  v16 = v23;
  *a4 = v22;
  *(a4 + 16) = v16;
  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVACyAA0ouE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0op10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGG_AA21_BackdropGroupEffect2VTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for GlassContainerResolver);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (v6)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA0m17CaptureProtectioncL0VG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA0m17CaptureProtectioncL0VG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(uint64_t a1, __int128 *a2)
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v5 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
  v6 = AGGraphCreateOffsetAttribute2();
  if (v5)
  {
    v7 = v6;
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(v7, a2, 176, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(v6, a2, 176, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, __int128 *))
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v10 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  a4(0);
  v11 = AGGraphCreateOffsetAttribute2();
  if (v10)
  {
    v12 = v11;
    AGSubgraphBeginTreeElement();
    a5(v12, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    a5(v11, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015SafeAreaPaddingF0VG_AA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (v6)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5, _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cV0VAA01_cY0VcfU_TA_0, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5, _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cV0VAA01_cY0VcfU_TA_0, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for _EnvironmentKeyWritingModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a1, v14);
  v7 = v15;
  swift_beginAccess();
  v13 = *(v7 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(0, &lazy cache variable for type metadata for ChildEnvironment<Font?>, type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<Font?> and conformance ChildEnvironment<A>();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v9 = MEMORY[0x1E69E7CC0];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 256;
  *(v11 + 82) = OffsetAttribute2;
  *(v11 + 86) = v13;
  *(v11 + 88) = v10;

  v15 = v11;
  if ((v16 & 0x20) == 0)
  {
    v16 |= 0x20u;
  }

  _s7SwiftUI15ModifiedContentVyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySbGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  AGGraphCreateOffsetAttribute2();
  if (v6)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5(v14, a2);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v14);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5(v14, a2);
    return outlined destroy of _ViewListInputs(v14);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a1, &v10);
  _s7SwiftUI25_ValueTransactionModifierV11_makeInputs8modifier6inputsyAA06_GraphC0VyACyxGG_AA01_jG0VztFZSb_Tt1B5(OffsetAttribute2, &v10);
  v6 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    v7 = v6;
    AGSubgraphBeginTreeElement();
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v9 = v7;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v9, &v13);
    _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v9, &v10, a2);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(&v10);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v9 = v6;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v9, &v13);
    _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v9, &v10, a2);
    return outlined destroy of _ViewListInputs(&v10);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    AGSubgraphBeginTreeElement();
    static Text._makeViewList(view:inputs:)(a1, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    static Text._makeViewList(view:inputs:)(a1, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a1);
  }
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GlassEffectLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GlassEntryLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI25_ValueTransactionModifierV11_makeInputs8modifier6inputsyAA06_GraphC0VyACyxGG_AA01_jG0VztFZSb_Tt1B5(uint64_t a1, uint64_t a2)
{
  AGGraphCreateOffsetAttribute2();
  specialized static GraphHost.currentHost.getter();
  swift_beginAccess();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ValueTransactionSeed<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for ValueTransactionSeed);
  lazy protocol witness table accessor for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>();
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type Map<_ValueTransactionModifier<Bool>, (_:)> and conformance Map<A, B>, type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>);
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a2 + 28) = result;
  return result;
}

uint64_t specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t)@<X7>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v11;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a6 = MEMORY[0x1E69E7CC0];
    *(a6 + 8) = 0;
    *(a6 + 12) = result;
  }

  else
  {
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;

    a5(v14, v16, a4, v15);
  }

  return result;
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  if (!AGSubgraphShouldRecordTree())
  {
    return _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_Tt0t3g5, a2);
  }

  type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
  AGSubgraphBeginTreeElement();
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_Tt0t3g5, a2);

  return AGSubgraphEndTreeElement();
}

{
  AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5(a1, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {

    return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5(a1, a2);
  }
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    a5(0);
    AGSubgraphBeginTreeElement();
    a6(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {

    return (a6)(OffsetAttribute2, a2);
  }
}

uint64_t specialized static LayoutSubview.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))))
  {
    return (a2[1].u8[0] ^ a1[1].u8[0] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static LayoutSubviews.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 17);
  v6 = *(a2 + 8);
  v7 = *(a2 + 17);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) != 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21LayoutProxyAttributesV_Tt1g5(v3, v6) & 1) == 0)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  if (*(a2 + 16) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLO17IndexedAttributesV_Tt1g5(v3, v6))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for IndexingIterator<LayoutSubviews>, lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews, &type metadata for LayoutSubviews, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyLayoutProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of Layout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return (*(a9 + 72))(a1);
}

{
  return (*(a9 + 80))(a1);
}

uint64_t getEnumTagSinglePayload for LayoutProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutProperties(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
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

uint64_t assignWithCopy for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for LayoutSubviews(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewSizeCache(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 161))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ViewSizeCache(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 161) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewPlacementCache(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 305))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ViewPlacementCache(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 305) = v3;
  return result;
}

uint64_t assignWithCopy for LayoutSubviews.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (v7 + v10) & ~v10;
  v13 = *(v9 + 64);
  v14 = ((((((v13 + v12 + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v10 | *(v6 + 80) & 0xF8;
  if (v15 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  else
  {
    v19 = AssociatedTypeWitness;
    v20 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    v21 = (a1 + v11) & v20;
    v22 = (a2 + v11) & v20;
    (*(v9 + 16))(v21, v22, v19);
    v23 = (v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 16) = *(v24 + 16);
    v25 = (v21 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v22 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 112);
    v28 = *(v26 + 128);
    v29 = *(v26 + 144);
    *(v25 + 160) = *(v26 + 160);
    *(v25 + 128) = v28;
    *(v25 + 144) = v29;
    *(v25 + 112) = v27;
    v30 = *(v26 + 48);
    v31 = *(v26 + 64);
    v32 = *(v26 + 96);
    *(v25 + 80) = *(v26 + 80);
    *(v25 + 96) = v32;
    *(v25 + 48) = v30;
    *(v25 + 64) = v31;
    v33 = *v26;
    v34 = *(v26 + 32);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 32) = v34;
    *v25 = v33;
    v35 = ((v21 + v13 + 199) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v22 + v13 + 199) & 0xFFFFFFFFFFFFFFF8);
    v37 = v36[1];
    *v35 = *v36;
    v35[1] = v37;
    v38 = ((v35 + 39) & 0xFFFFFFFFFFFFFFF8);
    v39 = ((v36 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v38 = *v39;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v44 = *(v41 + 48);
    *(v40 + 64) = *(v41 + 64);
    *(v40 + 32) = v43;
    *(v40 + 48) = v44;
    *(v40 + 16) = v42;
    *v40 = *v41;
    *((v38 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 87) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t assignWithCopy for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  *(v18 + 48) = *(v19 + 48);
  *(v18 + 16) = v21;
  *(v18 + 32) = v22;
  *v18 = v20;
  v23 = *(v19 + 56);
  v24 = *(v19 + 72);
  v25 = *(v19 + 88);
  *(v18 + 104) = *(v19 + 104);
  *(v18 + 88) = v25;
  *(v18 + 72) = v24;
  *(v18 + 56) = v23;
  v26 = *(v19 + 112);
  v27 = *(v19 + 128);
  v28 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v27;
  *(v18 + 144) = v28;
  *(v18 + 112) = v26;
  v29 = (v14 + 199) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *(v29 + 8) = v30[1];
  *(v29 + 16) = v30[2];
  *(v29 + 24) = v30[3];
  v29 += 39;
  v31 = ((v30 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v31;
  v33 = (v29 & 0xFFFFFFFFFFFFFFF8) + 87;

  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = *(v35 + 24);
  *(v34 + 40) = *(v35 + 40);
  *(v34 + 24) = v37;
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 48) = v38;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *((v31 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 32);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 112);
  v21 = *(v19 + 128);
  v22 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v21;
  *(v18 + 144) = v22;
  *(v18 + 112) = v20;
  v23 = *(v19 + 48);
  v24 = *(v19 + 64);
  v25 = *(v19 + 96);
  *(v18 + 80) = *(v19 + 80);
  *(v18 + 96) = v25;
  *(v18 + 48) = v23;
  *(v18 + 64) = v24;
  v26 = *v19;
  v27 = *(v19 + 32);
  *(v18 + 16) = *(v19 + 16);
  *(v18 + 32) = v27;
  *v18 = v26;
  v28 = ((v14 + 199) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 16);
  v36 = *(v34 + 32);
  v37 = *(v34 + 48);
  *(v33 + 64) = *(v34 + 64);
  *(v33 + 32) = v36;
  *(v33 + 48) = v37;
  *(v33 + 16) = v35;
  *v33 = *v34;
  *((v31 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 87) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 24);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  *(v18 + 48) = *(v19 + 48);
  *(v18 + 16) = v21;
  *(v18 + 32) = v22;
  *v18 = v20;
  v23 = *(v19 + 56);
  v24 = *(v19 + 72);
  v25 = *(v19 + 88);
  *(v18 + 104) = *(v19 + 104);
  *(v18 + 88) = v25;
  *(v18 + 72) = v24;
  *(v18 + 56) = v23;
  v26 = *(v19 + 112);
  v27 = *(v19 + 128);
  v28 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v27;
  *(v18 + 144) = v28;
  *(v18 + 112) = v26;
  v29 = (v14 + 199) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *(v29 + 8) = v30[1];
  *(v29 + 16) = v30[2];
  *(v29 + 24) = v30[3];
  v29 += 39;
  v31 = ((v30 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v31;
  v33 = (v29 & 0xFFFFFFFFFFFFFFF8) + 87;

  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = *(v35 + 24);
  *(v34 + 40) = *(v35 + 40);
  *(v34 + 24) = v37;
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 48) = v38;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *((v31 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ViewLayoutEngine(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v10;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((((((v11 + (v13 & ~v10) + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v12 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v13) & ~v10;
    if (v9 == v12)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void storeEnumTagSinglePayload for ViewLayoutEngine(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v12;
  v16 = ((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
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

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v15) & ~v12;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          v26 = ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v26 = a2 & 0x7FFFFFFF;
            v26[1] = 0;
          }

          else
          {
            v26[1] = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Axis?(255, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>()
{
  result = lazy protocol witness table cache variable for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>;
  if (!lazy protocol witness table cache variable for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for ValueTransactionSeed<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for ValueTransactionSeed);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>);
  }

  return result;
}

double partial apply for specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

void type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>()
{
  if (!lazy cache variable for type metadata for Map<_ValueTransactionModifier<Bool>, (_:)>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<_ValueTransactionModifier<Bool>, (_:)>);
    }
  }
}

void _s7SwiftUI15ModifiedContentVyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySbGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_1(255, a3, a4, a5, type metadata accessor for _ValueTransactionModifier);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 57, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 136, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA011GlassEffectO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0p14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_O5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 2480, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 2092, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVG_AA0st15FlexInteractionF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 320, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 16, type metadata accessor for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0pF0ATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 72, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0O21AppearanceScaleEffectATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 265, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYG_AA05_BlurZ0VTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 1220, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0s18EffectPlatformItemF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 536, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA010GlassEntryO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO4ItemVGA2_2IDVAA0p4ItemD0AVLLVGTt2B5);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(uint64_t a1)
{
  type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    lazy protocol witness table accessor for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier.AddTrait();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>.AddTrait, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier.AddTrait);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait);
  }

  return result;
}

void type metadata accessor for IndexingIterator<LayoutSubviews>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _IdentifiedViewProxy.transform.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  v3 = *(v1 + 104);
  *(a1 + 16) = *(v1 + 88);
  *(a1 + 32) = v3;
}

__n128 _IdentifiedViewProxy.transform.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];

  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  result = a1[1];
  *(v1 + 104) = a1[2];
  *(v1 + 88) = result;
  return result;
}

uint64_t key path getter for _IdentifiedViewProxy.adjustment : _IdentifiedViewProxy@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
}

uint64_t key path setter for _IdentifiedViewProxy.adjustment : _IdentifiedViewProxy(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout CGRect) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 120);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
  *(a2 + 120) = v6;
  *(a2 + 128) = v5;
  return result;
}

uint64_t _IdentifiedViewProxy.adjustment.getter()
{
  v1 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  return v1;
}

uint64_t _IdentifiedViewProxy.adjustment.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 120));
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _IdentifiedViewProxy.init(identifier:size:position:transform:accessibilityNode:platform:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 152) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  v9 = a2[1];
  *(a4 + 72) = *a2;
  *(a4 + 88) = v9;
  *(a4 + 104) = a2[2];
  *(a4 + 136) = 0u;
  return outlined assign with take of Any?(a3, a4 + 136);
}

double _IdentifiedViewProxy.boundingRect.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v10[0] = 0;
  v10[1] = 0;
  v11 = *(v0 + 40);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 2;
  *&v6[0] = v1;
  *(&v6[0] + 1) = v2;
  v3 = vsubq_f64(*(v0 + 104), vsubq_f64(*(v0 + 56), *(v0 + 88)));
  v6[1] = *(v0 + 56);
  v6[2] = v3;
  swift_retain_n();
  swift_retain_n();
  CGRect.convert(to:transform:)(v7, v6);

  outlined destroy of CoordinateSpace(v7);
  v4 = *(v0 + 120);
  if (v4)
  {
    v4(v10);
  }

  return *v10;
}

uint64_t IdentifiedViewPlatformInputs.init(inputs:outputs:)(uint64_t a1)
{

  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return outlined destroy of _ViewInputs(v5);
}

uint64_t destroy for _IdentifiedViewProxy(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (*(a1 + 120))
  {
  }

  if (*(a1 + 160))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 136);
  }

  return result;
}

uint64_t initializeWithCopy for _IdentifiedViewProxy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 120);
  v6 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  v8 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v8;

  if (!v5)
  {
    *(a1 + 120) = *(a2 + 120);
    v10 = *(a2 + 160);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    return a1;
  }

  v9 = *(a2 + 128);
  *(a1 + 120) = v5;
  *(a1 + 128) = v9;

  v10 = *(a2 + 160);
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 160) = v10;
  (**(v10 - 8))(a1 + 136, a2 + 136);
  return a1;
}

uint64_t assignWithCopy for _IdentifiedViewProxy(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a1 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 120);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a2 + 128);
      *(a1 + 120) = v5;
      *(a1 + 128) = v6;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v7 = *(a2 + 128);
    *(a1 + 120) = v5;
    *(a1 + 128) = v7;

    goto LABEL_8;
  }

  *(a1 + 120) = *(a2 + 120);
LABEL_8:
  v8 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (v8)
    {
      *(a1 + 160) = v8;
      (**(v8 - 8))(a1 + 136, a2 + 136);
      return a1;
    }

LABEL_14:
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
    return a1;
  }

  v9 = (a1 + 136);
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v9, (a2 + 136));
  return a1;
}

uint64_t assignWithTake for _IdentifiedViewProxy(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 120);
  v6 = *(a1 + 120);
  v7 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v7;
  if (v6)
  {
    if (v5)
    {
      v8 = *(a2 + 128);
      *(a1 + 120) = v5;
      *(a1 + 128) = v8;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v9 = *(a2 + 128);
    *(a1 + 120) = v5;
    *(a1 + 128) = v9;
    goto LABEL_8;
  }

  *(a1 + 120) = *(a2 + 120);
LABEL_8:
  if (*(a1 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 136);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for _IdentifiedViewProxy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for _IdentifiedViewProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _BenchmarkHost.viewForIdentifier<A, B>(_:_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && v2)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(0x100000000, ObjectType, a1, v6, a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(*(a1 - 8) + 56);

    return v9(a2, 1, 1, a1);
  }
}