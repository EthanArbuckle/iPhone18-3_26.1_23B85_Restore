void storeEnumTagSinglePayload for TimeDataFormatting.Resolvable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v10;
  v15 = v11 + 7;
  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = (v16 + ((v11 + 7 + ((v9 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
  v18 = v9 + 7;
  v19 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + v17 + 48;
  if (v13 >= a3)
  {
    v24 = 0;
    v25 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v20)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v20)
    {
      v27 = ~v13 + a2;
      v28 = a1;
      bzero(a1, v20);
      a1 = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v26;
      }

      else
      {
        *(a1 + v20) = v26;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v26;
    }

    return;
  }

  v21 = a3 - v13;
  if (v19 + v17 == -48)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2 - v13;
  if (a2 > v13)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v20) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v24)
  {
    goto LABEL_35;
  }

  *(a1 + v20) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v6 == v13)
  {
    v29 = *(v5 + 56);
LABEL_38:

    v29();
    return;
  }

  v30 = (a1 + v14) & ~v10;
  if (v8 >= v12)
  {
    v33 = *(v7 + 56);

    v33(v30);
  }

  else
  {
    v31 = ((((v15 + v30) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16);
    if (v12 >= a2)
    {
      if (v6 < 0x7FFFFFFF)
      {
        v34 = (v31 + v18) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v34 + 8) = 0u;
          *(v34 + 24) = 0u;
          *v34 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v34 + 24) = a2 - 1;
        }

        return;
      }

      v29 = *(v5 + 56);
      goto LABEL_38;
    }

    if (v19 != -40)
    {
      v32 = ~v12 + a2;
      bzero(((((v15 + v30) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16), (v19 + 40));
      *v31 = v32;
    }
  }
}

void type metadata accessor for DefaultIndices<AttributedString.CharacterView>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<AttributedString.CharacterView>)
  {
    type metadata accessor for AttributedString.CharacterView();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<AttributedString.CharacterView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>)
  {
    type metadata accessor for DefaultIndices<AttributedString.CharacterView>();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>);
  }

  return result;
}

void type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for DefaultIndices<AttributedString.CharacterView>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(uint64_t a1)
{
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?)()
{
  if (!lazy cache variable for type metadata for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
    }
  }
}

uint64_t outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for Range<AttributedString.Index>??(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for Range<AttributedString.Index>??(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of Range<AttributedString.Index>??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }

  return result;
}

double _ColorInvertEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi24_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double _s7SwiftUI14GraphicsFilterOWOi24_(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ColorInvertEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi24_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ColorInvertEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ColorInvertEffect and conformance _ColorInvertEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ColorInvertEffect and conformance _ColorInvertEffect()
{
  result = lazy protocol witness table cache variable for type _ColorInvertEffect and conformance _ColorInvertEffect;
  if (!lazy protocol witness table cache variable for type _ColorInvertEffect and conformance _ColorInvertEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ColorInvertEffect and conformance _ColorInvertEffect);
  }

  return result;
}

double static GlassEffectBackdropProxyModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v45 = a1[2];
  v46 = v4;
  v47 = a1[4];
  v48 = *(a1 + 20);
  v5 = a1[1];
  v44[0] = *a1;
  v44[1] = v5;
  v24 = v45;
  v6 = v5;
  v7 = *(a1 + 52);
  v40 = *(a1 + 36);
  v41 = v7;
  v42 = *(a1 + 68);
  v43 = v44[0];
  LODWORD(v31) = 2143289344;
  outlined init with copy of _ViewInputs(v44, &v34);
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GlassEffectBackdropObserver();
  v8 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *(v8 + 24) = 0;
  *(v8 + 24) = AGCreateWeakAttribute();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  LODWORD(v34) = *(v6 + 16);
  DWORD1(v34) = OffsetAttribute2;
  *(&v34 + 1) = v8;
  *&v35 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment();

  v10 = Attribute.init<A>(body:value:flags:update:)();

  v11 = MEMORY[0x1E69E7CC0];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 256;
  *(v13 + 88) = v12;

  *&v32 = v13;
  *(&v32 + 1) = *(&v6 + 1);
  *v33 = v24 | 0x20;
  *&v33[36] = *(a1 + 68);
  *&v33[20] = *(a1 + 52);
  *&v33[4] = *(a1 + 36);
  *v30 = *v33;
  *&v30[16] = *&v33[16];
  *&v30[32] = *&v33[32];
  v31 = *a1;
  *&v30[48] = *&v33[48];
  v28 = v31;
  v29 = v32;
  v14 = outlined init with copy of _ViewInputs(&v31, &v34);
  a2(&v26, v14, &v28);
  v36 = *v30;
  v37 = *&v30[16];
  v38 = *&v30[32];
  v39 = *&v30[48];
  v34 = v28;
  v35 = v29;
  outlined destroy of _ViewInputs(&v34);
  v15 = v46;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v46) & 1) == 0)
  {
    v28 = *a1;
    *&v29 = v13;
    *(&v29 + 1) = *(&v6 + 1);
    *v30 = v24 | 0x20;
    *&v30[4] = *(a1 + 36);
    *&v30[20] = *(a1 + 52);
    *&v30[36] = *(a1 + 68);
    goto LABEL_7;
  }

  LODWORD(v28) = OffsetAttribute2;
  *(&v28 + 1) = v8;
  LODWORD(v29) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type BackdropProxyTransform and conformance BackdropProxyTransform();

  v16 = Attribute.init<A>(body:value:flags:update:)();

  *&v28 = v15;
  v17 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v18 = *(v15 + 16);
  if (v17 == v18)
  {
LABEL_11:

    v28 = v43;
    *&v29 = v13;
    *(&v29 + 1) = *(&v6 + 1);
    *v30 = v24 | 0x20;
    *&v30[4] = v40;
    *&v30[20] = v41;
    *&v30[36] = v42;
    outlined destroy of _ViewInputs(&v28);
    goto LABEL_12;
  }

  if (v17 >= v18)
  {
    __break(1u);
  }

  if (*(v15 + 16 * v17 + 32) == &type metadata for GlassContainer.Item.Key)
  {
    v19 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v26);
    v20 = *MEMORY[0x1E698D3F8];
    if ((v19 & 0x100000000) == 0)
    {
      v20 = v19;
    }

    *&v28 = __PAIR64__(v20, v16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>();
    lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v28) = 0;
    PreferencesOutputs.subscript.setter(v21, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    goto LABEL_11;
  }

  v28 = v43;
  *&v29 = v13;
  *(&v29 + 1) = *(&v6 + 1);
  *v30 = v24 | 0x20;
  *&v30[4] = v40;
  *&v30[20] = v41;
  *&v30[36] = v42;
LABEL_7:
  outlined destroy of _ViewInputs(&v28);

LABEL_12:
  *a3 = v26;
  result = v27;
  a3[1] = v27;
  return result;
}

uint64_t BackdropProxyEnvironment.updateValue()()
{
  v9[2] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v9[0] = *Value;
  v9[1] = v3;
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);

  v4 = *AGGraphGetValue();
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_14:

    v7 = *(v0 + 16);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if (v4 != v6)
  {
    v7 = *(v0 + 16);
    if (!v7)
    {
LABEL_6:
      if (!v4)
      {

        *(v0 + 16) = 0;
        goto LABEL_17;
      }

      os_unfair_lock_lock(v4 + 4);
      _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v4[6], v5, &protocol witness table for SDFShape.BackdropObserver);
      os_unfair_lock_unlock(v4 + 4);

      *(v0 + 16) = v4;
      goto LABEL_8;
    }

LABEL_5:

    os_unfair_lock_lock(v7 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v7[6], v5);
    os_unfair_lock_unlock(v7 + 4);

    goto LABEL_6;
  }

LABEL_8:
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(v9, v5);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Ttg5(v2, v9[0]);
  }

LABEL_17:

  AGGraphSetOutputValue();
}

uint64_t BackdropProxyTransform.updateValue()()
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  v1 = *AGGraphGetValue();
  if ((v2 & 1) != 0 || (type metadata accessor for (_:)(), (result = AGGraphGetOutputValue()) == 0))
  {
    v4 = *(v0 + 16) + 1;
    *(v0 + 16) = v4;
    v5 = *(v0 + 8);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    *(v6 + 32) = v5;
    type metadata accessor for (_:)();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in BackdropProxyTransform.updateValue()(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    v19 = result;
    v9 = 0;
    v10 = 0;
    v11 = ~(a2 << 32) + a2;
    while (1)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v10 >= *(v4 + 16))
      {
        break;
      }

      *(v4 + v9 + 232) = a3;

      if (a3)
      {

        v12 = a4;
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= *(v4 + 16))
      {
        goto LABEL_21;
      }

      v13 = v4 + v9;
      *(v4 + v9 + 240) = v12;

      if (v10 >= *(v4 + 16))
      {
        goto LABEL_22;
      }

      v14 = *(v13 + 152);
      if (v14 != -1 && a2)
      {
        v15 = a2;
        if (v14)
        {
          v15 = a2;
          if (a2 != -1)
          {
            v16 = (v11 + (v14 << 32)) ^ ((v11 + (v14 << 32)) >> 22);
            v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
            v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
            v15 = (v18 >> 31) ^ v18;
          }
        }

        *(v13 + 152) = v15;
      }

      ++v10;
      v9 += 656;
      if (v5 == v10)
      {
        *v19 = v4;
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for glassEffectBackdropObserver()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.glassEffectBackdropObserver = result;
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.glassEffectBackdropObserver.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt1g5(v3);
  }

  else
  {

    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(v6);
  }

  *a2 = v4;
  return result;
}

uint64_t View._glassEffectBackdropProxy(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  View.modifier<A>(_:)(&v3, a2, &type metadata for GlassEffectBackdropProxyModifier);
}

unint64_t lazy protocol witness table accessor for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment()
{
  result = lazy protocol witness table cache variable for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment;
  if (!lazy protocol witness table cache variable for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackdropProxyTransform and conformance BackdropProxyTransform()
{
  result = lazy protocol witness table cache variable for type BackdropProxyTransform and conformance BackdropProxyTransform;
  if (!lazy protocol witness table cache variable for type BackdropProxyTransform and conformance BackdropProxyTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackdropProxyTransform and conformance BackdropProxyTransform);
  }

  return result;
}

void type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>()
{
  if (!lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>)
  {
    v0 = type metadata accessor for PreferenceTransform();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>);
    }
  }
}

uint64_t assignWithCopy for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for BackdropProxyTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for BackdropProxyTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for BackdropProxyEnvironment()
{
}

void *initializeBufferWithCopyOfBuffer for BackdropProxyEnvironment(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithCopy for BackdropProxyEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for BackdropProxyEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for BackdropProxyEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BackdropProxyTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BackdropProxyTransform and conformance BackdropProxyTransform();
  *(a1 + 8) = result;
  return result;
}

uint64_t LinkDestination.Configuration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LinkDestination.Configuration.url.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LinkDestination.Configuration.isSensitive.setter(char a1)
{
  result = type metadata accessor for LinkDestination.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t LinkDestination.Configuration.init(url:isSensitive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for LinkDestination.Configuration(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkDestination.Configuration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkDestination.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkDestination.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkDestination.Configuration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LinkDestination.Configuration(0);
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LinkDestination.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkDestination(0) + 24);

  return outlined init with copy of LinkDestination.Configuration(v3, a1);
}

uint64_t LinkDestination.configuration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LinkDestination(0) + 24);

  return outlined assign with take of LinkDestination.Configuration(a1, v3);
}

uint64_t outlined assign with take of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall LinkDestination.open()()
{
  v1 = type metadata accessor for LinkDestination.Configuration(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LinkDestination(0) + 24);
  if (*(v5 + *(v2 + 28)) == 1)
  {
    v6 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23[0] = v6;
    v7 = *(v0 + 71);
  }

  else
  {
    v8 = v0[1];
    v22 = *v0;
    v23[0] = v8;
    v7 = *(v0 + 31);
  }

  *(v23 + 15) = v7;
  specialized Environment.wrappedValue.getter(v19);
  v9 = v19[0];
  v10 = v19[1];
  v11 = v19[2];
  v12 = v19[3];
  v13 = v20;
  v14 = v21;
  outlined init with copy of LinkDestination.Configuration(v5, v4);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v17 = v13;
  v18 = v14;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(v4, 2, v16);
  outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(v4, v15);
}

unint64_t initializeBufferWithCopyOfBuffer for LinkDestination(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 34);
    v11 = *(a2 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    *(a1 + 34) = v10;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 74);
    v18 = *(a2 + 72);
    outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
    *(a1 + 72) = v18;
    *(a1 + 74) = v17;
    v19 = *(a3 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v20, v21, v22);
    v23 = type metadata accessor for LinkDestination.Configuration(0);
    *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
  }

  return a1;
}

uint64_t destroy for LinkDestination(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<OpenURLAction>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 74));
  v4 = *(a2 + 24);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t outlined consume of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return outlined consume of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
  }
}

uint64_t assignWithCopy for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 34);
  v11 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 34);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v17 = *(a1 + 32);
  *(a1 + 32) = v11;
  *(a1 + 34) = v10;
  outlined consume of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 74);
  v23 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v18, v19, v20, v21, v23, v22);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = *(a1 + 74);
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  v29 = *(a1 + 72);
  *(a1 + 72) = v23;
  *(a1 + 74) = v22;
  outlined consume of Environment<OpenURLAction>.Content(v24, v25, v26, v27, v29, v28);
  v30 = *(a3 + 24);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 24))(v31, v32, v33);
  v34 = type metadata accessor for LinkDestination.Configuration(0);
  *(v31 + *(v34 + 20)) = *(v32 + *(v34 + 20));
  return a1;
}

uint64_t initializeWithTake for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 31) = *(a2 + 31);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a3 + 24);
  v6 = a2 + v5;
  v7 = a1 + v5;
  *(a1 + 71) = *(a2 + 71);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(v7, v6, v8);
  v9 = type metadata accessor for LinkDestination.Configuration(0);
  *(v7 + *(v9 + 20)) = *(v6 + *(v9 + 20));
  return a1;
}

uint64_t assignWithTake for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 34);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  v14 = *(a1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 34) = v7;
  outlined consume of Environment<OpenURLAction>.Content(v8, v9, v10, v11, v14, v12);
  v15 = *(a2 + 72);
  v16 = *(a2 + 74);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 74);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v22 = *(a1 + 72);
  *(a1 + 72) = v15;
  *(a1 + 74) = v16;
  outlined consume of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v22, v21);
  v23 = *(a3 + 24);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 40))(v24, v25, v26);
  v27 = type metadata accessor for LinkDestination.Configuration(0);
  *(v24 + *(v27 + 20)) = *(v25 + *(v27 + 20));
  return a1;
}

void *initializeBufferWithCopyOfBuffer for LinkDestination.Configuration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t assignWithCopy for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t Color.gradient.getter(uint64_t a1)
{
  type metadata accessor for GradientBox<ColorGradientProvider>();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2;
}

void type metadata accessor for GradientBox<ColorGradientProvider>()
{
  if (!lazy cache variable for type metadata for GradientBox<ColorGradientProvider>)
  {
    lazy protocol witness table accessor for type ColorGradientProvider and conformance ColorGradientProvider();
    v0 = type metadata accessor for GradientBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GradientBox<ColorGradientProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColorGradientProvider and conformance ColorGradientProvider()
{
  result = lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider;
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }

  return result;
}

uint64_t ResolvedGradient.init(standardColor:style:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *a1;
  RBColorMakeGradient();
  type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>();
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDAB4C0;
  *(result + 32) = v6;
  *(result + 48) = 0uLL;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = v7;
  *(result + 96) = 0x3FF0000000000000;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 1;
  v5 = *(a1 + 4);
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  return result;
}

uint64_t protocol witness for GradientProvider.resolve(in:) in conformance ColorGradientProvider@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*v4 + 120))(&v7, &v6);
  return ResolvedGradient.init(standardColor:style:)(&v7, a2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorGradientProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v3);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for ColorGradientProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ColorGradientProvider and conformance ColorGradientProvider();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>);
    }
  }
}

uint64_t _s7SwiftUI11UnaryLayoutPA2A16PlacementContextV0eF4TypeRtzrlE12makeViewImpl8modifier6inputs4bodyAA01_I7OutputsVAA11_GraphValueVyxG_AA01_I6InputsVAmA01_O0V_ARtctFZAA0d8PriorityD0V_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

uint64_t specialized Set.contains(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = a3;
  v5 = a1;
  v6 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  v40 = *(a2 + 16);
  v41 = a2;
  if (v40)
  {
    v7 = *(a2 + 16);
    v8 = (a2 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *v8;
      v8 += 6;
      v11 = *(*v9 + 120);

      v11(v46);
      Hasher._combine(_:)(v10);

      --v7;
    }

    while (v7);
  }

  v12 = Hasher._finalize()();
  v13 = v3 + 56;
  v14 = -1 << *(v3 + 32);
  v15 = v12 & ~v14;
  if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  v17 = v40;
  v18 = v41;
  v37 = v5;
  v38 = v3;
  v35 = v3 + 56;
  v36 = v6;
  v34 = ~v14;
  while (1)
  {
    v19 = *(v3 + 48) + 16 * v15;
    if (*v19 == v5 && *(v19 + 4) == v6)
    {
      v21 = *(v19 + 8);
      if (*(v21 + 16) == v17)
      {
        break;
      }
    }

LABEL_8:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  if (v17 && v21 != v18)
  {
    v39 = v15;

    v22 = 0;
    v42 = v21;
    do
    {
      v23 = *(v21 + v22 + 32);
      v24 = *(v21 + v22 + 40);
      v25 = *(v21 + v22 + 48);
      v26 = *(v18 + v22 + 48);
      if (v23 == *(v18 + v22 + 32))
      {
        v31 = v18;
        v32 = v24 == *(v18 + v22 + 40) && v25 == v26;
        if (!v32 || ((*(v21 + v22 + 52) ^ *(v18 + v22 + 52)) & 1) != 0)
        {
LABEL_7:

          v18 = v31;

          v5 = v37;
          v3 = v38;
          v13 = v35;
          LODWORD(v6) = v36;
          v15 = v39;
          v17 = v40;
          v16 = v34;
          goto LABEL_8;
        }
      }

      else
      {
        v43 = *(v18 + v22 + 40);
        v27 = *(*v23 + 112);
        v45 = *(v21 + v22 + 52);
        v28 = *(v18 + v22 + 52);

        v30 = v27(v29);
        v31 = v41;
        v44 = v30;

        if (v44 & 1) == 0 || v24 != v43 || v25 != v26 || ((v45 ^ v28))
        {
          goto LABEL_7;
        }
      }

      v22 += 24;
      --v17;
      v21 = v42;
      v18 = v31;
    }

    while (v17);
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(Swift::UInt32 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    (*(*a2 + 120))(v18);
    MEMORY[0x193AC11A0](a3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(a4 + 32);
  v11 = v9 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(a4 + 48) + 24 * v11;
    if (*v13 != a1)
    {
      goto LABEL_11;
    }

    v14 = *(v13 + 8);
    if (!v14)
    {
      if (!a2)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      break;
    }

LABEL_9:

LABEL_10:

LABEL_11:
    v11 = (v11 + 1) & v12;
    if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(v13 + 16);
  if (v14 != a2)
  {
    v15 = *(*v14 + 112);
    swift_retain_n();

    LOBYTE(v15) = v15(v16);

    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  swift_retain_n();
LABEL_20:

  if (v17 != a3)
  {
    goto LABEL_11;
  }

  return 1;
}

uint64_t _TraitWritingModifier.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t _TraitWritingModifier.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t _ConditionalTraitWritingModifier.value.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t static _ConditionalTraitWritingModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, ValueMetadata *a3@<X4>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v7;
  v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  v8 = *(a1 + 16);
  v32 = *a1;
  v33 = v8;
  v9 = *MEMORY[0x1E698D3F8];
  type metadata accessor for _TraitWritingModifier();
  _GraphValue.init(_:)(v9, &v15);
  v10 = v15;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v22 = v32;
  v23 = v33;
  v29 = v37;
  v12 = v34;
  LODWORD(v24) = 0;
  v14 = v10;
  v28[0] = v32;
  v28[1] = v33;
  v28[3] = v35;
  v28[4] = v36;
  v28[2] = v24;
  v18 = v24;
  v19 = v35;
  v20 = v36;
  v21 = v37;
  v16 = v32;
  v17 = v33;
  outlined init with copy of _ViewInputs(&v32, v30);
  outlined init with copy of _ViewInputs(v28, v30);
  static _TraitWritingModifier._makeView(modifier:inputs:body:)(&v14, &v16, a2, a3, a4);
  v30[2] = v18;
  v30[3] = v19;
  v30[4] = v20;
  v31 = v21;
  v30[0] = v16;
  v30[1] = v17;
  outlined destroy of _ViewInputs(v30);
  LODWORD(v24) = v12;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a4, &v22);
    AGSubgraphEndTreeElement();
  }

  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  return outlined destroy of _ViewInputs(&v16);
}

uint64_t _ConditionalTraitWritingModifier.ConditionalAddTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = type metadata accessor for _ConditionalTraitWritingModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  _TraitWritingModifier.AddTrait.traits.getter(a1, &v21);
  v15 = v21;
  if (!v21)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v22 = v15;
  _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _ConditionalTraitWritingModifier, v14);
  v16 = v14[*(v11 + 36)];
  result = (*(v12 + 8))(v14, v11);
  if (v16 == 1)
  {
    _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _ConditionalTraitWritingModifier, v14);
    (*(v8 + 32))(v10, v14, AssociatedTypeWitness);
    result = ViewTraitCollection.subscript.setter(v10, v18, a2, a3);
  }

  *v20 = v22;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalTraitWritingModifier<A>.ConditionalAddTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t ViewTraitCollection.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = *v2 + 32;
  v6 = -*(*v2 + 16);
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
      return v8 != -1;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = v9;
    if (v12 == a2)
    {
      return v8 != -1;
    }
  }

  __break(1u);
  return result;
}

void (*ViewTraitCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.value<A>(for:)(a3, a4, v15);
  return ViewTraitCollection.subscript.modify;
}

void ViewTraitCollection.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    ViewTraitCollection.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ViewTraitCollection.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall ViewTraitCollection.mergeValues(_:)(SwiftUI::ViewTraitCollection a1)
{
  v1 = *(*a1.storage._rawValue + 16);
  if (v1)
  {
    v2 = *a1.storage._rawValue + 32;
    do
    {
      outlined init with copy of AnyTrackedValue(v2, v6);
      v3 = v7;
      v4 = v8;
      v5 = __swift_project_boxed_opaque_existential_1(v6, v7);
      ViewTraitCollection.setErasedValue<A>(trait:)(v5, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t ViewTraitKeys.types.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ViewTraitKeys.formUnion(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);

  result = specialized Set.formUnion<A>(_:)(v3);
  *(v1 + 8) = (*(v1 + 8) | v2) & 1;
  return result;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      outlined copy of AttributedString.AnyAttribute(*v10, v12);
      specialized Set._Variant.insert(_:)(v13, v11, v12);
      outlined consume of AttributedString.AnyAttribute(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t ViewTraitKeys.withDataDependency()@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 1;
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v36);
  if (v37)
  {
    v8 = v36[0];
    v9 = *(&v36[0] + 1);
    v10 = a2[1];
    v25 = *a2;
    v26 = v10;
    v27 = a2[2];
    type metadata accessor for ModifiedViewList.ListModifier();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3(0);
    *(v11 + 32) = a4;
    outlined init with copy of _GraphInputs(&v25, &v33);
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = v26;
    *(v11 + 48) = v25;
    *(v11 + 64) = v12;
    *(v11 + 80) = v27;
    LODWORD(v33) = v8;
    *(&v33 + 1) = v11;
    BYTE8(v35) = 1;
    v13 = &v33;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v32);
    outlined init with copy of AnyTrackedValue(v32, v24);
    v14 = a2[1];
    v33 = *a2;
    v34 = v14;
    v35 = a2[2];
    outlined init with copy of AnyTrackedValue(v24, &v25);
    outlined init with copy of _GraphInputs(&v33, v22);
    v15 = AGCreateWeakAttribute();
    __swift_destroy_boxed_opaque_existential_1(v24);
    *(&v27 + 1) = v15;
    *&v28 = a3(0);
    *(&v28 + 1) = a4;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v22[3] = &type metadata for ModifiedElements;
    v22[4] = &protocol witness table for ModifiedElements;
    v16 = swift_allocObject();
    v22[0] = v16;
    v17 = v28;
    v18 = v30;
    v19 = v31;
    v16[5] = v29;
    v16[6] = v18;
    v16[7] = v19;
    v20 = v26;
    v16[1] = v25;
    v16[2] = v20;
    v16[3] = v27;
    v16[4] = v17;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v23 = 0;
    v13 = v22;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t type metadata completion function for _ConditionalTraitWritingModifier()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _ConditionalTraitWritingModifier(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (v7 <= 7 && (v6 + 1) <= 0x18 && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v6) = *(a2 + v6);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t initializeWithCopy for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

uint64_t assignWithCopy for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t initializeWithTake for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalTraitWritingModifier(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = v8 + 1;
    v10 = 8 * (v8 + 1);
    if ((v8 + 1) > 3)
    {
      goto LABEL_7;
    }

    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
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

      v17 = v7 + (v9 | v13);
      return (v17 + 1);
    }
  }

LABEL_25:
  if (v6 < 0xFE)
  {
    v16 = *(a1 + v8);
    if (v16 < 2)
    {
      return 0;
    }

    v17 = (v16 + 2147483646) & 0x7FFFFFFF;
    return (v17 + 1);
  }

  v14 = *(v5 + 48);

  return v14(a1);
}

void storeEnumTagSinglePayload for _ConditionalTraitWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = v8 + 1;
  v11 = a3 - v9;
  if (a3 <= v9)
  {
    v12 = 0;
    if (v9 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 1;
    if (v10 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
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

    if (v9 < a2)
    {
LABEL_16:
      v17 = ~v9 + a2;
      if (v10 < 4)
      {
        v18 = (v17 >> (8 * v10)) + 1;
        if (v8 != -1)
        {
          v19 = v17 & ~(-1 << (8 * v10));
          bzero(a1, v10);
          if (v10 != 3)
          {
            if (v10 == 2)
            {
              *a1 = v19;
              if (v12 > 1)
              {
LABEL_44:
                if (v12 == 2)
                {
                  *&a1[v10] = v18;
                }

                else
                {
                  *&a1[v10] = v18;
                }

                return;
              }
            }

            else
            {
              *a1 = v17;
              if (v12 > 1)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_41;
          }

          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        if (v12 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        bzero(a1, v10);
        *a1 = v17;
        v18 = 1;
        if (v12 > 1)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      if (v12)
      {
        a1[v10] = v18;
      }

      return;
    }
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v10] = 0;
  }

  else if (v12)
  {
    a1[v10] = 0;
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
  if (v7 < 0xFE)
  {
    a1[v8] = a2 + 1;
  }

  else
  {
    v20 = *(v6 + 56);

    v20(a1, a2);
  }
}

uint64_t assignWithCopy for ViewTraitKeys(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ViewTraitKeys(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA01_C8TraitKeyRd__r__lAA15ModifiedContentVyxAA01_D15WritingModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t initializeWithTake for _TraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _TraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

void storeEnumTagSinglePayload for _TraitWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t instantiation function for generic protocol witness table for _ConditionalTraitWritingModifier<A>.ConditionalAddTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)()
{
  if (!lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    }
  }
}

uint64_t outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _ForegroundLayerViewModifier.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _ForegroundLayerViewModifier(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

__n128 _ForegroundLayerColorMatrixEffect.foreground.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.foreground.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.background.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 144);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.background.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

void __swiftcall _ForegroundLayerColorMatrixEffect.init(foreground:background:)(SwiftUI::_ForegroundLayerColorMatrixEffect *__return_ptr retstr, SwiftUI::_ColorMatrix *foreground, SwiftUI::_ColorMatrix *background)
{
  v5 = *&foreground->m24;
  v6 = *&foreground->m33;
  v4 = *&foreground->m15;
  v3 = *&background->m15;
  v9 = *&background->m24;
  v10 = *&background->m33;
  v11 = *&background->m42;
  v7 = *&foreground->m42;
  v8 = *&background->m11;
  *&retstr->foreground.m11 = *&foreground->m11;
  *&retstr->foreground.m15 = v4;
  *&retstr->background.m15 = v3;
  *&retstr->background.m24 = v9;
  *&retstr->background.m33 = v10;
  *&retstr->background.m42 = v11;
  *&retstr->foreground.m42 = v7;
  *&retstr->background.m11 = v8;
  *&retstr->foreground.m24 = v5;
  *&retstr->foreground.m33 = v6;
}

uint64_t static _ForegroundLayerColorMatrixEffect._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v36 = a2[2];
  v37 = v7;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  LODWORD(v30[0]) = v6;
  *(&v30[0] + 1) = swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>();
  lazy protocol witness table accessor for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>();

  v9 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v24 = v34;
  v25 = v35;
  v33 = v39;
  v11 = v36;
  LODWORD(v26) = 0;
  v30[0] = v34;
  v30[1] = v35;
  v31 = v37;
  v32 = v38;
  v30[2] = v26;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v18 = v34;
  v19 = v35;
  v20 = v26;
  outlined init with copy of _ViewInputs(&v34, v17);
  v12 = outlined init with copy of _ViewInputs(v30, v17);
  a3(v17, v12, &v18);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v31))
  {
    v13 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v17[0]);
    v14 = *MEMORY[0x1E698D3F8];
    if ((v13 & 0x100000000) == 0)
    {
      v14 = v13;
    }

    v18 = __PAIR64__(v14, v9);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList();
    v15 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v18) = 0;
    PreferencesOutputs.subscript.setter(v15, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  outlined destroy of _ViewInputs(v30);
  *a4 = v17[0];
  a4[1] = v17[1];
  LODWORD(v26) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v24);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v18);
}

unint64_t _ForegroundLayerColorMatrixEffect.levelEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v15[3] = v1[3];
  v15[4] = v4;
  v6 = *v1;
  v15[1] = v1[1];
  v15[2] = v3;
  v7 = v1[6];
  v8 = v1[8];
  v9 = v1[9];
  v14[2] = v1[7];
  v14[3] = v8;
  v14[4] = v9;
  v15[0] = v6;
  v14[0] = v5;
  v14[1] = v7;
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0, isUniquelyReferenced_nonNull_native);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 1u, v12);
  *a1 = v10;
  *(a1 + 8) = 0;
  return result;
}

unint64_t _ForegroundLayerLevelColorMatrixEffect.init(level:foreground:background:)@<X0>(Swift::UInt32 *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, 0, isUniquelyReferenced_nonNull_native);
  if (v7)
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v7, v11);
  }

  *a4 = v8;
  *(a4 + 8) = 0;
  return result;
}

Swift::Int _ForegroundLayerLevel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void _ForegroundLayerLevelViewModifier.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _ForegroundLayerLevelViewModifier(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

uint64_t _ForegroundLayerLevelColorMatrixEffect.init(_:options:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t _ForegroundLayerLevelColorMatrixEffect.init(level:foreground:background:options:)@<X0>(Swift::UInt32 *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, 0, isUniquelyReferenced_nonNull_native);
  if (v9)
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v9, v13);
  }

  *a5 = v10;
  *(a5 + 8) = a4;
  return result;
}

double static _ForegroundLayerLevelColorMatrixEffect._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v17 = a2[2];
  v7 = *(a2 + 6);
  v8 = *(a2 + 14);
  v20 = *(a2 + 60);
  v21 = *(a2 + 76);
  v18 = v7;
  v19 = v8;
  a3(&v13);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v13);
    v10 = *MEMORY[0x1E698D3F8];
    if ((v9 & 0x100000000) == 0)
    {
      v10 = v9;
    }

    v15 = __PAIR64__(v10, v5);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v15) = 0;
    PreferencesOutputs.subscript.setter(v11, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  *a4 = v13;
  result = v14;
  a4[1] = v14;
  return result;
}

uint64_t ForegroundLayerDisplayList.updateValue()()
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0;
    v14 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = *(Value + 8);
    v3 = *(Value + 12);
    v12 = *Value;
    v13 = v2;
    v14 = v3;

    v4 = *(AGGraphGetValue() + 8);
    if (v5)
    {
      v6 = ++static DisplayList.Version.lastValue;
      *(v0 + 8) = static DisplayList.Version.lastValue;
    }

    else
    {
      v6 = *(v0 + 8);
    }

    v9 = v6;

    DisplayList.insertLayerFilters(matrices:version:premultiplied:)(v7, &v9, v4 & 1);

    v9 = v12;
    v10 = v13;
    v11 = v14;
  }

  AGGraphSetOutputValue();
}

void type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>()
{
  if (!lazy cache variable for type metadata for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>)
  {
    v0 = type metadata accessor for Focus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>()
{
  result = lazy protocol witness table cache variable for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>;
  if (!lazy protocol witness table cache variable for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>)
  {
    type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList()
{
  result = lazy protocol witness table cache variable for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList;
  if (!lazy protocol witness table cache variable for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ForegroundLayerViewModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier()
{
  result = lazy protocol witness table cache variable for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ForegroundLayerLevelViewModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier()
{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options()
{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }

  return result;
}

__n128 __swift_memcpy160_4(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for _ForegroundLayerColorMatrixEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ForegroundLayerColorMatrixEffect(uint64_t result, int a2, int a3)
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

  *(result + 160) = v3;
  return result;
}

uint64_t assignWithCopy for _ForegroundLayerLevelColorMatrixEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ForegroundLayerDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList();
  *(a1 + 8) = result;
  return result;
}

uint64_t ContentShapeKinds.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x193ABEDD0](0x7463617265746E69, 0xEC000000206E6F69);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x193ABEDD0](0x7665725067617264, 0xEC00000020776569);
  if ((v1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD798D0);
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    MEMORY[0x193ABEDD0](0x6666457375636F66, 0xEC00000020746365);
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  MEMORY[0x193ABEDD0](0x6666457265766F68, 0xEC00000020746365);
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v1 & 0x40) != 0)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](0x6269737365636361, 0xEE00207974696C69);
  }

LABEL_9:

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return 8283;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ContentShapesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.ContentShapesKey.defaultValue;
}

uint64_t EnvironmentValues.contentShapes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v2, a1);
}

uint64_t key path getter for EnvironmentValues.contentShapes : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.contentShapes : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.contentShapes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3, *v1);
  }
}

void (*EnvironmentValues.contentShapes.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v5, v4);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = v8[9];
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = static EnvironmentValues.ContentShapesKey.defaultValue;
    }

    *v4 = v9;
  }

  return EnvironmentValues.contentShapes.modify;
}

void EnvironmentValues.contentShapes.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t ContentShapes.addShape<A>(_:forKinds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  (*(v10 + 16))(v7, v11, v5);
  v12 = AnyShape.init<A>(_:)(v7, a3);
  v13 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v13;
  if (v9)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      v13 = result;
      *v3 = result;
    }

    v16 = v13[2];
    v15 = v13[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v18 = v15 > 1;
LABEL_12:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v17, 1, v13);
      v13 = result;
    }
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      v13 = result;
      *v3 = result;
    }

    v16 = v13[2];
    v19 = v13[3];
    v17 = v16 + 1;
    if (v16 >= v19 >> 1)
    {
      v18 = v19 > 1;
      v9 = 1;
      goto LABEL_12;
    }

    v9 = 1;
  }

  v13[2] = v17;
  v20 = &v13[2 * v16];
  v20[4] = v9;
  v20[5] = v12;
  *v3 = v13;
  return result;
}

Swift::Void __swiftcall ContentShapes.appending(contentsOf:)(SwiftUI::ContentShapes contentsOf)
{
  v2 = *(*contentsOf.shapes._rawValue + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = (*contentsOf.shapes._rawValue + 40);
    do
    {
      v5 = *(v4 - 1);
      v7 = *v4;
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v5)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v9 = v3[3];
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v12 = v3[3];
        v11 = v10 + 1;
        if (v10 >= v12 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, v3);
        }

        v5 = 1;
      }

      v3[2] = v11;
      v6 = &v3[2 * v10];
      v6[4] = v5;
      v6[5] = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
    *v1 = v3;
  }
}

uint64_t *ContentShapes.shape(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v6[0] = *a1;
  v6[1] = v4;
  result = ContentShapes.matchingShapes(for:)(v6, &v7);
  *a2 = v7;
  return result;
}

uint64_t *ContentShapes.matchingShapes(for:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 16 * v7 + 24);
    while (v7 <= *(v5 + 16))
    {
      v9 = 0;
      if (v4)
      {
        v10 = *(v8 - 1);
        if ((v10 & v4) != 0)
        {
          v9 = *v8;
          v4 &= ~v10;
        }
      }

      if (v9)
      {
        MEMORY[0x193ABF170](result);
        if (*(v11 + 16) >= *(v11 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v11;
      }

      v8 -= 2;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *a2 = v6;
  }

  return result;
}

uint64_t CombinedContentShape.path(in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *(result + 16);
  if (!v6)
  {
    v77 = 0;
    v76 = 0;
    v75 = 0.0;
    v74 = 0.0;
    v78 = 6;
LABEL_159:
    *a2 = v77;
    *(a2 + 8) = v76;
    *(a2 + 16) = v75;
    *(a2 + 24) = v74;
    *(a2 + 32) = v78;
    return result;
  }

  v8 = a4;
  v9 = a3;
  v79 = a2;
  v10 = result + 32;
  v83 = *MEMORY[0x1E698D3F8];
  v91 = 6;
  v89 = 0u;
  v90 = 0u;
  while (1)
  {
    v11 = *(**v10 + 80);

    v11(v98, v12, v9, v8, a5, a6);
    rect = v98[1];
    v94 = v98[0];
    v13 = v99;
    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v14 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524 == 1)
    {
      if ((dyld_program_minos_at_least() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (dword_1ED53C520 < v14)
    {
      goto LABEL_35;
    }

    if (!_threadGeometryProxyData())
    {
      goto LABEL_35;
    }

    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == v83)
    {
      v97.a = 0.0;
      v97.b = 0.0;
      swift_beginAccess();
      if (static ViewGraphHost.isDefaultEnvironmentConfigured == 1)
      {
        if (one-time initialization token for _defaultEnvironment != -1)
        {
          swift_once();
        }

        a = static ViewGraphHost._defaultEnvironment;
        if (static ViewGraphHost._defaultEnvironment)
        {
          if (!*(static ViewGraphHost._defaultEnvironment + 64))
          {
            a = 0.0;
            static Update.end()();
            goto LABEL_31;
          }
        }

        static Update.end()();
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v18 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
        v19 = static CoreGlue2.shared;
        v18(&v97);

        a = v97.a;
        b = v97.b;
        static Update.end()();
        if (b != 0.0)
        {
LABEL_28:

          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(*&a, &v97);

          if (LOBYTE(v97.a) == 1)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      a = *InputValue;
      v17 = *(InputValue + 8);

      static Update.end()();
      if (v17)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*&a);
    if (v21)
    {
      v22 = *(v21 + 72);

      if ((v22 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_33:
      v96[1] = 0.0;
      v96[2] = 0.0;
      v96[0] = -1.0;
      v96[3] = 1.0;
      v96[4] = a5;
      v96[5] = 0.0;
      Path.applying(_:)(v96, v100);
      rect = v100[1];
      v94 = v100[0];
      v13 = v101;
      outlined destroy of Path(v98);
      goto LABEL_35;
    }

LABEL_35:
    v104 = v94;
    v105 = rect;
    v106 = v13;
    if (v13 > 2)
    {
      break;
    }

    if (v13 >= 2)
    {
      if (!CGRectIsNull(*(*&v94.f64[0] + 16)))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v108.size = rect;
      v108.origin.y = v94.f64[1];
      v108.origin.x = v94.f64[0];
      if (!CGRectIsNull(v108))
      {
        goto LABEL_52;
      }
    }

LABEL_3:
    outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], v13);
LABEL_4:

LABEL_5:
    v10 += 8;
    if (!--v6)
    {
      v74 = v89.f64[1];
      v75 = v89.f64[0];
      v76 = v90.i64[1];
      v77 = v90.i64[0];
      a2 = v79;
      v78 = v91;
      goto LABEL_159;
    }
  }

  if (v13 != 5)
  {
    if (v13 != 6)
    {
      goto LABEL_164;
    }

    goto LABEL_4;
  }

  if (*(*&v94.f64[0] + 16))
  {
    if (*(*&v94.f64[0] + 16) == 1)
    {
      goto LABEL_42;
    }

    v23 = one-time initialization token for bufferCallbacks;

    if (v23 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (!*(*&v94.f64[0] + 24))
    {
      __break(1u);
    }

LABEL_42:
  }

  IsEmpty = RBPathIsEmpty();
  outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], 5u);
  if (IsEmpty)
  {
    goto LABEL_3;
  }

LABEL_52:
  v25 = v91;
  switch(v91)
  {
    case 2u:
      v29 = *(v90.i64[0] + 16);
      v28 = *(v90.i64[0] + 32);
      v26 = *(v90.i64[0] + 48);
      v27 = *(v90.i64[0] + 56);
LABEL_60:
      if (v13 == 2)
      {
        v87 = *(*&v94.f64[0] + 16);
        v88 = *(*&v94.f64[0] + 32);
        v82 = *(*&v94.f64[0] + 48);
        v81 = *(*&v94.f64[0] + 56);
      }

      else
      {
        if (v13 == 1)
        {
          if (fabs(vsubq_f64(rect, vdupq_laneq_s64(rect, 1)).f64[0]) >= 0.001)
          {
            goto LABEL_91;
          }

          v82 = 0.5 * rect.f64[0];
          v81 = 0.5 * rect.f64[0];
          v88 = rect;
        }

        else
        {
          if (v13)
          {
            goto LABEL_91;
          }

          v82 = 0.0;
          v81 = 0.0;
          v88 = rect;
        }

        v87 = v94;
      }

      v30 = *&v29.i64[1];
      v31 = v28.f64[1];
      v32 = v29;
      v85 = v28.f64[0];
      v86 = *v29.i64;
      v33 = v28.f64[1];
      v109 = CGRectInset(*(&v28 - 1), -0.001, -0.001);
      v120.origin.x = v87.f64[0];
      v120.size.width = v88.f64[0];
      v120.origin.y = v87.f64[1];
      v120.size.height = v88.f64[1];
      if (CGRectContainsRect(v109, v120))
      {
        v35 = v85;
        v34 = v86;
        if (v26 <= v82 && v27 <= v81)
        {
          goto LABEL_79;
        }

        v36 = v30;
        v37 = v31;
        v38 = a5;
        v39 = v27;
        v40 = fabs(CGRectGetWidth(*&v34)) * 0.5;
        v110.size.width = v85;
        v110.origin.x = v86;
        v110.origin.y = v30;
        v110.size.height = v31;
        v41 = fabs(CGRectGetHeight(v110)) * 0.5;
        if (v41 >= v40)
        {
          v41 = v40;
        }

        v27 = v39;
        a5 = v38;
        v8 = a4;
        if (v41 >= v26)
        {
          v42 = v26;
        }

        else
        {
          v42 = v41;
        }

        if (v41 >= v27)
        {
          v41 = v27;
        }

        v43 = v42 * 0.292893219;
        v44 = v41 * 0.292893219;
        v111.size.width = v85;
        v111.origin.x = v86;
        v111.origin.y = v30;
        v111.size.height = v31;
        v112 = CGRectInset(v111, v43, v44);
        v121.origin.x = v87.f64[0];
        v121.size.width = v88.f64[0];
        v121.origin.y = v87.f64[1];
        v121.size.height = v88.f64[1];
        if (CGRectContainsRect(v112, v121))
        {
LABEL_79:
          outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], v13);

          v9 = a3;
          goto LABEL_5;
        }
      }

      v113.origin.x = v87.f64[0];
      v113.size.width = v88.f64[0];
      v113.origin.y = v87.f64[1];
      v113.size.height = v88.f64[1];
      v114 = CGRectInset(v113, -0.001, -0.001);
      v122.size.width = v85;
      v122.origin.x = v86;
      v122.origin.y = v30;
      v122.size.height = v31;
      v25 = v91;
      if (CGRectContainsRect(v114, v122))
      {
        if (v82 <= v26 && v81 <= v27)
        {
          goto LABEL_90;
        }

        v115.origin.x = v87.f64[0];
        v115.size.width = v88.f64[0];
        v115.origin.y = v87.f64[1];
        v115.size.height = v88.f64[1];
        v45 = fabs(CGRectGetWidth(v115)) * 0.5;
        v116.origin.x = v87.f64[0];
        v116.size.width = v88.f64[0];
        v116.origin.y = v87.f64[1];
        v116.size.height = v88.f64[1];
        v46 = fabs(CGRectGetHeight(v116)) * 0.5;
        if (v46 >= v45)
        {
          v46 = v45;
        }

        v47 = v82;
        if (v46 < v82)
        {
          v47 = v46;
        }

        if (v46 >= v81)
        {
          v46 = v81;
        }

        v48 = v47 * 0.292893219;
        v49 = v46 * 0.292893219;
        v117.origin.x = v87.f64[0];
        v117.size.width = v88.f64[0];
        v117.origin.y = v87.f64[1];
        v117.size.height = v88.f64[1];
        v118 = CGRectInset(v117, v48, v49);
        v123.size.width = v85;
        v123.origin.x = v86;
        v123.origin.y = v30;
        v123.size.height = v31;
        v25 = v91;
        if (CGRectContainsRect(v118, v123))
        {
LABEL_90:

          result = outlined consume of Path.Storage(v90.i64[0], v90.i64[1], *&v89.f64[0], *&v89.f64[1], v91);
          v91 = v13;
          v89 = rect;
          v90 = v94;
          v9 = a3;
          goto LABEL_5;
        }
      }

LABEL_91:
      v95[1] = 0.0;
      v95[2] = 0.0;
      v95[0] = 1.0;
      v95[3] = 1.0;
      v95[4] = 0.0;
      v95[5] = 0.0;
      if (v25 == 6)
      {
        v50 = vorrq_s8(v90, v89);
        if (!*&vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL)))
        {
          Path.applying(_:)(v95, v102);
          outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], v13);

          v89 = v102[1];
          v90 = v102[0];
          v91 = v103;
          v9 = a3;
          goto LABEL_5;
        }
      }

      break;
    case 1u:
      if (fabs(vsubq_f64(v89, vdupq_laneq_s64(v89, 1)).f64[0]) < 0.001)
      {
        v26 = 0.5 * v89.f64[0];
        v27 = 0.5 * v89.f64[0];
        v28 = v89;
LABEL_58:
        v29 = v90;
        goto LABEL_60;
      }

      break;
    case 0u:
      v26 = 0.0;
      v27 = 0.0;
      v28 = v89;
      goto LABEL_58;
    default:
      goto LABEL_91;
  }

  if (v13 <= 1)
  {
    v119.size.width = rect.f64[0];
    v119.origin.x = v94.f64[0];
    v119.size.height = rect.f64[1];
    v119.origin.y = v94.f64[1];
    v9 = a3;
    if (!CGRectIsNull(v119))
    {
      goto LABEL_108;
    }

    goto LABEL_3;
  }

  if (v13 == 2)
  {
    v9 = a3;
    if (!CGRectIsNull(*(*&v94.f64[0] + 16)))
    {
      goto LABEL_108;
    }

    goto LABEL_3;
  }

  v9 = a3;
  if (*(*&v94.f64[0] + 16))
  {
    if (*(*&v94.f64[0] + 16) == 1)
    {
      goto LABEL_102;
    }

    v51 = one-time initialization token for bufferCallbacks;

    if (v51 != -1)
    {
      swift_once();
    }

LABEL_107:
    v52 = RBPathIsEmpty();
    outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], 5u);
    if ((v52 & 1) == 0)
    {
LABEL_108:
      if (v91 == 5)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v53 = v90.i64[0];
        }

        else
        {
          type metadata accessor for Path.PathBox();
          v53 = swift_allocObject();
          *(v53 + 24) = 0u;
          *(v53 + 40) = 0u;
          *(v53 + 56) = 0u;
          *(v53 + 72) = 0u;
          *(v53 + 88) = 0u;
          *(v53 + 104) = 0u;
          v61 = *(v90.i64[0] + 16);
          *(v53 + 16) = v61;
          if (v61)
          {
            if (v61 == 1)
            {
              *(v53 + 24) = RBPathRetain();
              *(v53 + 32) = v62;
            }

            else
            {
              RBPathStorageInit();
            }
          }

          else
          {
            v66 = *(v90.i64[0] + 24);
            if (!v66)
            {
              goto LABEL_162;
            }

            *(v53 + 24) = v66;
            v67 = v66;
          }
        }

        v57 = 0;
        v56 = 0;
        v59 = 0;
        v58 = 0;
        v60 = 6;
      }

      else
      {
        type metadata accessor for Path.PathBox();
        v53 = swift_allocObject();
        *(v53 + 24) = 0u;
        v54 = v53 + 24;
        *(v53 + 40) = 0u;
        *(v53 + 56) = 0u;
        *(v53 + 72) = 0u;
        *(v53 + 88) = 0u;
        *(v53 + 104) = 0u;
        *(v53 + 16) = 2;
        RBPathStorageInit();
        v55 = *(v53 + 16);

        if (v55 != 2)
        {
          Path.PathBox.prepareBuffer()();
        }

        v56 = v90.i64[1];
        v57 = v90.i64[0];
        v58 = *&v89.f64[1];
        v59 = *&v89.f64[0];
        if (v91 > 1u)
        {
          if (v91 == 2)
          {
            v63 = *(v90.i64[0] + 64);
            v64 = *(v90.i64[0] + 32);
            *&v97.a = *(v90.i64[0] + 16);
            *&v97.c = v64;
            *&v97.tx = *(v90.i64[0] + 48);
            if (v63)
            {
              v65 = 9;
            }

            else
            {
              v65 = 8;
            }

            MEMORY[0x193AC35E0](v54, v65, &v97, 0);
            v60 = 2;
          }

          else
          {
            v60 = v91;
            if (v91 != 6)
            {
              goto LABEL_164;
            }
          }
        }

        else
        {
          *&v97.a = v90;
          *&v97.c = v89;
          if (v91)
          {
            MEMORY[0x193AC35E0](v54, 7, &v97, 0);
            v60 = 1;
          }

          else
          {
            MEMORY[0x193AC35E0](v54, 5, &v97, 0);
            v60 = 0;
          }
        }
      }

      outlined consume of Path.Storage(v57, v56, v59, v58, v60);
      if (*(v53 + 16) != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      v97.b = 0.0;
      v97.c = 0.0;
      v97.a = 1.0;
      v97.d = 1.0;
      v97.tx = 0.0;
      v97.ty = 0.0;
      IsIdentity = CGAffineTransformIsIdentity(&v97);
      if (!IsIdentity)
      {
        v97.b = 0.0;
        v97.c = 0.0;
        v97.a = 1.0;
        v97.d = 1.0;
        v97.tx = 0.0;
        v97.ty = 0.0;
        MEMORY[0x193AC35E0](v53 + 24, 17, 0, &v97);
      }

      if (v13 <= 1)
      {
        *&v97.a = v94;
        *&v97.c = rect;
        v69 = v53 + 24;
        if (v13)
        {
          v70 = 7;
        }

        else
        {
          v70 = 5;
        }

        goto LABEL_145;
      }

      if (v13 == 2)
      {
        v71 = *(*&v94.f64[0] + 64);
        v72 = *(*&v94.f64[0] + 32);
        *&v97.a = *(*&v94.f64[0] + 16);
        *&v97.c = v72;
        *&v97.tx = *(*&v94.f64[0] + 48);
        if (v71)
        {
          v70 = 9;
        }

        else
        {
          v70 = 8;
        }

        v69 = v53 + 24;
LABEL_145:
        MEMORY[0x193AC35E0](v69, v70, &v97, 0);
        if (!IsIdentity)
        {
LABEL_146:
          MEMORY[0x193AC35E0](v53 + 24, 16, 0, 0);
        }

LABEL_147:

        outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], v13);

        v89 = 0u;
        v90 = v53;
        v91 = 5;
        goto LABEL_5;
      }

      if (*(*&v94.f64[0] + 16))
      {
        if (*(*&v94.f64[0] + 16) == 1)
        {
          goto LABEL_150;
        }

        v73 = one-time initialization token for bufferCallbacks;

        if (v73 != -1)
        {
          swift_once();
        }
      }

      else
      {
        if (!*(*&v94.f64[0] + 24))
        {
          goto LABEL_163;
        }

LABEL_150:
      }

      RBPathStorageAppendPath();
      outlined consume of Path.Storage(*&v94.f64[0], *&v94.f64[1], *&rect.f64[0], *&rect.f64[1], 5u);
      if (!IsIdentity)
      {
        goto LABEL_146;
      }

      goto LABEL_147;
    }

    goto LABEL_3;
  }

  if (*(*&v94.f64[0] + 24))
  {
LABEL_102:

    goto LABEL_107;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Shape.effectivePath(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v47.origin.x = CGRect.inset(by:)(a6, a7, a8, a9, a2, a3, a4, a5);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  IsNull = CGRectIsNull(v47);
  if (IsNull)
  {
    v16 = 0;
  }

  else
  {
    v16 = *&x;
  }

  if (IsNull)
  {
    v17 = 0;
  }

  else
  {
    v17 = *&y;
  }

  if (IsNull)
  {
    v18 = 0;
  }

  else
  {
    v18 = *&width;
  }

  if (IsNull)
  {
    v19 = 0;
  }

  else
  {
    v19 = *&height;
  }

  if (IsNull)
  {
    v20 = 6;
  }

  else
  {
    v20 = 0;
  }

  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v21 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    result = dyld_program_minos_at_least();
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (dword_1ED53C520 < v21)
  {
    goto LABEL_34;
  }

  result = _threadGeometryProxyData();
  if (result)
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v36);
      v24 = v36;
      v23 = v37;
      static Update.end()();
      if (v23)
      {
        goto LABEL_27;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v24 = *InputValue;
      v26 = *(InputValue + 8);

      static Update.end()();
      if (v26)
      {
LABEL_27:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v24, v34);

        if (LOBYTE(v34[0]) != 1)
        {
          goto LABEL_34;
        }

LABEL_32:
        v36 = 0xBFF0000000000000;
        v37 = 0;
        v38 = 0;
        v39 = 0x3FF0000000000000;
        v40 = a4;
        v41 = 0;
        Path.applying(_:)(&v36, v34);
        v29 = v34[1];
        v33 = v34[0];
        v30 = v34[2];
        v31 = v34[3];
        v32 = v35;
        result = outlined consume of Path.Storage(v16, v17, v18, v19, v20);
        v16 = v33;
        v17 = v29;
        v18 = v30;
        v19 = v31;
        v20 = v32;
        goto LABEL_34;
      }
    }

    v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v24);
    if (!v27)
    {

      goto LABEL_34;
    }

    v28 = *(v27 + 72);

    if (v28)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  CombinedContentShape.path(in:)(a1, v19, a3, a4, a5, a6);
  v17 = v19[0];
  v18 = v19[1];
  v8 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v9)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v23);
      v11 = v23;
      v10 = v24;
      static Update.end()();
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v11 = *InputValue;
      v13 = *(InputValue + 8);

      static Update.end()();
      if (v13)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, v21);

        if (LOBYTE(v21[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v23 = 0xBFF0000000000000;
        v24 = 0;
        v25 = 0;
        v26 = 0x3FF0000000000000;
        v27 = a5;
        v28 = 0;
        Path.applying(_:)(&v23, v21);
        v17 = v21[0];
        v18 = v21[1];
        v8 = v22;
        outlined destroy of Path(v19);
        goto LABEL_19;
      }
    }

    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (!v14)
    {

      goto LABEL_19;
    }

    v15 = *(v14 + 72);

    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v8;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  (*(*a1 + 80))(v16);
  v14 = v16[0];
  v15 = v16[1];
  v5 = v17;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v6)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v20);
      v8 = v20;
      v7 = v21;
      static Update.end()();
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v8 = *InputValue;
      v10 = *(InputValue + 8);

      static Update.end()();
      if (v10)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v8, v18);

        if (LOBYTE(v18[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v20 = 0xBFF0000000000000;
        v21 = 0;
        v22 = 0;
        v23 = 0x3FF0000000000000;
        v24 = a3;
        v25 = 0;
        Path.applying(_:)(&v20, v18);
        v14 = v18[0];
        v15 = v18[1];
        v5 = v19;
        outlined destroy of Path(v16);
        goto LABEL_19;
      }
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v8);
    if (!v11)
    {

      goto LABEL_19;
    }

    v12 = *(v11 + 72);

    if (v12)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v5;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v14 = *(v2 + 16);
  v15 = *v2;
  v5 = *(v2 + 32);
  v18[0] = *v2;
  v18[1] = v14;
  v19 = *(v2 + 32);
  outlined init with copy of Path.Storage(v18, &v20);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (dword_1ED53C520 < v6)
  {
    goto LABEL_20;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v20);
      v7 = v20;
      v8 = v21;
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v7 = *InputValue;
      v8 = *(InputValue + 8);
    }

    v10 = v2;
    static Update.end()();
    if (v8)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v7, v16);

      if (LOBYTE(v16[0]) != 1)
      {
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0xBFF0000000000000;
      v21 = 0;
      v22 = 0;
      v23 = 0x3FF0000000000000;
      v24 = a2;
      v25 = 0;
      Path.applying(_:)(&v20, v16);
      v14 = v16[1];
      v15 = v16[0];
      v5 = v17;
      outlined destroy of Path(v10);
      goto LABEL_20;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v7);
    if (!v11)
    {

      goto LABEL_20;
    }

    v12 = *(v11 + 72);

    if (v12)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  result = v15;
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v5;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, double a4@<D2>, __n128 a5@<Q3>)
{
  v8 = v5[3];
  v8.n128_f64[0] = a4;
  PartialContainerRelativeShape.path(in:)(v20, a2, a3, v8, a5);
  v18 = v20[0];
  v19 = v20[1];
  v9 = v21;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v10)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v24);
      v12 = v24;
      v11 = v25;
      static Update.end()();
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v12 = *InputValue;
      v14 = *(InputValue + 8);

      static Update.end()();
      if (v14)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v12, v22);

        if (LOBYTE(v22[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v24 = 0xBFF0000000000000;
        v25 = 0;
        v26 = 0;
        v27 = 0x3FF0000000000000;
        v28 = a4;
        v29 = 0;
        Path.applying(_:)(&v24, v22);
        v18 = v22[0];
        v19 = v22[1];
        v9 = v23;
        outlined destroy of Path(v20);
        goto LABEL_19;
      }
    }

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v12);
    if (!v15)
    {

      goto LABEL_19;
    }

    v16 = *(v15 + 72);

    if (v16)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v18;
  *a1 = v18;
  a1[1] = v19;
  a1[2].n128_u8[0] = v9;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  LOBYTE(v27) = *(v5 + 32);
  specialized Path.init(roundedRect:cornerRadii:style:)(&v27, v23, a2, a3, a4, a5, v8, v9, v10, v11);
  v22 = v23[1];
  v21 = v23[0];
  v12 = v24;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v13 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v13)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v27);
      v15 = v27;
      v14 = v28;
      static Update.end()();
      if (v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v15 = *InputValue;
      v17 = *(InputValue + 8);

      static Update.end()();
      if (v17)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v15, v25);

        if (LOBYTE(v25[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v27 = 0xBFF0000000000000;
        v28 = 0;
        v29 = 0;
        v30 = 0x3FF0000000000000;
        v31 = a4;
        v32 = 0;
        Path.applying(_:)(&v27, v25);
        v21 = v25[0];
        v22 = v25[1];
        v12 = v26;
        outlined destroy of Path(v23);
        goto LABEL_19;
      }
    }

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v15);
    if (!v18)
    {

      goto LABEL_19;
    }

    v19 = *(v18 + 72);

    if (v19)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v21;
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 32) = v12;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v39 = CGRectInset(*&a2, v13, v13);
  v14 = v8 - v13;
  v15 = 0.0;
  if (v8 - v13 <= 0.0)
  {
    v14 = 0.0;
  }

  v16 = v9 - v13;
  if (v9 - v13 <= 0.0)
  {
    v16 = 0.0;
  }

  v17 = v10 - v13;
  if (v10 - v13 <= 0.0)
  {
    v17 = 0.0;
  }

  if (v11 - v13 > 0.0)
  {
    v15 = v11 - v13;
  }

  LOBYTE(v33) = v12 & 1;
  specialized Path.init(roundedRect:cornerRadii:style:)(&v33, v29, v39.origin.x, v39.origin.y, v39.size.width, v39.size.height, v14, v16, v17, v15);
  v28 = v29[1];
  v27 = v29[0];
  v18 = v30;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v19 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (dword_1ED53C520 < v19)
  {
    goto LABEL_27;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v33);
      v21 = v33;
      v20 = v34;
      static Update.end()();
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v21 = *InputValue;
      v23 = *(InputValue + 8);

      static Update.end()();
      if (v23)
      {
LABEL_20:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v21, v31);

        if (LOBYTE(v31[0]) != 1)
        {
          goto LABEL_27;
        }

LABEL_25:
        v33 = 0xBFF0000000000000;
        v34 = 0;
        v35 = 0;
        v36 = 0x3FF0000000000000;
        v37 = a3;
        v38 = 0;
        Path.applying(_:)(&v33, v31);
        v27 = v31[0];
        v28 = v31[1];
        v18 = v32;
        outlined destroy of Path(v29);
        goto LABEL_27;
      }
    }

    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v21);
    if (!v24)
    {

      goto LABEL_27;
    }

    v25 = *(v24 + 72);

    if (v25)
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  result = v27;
  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 32) = v18;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(int8x16_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v5 = a4.n128_u64[0];
  ImplicitContainerShape.path(in:)(v18, a2, a3, a4, a5);
  v16 = v18[0];
  v17 = v18[1];
  v7 = v19;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v8)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v22);
      v10 = v22;
      v9 = v23;
      static Update.end()();
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v10 = *InputValue;
      v12 = *(InputValue + 8);

      static Update.end()();
      if (v12)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v10, v20);

        if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v22 = 0xBFF0000000000000;
        v23 = 0;
        v24 = 0;
        v25 = 0x3FF0000000000000;
        v26 = v5;
        v27 = 0;
        Path.applying(_:)(&v22, v20);
        v16 = v20[0];
        v17 = v20[1];
        v7 = v21;
        outlined destroy of Path(v18);
        goto LABEL_19;
      }
    }

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v10);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = *(v13 + 72);

    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v16;
  *a1 = v16;
  a1[1] = v17;
  a1[2].i8[0] = v7;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, CGFloat a4@<D4>)
{
  v29 = CGRectInset(*&a2, a4, a4);
  specialized ContainerRelativeShape.path(in:)(v19, v29.origin, *&v29.origin.y, v29.size, *&v29.size.height);
  v17 = v19[0];
  v18 = v19[1];
  v8 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v9)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v23);
      v11 = v23;
      v10 = v24;
      static Update.end()();
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v11 = *InputValue;
      v13 = *(InputValue + 8);

      static Update.end()();
      if (v13)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, v21);

        if (LOBYTE(v21[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v23 = 0xBFF0000000000000;
        v24 = 0;
        v25 = 0;
        v26 = 0x3FF0000000000000;
        v27 = a3;
        v28 = 0;
        Path.applying(_:)(&v23, v21);
        v17 = v21[0];
        v18 = v21[1];
        v8 = v22;
        outlined destroy of Path(v19);
        goto LABEL_19;
      }
    }

    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (!v14)
    {

      goto LABEL_19;
    }

    v15 = *(v14 + 72);

    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v17;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v8;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;
  ConcentricRectangle.path(in:)(v27, v11, v12, v13, v14);
  v24 = v27[0];
  v25 = v27[1];
  v15 = v28;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v16 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v16)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v31);
      v18 = v31;
      v17 = v32;
      static Update.end()();
      if (v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v18 = *InputValue;
      v20 = *(InputValue + 8);

      static Update.end()();
      if (v20)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, v29);

        if (LOBYTE(v29[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v31 = 0xBFF0000000000000;
        v32 = 0;
        v33 = 0;
        v34 = 0x3FF0000000000000;
        v35 = a4;
        v36 = 0;
        Path.applying(_:)(&v31, v29);
        v24 = v29[0];
        v25 = v29[1];
        v15 = v30;
        outlined destroy of Path(v27);
        goto LABEL_19;
      }
    }

    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    if (!v21)
    {

      goto LABEL_19;
    }

    v22 = *(v21 + 72);

    if (v22)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v24;
  *a1 = v24;
  a1[1] = v25;
  a1[2].n128_u8[0] = v15;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CombinedContentShape@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  CombinedContentShape.path(in:)(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for CombinedContentShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CombinedContentShape and conformance CombinedContentShape();
  *(a1 + 8) = result;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v5 = a4.n128_u64[0];
  specialized ContainerRelativeShape.path(in:)(v18, a2, a3, a4, a5);
  v16 = v18[0];
  v17 = v18[1];
  v7 = v19;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v8)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v22);
      v10 = v22;
      v9 = v23;
      static Update.end()();
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v10 = *InputValue;
      v12 = *(InputValue + 8);

      static Update.end()();
      if (v12)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v10, v20);

        if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v22 = 0xBFF0000000000000;
        v23 = 0;
        v24 = 0;
        v25 = 0x3FF0000000000000;
        v26 = v5;
        v27 = 0;
        Path.applying(_:)(&v22, v20);
        v16 = v20[0];
        v17 = v20[1];
        v7 = v21;
        outlined destroy of Path(v18);
        goto LABEL_19;
      }
    }

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v10);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = *(v13 + 72);

    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  return result;
}

double (*_GrayscaleEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _GrayscaleEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi12_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _GrayscaleEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi12_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void type metadata accessor for RendererVisualEffect<_GrayscaleEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_GrayscaleEffect>)
  {
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<_GrayscaleEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_GrayscaleEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

uint64_t AnchorGeometry.init(position:size:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double AnchorGeometry.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  result = *v9;
  v11 = v9[1];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 32) = v7 - (result - v5);
  *(a1 + 40) = v8 - (v11 - v6);
  *(a1 + 16) = result;
  *(a1 + 24) = v11;
  return result;
}

uint64_t Anchor.as<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[6] = (*(*a2 + 104))(a1, a4);
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for AnchorValueBoxBase();
  type metadata accessor for Optional();
  v6 = type metadata accessor for Anchor();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in DynamicTextView.TextManager.resolve(in:for:), v9, MEMORY[0x1E69E73E0], v6, v7, &v10);

  return v10;
}

Swift::Int Anchor<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> Anchor<A>()
{
  Hasher.init(_seed:)();
  Anchor<A>.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t static AnchorProtocol<>.outputValue(anchorValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t Anchor.Source.init<A>(anchor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnchorBox();
  (*(v5 + 16))(v7, a1, a3);
  v8 = AnchorBox.__allocating_init(_:)(v7);
  (*(v5 + 8))(a1, a3);
  return v8;
}

uint64_t AnchorValueBox.defaultValue.getter()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 32))(v2, v1, v5);
  (*(v1 + 48))(v7, v2, v1);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t AnchorValueBox.as<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  result = 0;
  if (AssociatedTypeWitness == a2)
  {
    type metadata accessor for AnchorValueShim();
    swift_getWitnessTable();
    type metadata accessor for AnchorValueBox();
    (*(v6 + 16))(v8, &v2[*(v4 + 152)], AssociatedTypeWitness);
    swift_allocObject();
    AnchorValueBox.init(_:)(v8);
    type metadata accessor for AnchorValueBoxBase();
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

uint64_t AnchorValueBox.__ivar_destroyer()
{
  v1 = *(*v0 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t ArrayAnchorBox.prepare(geometry:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(*v1 + 104);
  type metadata accessor for ArrayAnchorValueBox();
  v13 = v1[2];
  v11[2] = v4;
  v11[3] = *a1;
  v12 = v3;
  type metadata accessor for Anchor.Source();
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for Anchor();

  WitnessTable = swift_getWitnessTable();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorBox.prepare(geometry:), v11, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

uint64_t ArrayAnchorValueBox.defaultValue.getter()
{
  v1 = *v0;
  v9 = v0[2];
  v8 = *(v1 + 136);
  type metadata accessor for Anchor();
  v2 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorValueBox.defaultValue.getter, &v7, v2, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);

  return v5;
}

uint64_t ArrayAnchorValueBox.convert(to:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  v13[2] = a1[2];
  v12 = v1[2];
  v10 = *(v2 + 136);
  v11 = v13;
  type metadata accessor for Anchor();
  v4 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorValueBox.convert(to:), &v9, v4, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t ArrayAnchorValueBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(result + 16);
    v3 = type metadata accessor for Anchor();

    v4 = MEMORY[0x193ABF270](v2, v3);
    v5 = *(v0 + 16);
    if (v4 == MEMORY[0x193ABF270](v5, v3))
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = RandomAccessCollection<>.indices.getter();
      if (v10 <= v9)
      {
        v6 = v9;
      }

      else
      {
        v6 = v10;
      }

      v7 = v9;
      while (1)
      {
        if (v10 == v7)
        {

          return 1;
        }

        if (v10 < v9)
        {
          break;
        }

        if (v6 == v7)
        {
          goto LABEL_15;
        }

        Array.subscript.getter();
        Array.subscript.getter();
        v8 = (*(*v9 + 112))(v5);

        ++v7;
        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_11:

      return 0;
    }
  }

  return result;
}

uint64_t ArrayAnchorValueBox.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for Anchor();

  if (MEMORY[0x193ABF2C0](v5, v4))
  {
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v9 = *(v3 + 8 * v6);

        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v11 = *(*v9 + 120);

      v11(a1);

      ++v6;
    }

    while (v10 != MEMORY[0x193ABF2C0](v3, v4));
  }
}

uint64_t vtable thunk for AnchorValueBoxBase.defaultValue.getter dispatching to ArrayAnchorValueBox.defaultValue.getter@<X0>(uint64_t *a1@<X8>)
{
  result = ArrayAnchorValueBox.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t vtable thunk for AnchorValueBoxBase.convert(to:) dispatching to ArrayAnchorValueBox.convert(to:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ArrayAnchorValueBox.convert(to:)(a1);
  *a2 = result;
  return result;
}

uint64_t OptionalAnchorValueBox.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v8 = v1[2];
  v7 = *(v3 + 136);
  type metadata accessor for Anchor();
  type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OptionalAnchorValueBox.defaultValue.getter, &v6, MEMORY[0x1E69E73E0], v7, v4, a1);
}

uint64_t OptionalAnchorValueBox.convert(to:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = a1[2];
  v11 = v2[2];
  v9 = *(v4 + 136);
  v10 = v12;
  type metadata accessor for Anchor();
  type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OptionalAnchorValueBox.convert(to:), &v8, MEMORY[0x1E69E73E0], v9, v6, a2);
}

uint64_t OptionalAnchorValueBox.as<A>(type:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return (*(*v3 + 104))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t OptionalAnchorValueBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(v0 + 16);
    v3 = *(result + 16);
    result = (v2 | v3) == 0;
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = *(*v2 + 112);

      LOBYTE(v5) = v5(v6);

      return v5 & 1;
    }
  }

  return result;
}

uint64_t OptionalAnchorValueBox.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

uint64_t partial apply for closure #1 in OptionalAnchorValueBox.convert(to:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = v2[2];
  return (*(*v3 + 96))(v6);
}

{
  return partial apply for closure #1 in ArrayAnchorValueBox.convert(to:)(a1);
}

uint64_t partial apply for closure #1 in OptionalAnchorValueBox.defaultValue.getter(uint64_t a1)
{
  return (*(**a1 + 88))();
}

{
  return partial apply for closure #1 in ArrayAnchorValueBox.defaultValue.getter(a1);
}

uint64_t partial apply for closure #1 in OptionalAnchorBox.prepare(geometry:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *(v2 + 24);
  v8 = v4;
  result = Anchor.Source.prepare(geometry:)(&v7, v5);
  *a2 = result;
  return result;
}

{
  return partial apply for closure #1 in ArrayAnchorBox.prepare(geometry:)(a1, a2);
}

void _Rotation3DEffect.Data.transform.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v22 = v1[8];
  v11 = MEMORY[0x1E69792E8];
  v12 = *(MEMORY[0x1E69792E8] + 80);
  *&a.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&a.m33 = v12;
  v28 = *&a.m31;
  v13 = *(MEMORY[0x1E69792E8] + 112);
  v14 = -1.0 / v9;
  *&a.m41 = *(MEMORY[0x1E69792E8] + 96);
  v29 = *&a.m41;
  *&a.m43 = v13;
  v15 = *(MEMORY[0x1E69792E8] + 16);
  v27 = v13;
  *&a.m11 = *MEMORY[0x1E69792E8];
  v26 = *&a.m11;
  *&a.m13 = v15;
  v25 = v15;
  v23 = *(MEMORY[0x1E69792E8] + 48);
  *&a.m21 = *(MEMORY[0x1E69792E8] + 32);
  v24 = *&a.m21;
  *&a.m23 = v23;
  CATransform3DTranslate(&b, &a, v7, v8, v10);
  *&a.m21 = v24;
  *&a.m23 = v23;
  *&a.m31 = v28;
  a.m33 = *(v11 + 80);
  *&a.m11 = v26;
  *&a.m13 = v25;
  a.m34 = v14;
  *&a.m41 = v29;
  *&a.m43 = v27;
  CATransform3DConcat(&v30, &a, &b);
  CATransform3DRotate(&a, &v30, v3, v4, v5, v6);
  CATransform3DTranslate(&b, &a, -v7, -v8, -v10);
  v16 = *&b.m11;
  v17 = *&b.m14;
  m22 = b.m22;
  m24 = b.m24;
  v20 = *&b.m41;
  m44 = b.m44;
  *&b.m13 = *&b.m14;
  b.m21 = b.m22;
  b.m22 = b.m24;
  *&b.m23 = *&b.m41;
  b.m31 = b.m44;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    a.m11 = -1.0;
    memset(&a.m12, 0, 24);
    *&a.m21 = xmmword_18DDAA020;
    a.m23 = v22;
    *&a.m24 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&b, v33);
    v30.m11 = -1.0;
    memset(&v30.m12, 0, 24);
    *&v30.m21 = xmmword_18DDAA020;
    v30.m23 = v22;
    *&v30.m24 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v30, v34);
    v16 = v34[0];
    v17 = v34[1];
    m22 = v35;
    m24 = v36;
    v20 = v37;
    m44 = v38;
  }

  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = m22;
  *(a1 + 40) = m24;
  *(a1 + 48) = v20;
  *(a1 + 64) = m44;
}

void _Rotation3DEffect.axis.setter(double a1, double a2, double a3)
{
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

void _Rotation3DEffect.Data.axis.setter(double a1, double a2, double a3)
{
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

void _Rotation3DEffect.Data.anchor.setter(double a1, double a2, double a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
}

double _Rotation3DEffect.Data.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x7FF8000000000000;
  return result;
}

double _Rotation3DEffect.Data.init(_:size:layoutDirection:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, float64x2_t a4@<Q0>, double a5@<D1>)
{
  v5 = *a2;
  if (a4.f64[0] > a5)
  {
    v6 = a4.f64[0];
  }

  else
  {
    v6 = a5;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  v10 = NAN;
  if (v5)
  {
    v10 = a4.f64[0];
  }

  a4.f64[1] = a5;
  *(a3 + 32) = vmulq_f64(*(a1 + 32), a4);
  result = v6 / v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6 / v8;
  *(a3 + 64) = v10;
  return result;
}

__n128 _Rotation3DEffect.effectValue(size:)@<Q0>(uint64_t a1@<X8>)
{
  _Rotation3DEffect.Data.transform.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

float64_t _Rotation3DEffect.animatableData.getter@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[3].f64[0];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  v4 = v1[3].f64[1] * 128.0;
  v5 = vmulq_f64(v1[1], v3);
  *a1 = vmulq_f64(*v1, v3);
  a1[1] = v5;
  a1[2] = vmulq_f64(v1[2], v3);
  a1[3].f64[0] = result;
  a1[3].f64[1] = v4;
  return result;
}

float64_t _Rotation3DEffect.animatableData.setter(float64x2_t *a1)
{
  result = a1[3].f64[0];
  v3 = a1[3].f64[1];
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = vmulq_f64(a1[1], v4);
  *v1 = vmulq_f64(*a1, v4);
  v1[1] = v5;
  v1[2] = vmulq_f64(a1[2], v4);
  v1[3].f64[0] = result;
  v1[3].f64[1] = v3 * 0.0078125;
  return result;
}

uint64_t (*_Rotation3DEffect.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56) * 128.0;
  v7 = vmulq_f64(*v1, v4);
  v8 = vmulq_f64(*(v1 + 16), v4);
  v9 = vmulq_f64(*(v1 + 32), v4);
  *v3 = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  return _Rotation3DEffect.animatableData.modify;
}

BOOL static _Rotation3DEffect.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6]))
  {
    return a1[7] == a2[7];
  }

  else
  {
    return 0;
  }
}

__n128 static _Rotation3DEffect.resolve(effect:origin:size:layoutDirection:)@<Q0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = *(a1 + 32) * a4;
  v8 = *(a1 + 40) * a5;
  if (a4 > a5)
  {
    a5 = a4;
  }

  if (*a2)
  {
    v9 = a4;
  }

  else
  {
    v9 = NAN;
  }

  v10 = *(a1 + 48);
  v11 = a5 / *(a1 + 56);
  v12 = swift_allocObject();
  result = *a1;
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  *(v12 + 64) = v10;
  *(v12 + 72) = v11;
  *(v12 + 80) = v9;
  *(v12 + 88) = 3;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 12) = 9;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _Rotation3DEffect@<Q0>(uint64_t a1@<X8>)
{
  _Rotation3DEffect.effectValue(size:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _Rotation3DEffect(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1] && a1[3].f64[0] == a2[3].f64[0])
  {
    return a1[3].f64[1] == a2[3].f64[1];
  }

  return result;
}

float64_t protocol witness for Animatable.animatableData.getter in conformance _Rotation3DEffect@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[3].f64[0];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  v4 = v1[3].f64[1] * 128.0;
  v5 = vmulq_f64(v1[1], v3);
  *a1 = vmulq_f64(*v1, v3);
  a1[1] = v5;
  a1[2] = vmulq_f64(v1[2], v3);
  a1[3].f64[0] = result;
  a1[3].f64[1] = v4;
  return result;
}

float64_t protocol witness for Animatable.animatableData.setter in conformance _Rotation3DEffect(float64x2_t *a1)
{
  result = a1[3].f64[0];
  v3 = a1[3].f64[1];
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = vmulq_f64(a1[1], v4);
  *v1 = vmulq_f64(*a1, v4);
  v1[1] = v5;
  v1[2] = vmulq_f64(a1[2], v4);
  v1[3].f64[0] = result;
  v1[3].f64[1] = v3 * 0.0078125;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _Rotation3DEffect(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56) * 128.0;
  v7 = vmulq_f64(*v1, v4);
  v8 = vmulq_f64(*(v1 + 16), v4);
  v9 = vmulq_f64(*(v1 + 32), v4);
  *v3 = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  return protocol witness for Animatable.animatableData.modify in conformance _Rotation3DEffect;
}

double _Rotation3DEffect.animatableData.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = *(v1 + 56) * 0.0078125;
  v6 = vmulq_f64(*v1, v4);
  v7 = vmulq_f64(*(v1 + 16), v4);
  v8 = vmulq_f64(*(v1 + 32), v4);
  *v2 = v6;
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 48) = v3;
  *(v2 + 56) = v5;
  free(v1);
  return result;
}

uint64_t View.rotation3DEffect(_:axis:anchor:anchorZ:perspective:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *v10 = a2;
  *&v10[1] = a3;
  *&v10[2] = a4;
  *&v10[3] = a5;
  *&v10[4] = a6;
  *&v10[5] = a7;
  *&v10[6] = a8;
  *&v10[7] = a9;
  return View.modifier<A>(_:)(v10, a1, &type metadata for _Rotation3DEffect);
}

uint64_t VisualEffect.rotation3DEffect(_:axis:anchor:anchorZ:perspective:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  *v15 = a4;
  *&v15[1] = a5;
  *&v15[2] = a6;
  *&v15[3] = a7;
  *&v15[4] = a8;
  *&v15[5] = a9;
  *&v15[6] = a10;
  *&v15[7] = a11;
  lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect();
  return VisualEffect.geometryEffect<A>(_:)(v15, a1, &type metadata for _Rotation3DEffect, a2, a3);
}

void *_Rotation3DEffect.Data.encode(to:)(void *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v39 = v2[8];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v12 = v3[1];
    result = (v12 + 8);
    if (__OFADD__(v12, 8))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v3[2] < result)
    {
      goto LABEL_83;
    }

    v3[1] = result;
    *(*v3 + v12) = v4;
  }

  while (1)
  {
    *&v4 = v5;
    if (*&v4 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v13 = v3[1];
    result = (v13 + 4);
    if (!__OFADD__(v13, 4))
    {
      if (v3[2] >= result)
      {
        v3[1] = result;
        *(*v3 + v13) = LODWORD(v4);
        goto LABEL_9;
      }

      goto LABEL_85;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  while (1)
  {
LABEL_9:
    *&v4 = v7;
    if (*&v4 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v14 = v3[1];
      result = (v14 + 4);
      if (__OFADD__(v14, 4))
      {
        goto LABEL_82;
      }

      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = LODWORD(v4);
      }

      else
      {
        v3[1] = result;
        *(*v3 + v14) = LODWORD(v4);
      }
    }

    *&v4 = v6;
    if (*&v4 == 0.0)
    {
      goto LABEL_17;
    }

    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v15 = v3[1];
    result = (v15 + 4);
    if (!__OFADD__(v15, 4))
    {
      break;
    }

    __break(1u);
LABEL_85:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v4);
  }

  if (v3[2] >= result)
  {
    v3[1] = result;
    *(*v3 + v15) = LODWORD(v4);
LABEL_17:
    if (v9 == 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v4);
  if (v9 == 0.0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v16 = fabs(v9);
  if (v16 >= 65536.0)
  {
    v17 = 41;
  }

  else
  {
    v17 = 45;
  }

  ProtobufEncoder.encodeVarint(_:)(v17);
  if (v16 >= 65536.0)
  {
    v19 = v3[1];
    result = (v19 + 8);
    if (!__OFADD__(v19, 8))
    {
      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v9;
      }

      else
      {
        v3[1] = result;
        *(*v3 + v19) = v9;
      }

      goto LABEL_28;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = v3[1];
  result = (v18 + 4);
  if (__OFADD__(v18, 4))
  {
    __break(1u);
    goto LABEL_94;
  }

  *&v16 = v9;
  if (v3[2] < result)
  {
    goto LABEL_99;
  }

  v3[1] = result;
  *(*v3 + v18) = LODWORD(v16);
  while (1)
  {
LABEL_28:
    if (v8 == 0.0)
    {
      goto LABEL_39;
    }

    v16 = fabs(v8);
    v20 = v16 >= 65536.0 ? 49 : 53;
    ProtobufEncoder.encodeVarint(_:)(v20);
    if (v16 >= 65536.0)
    {
      break;
    }

    v21 = v3[1];
    result = (v21 + 4);
    if (!__OFADD__(v21, 4))
    {
      *&v22 = v8;
      if (v3[2] >= result)
      {
        v3[1] = result;
        *(*v3 + v21) = LODWORD(v22);
        goto LABEL_39;
      }

      goto LABEL_103;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v16);
  }

  v23 = v3[1];
  result = (v23 + 8);
  if (__OFADD__(v23, 8))
  {
    goto LABEL_96;
  }

  if (v3[2] < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
  }

  else
  {
    v3[1] = result;
    *(*v3 + v23) = v8;
  }

  while (1)
  {
LABEL_39:
    if (v11 != 0.0)
    {
      v16 = fabs(v11);
      v8 = 65536.0;
      if (v16 >= 65536.0)
      {
        v24 = 57;
      }

      else
      {
        v24 = 61;
      }

      ProtobufEncoder.encodeVarint(_:)(v24);
      if (v16 >= 65536.0)
      {
        v27 = v3[1];
        result = (v27 + 8);
        if (__OFADD__(v27, 8))
        {
          goto LABEL_98;
        }

        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v11;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v27) = v11;
        }
      }

      else
      {
        v25 = v3[1];
        result = (v25 + 4);
        if (__OFADD__(v25, 4))
        {
          goto LABEL_97;
        }

        v26 = v11;
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v26;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v25) = v26;
        }
      }
    }

    if (v10 == 0.0)
    {
      break;
    }

    v22 = fabs(v10);
    v11 = 65536.0;
    if (v22 >= 65536.0)
    {
      v28 = 65;
    }

    else
    {
      v28 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v28);
    if (v22 >= 65536.0)
    {
      v31 = v3[1];
      result = (v31 + 8);
      if (!__OFADD__(v31, 8))
      {
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v10;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v31) = v10;
        }

        break;
      }
    }

    else
    {
      v29 = v3[1];
      result = (v29 + 4);
      if (!__OFADD__(v29, 4))
      {
        v30 = v10;
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v30;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v29) = v30;
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v22);
  }

  v32 = *&v39 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000 || v32 == 0x7FF0000000000000 || v32 == 0)
  {
    return result;
  }

  v35 = fabs(v39);
  if (v35 >= 65536.0)
  {
    v36 = 73;
  }

  else
  {
    v36 = 77;
  }

  ProtobufEncoder.encodeVarint(_:)(v36);
  if (v35 >= 65536.0)
  {
    v38 = v3[1];
    result = (v38 + 8);
    if (!__OFADD__(v38, 8))
    {
      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
      }

      else
      {
        v3[1] = result;
        result = (*v3 + v38);
      }

      *result = v39;
      return result;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v37 = v3[1];
  result = (v37 + 4);
  if (__OFADD__(v37, 4))
  {
    __break(1u);
    goto LABEL_90;
  }

  *&v35 = v39;
  if (v3[2] >= result)
  {
    v3[1] = result;
    *(*v3 + v37) = LODWORD(v35);
    return result;
  }

LABEL_91:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v35);
  return result;
}

unint64_t _Rotation3DEffect.Data.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v42 = 0.0;
    v8 = 0.0;
    v7 = NAN;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v42;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    a2[8] = v7;
    return result;
  }

  v42 = 0.0;
  v7 = NAN;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v5 < v15)
      {
        goto LABEL_15;
      }

      if (v15 < v5)
      {
        goto LABEL_138;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_138:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 > 4)
    {
      if (result >> 3 <= 6)
      {
        if (v16 == 5)
        {
          if (v17 != 5)
          {
            if (v17 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_147;
              }

              v25 = v3[1];
              if (v6 < v25 + result)
              {
                goto LABEL_138;
              }

              v3[3] = 41;
              v3[4] = v25 + result;
            }

            else
            {
              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v25 = v3[1];
            }

            v5 = (v25 + 1);
            if (v6 < (v25 + 1))
            {
              goto LABEL_138;
            }

            v11 = *v25;
            goto LABEL_7;
          }

          v36 = v3[1];
          v5 = (v36 + 1);
          if (v6 < (v36 + 1))
          {
            goto LABEL_138;
          }

          v37 = *v36;
          v3[1] = v5;
          v11 = v37;
        }

        else
        {
          if (v16 != 6)
          {
LABEL_60:
            if ((result & 7) > 1)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }

                v5 = v3[1] + result;
                if (v6 < v5)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                if (v17 != 5)
                {
                  goto LABEL_138;
                }

                v5 = v3[1] + 4;
                if (v6 < v5)
                {
                  goto LABEL_138;
                }
              }
            }

            else
            {
              if ((result & 7) == 0)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                v5 = v3[1];
                goto LABEL_8;
              }

              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v5 = v3[1] + 8;
              if (v6 < v5)
              {
                goto LABEL_138;
              }
            }

LABEL_7:
            v3[1] = v5;
            goto LABEL_8;
          }

          if (v17 != 5)
          {
            if (v17 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_146;
              }

              v21 = v3[1];
              if (v6 < v21 + result)
              {
                goto LABEL_138;
              }

              v3[3] = 49;
              v3[4] = v21 + result;
            }

            else
            {
              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v21 = v3[1];
            }

            v5 = (v21 + 1);
            if (v6 < (v21 + 1))
            {
              goto LABEL_138;
            }

            v12 = *v21;
            goto LABEL_7;
          }

          v30 = v3[1];
          v5 = (v30 + 1);
          if (v6 < (v30 + 1))
          {
            goto LABEL_138;
          }

          v31 = *v30;
          v3[1] = v5;
          v12 = v31;
        }
      }

      else
      {
        switch(v16)
        {
          case 7uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_145;
                }

                v24 = v3[1];
                if (v6 < v24 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 57;
                v3[4] = v24 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v24 = v3[1];
              }

              v5 = (v24 + 1);
              if (v6 < (v24 + 1))
              {
                goto LABEL_138;
              }

              v13 = *v24;
              goto LABEL_7;
            }

            v34 = v3[1];
            v5 = (v34 + 1);
            if (v6 < (v34 + 1))
            {
              goto LABEL_138;
            }

            v35 = *v34;
            v3[1] = v5;
            v13 = v35;
            break;
          case 8uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_144;
                }

                v26 = v3[1];
                if (v6 < v26 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 65;
                v3[4] = v26 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v26 = v3[1];
              }

              v5 = (v26 + 1);
              if (v6 < (v26 + 1))
              {
                goto LABEL_138;
              }

              v14 = *v26;
              goto LABEL_7;
            }

            v40 = v3[1];
            v5 = (v40 + 1);
            if (v6 < (v40 + 1))
            {
              goto LABEL_138;
            }

            v41 = *v40;
            v3[1] = v5;
            v14 = v41;
            break;
          case 9uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_143;
                }

                v18 = v3[1];
                if (v6 < v18 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 73;
                v3[4] = v18 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v18 = v3[1];
              }

              v5 = (v18 + 1);
              if (v6 < (v18 + 1))
              {
                goto LABEL_138;
              }

              v7 = *v18;
              goto LABEL_7;
            }

            v38 = v3[1];
            v5 = (v38 + 1);
            if (v6 < (v38 + 1))
            {
              goto LABEL_138;
            }

            v39 = *v38;
            v3[1] = v5;
            v7 = v39;
            break;
          default:
            goto LABEL_60;
        }
      }

      goto LABEL_8;
    }

    if (result >> 3 > 2)
    {
      break;
    }

    if (v16 == 1)
    {
      if (v17 != 5)
      {
        if (v17 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_148;
          }

          v22 = v3[1];
          if (v6 < v22 + result)
          {
            goto LABEL_138;
          }

          v3[3] = 9;
          v3[4] = v22 + result;
        }

        else
        {
          if (v17 != 1)
          {
            goto LABEL_138;
          }

          v22 = v3[1];
        }

        v5 = (v22 + 1);
        if (v6 < (v22 + 1))
        {
          goto LABEL_138;
        }

        v42 = *v22;
        goto LABEL_7;
      }

      v32 = v3[1];
      v5 = (v32 + 1);
      if (v6 < (v32 + 1))
      {
        goto LABEL_138;
      }

      v33 = *v32;
      v3[1] = v5;
      v42 = v33;
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_60;
      }

      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_142;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_138;
        }

        v3[3] = 21;
        v3[4] = v19 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_138;
        }

        v19 = v3[1];
      }

      v5 = (v19 + 1);
      if (v6 < (v19 + 1))
      {
        goto LABEL_138;
      }

      v27 = *v19;
      v3[1] = v5;
      v8 = v27;
    }

LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v16 == 3)
  {
    if (v17 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v23 = v3[1];
      if (v6 < v23 + result)
      {
        goto LABEL_138;
      }

      v3[3] = 29;
      v3[4] = v23 + result;
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_138;
      }

      v23 = v3[1];
    }

    v5 = (v23 + 1);
    if (v6 < (v23 + 1))
    {
      goto LABEL_138;
    }

    v29 = *v23;
    v3[1] = v5;
    v9 = v29;
    goto LABEL_8;
  }

  if (v16 != 4)
  {
    goto LABEL_60;
  }

  if (v17 != 2)
  {
    if (v17 != 5)
    {
      goto LABEL_138;
    }

    v20 = v3[1];
LABEL_79:
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_138;
    }

    v28 = *v20;
    v3[1] = v5;
    v10 = v28;
    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v20 = v3[1];
    if (v6 < v20 + result)
    {
      goto LABEL_138;
    }

    v3[3] = 37;
    v3[4] = v20 + result;
    goto LABEL_79;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for _Rotation3DEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for GeometryVisualEffect<_Rotation3DEffect>()
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_Rotation3DEffect>)
  {
    lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect();
    v0 = type metadata accessor for GeometryVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryVisualEffect<_Rotation3DEffect>);
    }
  }
}

BOOL LayoutDirectionBehavior.shouldFlip(in:)(void (*a1)(uint64_t *__return_ptr))
{
  v2 = *v1;
  result = 0;
  if (v2 != 2)
  {
    a1(&v4);
    if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static LayoutDirectionBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t LayoutDirectionBehavior.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x193AC11A0](v2);
}

Swift::Int LayoutDirectionBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LayoutDirectionBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LayoutDirectionBehavior()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x193AC11A0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LayoutDirectionBehavior()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior()
{
  result = lazy protocol witness table cache variable for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior;
  if (!lazy protocol witness table cache variable for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LayoutDirectionBehavior(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t getEnumTagSinglePayload for LayoutDirectionBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LayoutDirectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for LayoutDirectionBehavior(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for LayoutDirectionBehavior(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

double static GlassEffectZIndexModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v21 = *(a1 + 60);
  v22 = *(a1 + 76);
  v19 = v5;
  v20 = v6;
  a2(&v14);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v5))
  {
    *&v16 = AGGraphCreateOffsetAttribute2();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ZIndexTransform and conformance ZIndexTransform();
    v7 = Attribute.init<A>(body:value:flags:update:)();
    *&v16 = v5;
    v8 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
    v9 = *(v5 + 16);
    if (v8 != v9)
    {
      if (v8 >= v9)
      {
        __break(1u);
      }

      if (*(v5 + 16 * v8 + 32) == &type metadata for GlassContainer.Item.Key)
      {
        v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v14);
        v11 = *MEMORY[0x1E698D3F8];
        if ((v10 & 0x100000000) == 0)
        {
          v11 = v10;
        }

        *&v16 = __PAIR64__(v11, v7);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [GlassContainer.Item]();
        type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>();
        lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
        v12 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v16) = 0;
        PreferencesOutputs.subscript.setter(v12, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
      }
    }
  }

  *a3 = v14;
  result = v15;
  a3[1] = v15;
  return result;
}

uint64_t ZIndexTransform.updateValue()()
{
  v1 = *AGGraphGetValue();
  if ((v2 & 1) != 0 || (type metadata accessor for (_:)(), (result = AGGraphGetOutputValue()) == 0))
  {
    v4 = *(v0 + 4) + 1;
    *(v0 + 4) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in ZIndexTransform.updateValue()(uint64_t result, unsigned int a2, double a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    v9 = (v3 + 152);
    do
    {
      v9[8] = a3;
      *(v9 + 72) = 0;
      v10 = *v9;
      if (v10 != -1 && a2 != 0)
      {
        if (v10)
        {
          v12 = a2 == -1;
        }

        else
        {
          v12 = 1;
        }

        v13 = a2;
        if (!v12)
        {
          v8 = ~(a2 << 32) + a2;
          v14 = (v8 + (v10 << 32)) ^ ((v8 + (v10 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v13 = (v16 >> 31) ^ v16;
        }

        *v9 = v13;
      }

      v9 += 82;
      --v4;
    }

    while (v4);
    *v7 = v3;
  }

  return result;
}

void type metadata accessor for [GlassContainer.Item]()
{
  if (!lazy cache variable for type metadata for [GlassContainer.Item])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [GlassContainer.Item]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ZIndexTransform and conformance ZIndexTransform()
{
  result = lazy protocol witness table cache variable for type ZIndexTransform and conformance ZIndexTransform;
  if (!lazy protocol witness table cache variable for type ZIndexTransform and conformance ZIndexTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZIndexTransform and conformance ZIndexTransform);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ZIndexTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ZIndexTransform and conformance ZIndexTransform();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for _HoverEffectContentInputs(uint64_t a1, uint64_t a2)
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
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t assignWithCopy for _HoverEffectContentInputs(uint64_t a1, uint64_t a2)
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
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

__n128 __swift_memcpy93_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _HoverEffectContentInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t getEnumTagSinglePayload for _HoverEffectContentInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 93))
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

uint64_t storeEnumTagSinglePayload for _HoverEffectContentInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 93) = 1;
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

    *(result + 93) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double (*_OpacityEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

float _OpacityEffect.effectValue(size:)@<S0>(uint64_t a1@<X8>, double a2@<D2>)
{
  result = a2;
  *a1 = LODWORD(result);
  *(a1 + 8) = 0;
  *(a1 + 12) = 4;
  return result;
}

id specialized static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v32 = a2[2];
  v33 = v6;
  v34 = a2[4];
  v35 = *(a2 + 20);
  v7 = a2[1];
  v30 = *a2;
  v31 = v7;
  v8 = v6;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6))
  {
    v23[0] = v5;
    v9 = a2[1];
    v24 = *a2;
    v25 = v9;
    v26 = a2[2];
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(v23, &v24);
    return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n0oa24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e14E04view6inputss3_E7ju1_klv9ACyxq_GG_s3_E6m6VtFZAjz13_K0V_APtcfU0_s7_ef1_D0v72AA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_nD4VTG5AKyAA15ModifiedContentVyAA01_I16Modifier_ContentVyAA28GlassTransitionStateModifier33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGARGGTf1nnncn_n(v23[0], &v30, v5, a3);
  }

  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v30, v22);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v8))
  {
    v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v22[0]);
    type metadata accessor for OpacityViewResponder();
    v12 = swift_allocObject();
    *(v12 + 216) = 0x3FF0000000000000;
    v13 = v33;
    *(v12 + 120) = v32;
    *(v12 + 136) = v13;
    *(v12 + 152) = v34;
    v14 = v31;
    *(v12 + 88) = v30;
    *(v12 + 184) = 0u;
    *(v12 + 200) = 0u;
    *(v12 + 168) = v35;
    *(v12 + 104) = v14;
    result = AGSubgraphGetCurrent();
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ((v11 & 0x100000000) != 0)
    {
      v15 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v15 = v11;
    }

    v16 = MEMORY[0x1E69E7CC0];
    *(v12 + 176) = result;
    *(v12 + 40) = v16;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = v16;
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v30, &v24);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v17 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v18 = *(v17 + 208);

    swift_beginAccess();
    *(v12 + 24) = v18;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v24 = __PAIR64__(v15, v5);
    *(&v24 + 1) = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v19 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v24) = 0;
    PreferencesOutputs.subscript.setter(v19, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v30);
  MEMORY[0x1EEE9AC00](v20);
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  result = (*(v21 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
  *a3 = v22[0];
  a3[1] = v22[1];
  return result;
}

id specialized closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, unsigned int a2@<W2>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v24 = a1[2];
  v25 = v5;
  v26 = a1[4];
  v27 = *(a1 + 20);
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v22, v19);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v25) & 1) == 0)
  {
LABEL_7:
    v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v22);
    MEMORY[0x1EEE9AC00](v17);
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v21 = v27;
    v20[0] = v22;
    v20[1] = v23;
    result = (*(v18 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
    *a3 = v19[0];
    a3[1] = v19[1];
    return result;
  }

  v7 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v19[0]);
  type metadata accessor for OpacityViewResponder();
  v8 = swift_allocObject();
  *(v8 + 216) = 0x3FF0000000000000;
  v9 = v25;
  *(v8 + 120) = v24;
  *(v8 + 136) = v9;
  *(v8 + 152) = v26;
  v10 = v23;
  *(v8 + 88) = v22;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 168) = v27;
  *(v8 + 104) = v10;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    if ((v7 & 0x100000000) != 0)
    {
      v12 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v12 = v7;
    }

    v13 = MEMORY[0x1E69E7CC0];
    *(v8 + 176) = result;
    *(v8 + 40) = v13;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = v13;
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v22, v20);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v14 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v15 = *(v14 + 208);

    swift_beginAccess();
    *(v8 + 24) = v15;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v20[0] = __PAIR64__(v12, a2);
    *(&v20[0] + 1) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v16 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v20[0]) = 0;
    PreferencesOutputs.subscript.setter(v16, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _OpacityEffect.scrapeableContent.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result | 0x5000000000000000;
  return result;
}

uint64_t protocol witness for _RendererEffect.scrapeableContent.getter in conformance _OpacityEffect@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x5000000000000000;
  return result;
}

uint64_t View.repeatingOpacity(from:to:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  v14 = 257;
  v7 = *(*a1 + 144);
  v8 = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  v9 = v7(&v13, &type metadata for RepeatAnimation, v8);
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  default argument 1 of View.appearanceAnimation<A>(animation:strategy:modifier:)(&v13);
  View.appearanceAnimation<A>(animation:strategy:modifier:)(v9, partial apply for closure #1 in View.repeatingOpacity(from:to:animation:), a2, v10, a3, WitnessTable, a4);
}

SwiftUI::OpacityRendererEffect __swiftcall OpacityRendererEffect.init(isHidden:)(Swift::Bool isHidden)
{
  result.opacity = 1.0;
  if (isHidden)
  {
    result.opacity = 0.0;
  }

  *v1 = result.opacity;
  return result;
}

uint64_t (*OpacityRendererEffect.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

float OpacityRendererEffect.effectValue(size:)@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = LODWORD(result);
  *(a1 + 8) = 0;
  *(a1 + 12) = 4;
  return result;
}

uint64_t static OpacityRendererEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a2[3];
  v21[2] = a2[2];
  v21[3] = v8;
  v21[4] = a2[4];
  v22 = *(a2 + 20);
  v9 = a2[1];
  v21[0] = *a2;
  v21[1] = v9;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v8))
  {
    v14 = v7;
    v10 = a2[1];
    v15 = *a2;
    v16 = v10;
    v17 = a2[2];
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21OpacityRendererEffectV_Tt1B5(&v14, &v15);
    return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07OpacitycD0V_Tt3B5(v14, v21, a3, a4);
  }

  else
  {
    v12 = a2[3];
    v17 = a2[2];
    v18 = v12;
    v19 = a2[4];
    v20 = *(a2 + 20);
    v13 = a2[1];
    v15 = *a2;
    v16 = v13;
    return (a3)();
  }
}

float *_OpacityEffect.encode(to:)(float *result, double a2)
{
  v2 = a2;
  if (v2 != 1.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v4 = *(v3 + 1);
    result = (v4 + 4);
    if (__OFADD__(v4, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= result)
    {
      *(v3 + 1) = result;
      *(*v3 + v4) = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v2;
  }

  return result;
}

float *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _OpacityEffect(float *result)
{
  v2 = *v1;
  if (v2 != 1.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v4 = *(v3 + 1);
    v5 = v4 + 4;
    if (__OFADD__(v4, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= v5)
    {
      *(v3 + 1) = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _OpacityEffect@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized _OpacityEffect.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id OpacityViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 216) = 0x3FF0000000000000;
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OpacityViewResponder.extendPrintTree(string:)()
{
  MEMORY[0x193ABEDD0](0x207974696361706FLL, 0xE800000000000000);
  Double.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);
}

uint64_t OpacityViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
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
  *(v4 + 216) = 0x3FF0000000000000;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v8, a2);
}

uint64_t _OpacityShapeStyle.init(style:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for _OpacityShapeStyle();
  *(a3 + *(result + 36)) = a4;
  return result;
}

uint64_t closure #1 in _OpacityShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for _OpacityShapeStyle();
  v5 = *(a2 + *(result + 36));
  *(a1 + 88) = v5 * *(a1 + 88);
  v6 = *(a1 + 112);
  v7 = *(v6 + 16);
  if (v7)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v6 = result;
    }

    if (v7 > *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      v9 = v7 - 1;
      if (v7 == 1)
      {
        goto LABEL_6;
      }

      v12 = !is_mul_ok(v9, 0x50uLL);
      if (v6 + 88 + 80 * v9 < v6 + 88)
      {
        goto LABEL_6;
      }

      if (v12)
      {
        goto LABEL_6;
      }

      v8 = v7 & 0x7FFFFFFFFFFFFFFELL;
      v13 = (v6 + 168);
      v14 = v7 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v15 = v5 * *v13;
        *(v13 - 20) = v5 * *(v13 - 20);
        *v13 = v15;
        v13 += 40;
        v14 -= 2;
      }

      while (v14);
      if (v7 != v8)
      {
LABEL_6:
        v10 = v7 - v8;
        v11 = (v6 + 80 * v8 + 88);
        do
        {
          *v11 = v5 * *v11;
          v11 += 20;
          --v10;
        }

        while (v10);
      }

      *(a1 + 112) = v6;
    }
  }

  return result;
}

uint64_t _OpacitiesShapeStyle.opacities.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t _OpacitiesShapeStyle.init(style:opacities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _OpacitiesShapeStyle();
  *(a4 + *(result + 36)) = a2;
  return result;
}

void _OpacitiesShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      MEMORY[0x1EEE9AC00](a1);
      v13 = *(v12 + 24);
      v72 = *(v12 + 16);
      v73 = v13;
      v74 = v2;
      type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for _OpacitiesShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for _OpacitiesShapeStyle);
      ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #1 in _OpacitiesShapeStyle._apply(to:), &v71, v72, v14);
    }

    else if (v7 == 4)
    {
      v11 = *(*(a2 + 24) + 32);

      v11();
    }

    else if (!(v6 | v5 | v4))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 1;
      *(a1 + 40) = 4;
    }
  }

  else
  {
    if (!*(a1 + 24))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (v7 == 1)
    {
      v8 = *a1;
      *a1 = *a1;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      v10 = MEMORY[0x1E69E7CC0];
      if (*(a1 + 40) == 1)
      {
      }

      v107 = v10;
      v82[0] = v4;
      _ShapeStyle_Pack.subscript.getter(v82, 0, v84);

      v104 = v84[4];
      *v105 = v84[5];
      *&v105[16] = v84[6];
      v106 = *&v84[7];
      v100 = v84[0];
      v101 = v84[1];
      v102 = v84[2];
      v103 = v84[3];
      if (v5 == v6)
      {
        outlined destroy of _ShapeStyle_Pack.Style(&v100);
        return;
      }

      if (v6 >= v5)
      {
        v78 = v2;
        v79 = a2;
        v75 = a1;
        if (v5 >= v6)
        {
LABEL_89:
          __break(1u);
          return;
        }

        v21 = *(v75 + 32);
        v22 = *(v75 + 40);
        v23 = v106;
        v24 = *&v105[8];
        v76 = v6;
        v77 = v106;
        while (1)
        {
          v25 = *(v78 + *(v79 + 36));
          v26 = *(v25 + 16) - 1;
          if (v26 >= v5)
          {
            v26 = v5;
          }

          v27 = v26 < 0 ? 1.0 : *(v25 + 8 * v26 + 32);
          v96 = v102;
          v97 = v103;
          v98 = v104;
          v99 = *v105;
          v94 = v100;
          v95 = v101;
          v92 = *&v105[12];
          v93 = *&v105[28];
          v28 = *(v23 + 2);
          if (v28)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v100, v84);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
            }

            if (v28 > *(v23 + 2))
            {
              goto LABEL_86;
            }

            v29 = 0;
            v30 = v28 - 1;
            if (v28 == 1)
            {
              goto LABEL_35;
            }

            v43 = !is_mul_ok(v30, 0x50uLL);
            if (&v23[80 * v30 + 88] < v23 + 88)
            {
              goto LABEL_35;
            }

            if (v43)
            {
              goto LABEL_35;
            }

            v29 = v28 & 0x7FFFFFFFFFFFFFFELL;
            v44 = (v23 + 168);
            v45 = v28 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v46 = v27 * *v44;
              *(v44 - 20) = v27 * *(v44 - 20);
              *v44 = v46;
              v44 += 40;
              v45 -= 2;
            }

            while (v45);
            if (v28 != v29)
            {
LABEL_35:
              v31 = v28 - v29;
              v32 = 80 * v29 + 88;
              do
              {
                *&v23[v32] = v27 * *&v23[v32];
                v32 += 80;
                --v31;
              }

              while (v31);
            }
          }

          else
          {
            v23 = v106;
            outlined init with copy of _ShapeStyle_Pack.Style(&v100, v84);
          }

          v87 = v96;
          v88 = v97;
          v89 = v98;
          *&v90[0] = v99;
          v85 = v94;
          v86 = v95;
          *(v90 + 2) = v24 * v27;
          *(v90 + 12) = v92;
          HIDWORD(v90[1]) = v93;
          if (v22 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = v21;
          }

          v91 = v23;
          if (v22 == 1)
          {
            v34 = 5;
          }

          else
          {
            v34 = v22;
          }

          if (v22 != 1)
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          v35 = v21[2];
          if (v35)
          {
            break;
          }

          v37 = 0;
LABEL_75:
          v80 = v34;
          v81 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v35 >= v21[3] >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v35 + 1, 1, v21);
          }

          v23 = v77;
          v63 = &v21[16 * v37];
          type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
          swift_arrayDestroy();
          memmove(v63 + 20, v63 + 4, (v21[2] - v37) << 7);
          ++v21[2];
          *&v83[6] = v85;
          *&v83[22] = v86;
          *&v83[38] = v87;
          *&v83[54] = v88;
          *&v83[118] = v91;
          *&v83[102] = v90[1];
          *&v83[86] = v90[0];
          *&v83[70] = v89;
          v64 = *&v83[16];
          *(&v84[2] + 2) = *&v83[32];
          *(&v84[3] + 2) = *&v83[48];
          v65 = *&v83[32];
          v66 = *v83;
          *(v84 + 2) = *v83;
          *(&v84[1] + 2) = *&v83[16];
          v84[7] = *&v83[110];
          v67 = *&v83[80];
          *(&v84[6] + 2) = *&v83[96];
          v68 = *&v83[48];
          *(&v84[4] + 2) = *&v83[64];
          *(&v84[5] + 2) = *&v83[80];
          LOBYTE(v84[0]) = v4;
          BYTE1(v84[0]) = v5;
          *(v63 + 98) = *&v83[64];
          *(v63 + 114) = v67;
          *(v63 + 130) = *&v83[96];
          *(v63 + 9) = *&v83[110];
          *(v63 + 32) = v4;
          *(v63 + 33) = v5;
          *(v63 + 34) = v66;
          *(v63 + 50) = v64;
          *(v63 + 66) = v65;
          *(v63 + 82) = v68;
          outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(v84, v82);
          outlined destroy of _ShapeStyle_Pack.Style(&v85);
          outlined consume of _ShapeStyle_Shape.Result(v81, v80);
LABEL_79:
          if (++v5 == v76)
          {
            outlined destroy of _ShapeStyle_Pack.Style(&v100);
            v69 = v75;
            *(v75 + 32) = v21;
            *(v69 + 40) = 1;
            return;
          }

          v22 = 1;
        }

        v36 = 0;
        v37 = 0;
        while (1)
        {
          v38 = LOBYTE(v21[v36 + 4]);
          v39 = BYTE1(v21[v36 + 4]);
          if (v38 == v8 && v39 == v5)
          {
            v47 = v34;
            v48 = v33;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
            }

            if (v37 < v21[2])
            {
              v49 = &v21[v36];
              v50 = *&v21[v36 + 5];
              v51 = *&v21[v36 + 7];
              v52 = *&v21[v36 + 11];
              v84[2] = *&v21[v36 + 9];
              v84[3] = v52;
              v84[0] = v50;
              v84[1] = v51;
              v53 = *&v21[v36 + 13];
              v54 = *&v21[v36 + 15];
              v55 = *&v21[v36 + 17];
              *&v84[7] = v21[v36 + 19];
              v84[5] = v54;
              v84[6] = v55;
              v84[4] = v53;
              v56 = v85;
              v57 = v86;
              v58 = v87;
              *(v49 + 11) = v88;
              *(v49 + 9) = v58;
              *(v49 + 7) = v57;
              *(v49 + 5) = v56;
              v59 = v89;
              v60 = v90[0];
              v61 = v90[1];
              v49[19] = v91;
              *(v49 + 17) = v61;
              *(v49 + 15) = v60;
              *(v49 + 13) = v59;
              outlined destroy of _ShapeStyle_Pack.Style(v84);
              outlined consume of _ShapeStyle_Shape.Result(v48, v47);
              v23 = v77;
              goto LABEL_79;
            }

            goto LABEL_87;
          }

          v41 = v39 > v5 && v38 == v8;
          if (v38 > v8 || v41)
          {
            break;
          }

          ++v37;
          v36 += 16;
          if (v35 == v37)
          {
            v37 = v21[2];
            goto LABEL_75;
          }
        }

        if (v35 >= v37)
        {
          goto LABEL_75;
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
      }

      __break(1u);
      goto LABEL_89;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 2;
    v16 = v2;
    (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
    if (*(a1 + 40) == 3)
    {
      v17 = *(a1 + 32);
      v18 = *(v16 + *(a2 + 36));
      v19 = *(v18 + 16) - 1;
      if (v19 >= v4)
      {
        v19 = v4;
      }

      if (v19 < 0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = *(v18 + 8 * v19 + 32);
      }

      _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
      v70 = swift_allocObject();
      *(v70 + 16) = v17;
      *(v70 + 24) = v20;
      outlined copy of _ShapeStyle_Shape.Result(v17, 3u);
      outlined consume of _ShapeStyle_Shape.Result(v17, 3u);
      *(a1 + 32) = v70;
      *(a1 + 40) = 3;
    }
  }
}

uint64_t closure #1 in _OpacitiesShapeStyle._apply(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for _OpacitiesShapeStyle() + 36));
  *a3 = a1;
  a3[1] = v5;
}

void OpacityTransition.body(content:phase:)(char a1@<W1>, double *a2@<X8>)
{
  v2 = 0.0;
  if (a1 == 1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
}

uint64_t OpacityTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18DDA6EB0;
    *(v2 + 32) = 1;
    *(v2 + 40) = 2;
    *(v2 + 44) = 0;
    *(v2 + 48) = 2;
    *(v2 + 52) = 0x3F80000000000000;
    *(v2 + 60) = 3;
    v3 = 1;
  }

  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}