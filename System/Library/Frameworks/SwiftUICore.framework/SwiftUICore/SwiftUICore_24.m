uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  swift_unknownObjectRetain();
  v8 = v5;
  swift_unknownObjectRetain();
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2, __int16 a3)
{
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 0x1FF, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 20 * result;
      v12 = *v9 == a1 && *(v9 + 4) == HIDWORD(a1) && *(v9 + 8) == a2 && *(v9 + 12) == HIDWORD(a2);
      if (v12 && *(v9 + 16) == a3 && ((*(v9 + 17) ^ ((a3 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t destroy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t CoreViewSetCompositingFilter(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  return [a2 setCompositingFilter:a3];
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, _OWORD *a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 20 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(v6 + 17) = HIBYTE(a4) & 1;
  v7 = (a6[7] + (result << 7));
  v8 = a5[1];
  *v7 = *a5;
  v7[1] = v8;
  v9 = a5[3];
  v7[2] = a5[2];
  v7[3] = v9;
  v10 = a5[7];
  v7[6] = a5[6];
  v7[7] = v10;
  v11 = a5[5];
  v7[4] = a5[4];
  v7[5] = v11;
  v12 = a6[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 20 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
    *(v24 + 17) = HIBYTE(a3) & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a4, a1, a2, a3 & 0x1FF, v23);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 20 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  *(v6 + 17) = HIBYTE(a5) & 1;
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

Swift::Void __swiftcall DisplayList.ViewUpdater.Model.State.reset()()
{
  *(v0 + 8) = 1065353216;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v1 = static GraphicsBlendMode.normal;
  v2 = byte_1ED52F818;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  outlined consume of GraphicsBlendMode(v3, v4);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x3FF0000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];

  *(v0 + 88) = v5;

  *(v0 + 96) = 0;
  *(v0 + 104) &= 0x200u;

  *(v0 + 120) = v5;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
}

double *DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(double *result, uint64_t a2)
{
  v4 = *result;
  if (*result >= *(a2 + 56))
  {
    return result;
  }

  v5 = v2;
  *(a2 + 56) = v4;
  v6 = *(a2 + 48);
  v7 = *(a2 + 49);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v45 = v11;
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
  v15 = v11[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_14:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
    if ((v3 & 1) != (v19 & 1))
    {
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v14 = v18;
    if ((v3 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    memmove(&__dst, (v45[7] + (v14 << 7)), 0x80uLL);
    _ViewInputs.base.modify(&__dst, v20);
    goto LABEL_16;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&__dst);
LABEL_16:
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v37 = __dst;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v36[4] = v50;
  v36[5] = v51;
  v36[6] = v52;
  v36[7] = v53;
  v36[0] = __dst;
  v36[1] = v47;
  v36[2] = v48;
  v36[3] = v49;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v36) == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  *&v34 = v44;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  __src = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  *(&v34 + 1) = v4;
  v35[2] = v39;
  v35[3] = v40;
  v35[0] = v37;
  v35[1] = v38;
  v35[6] = v43;
  v35[7] = v34;
  v35[4] = v41;
  v35[5] = v42;
  v21 = _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v35);
  v22 = v45;
  if (v21 == 1)
  {
    if (v3)
    {
      specialized _NativeDictionary._delete(at:)(v14, v45);
    }
  }

  else if (v3)
  {
    memmove((v45[7] + (v14 << 7)), &__src, 0x80uLL);
  }

  else
  {
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = v34;
    __dst = __src;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    specialized _NativeDictionary._insert(at:key:value:)(v14, v8, v9, v12 | v6, &__dst, v45);
  }

  v24[4] = v41;
  v24[5] = v42;
  v24[6] = v43;
  v25 = v44;
  v24[0] = v37;
  v24[1] = v38;
  v24[2] = v39;
  v24[3] = v40;
  v26 = v4;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo?(&__src, &v23);
  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v24);
  *v5 = v22;
  return result;
}

{
  v4 = *result;
  if (*result >= *(a2 + 32))
  {
    return result;
  }

  v5 = v2;
  *(a2 + 32) = v4;
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v45 = v11;
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
  v15 = v11[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_14:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
    if ((v3 & 1) != (v19 & 1))
    {
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v14 = v18;
    if ((v3 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    memmove(&__dst, (v45[7] + (v14 << 7)), 0x80uLL);
    _ViewInputs.base.modify(&__dst, v20);
    goto LABEL_16;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&__dst);
LABEL_16:
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v37 = __dst;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v36[4] = v50;
  v36[5] = v51;
  v36[6] = v52;
  v36[7] = v53;
  v36[0] = __dst;
  v36[1] = v47;
  v36[2] = v48;
  v36[3] = v49;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v36) == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  *&v34 = v44;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  __src = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  *(&v34 + 1) = v4;
  v35[2] = v39;
  v35[3] = v40;
  v35[0] = v37;
  v35[1] = v38;
  v35[6] = v43;
  v35[7] = v34;
  v35[4] = v41;
  v35[5] = v42;
  v21 = _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v35);
  v22 = v45;
  if (v21 == 1)
  {
    if (v3)
    {
      specialized _NativeDictionary._delete(at:)(v14, v45);
    }
  }

  else if (v3)
  {
    memmove((v45[7] + (v14 << 7)), &__src, 0x80uLL);
  }

  else
  {
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = v34;
    __dst = __src;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    specialized _NativeDictionary._insert(at:key:value:)(v14, v8, v9, v12 | v6, &__dst, v45);
  }

  v24[4] = v41;
  v24[5] = v42;
  v24[6] = v43;
  v25 = v44;
  v24[0] = v37;
  v24[1] = v38;
  v24[2] = v39;
  v24[3] = v40;
  v26 = v4;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo?(&__src, &v23);
  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v24);
  *v5 = v22;
  return result;
}

void specialized PreferenceValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = PreferenceValues._index(of:)(a2);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  PreferenceValues.setValue<A>(_:of:at:)(a1, a2, a4, v7, AssociatedTypeWitness);
}

uint64_t merge32(_:_:)(uint64_t a1, unsigned int a2)
{
  v2 = (a2 | (a1 << 32)) + ~(a2 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

uint64_t PreferenceValues.Value.init(value:seed:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PreferenceValues.Value();
  *(a4 + *(result + 28)) = v5;
  return result;
}

uint64_t initializeWithCopy for PreferenceValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  (**(v3 - 8))(a1 + 24, a2 + 24);
  return a1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 56 * a3;
      v15 = (v9 + 32 + 56 * a2);
      if (result != v15 || result >= v15 + 56 * v14)
      {
        result = memmove(result, v15, 56 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  if (a3 >= 1)
  {
    result = outlined init with copy of PreferenceValues.Entry(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  return outlined destroy of CollectionOfOne<PreferenceValues.Entry>(a4);
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 32 * a3;
  v15 = (v9 + 32 + 32 * a2);
  if (result != v15 || result >= v15 + 32 * v14)
  {
    result = memmove(result, v15, 32 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

void *closure #1 in PreferenceValues.subscript.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(a2 + 16))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return PreferenceValues.Entry.subscript.getter(AssociatedTypeWitness, a3);
  }

  __break(1u);
  return result;
}

uint64_t PreferenceValues.Entry.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v2 + 24, v10);
  swift_dynamicCast();
  v8 = *(v2 + 16);
  (*(v5 + 32))(a2, v7, a1);
  result = type metadata accessor for PreferenceValues.Value();
  *(a2 + *(result + 28)) = v8;
  return result;
}

uint64_t InvalidatingGraphMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  result = swift_dynamicCast();
  if (result)
  {
    return v6[2] == *v1 && v6[3] == v1[1];
  }

  return result;
}

Swift::Void __swiftcall ObservationGraphMutation.apply()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, 255, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - v9;
  v35 = type metadata accessor for ObservationTracking();
  v11 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  if (v14)
  {
    v15 = v4 + 40;
    do
    {
      AGSubgraphRemoveObserver();
      v15 += 16;
      --v14;
    }

    while (v14);
  }

  swift_beginAccess();
  v16 = *(v7 + 16);
  v33 = v10;
  v34 = v6;
  if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v16 = *(v7 + 16);
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!(v16 >> 62))
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
        specialized Array.replaceSubrange<A>(_:with:)(0, v18);
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  if (v16 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    v30 = __CocoaSet.count.getter();
    if (v30 < 0)
    {
      goto LABEL_30;
    }

    v31 = __CocoaSet.count.getter();
    if (v29 < 0 || (v19 = v29, v31 < v29))
    {
      __break(1u);
LABEL_28:
      v30 = __CocoaSet.count.getter();
      if ((v30 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v18 = v30;
        goto LABEL_9;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  *(v7 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(0, v19);

LABEL_13:
  swift_endAccess();
  v20 = *(v5 + 16);
  if (v20)
  {
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v21 = v23;
    v24 = v5 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v25 = *(v22 + 56);
    v23(v13, v24, v35);
    while (1)
    {
      if (ObservationTracking.changed.getter())
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v27);
        if (*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32[1] = *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      ObservationTracking.cancel()();
      v26 = v35;
      (*(v22 - 8))(v13, v35);
      v24 += v25;
      if (!--v20)
      {
        break;
      }

      v21(v13, v24, v26);
    }
  }

  swift_beginAccess();
  v28 = v33;
  specialized Dictionary.removeValue(forKey:)(v34, v33);
  swift_endAccess();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v28, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphInvalidateValue();
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, MEMORY[0x1E69E6928]);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for AnyFontModifier);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for CASDFElementLayer);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for ViewResponder);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, lazy cache variable for type metadata for CALayer);
}

uint64_t type metadata accessor for ImageStyleProtocol.Type(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t assignWithCopy for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 24))((v7 + *(v10 + 80) + 8) & ~*(v10 + 80), (v8 + *(v10 + 80) + 8) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v10 = *(v4 + 16);
  v11 = v10[2];
  if (!v11)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  if (v11 > v10[2])
  {
    __break(1u);
    return result;
  }

  v13 = &v10[5 * v11];
  v14 = v13[2];
  v15 = v13[3];
  __swift_mutable_project_boxed_opaque_existential_1((v13 - 1), v14);
  result = (*(v15 + 16))(v22, &type metadata for ObservationGraphMutation, &protocol witness table for ObservationGraphMutation, v14, v15);
  *(v5 + 16) = v10;
  if ((result & 1) == 0)
  {
LABEL_6:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    }

    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
    }

    v20 = &type metadata for ObservationGraphMutation;
    v21 = &protocol witness table for ObservationGraphMutation;
    v18 = swift_allocObject();
    *&v19 = v18;
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    v10[2] = v17 + 1;
    result = outlined init with take of AnyTrackedValue(&v19, &v10[5 * v17 + 4]);
    *(v5 + 16) = v10;
  }

  return result;
}

uint64_t ObservationGraphMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = InvalidatingGraphMutation.combine<A>(with:)(v7);
  if (v8)
  {
    (*(v4 + 16))(v6, a1, a2);
    if (swift_dynamicCast())
    {

      specialized Array.append<A>(contentsOf:)(v9);

      specialized Array.append<A>(contentsOf:)(v10);
    }
  }

  return v8 & 1;
}

uint64_t closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = AGSubgraphIsValid();
  if (result)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v15 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    closure #1 in closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(a7, a8, a3, a4, a5, a6);
    static Update.end()();

    return _MovableLockUnlock(v15);
  }

  return result;
}

void closure #1 in closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8] || !swift_weakLoadStrong())
  {
    specialized ObservationGraphMutation.cancel()(a5, a6);
  }

  else
  {
    if (_threadTransactionData())
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v10 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      v10 = 0;
    }

    v11 = pthread_main_np() != 1;
    v12 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v10, v12, a3, a4, a5, a6, v11, 1);
    ObservationTracking.changed.getter();
    v13 = one-time initialization token for enabledCategories;

    if (v13 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x50uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 111) == 1)
    {
      v14 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17999;
        v15 = *(v14 + 16);
        type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)();

        v16 = v15;
        AGGraphAddTraceEvent();
      }
    }
  }
}

char *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char *a8)
{
  v9 = v8;
  v55 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v9 + 16))
  {
    goto LABEL_48;
  }

  v54 = v17;
  v18 = (a7 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v9 + 168) &= a8 & 1;
  v19 = swift_beginAccess();
  v20 = *(v9 + 144);
  v21 = *(v20 + 2);
  if (v21)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v9 + 144) = v20;
    }

    if (v21 > *(v20 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        a8 = v53;
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v59[0]) = v21;
          AGGraphAddTraceEvent();
        }

        *(v9 + 144) = v20;
        swift_endAccess();
        if (a8)
        {
LABEL_46:
          v48 = *(v9 + 144);
          v49 = *(v48 + 16);
          v17 = v54;
          if (v49)
          {
            v32 = *(v48 + 24 * v49 + 20);
            goto LABEL_49;
          }

LABEL_48:
          v32 = 0;
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v20 + 2))
        {
          specialized Array._customRemoveLast()(&v60);
          LODWORD(a6) = v61;
          v18 = v62;
          a1 = v60;
          if (v62)
          {
            v21 = HIDWORD(v61);
          }

          else
          {
            outlined consume of AsyncTransaction?(v60, v61, 0);
            specialized Array.remove(at:)(*(*(v9 + 144) + 16) - 1, &v60);
            a1 = v60;
            LODWORD(a6) = v61;
            LODWORD(v21) = HIDWORD(v61);
            v18 = v62;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a8 = *(v9 + 144);

          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + 144) = a8;
          if (v44)
          {
LABEL_43:
            v46 = *(a8 + 2);
            v45 = *(a8 + 3);
            if (v46 >= v45 >> 1)
            {
              a8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, a8);
            }

            *(a8 + 2) = v46 + 1;
            v47 = &a8[24 * v46];
            *(v47 + 4) = a1;
            *(v47 + 10) = a6;
            *(v47 + 11) = v21;
            *(v47 + 6) = v18;
            *(v9 + 144) = a8;
            swift_endAccess();

            goto LABEL_46;
          }

LABEL_56:
          a8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a8 + 2) + 1, 1, a8);
          *(v9 + 144) = a8;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v53 = v18;
    v18 = &v20[24 * v21];
    if (*(v18 + 16) == v55)
    {
      v23 = *(v18 + 8);
      if (v23)
      {
        if (a1)
        {
          v59[0] = MEMORY[0x1E69E7CC0];

          v52 = compareLists(_:_:ignoredTypes:)(v23, a1, v59);

          if (v52)
          {
LABEL_15:
            a8 = (v18 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4, a5, a6);
            LODWORD(v21) = *(v18 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v9 + 144) = v20;
    swift_endAccess();
    if ((v53 & 1) == 0)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v9 + 192))(v19))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v63 = &type metadata for ObservationGraphMutation;
  v64 = &protocol witness table for ObservationGraphMutation;
  v27 = swift_allocObject();
  v60 = v27;
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  swift_beginAccess();
  v28 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v60, v59);
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = v29[2];
  v30 = v29[3];
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), (v31 + 1), 1, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = *v36;
  v57 = &type metadata for ObservationGraphMutation;
  v58 = &protocol witness table for ObservationGraphMutation;
  v39 = swift_allocObject();
  *&v56 = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = *(v36 + 1);
  *(v39 + 32) = *(v36 + 1);
  v29[2] = v32;
  outlined init with take of AnyTrackedValue(&v56, &v29[5 * v31 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v59);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  else
  {
    v32 = ((v28 >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v60) = (v28 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v31 = *(v9 + 144);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v31;
    if (v40)
    {
      goto LABEL_38;
    }
  }

  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  *(v9 + 144) = v31;
LABEL_38:
  v42 = *(v31 + 2);
  v41 = *(v31 + 3);
  if (v42 >= v41 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v31);
  }

  *(v31 + 2) = v42 + 1;
  v43 = &v31[24 * v42];
  *(v43 + 4) = a1;
  *(v43 + 10) = v55;
  *(v43 + 11) = v32;
  *(v43 + 6) = v29;
  *(v9 + 144) = v31;
  swift_endAccess();

  v17 = v54;
LABEL_49:
  _MovableLockUnlock(v17);
  return v32;
}

uint64_t sub_18D156670()
{

  return swift_deallocObject();
}

void *initializeWithCopy for ObservationGraphMutation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return v12(v5, v3, 0);
}

uint64_t specialized Array._customRemoveLast()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = (v3 + 24 * v5);
      v8 = v7[3];
      *a1 = v7[1];
      a1[1] = v7[2];
      a1[2] = v8;
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = v5 - 1;
  memmove(a1, (v3 + ((v5 - 1) << 7) + 32), 0x7CuLL);
  *(v3 + 16) = v6;
  *v1 = v3;

  return _ViewInputs.base.modify(a1, v7);
}

uint64_t *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5)
{

  return specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, a2, a3, a4, a5, specialized AsyncTransaction.append<A>(_:), &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation);
}

{

  return specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, a2, a3, a4, a5, specialized AsyncTransaction.append<A>(_:), &type metadata for RepeatMutation, &protocol witness table for RepeatMutation);
}

Swift::Void __swiftcall ViewGraphHost.LayoutInvalidator.invalidate()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 8);
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, v3, 1, 0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      swift_unknownObjectRelease();
    }
  }
}

void *assignWithCopy for SafeAreaInsets(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t AnchorBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

void *assignWithCopy for _EnvironmentKeyTransformModifier(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t destroy for DynamicViewList.WrappedList(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v2 = (a1 + 47) & 0xFFFFFFFFFFFFFFF8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v2 + v5 + 8;
  v9 = v4;
  result = (*(v4 + 48))(v6 & ~v5, 1, AssociatedTypeWitness);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, AssociatedTypeWitness);
  }

  return result;
}

uint64_t DynamicViewList.Item.matches(type:id:)(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #1 in DynamicViewList.Item.matches(type:id:), v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v3, &v5);
    v2 = (v5 == 2) | v5;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t closure #1 in implicit closure #1 in DynamicViewList.Item.matches(type:id:)@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t destroy for ObservationEntry()
{
  swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v7 = *(v3 - 8);
  (*(v7 + 8))(a1, v3);
  v5 = *(v7 + 16);

  return v5(a1, v4, v3);
}

uint64_t *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5, void (*a6)(uint64_t), char *a7, uint64_t a8)
{
  v52 = a8;
  v11 = v8;
  v62 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v11 + 16))
  {
    goto LABEL_48;
  }

  v51 = v17;
  v18 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v11 + 168) &= a5 & 1;
  v19 = swift_beginAccess();
  v20 = *(v11 + 144);
  v21 = *(v20 + 2);
  if (v21)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 144) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v11 + 144) = v20;
    }

    if (v21 > *(v20 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v56[0]) = v21;
          AGGraphAddTraceEvent();
        }

        *(v11 + 144) = v20;
        swift_endAccess();
        if (v18)
        {
LABEL_46:
          v45 = *(v11 + 144);
          v46 = *(v45 + 16);
          v17 = v51;
          if (v46)
          {
            v32 = *(v45 + 24 * v46 + 20);
            goto LABEL_49;
          }

LABEL_48:
          v32 = 0;
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v20 + 2))
        {
          specialized Array._customRemoveLast()(&v57);
          a2 = v58;
          v18 = v59;
          a1 = v57;
          if (v59)
          {
            v21 = HIDWORD(v58);
          }

          else
          {
            outlined consume of AsyncTransaction?(v57, v58, 0);
            specialized Array.remove(at:)(*(*(v11 + 144) + 16) - 1, &v57);
            a1 = v57;
            a2 = v58;
            LODWORD(v21) = HIDWORD(v58);
            v18 = v59;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v11 + 144);

          v41 = swift_isUniquelyReferenced_nonNull_native();
          *(v11 + 144) = a5;
          if (v41)
          {
LABEL_43:
            v43 = *(a5 + 2);
            v42 = *(a5 + 3);
            if (v43 >= v42 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, a5);
            }

            *(a5 + 2) = v43 + 1;
            v44 = &a5[24 * v43];
            *(v44 + 4) = a1;
            *(v44 + 10) = a2;
            *(v44 + 11) = v21;
            *(v44 + 6) = v18;
            *(v11 + 144) = a5;
            swift_endAccess();

            goto LABEL_46;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v11 + 144) = a5;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v21 = &v20[24 * v21];
    if (*(v21 + 16) == a2)
    {
      v23 = *(v21 + 8);
      if (v23)
      {
        if (a1)
        {
          v56[0] = MEMORY[0x1E69E7CC0];

          v49 = compareLists(_:_:ignoredTypes:)(v23, a1, v56);
          v48 = v56[0];

          if (v49)
          {
LABEL_15:
            a5 = (v21 + 8);
            a6(a3);
            LODWORD(v21) = *(v21 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v11 + 144) = v20;
    swift_endAccess();
    if (!v18)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v11 + 192))(v19))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v60 = a7;
  v61 = v52;
  v57 = a3;
  swift_beginAccess();
  v27 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v57, v56);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  v50 = a2;
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(&v57);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v56, v56[3]);
  v32 = &v48;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v54 = a7;
  v55 = v52;
  *&v53 = *v35;
  v28[2] = v30 + 1;
  outlined init with take of AnyTrackedValue(&v53, &v28[5 * v30 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v56);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  else
  {
    v32 = ((v27 >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v57) = (v27 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    a7 = *(v11 + 144);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 144) = a7;
    if (v37)
    {
      goto LABEL_38;
    }
  }

  a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a7 + 2) + 1, 1, a7);
  *(v11 + 144) = a7;
LABEL_38:
  v39 = *(a7 + 2);
  v38 = *(a7 + 3);
  if (v39 >= v38 >> 1)
  {
    a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, a7);
  }

  *(a7 + 2) = v39 + 1;
  v40 = &a7[24 * v39];
  *(v40 + 4) = a1;
  *(v40 + 10) = v50;
  *(v40 + 11) = v32;
  *(v40 + 6) = v28;
  *(v11 + 144) = a7;
  swift_endAccess();

  v17 = v51;
LABEL_49:
  _MovableLockUnlock(v17);
  return v32;
}

void partial apply for closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = v2;
  v6 = v3;
  v7 = v4;
  v5 = type metadata accessor for ViewLayoutEngine();
  ViewLayoutEngine.update(layout:context:children:)(v1, &v8, &v6, v5);
}

uint64_t LayoutComputer.withMutableEngine<A, B>(type:do:)(uint64_t IsOwner)
{
  v2 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    IsOwner = swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  if ((IsOwner & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v3 = MEMORY[0x1EEE9AC00](IsOwner);
    return (*(*v2 + 80))(v4, partial apply for closure #1 in LayoutComputer.withMutableEngine<A, B>(type:do:), v3);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance InvalidatingGraphMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {

    return AGGraphInvalidateValue();
  }

  return result;
}

void *partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1)
{
  return memcpy(a1, *(v1 + 16), 0x221uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x261uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x201uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x1F9uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x199uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x229uLL);
}

uint64_t closure #3 in closure #1 in PlatformViewChild.updateValue()(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((result | a2) & 1) != 0 && (a3)
  {
    v11[0] = a5;
    v11[1] = 0;
    v10 = a7;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 72);

    v9 = swift_checkMetadataState();
    v8(v11, &v10, v9, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t MaterialBackdropProxy.Storage.__deallocating_deinit()
{
  outlined destroy of GlassContainer.TranslationKick(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t LocalizedTextStorage.__deallocating_deinit()
{

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t ViewGraph.removePreferenceOutlets(isInvalidating:)(int a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v1 + 448);
    v6 = *(v5 + 16);
    if (v6)
    {
      v20 = a1;
      v19 = v1;

      swift_beginAccess();
      result = swift_beginAccess();
      v7 = 0;
      v8 = *MEMORY[0x1E698D3F8];
      v21 = *MEMORY[0x1E698D3F8];
      while (v7 < *(v5 + 16))
      {
        v9 = v5 + 32 + 24 * v7;
        v10 = *v9;
        v11 = *(v9 + 16);
        result = swift_weakLoadStrong();
        if (result)
        {
          v12 = *(v4 + 72);
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = v12 + 48;
            while (*(v14 - 16) != v10)
            {
              v14 += 24;
              if (!--v13)
              {
                goto LABEL_4;
              }
            }

            Attribute = AGWeakAttributeGetAttribute();
            if (Attribute != v8)
            {
              v23 = &v19;
              v24 = 0;
              MEMORY[0x1EEE9AC00](Attribute);
              v22 = v16;
              v17 = type metadata accessor for PreferenceCombiner();
              MEMORY[0x1EEE9AC00](v17);
              v8 = v21;
              AGGraphMutateAttribute();
              if (v24 == 1)
              {
                v24 = v20 & 1;
                if (v20)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v11;
                }

                GraphHost.graphInvalidation(from:)(v18 | ((v20 & 1) << 32));
              }
            }
          }

LABEL_4:
        }

        if (++v7 == v6)
        {

          v1 = v19;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      *(v1 + 448) = MEMORY[0x1E69E7CC0];

      swift_beginAccess();
      PreferenceBridge.removeHostValues(for:isInvalidating:)();
      PreferenceBridge.removeChild(_:)(v1);
    }
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ViewGraph.deinit()
{
  ViewGraph.removePreferenceOutlets(isInvalidating:)(1);
  swift_beginAccess();
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);
  UnsafeHeterogeneousBuffer.destroy()();
  swift_endAccess();
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of GraphHost.Data(v7);

    outlined destroy of weak ViewGraphDelegate?(v0 + 200);

    swift_weakDestroy();

    return v0;
  }

  return result;
}

uint64_t ViewGraph.__deallocating_deinit()
{
  ViewGraph.deinit();

  return swift_deallocClassInstance();
}

uint64_t static ViewGraphFeatureBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

Swift::Void __swiftcall GraphHost.invalidate()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 128) == 1)
  {
    swift_beginAccess();
    v2 = *(v0 + 24);
    AGSubgraphRef.willInvalidate(isInserted:)(0);

    *(v1 + 128) = 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    specialized static Update.begin()();
    AGSubgraphInvalidate();
    AGGraphSetContext();
    AGGraphInvalidate();
    *(v1 + 16) = 0;

    static Update.end()();
  }

  swift_endAccess();
}

uint64_t destroy for _SafeAreaInsetsModifier(uint64_t a1)
{

  result = *(a1 + 8);
  if (result != 1)
  {
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(char **a1, uint64_t a2)
{
  v5 = *a1;
  result = *(*a1 + 2);
  if (result)
  {
    v7 = 0;
    v8 = -40;
    while (*&v5[8 * v7 + 32] != a2)
    {
      ++v7;
      v8 -= 8;
      if (result == v7)
      {
        return result;
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_21;
    }

    v3 = a2;
    v2 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v10 = *(v5 + 2);
      if (v9 == v10)
      {
        break;
      }

      v11 = v5 + 32;
      v12 = &v5[-v8];
      while (v9 < v10)
      {
        if (*v12 != v3)
        {
          if (v9 != v7)
          {
            if (v7 >= v10)
            {
              goto LABEL_20;
            }

            v13 = *&v11[8 * v7];
            *&v11[8 * v7] = *v12;
            *v12 = v13;
            v10 = *(v5 + 2);
          }

          ++v7;
        }

        ++v9;
        v12 += 8;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

LABEL_9:
    *v2 = v5;
    return v7;
  }

  return result;
}

uint64_t specialized ViewGraphHost.tearDown(delegate:)()
{
  ViewGraphRootValueUpdater.invalidate()();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  ViewGraph.setPreferenceBridge(to:isInvalidating:)(0, 0);
  GraphHost.invalidate()();
  static Update.end()();

  return _MovableLockUnlock(v0);
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.invalidate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for OSSignpostID();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  (*(*(v4 + 8) + 16))(&v64, v11, v11, v5);
  if (v64)
  {
    v12 = *(&v64 + 1);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    swift_unknownObjectRelease();
    swift_beginAccess();
    *(v14 + 208) = 0;
    v46 = v14;
    swift_unknownObjectWeakAssign();
    if (one-time initialization token for viewHost != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v15 = static Signpost.viewHost;
      v16 = word_1ED53C1D0;
      v17 = HIBYTE(word_1ED53C1D0);
      v18 = byte_1ED53C1D2;
      v19 = static os_signpost_type_t.event.getter();
      v64 = v15;
      v65 = v16;
      v66 = v17;
      v67 = v18;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        return;
      }

      v20 = one-time initialization token for _signpostLog;
      swift_unknownObjectRetain();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = _signpostLog;
      v45 = v10;
      OSSignpostID.init(log:object:)();
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_18DDAB4C0;
      v22 = v46;
      swift_beginAccess();
      if (!*(v22 + 16))
      {
        __break(1u);
        return;
      }

      Counter = AGGraphGetCounter();
      v24 = MEMORY[0x1E69E6810];
      v25 = MEMORY[0x1E69E6870];
      *(v10 + 7) = MEMORY[0x1E69E6810];
      *(v10 + 8) = v25;
      *(v10 + 4) = Counter;
      *(v10 + 12) = v24;
      *(v10 + 13) = v25;
      *(v10 + 9) = v3;
      if (v17)
      {
        break;
      }

      if (v15 == 20)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      v28 = bswap32(v15) | (4 * WORD1(v15));
      v47 = *(v6 + 16);
      v29 = v47(v54, v45, v53);
      v30 = 0;
      LOBYTE(v58) = 1;
      v56 = v27;
      v51 = 16 * v27;
      v49 = v6 + 16;
      v52 = (v6 + 8);
      v50 = v10 + 32;
      v48 = v15;
LABEL_14:
      v55 = &v45;
      MEMORY[0x1EEE9AC00](v29);
      v3 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v3 + 8;
      v33 = v56;
      v34 = v3 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = &v50[40 * v30];
      v6 = v56;
      while (1)
      {
        v36 = *(v10 + 2);
        if (v30 == v36)
        {
          LOBYTE(v58) = 0;
LABEL_22:
          v39 = v48;
          if (v48 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (v3[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v39 != 20 && v3[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v40 = *v52;
          v41 = v54;
          v42 = v53;
          (*v52)(v54, v53);
          v43 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
          v29 = v47(v41, v43, v42);
          if ((v58 & 1) == 0)
          {

            v44 = v53;
            v40(v54, v53);
            v40(v45, v44);
            goto LABEL_37;
          }

          goto LABEL_14;
        }

        if (v30 >= v36)
        {
          break;
        }

        ++v30;
        outlined init with copy of AnyTrackedValue(v35, &v64);
        v37 = v68;
        __swift_project_boxed_opaque_existential_1(&v64, v68);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v28 | v19, v37);
        *v32 = v38 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v64);
        v35 += 40;
        if (!--v6)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
    }

    v63 = v19;
    v61 = v21;
    v62 = &dword_18D018000;
    v64 = v15;
    v65 = v16;
    v58 = "ViewHost: (%p) invalidated PlatformHost [ %p ]";
    v59 = 46;
    v60 = 2;
    v57 = v10;
    v26 = v45;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v6 + 8))(v26, v53);
LABEL_37:
  }
}

uint64_t ViewGraphHost.tearDown(delegate:)()
{
  swift_getObjectType();

  return specialized ViewGraphHost.tearDown(delegate:)();
}

void ViewGraph.setPreferenceBridge(to:isInvalidating:)(uint64_t a1, char a2)
{
  v3 = v2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    if (v7 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  ViewGraph.removePreferenceOutlets(isInvalidating:)(a2 & 1);
  swift_weakAssign();
  swift_beginAccess();
  if (*(v3 + 128) == 1)
  {
    GraphHost.uninstantiate(immediately:)(a2 & 1);
  }

  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    PreferenceBridge.addChild(_:)(v3);
  }

  GraphHost.updateRemovedState()();
}

uint64_t ViewGraphHost.deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);
  outlined destroy of weak GestureGraphDelegate?(v0 + 48);
  outlined consume of EnvironmentValues?(*(v0 + 72));

  return v0;
}

uint64_t ViewGraphHost.__deallocating_deinit()
{
  ViewGraphHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t DisplayList.ViewRenderer.__deallocating_deinit()
{

  outlined destroy of weak GestureGraphDelegate?(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL ViewGraphHostEnvironmentWrapper.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v14);
  if (!v15)
  {
    outlined destroy of Any?(v14);
    return 0;
  }

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v13;
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  LODWORD(v3) = *(v1 + v3);
  v4 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  if (v3 != *&v13[v4])
  {
    goto LABEL_8;
  }

  v5 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment;
  swift_beginAccess();
  v8 = *&v13[v7];
  if (!v6)
  {

    return v8 == 0;
  }

  if (!v8)
  {
LABEL_8:

    return 0;
  }

  v12 = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v9 = swift_retain_n();
  v10 = compareLists(_:_:ignoredTypes:)(v9, v8, &v12);

  return v10;
}

BOOL compareLists(_:_:ignoredTypes:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v3 = a2;
  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    if (((*(*v4 + 208))(v3, a3) & 1) == 0)
    {
      return 0;
    }

    v6 = *(v3 + 24);
    if (*(v4 + 24))
    {
      if (!v6 || (compareLists(_:_:ignoredTypes:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v4 = *(v4 + 32);
    v3 = *(v3 + 32);
    if (!v4 || !v3)
    {
      break;
    }

    if (v4 == v3)
    {
      return 1;
    }
  }

  return (v4 | v3) == 0;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(a1, v9);
  if (v5)
  {
    v6 = v5 + *(*v5 + 248);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for TypesettingConfiguration();
    v6 = __swift_project_value_buffer(v7, static TypesettingConfigurationKey.defaultValue);
  }

  return _s7SwiftUI24TypesettingConfigurationVWOcTm_0(v6, a2, type metadata accessor for TypesettingConfiguration);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t *DisplayList.Index.skip(item:)(uint64_t *result)
{
  if (*(result + 18))
  {
    return result;
  }

  v3 = result[5];
  v2 = result[6];
  v4 = result[7];
  v5 = result[8];
  v6 = *v1;
  v7 = v1[1] + 1;
  v1[1] = v7;
  v8 = *(v1 + 1);
  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if ((v5 >> 30) - 2 >= 2)
  {
    if (v5 >> 30)
    {
      v28 = v9;
      v12 = v8;
      v20 = *(v4 + 16);
      if (v20)
      {
        outlined copy of DisplayList.Effect(v3, v2, SBYTE4(v2));

        v21 = *(v4 + 80);
        v31 = *(v4 + 64);
        v32[0] = v21;
        *(v32 + 12) = *(v4 + 92);
        v22 = *(v4 + 48);
        v29 = *(v4 + 32);
        v30 = v22;
        DisplayList.Index.skip(item:)(&v29);
        v23 = v20 - 1;
        if (v20 != 1)
        {
          v24 = (v4 + 112);
          do
          {
            v25 = v24[3];
            v31 = v24[2];
            v32[0] = v25;
            *(v32 + 12) = *(v24 + 60);
            v27 = *v24;
            v26 = v24[1];
            v24 += 5;
            v29 = v27;
            v30 = v26;
            DisplayList.Index.skip(item:)(&v29);
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v3, v2, SBYTE4(v2));
      }

      *&v29 = v3;
      DWORD2(v29) = v2;
      BYTE12(v29) = BYTE4(v2);
      DisplayList.Index.skip(effect:)(&v29);
      outlined consume of DisplayList.Effect(v3, v2, SBYTE4(v2));
      goto LABEL_17;
    }

    if (v3 >> 60 == 11)
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v10 + 16);
      if (v11)
      {
        v28 = v9;
        v12 = v8;
        outlined copy of DisplayList.Content.Value(v3);
        v13 = *(v10 + 80);
        v31 = *(v10 + 64);
        v32[0] = v13;
        *(v32 + 12) = *(v10 + 92);
        v14 = *(v10 + 48);
        v29 = *(v10 + 32);
        v30 = v14;
        DisplayList.Index.skip(item:)(&v29);
        v15 = v11 - 1;
        if (v15)
        {
          v16 = (v10 + 112);
          do
          {
            v17 = v16[3];
            v31 = v16[2];
            v32[0] = v17;
            *(v32 + 12) = *(v16 + 60);
            v19 = *v16;
            v18 = v16[1];
            v16 += 5;
            v29 = v19;
            v30 = v18;
            DisplayList.Index.skip(item:)(&v29);
            --v15;
          }

          while (v15);
        }

        outlined consume of DisplayList.Item.Value(v3, v2, v4, v5);
LABEL_17:
        v8 = v12;
        v9 = v28;
      }
    }
  }

  return $defer #1 () in DisplayList.Index.skip(item:)(v1, v6 | (v7 << 32), v8, v9);
}

uint64_t TypedElement.matches(_:ignoredTypes:)(uint64_t a1, char **a2)
{
  v3 = v2;
  v5 = *v2;
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *(v5 + 232);
    v8 = *a2;
    v9 = *(*a2 + 2);
    v10 = 32;
    while (v9)
    {
      v11 = *&v8[v10];
      v10 += 8;
      --v9;
      if (v11 == v7)
      {
        return 1;
      }
    }

    v20 = a2;
    v14 = v5 + 240;
    v12 = *(v5 + 240);
    v13 = *(v14 + 8);
    v15 = *(*result + 248);
    v16 = *(v12 + 24);
    v17 = result;

    if (v16(&v3[v13], v17 + v15, v7, v12))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      *&v8[8 * v19 + 32] = v7;
      *v20 = v8;
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t StatefulMaterialProviderBox.deinit()
{
  (*(*(*(*v0 + 200) - 8) + 8))(v0 + *(*v0 + 216), *(*v0 + 200));
  type metadata accessor for StatefulMaterialProviderBox.Cache();
  type metadata accessor for Optional();
  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t StatefulMaterialProviderBox.__deallocating_deinit()
{
  StatefulMaterialProviderBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for StatefulMaterialProviderBox.Cache(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_25:
    v15 = *(v5 + 48);

    return v15(a1);
  }

  v7 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a2 - v6 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v6)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v6 + (v8 | v13) + 1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance AccentColorKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return (*(*v2 + 88))() & 1;
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance AnimationFrameIntervalKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return outlined copy of RepresentableContextValues.EnvironmentStorage(v3, v4, v5);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

Swift::Void __swiftcall PlatformViewChild.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v78 = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for OSSignpostID();
  v4 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v46 - v7;
  if (one-time initialization token for platformUpdate != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10 = *(&static Signpost.platformUpdate + 1);
    v9 = static Signpost.platformUpdate;
    v11 = word_1ED529260;
    v12 = HIBYTE(word_1ED529260);
    v73 = static Signpost.platformUpdate;
    v74 = word_1ED529260;
    v75 = byte_1ED529262;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v26 = *(v3 + 16);
      v27 = *(v3 + 24);

      closure #1 in PlatformViewChild.updateValue()(v2, v26, v27);
      return;
    }

    v55 = v12;
    v54 = v11;
    static OSSignpostID.exclusive.getter();
    v13 = static os_signpost_type_t.begin.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v50 = v10;
      v52 = v9;
      v15 = AGGraphGetAttributeGraph();
      v53 = v2;
      v16 = v15;
      Counter = AGGraphGetCounter();

      v18 = MEMORY[0x1E69E6810];
      v19 = v3;
      v20 = MEMORY[0x1E69E6870];
      *(v14 + 56) = MEMORY[0x1E69E6810];
      *(v14 + 64) = v20;
      *(v14 + 32) = Counter;
      v49 = *(v19 + 16);
      v21 = _typeName(_:qualified:)();
      v23 = v22;
      *(v14 + 96) = MEMORY[0x1E69E6158];
      v24 = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 72) = v21;
      *(v14 + 80) = v23;
      v9 = v53;
      v51 = v19;
      v25 = *(v53 + *(v19 + 80));
      *(v14 + 136) = v18;
      *(v14 + 144) = v20;
      *(v14 + 104) = v24;
      *(v14 + 112) = v25;
      if (one-time initialization token for _signpostLog == -1)
      {
        goto LABEL_5;
      }
    }

    swift_once();
LABEL_5:
    if (v55)
    {
      break;
    }

    v46[1] = _signpostLog;
    v28 = v52;
    if (v52 == 20)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    v29 = bswap32(v52) | (4 * WORD1(v52));
    v2 = v13;
    v48 = v4;
    v30 = *(v4 + 16);
    v4 += 16;
    v47 = v8;
    v56 = v30;
    v31 = v30(v64, v8, v63);
    v8 = 0;
    LOBYTE(v67) = 1;
    v61 = 16 * v3;
    v57 = v4;
    v62 = (v4 - 8);
    v59 = v28;
    v60 = v14 + 32;
    v58 = v3;
LABEL_14:
    v65 = v46;
    MEMORY[0x1EEE9AC00](v31);
    v33 = v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v33 + 8;
    v35 = v3;
    v36 = v33 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v37 = v60 + 40 * v8;
    while (1)
    {
      v38 = *(v14 + 16);
      if (v8 == v38)
      {
        LOBYTE(v67) = 0;
LABEL_22:
        v41 = v59;
        if (v59 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v33[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && v33[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v63;
        v43 = *v62;
        v44 = v64;
        (*v62)(v64, v63);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v31 = v56(v44, v45, v42);
        v3 = v58;
        if ((v67 & 1) == 0)
        {
          v43(v64, v63);

          v4 = v48;
          v8 = v47;
          v9 = v53;
          goto LABEL_37;
        }

        goto LABEL_14;
      }

      if (v8 >= v38)
      {
        break;
      }

      ++v8;
      outlined init with copy of AnyTrackedValue(v37, &v73);
      v39 = v76;
      v4 = v77;
      __swift_project_boxed_opaque_existential_1(&v73, v76);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v29 | v2, v39);
      *v34 = v40 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v37 += 40;
      if (!--v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v72 = v13;
  v70 = _signpostLog;
  v71 = &dword_18D018000;
  *&v73 = v52;
  *(&v73 + 1) = v50;
  LOBYTE(v74) = v54;
  v67 = "PlatformUpdate: (%p) %{public}@ [ %p ]";
  v68 = 38;
  v69 = 2;
  v66 = v14;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

LABEL_37:
  closure #1 in PlatformViewChild.updateValue()(v9, v49, *(v51 + 24));
  static os_signpost_type_t.end.getter();
  if (v55)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  (*(v4 + 8))(v8, v63);
}

uint64_t closure #1 in PlatformViewChild.updateValue()(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v220[2] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ViewLeafView();
  v173 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v172 = &v160[-v7];
  v198 = type metadata accessor for ObservationTracking._AccessList();
  v201 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v170 = &v160[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v160[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v160[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v160[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v160[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v160[-v18];
  type metadata accessor for ObservationTracking._AccessList?();
  v166 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v182 = &v160[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v160[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v160[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v167 = &v160[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v185 = &v160[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v160[-v31];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v205 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v178 = &v160[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v160[-v35];
  v200 = v37;
  v191 = type metadata accessor for UncheckedSendable();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v207 = &v160[-v38];
  v189 = type metadata accessor for PlatformViewRepresentableContext();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v208 = &v160[-v39];
  v40 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v184 = &v160[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v160[-v44];
  v210 = a3;
  v46 = type metadata accessor for PlatformViewChild();
  Value = AGGraphGetValue();
  v49 = v48;
  v187 = v40;
  v50 = *(v40 + 16);
  v209 = v45;
  v177 = v40 + 16;
  v176 = v50;
  v50(v45, Value, a2);
  v51 = AGGraphGetValue();
  v197 = v52;
  LODWORD(v40) = *v51;
  v53 = AGGraphGetValue();
  v194 = v54;
  v56 = *v53;
  v55 = v53[1];
  LODWORD(v212) = v40;
  v57 = v40 >> 1;
  v58 = *(v46 + 84);
  v59 = v57 == *(a1 + v58);
  v204 = v56;
  v202 = v55;
  v203 = v46;
  if (v59)
  {
  }

  else
  {
    v217 = *(a1 + 40);

    _DynamicPropertyBuffer.reset()();
    PlatformViewChild.resetPlatformView()();
    *(a1 + v58) = v57;
  }

  v60 = v6;
  OutputValue = AGGraphGetOutputValue();
  LODWORD(v171) = OutputValue != 0;
  MEMORY[0x1EEE9AC00](OutputValue);
  v62 = v210;
  *&v160[-32] = a2;
  *&v160[-24] = v62;
  v158 = a1;
  LODWORD(WitnessTable) = v212;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v209, partial apply for closure #1 in closure #1 in PlatformViewChild.updateValue(), &v160[-48], a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v63);
  v64 = 1;
  if (v214 & 1) != 0 || !OutputValue || (v49)
  {
    v65 = v204;
  }

  else
  {
    v65 = v204;
    if ((v197 & 1) == 0)
    {
      v64 = AGGraphCurrentAttributeWasModified();
    }
  }

  LODWORD(v193) = v64;
  AGGraphClearUpdate();
  closure #2 in closure #1 in PlatformViewChild.updateValue()(a1, v209, a2, v62, &v217);
  AGGraphSetUpdate();
  v199 = v217;
  v66 = v202;
  v220[0] = v65;
  v220[1] = v202;
  v67 = swift_weakInit();
  outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v67, v219);

  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(v220, v219);

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v219);
  if (v66)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016PreferenceBridgeK033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Ttg5(v65, v220[0]);
  }

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(&v217);
  v68 = v203;
  v69 = *(v205 + 16);
  v174 = *(v203 + 76);
  v70 = v200;
  v205 += 16;
  v175 = v69;
  v69(v36, a1 + v174, v200);
  UncheckedSendable.init(_:)(v36, v70, v207);
  v71 = *(a1 + 32);
  v192 = *(v68 + 80);
  v72 = *(a1 + v192);
  v73 = v210;
  v206 = a1;
  v211 = v60;
  v196 = a2;
  v195 = v71;
  if (!v72)
  {
    v171 = v19;
    v78 = *(v68 + 88);

    PropertyList.Tracker.reset()();

    v79 = v220[0];
    v80 = *(a1 + v78);
    if (v220[0])
    {
      v81 = *(v220[0] + 64);
    }

    else
    {
      v81 = 0;
    }

    v97 = *(v80 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v97 + 16));
    *(v97 + 24) = v81;
    os_unfair_lock_unlock((v97 + 16));

    closure #4 in closure #1 in PlatformViewChild.updateValue()(v207, v71, v199, v79, v80, v208);
    v197 = 0;
    v194 = v79;

    v193 = v80;

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_getObjectType();
      v99 = swift_conformsToProtocol2();
      if (v99)
      {
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      Strong = 0;
    }

    v99 = 0;
LABEL_38:
    v60 = v160;
    MEMORY[0x1EEE9AC00](v99);
    v100 = &v160[-112];
    *&v160[-96] = a2;
    *&v160[-88] = v73;
    v101 = v208;
    *&v160[-80] = v209;
    *&v160[-72] = v101;
    *&v160[-64] = Strong;
    *&v160[-56] = v102;
    v103 = v193;
    *&v160[-48] = v194;
    *&v160[-40] = v103;
    *&v160[-32] = v212;
    *&v160[-24] = a1;
    v158 = v220;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

  v185 = 0;
  v74 = a2;
  if (v194)
  {
    a1 = *(v68 + 88);
    v75 = v206;
    v76 = v220[0];

    swift_unknownObjectRetain();

    LOBYTE(v76) = PropertyList.Tracker.hasDifferentUsedValues(_:)(v76);

    if (v76)
    {

      PropertyList.Tracker.reset()();

      LODWORD(v193) = 1;
    }

    v77 = *(v75 + 68);
    if (!v77)
    {
      goto LABEL_27;
    }
  }

  else
  {

    swift_unknownObjectRetain();
    v77 = *(v206 + 68);
    if (!v77)
    {
      goto LABEL_27;
    }
  }

  v82 = *(v206 + 56);
  if (!v82)
  {
    goto LABEL_86;
  }

  v83 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = 0;
  v86 = v77 - 1;
  do
  {
    v88 = v82 + v85;
    if (v86)
    {
      v85 += *(v88 + 8);
    }

    else
    {
      v85 = 0;
    }

    v87 = v86 | v85;
    *&v217 = v88;
    CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(v72, v220, 0, v83, AssociatedConformanceWitness);
    --v86;
  }

  while (v87);
LABEL_27:
  v60 = v220[0];
  v89 = v206;
  v90 = *(v206 + *(v203 + 88));
  if (v220[0])
  {
    v91 = *(v220[0] + 64);
  }

  else
  {
    v91 = 0;
  }

  a2 = v74;
  v92 = v210;
  v19 = v201;
  v93 = v199;
  v94 = *(v90 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v94 + 16));
  *(v94 + 24) = v91;
  os_unfair_lock_unlock((v94 + 16));

  AGGraphClearUpdate();
  v158 = v92;
  closure #3 in closure #1 in PlatformViewChild.updateValue()(v197 & 1, v194 & 1, v171, v72, v60, v90, v212);
  AGGraphSetUpdate();
  v95 = v185;
  closure #4 in closure #1 in PlatformViewChild.updateValue()(v207, v195, v93, v60, v90, v208);
  v197 = v95;
  swift_unknownObjectRelease();
  if ((v193 & 1) == 0)
  {

LABEL_79:
    (*(v190 + 8))(v207, v191);

    (*(v188 + 8))(v208, v189);
    return (*(v187 + 8))(v209, a2);
  }

  v193 = v90;
  v194 = v60;
  v96 = v19;
  while (1)
  {
    Strong = v198;
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v100 = swift_unknownObjectWeakLoadStrong();

    if (v100)
    {
      swift_getObjectType();
      a1 = swift_conformsToProtocol2();
      v131 = v186;
      if (!a1)
      {
        swift_unknownObjectRelease();
        v100 = 0;
      }
    }

    else
    {
      a1 = 0;
      v131 = v186;
    }

    if (one-time initialization token for _current != -1)
    {
      swift_once();
    }

    v132 = static ObservationCenter._current;
    swift_beginAccess();
    v133 = pthread_getspecific(v132[2]);
    if (!v133)
    {
      v134 = swift_slowAlloc();
      pthread_setspecific(v132[2], v134);
      v218 = type metadata accessor for ObservationCenter();
      *&v217 = v132[3];
      outlined init with take of Any(&v217, v134);

      v133 = v134;
      v131 = v186;
    }

    outlined init with copy of Any(v133, &v217);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    v109 = v213;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_81:
    swift_once();
LABEL_39:
    v104 = static ObservationCenter._current;
    swift_beginAccess();
    v105 = pthread_getspecific(v104[2]);
    v96 = v201;
    v106 = v169;
    v107 = v185;
    if (!v105)
    {
      v108 = swift_slowAlloc();
      pthread_setspecific(v104[2], v108);
      v218 = type metadata accessor for ObservationCenter();
      *&v217 = v104[3];
      outlined init with take of Any(&v217, v108);

      v105 = v108;
    }

    outlined init with copy of Any(v105, &v217);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    v109 = v216;
    v110 = AGGraphGetCurrentAttribute();
    if (v110 == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
LABEL_83:
      Strong = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(Strong + 2) + 1, 1, Strong);
      *(v109 + 24) = Strong;
      goto LABEL_69;
    }

    v161 = v110;
    v164 = v60;
    v212 = Strong;
    swift_beginAccess();
    v163 = *(v109 + 24);
    *(v109 + 24) = MEMORY[0x1E69E7CC0];
    v60 = v198;
    v111 = (v96[7])(v107, 1, 1, v198);
    v162 = v160;
    MEMORY[0x1EEE9AC00](v111);
    swift_getAssociatedTypeWitness();
    v112 = type metadata accessor for Optional();
    *&v160[-32] = v112;
    *&v160[-24] = partial apply for closure #6 in closure #1 in PlatformViewChild.updateValue();
    v158 = v100;
    a1 = v185;
    v113 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
    v114 = v197;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v160[-48], v166, v113, v112, MEMORY[0x1E69E7288], v215);
    v197 = v114;
    if (v114)
    {
      goto LABEL_88;
    }

    v166 = v217;
    outlined init with take of ObservationTracking._AccessList?(a1, v106);
    v115 = v167;
    outlined init with copy of ObservationTracking._AccessList?(v106, v167);
    if ((v96[6])(v115, 1, v60) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v106);
      v106 = v115;
    }

    else
    {
      v116 = v171;
      v185 = v96[4];
      (v185)(v171, v115, v60);
      (v96[2])(v168, v116, v60);
      v117 = *(v109 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v109 + 24) = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
        *(v109 + 24) = v117;
      }

      v120 = v117[2];
      v119 = v117[3];
      if (v120 >= v119 >> 1)
      {
        v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1, v117);
      }

      v121 = v171;
      v117[2] = v120 + 1;
      v96 = v201;
      v122 = v198;
      (v185)(v117 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v201[9] * v120, v168, v198);
      *(v109 + 24) = v117;
      (v96[1])(v121, v122);
    }

    outlined destroy of ObservationTracking._AccessList?(v106);
    v19 = *(v109 + 24);
    v123 = v19[2];
    if (v123)
    {
      v126 = v96[2];
      v125 = v96 + 2;
      v124 = v126;
      v127 = v19 + ((v125[64] + 32) & ~v125[64]);
      v128 = *(v125 + 7);
      a2 = v125 - 8;
      v185 = *(v109 + 24);

      v129 = v165;
      v130 = v198;
      v60 = v161;
      do
      {
        v124(v129, v127, v130);
        ObservationCenter.invalidate<A>(_:onChangeIn:)(v60, v129);
        (*a2)(v129, v130);
        v127 += v128;
        --v123;
      }

      while (v123);

      v96 = v201;
      v19 = v185;
    }

    else
    {
    }

    swift_unknownObjectRelease();

    *(v109 + 24) = v163;

    v89 = v206;
    *(v206 + v192) = v166;
    swift_unknownObjectRelease();
  }

  LODWORD(v171) = CurrentAttribute;
  swift_beginAccess();
  v186 = *(v109 + 24);
  *(v109 + 24) = MEMORY[0x1E69E7CC0];
  (v96[7])(v131, 1, 1, Strong);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v137 = *(StatusReg + 848);
  *(StatusReg + 848) = v131;
  AGGraphClearUpdate();
  v60 = v131;
  v185 = v100;
  closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(v100, a1, v89, v208, v209, v196, v210);
  AGGraphSetUpdate();
  *(StatusReg + 848) = v137;
  if (v197)
  {
    goto LABEL_87;
  }

  a2 = v183;
  outlined init with take of ObservationTracking._AccessList?(v131, v183);
  a1 = v182;
  outlined init with copy of ObservationTracking._AccessList?(a2, v182);
  v19 = Strong;
  if ((v96[6])(a1, 1, Strong) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(a2);
    a2 = a1;
    v60 = v211;
    goto LABEL_72;
  }

  v100 = v96[4];
  v138 = v181;
  (v100)(v181, a1, Strong);
  (v96[2])(v180, v138, Strong);
  Strong = *(v109 + 24);
  v139 = swift_isUniquelyReferenced_nonNull_native();
  *(v109 + 24) = Strong;
  v60 = v211;
  if ((v139 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_69:
  a1 = *(Strong + 2);
  v140 = *(Strong + 3);
  if (a1 >= v140 >> 1)
  {
    Strong = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v140 > 1, a1 + 1, 1, Strong);
  }

  *(Strong + 2) = a1 + 1;
  v96 = v201;
  (v100)(Strong + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v201[9] * a1, v180, v19);
  *(v109 + 24) = Strong;
  (v96[1])(v181, v19);
LABEL_72:
  outlined destroy of ObservationTracking._AccessList?(a2);
  v141 = *(v109 + 24);
  v142 = v141[2];
  if (v142)
  {
    v144 = v96[2];
    v143 = v96 + 2;
    v212 = v144;
    v145 = v141 + ((v143[64] + 32) & ~v143[64]);
    a1 = *(v143 + 7);
    v146 = (v143 - 8);
    v201 = v141;

    v147 = v170;
    v148 = v171;
    do
    {
      v212(v147, v145, v19);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v148, v147);
      (*v146)(v147, v19);
      v145 += a1;
      --v142;
    }

    while (v142);
  }

  *(v109 + 24) = v186;

  v149 = v206;
  v150 = *(v206 + v192);
  a2 = v196;
  v151 = v184;
  if (v150)
  {
    v176(v184, v209, v196);
    v152 = v149 + v174;
    v153 = v178;
    v175(v178, v152, v200);
    if ((*(*(AssociatedTypeWitness - 8) + 48))(v153, 1) != 1)
    {
      v154 = v172;
      v155 = ViewLeafView.init(content:platformView:coordinator:)(v151, v150, v153, a2, v172);
      MEMORY[0x1EEE9AC00](v155);
      v158 = v203;
      WitnessTable = swift_getWitnessTable();
      swift_unknownObjectRetain_n();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v154, partial apply for closure #1 in StatefulRule.value.setter, &v160[-32], v60, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v156);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v173 + 8))(v154, v60);
      goto LABEL_79;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  outlined destroy of ObservationTracking._AccessList?(v60);
  __break(1u);
LABEL_88:
  result = outlined destroy of ObservationTracking._AccessList?(a1);
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 40);
  result = _DynamicPropertyBuffer.update(container:phase:)(a1, &v5);
  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a2;
  v51 = a5;
  v8 = type metadata accessor for PlatformViewChild();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = a4;
  v48 = &v39 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v39 - v12;
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UncheckedSendable();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  v50 = v8;
  v26 = *(v19 + 16);
  v40 = *(v8 + 76);
  v26(&v39 - v24, a1 + v40, v18, v23);
  v27 = *(AssociatedTypeWitness - 8);
  v28 = (*(v27 + 48))(v25, 1, AssociatedTypeWitness);
  (*(v19 + 8))(v25, v18);
  v29 = v28 == 1;
  v30 = a1;
  if (v29)
  {
    v31 = v41;
    (*(v42 + 16))(v41, v46, a3);
    UncheckedSendable.init(_:)(v31, a3, v17);
    v32 = v45;
    closure #1 in closure #2 in closure #1 in PlatformViewChild.updateValue()(a3, v47, v45);
    (*(v27 + 32))(v21, v32, AssociatedTypeWitness);
    (*(v27 + 56))(v21, 0, 1, AssociatedTypeWitness);
    (*(v19 + 40))(v30 + v40, v21, v18);
    (*(v43 + 8))(v17, v44);
  }

  v34 = v48;
  v33 = v49;
  v35 = v50;
  (*(v49 + 16))(v48, v30, v50);
  v36 = *AGGraphGetValue();
  v37 = *(v33 + 8);

  result = v37(v34, v35);
  *v51 = v36;
  return result;
}

uint64_t closure #4 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-1] - v14;
  (*(v16 + 16))(&v19[-1] - v14, a1, v13);
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v15, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19[0] = a4;
    v19[1] = a5;
    v20 = 0;
    PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)(v15, a2, a3, v19, v18);
  }

  return result;
}

uint64_t outlined consume of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined consume of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a2 + 104))(a1, a2, v7);
  return UncheckedSendable.init(_:)(v9, AssociatedTypeWitness, a3);
}

uint64_t HostPreferencesCombiner.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v14[0] = result;
  v6 = *(a2 + 16);
  if (v6)
  {
    Value = AGGraphGetValue();
    if (v6 >> 58)
    {
      __break(1u);
    }

    v8 = *Value;
    swift_bridgeObjectRetain_n();

    if (32 * v6) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v11 = v14 - v10;

      specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(v11, v6, 0, v6, v14, v8, a2);
    }

    else
    {
      v12 = swift_slowAlloc();

      specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(v12, v6, 0, v6, v14, v8, a2);
      MEMORY[0x193AC4820](v12, -1, -1);
    }

    result = v14[0];
  }

  *a3 = result;
  return result;
}

uint64_t type metadata completion function for PlatformViewRepresentableContext()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PlatformViewLayoutEngine()
{
  result = type metadata accessor for ViewLeafView();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a8;
  v31 = a7;
  v30 = a6;
  v29 = a5;
  v28 = a4;
  v26 = a3;
  v34 = a9;
  v27 = a10;
  v14 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UncheckedSendable();
  v17 = *(v33 - 8);
  v18 = MEMORY[0x1EEE9AC00](v33);
  v20 = &v25 - v19;
  (*(v14 + 16))(v16, a1, a11, v18);
  UncheckedSendable.init(_:)(v16, a11, v20);
  closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a2, v46);
  v21 = v46[2];
  v22 = v46[3];
  v23 = v47;
  v35 = a11;
  v36 = a12;
  v37 = v20;
  v38 = a2;
  v39 = v26;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v27;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  RepresentableContextValues.asCurrent<A>(do:)(partial apply for closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue());

  outlined consume of RepresentableContextValues.EnvironmentStorage(v21, v22, v23);
  return (*(v17 + 8))(v20, v33);
}

uint64_t RepresentableContextValues.asCurrent<A>(do:)(void (*a1)(uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v16 = v4;
  v6 = *(v1 + 32);
  swift_beginAccess();
  v7 = static RepresentableContextValues.current;
  v9 = qword_1ED527ED0;
  v8 = unk_1ED527ED8;
  *&static RepresentableContextValues.current = v2;
  *(&static RepresentableContextValues.current + 1) = v3;
  qword_1ED527ED0 = v4;
  unk_1ED527ED8 = v5;
  LOBYTE(v4) = byte_1ED527EE0;
  byte_1ED527EE0 = v6;
  outlined copy of RepresentableContextValues?(v7, *(&v7 + 1), v9, v8, v4);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v16, v5, v6);
  v10 = outlined consume of RepresentableContextValues?(v7, *(&v7 + 1), v9, v8, v4);
  a1(v10);
  v11 = static RepresentableContextValues.current;
  v12 = qword_1ED527ED0;
  v13 = unk_1ED527ED8;
  static RepresentableContextValues.current = v7;
  qword_1ED527ED0 = v9;
  unk_1ED527ED8 = v8;
  v14 = byte_1ED527EE0;
  byte_1ED527EE0 = v4;
  return outlined consume of RepresentableContextValues?(v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = v24 - v16;
  (*(a8 + 64))(a1, a6, a8, v15);
  if (a2)
  {
    v18 = *(a3 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_getAssociatedTypeWitness();
  v24[0] = a4;
  v24[1] = 0;
  v25 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 24);

  swift_unknownObjectRetain();
  v24[0] = v21(v17, a2, v18, v24, &v25, v19, AssociatedConformanceWitness);
  return UncheckedSendable.init(_:)(v24, v19, v23);
}

uint64_t closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = closure #1 in closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a1, a2, a3, a4, a5, a9, &v22, a10);
  v13 = v22;
  v14 = *(a6 + 68);
  if (!v14)
  {
LABEL_8:
    *a7 = v13;
    return result;
  }

  v15 = *(a6 + 56);
  if (v15)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = 0;
    v19 = v14 - 1;
    do
    {
      v21 = v15 + v18;
      if (v19)
      {
        v18 += *(v21 + 8);
      }

      else
      {
        v18 = 0;
      }

      v20 = v19 | v18;
      v22 = v21;
      result = CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(v13, a8, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
      --v19;
    }

    while (v20);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v13 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v12 = *(v1 + 80);
  v9 = *(v1 + 96);
  v11 = *(v1 + 88);
  AGGraphClearUpdate();
  closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(v13, v4, v5, v6, v7, v8, v12, v11, a1, v9, v2, v3);
  return AGGraphSetUpdate();
}

void one-time initialization function for platformUpdate()
{
  *&static Signpost.platformUpdate = "PlatformViewUpdate";
  *(&static Signpost.platformUpdate + 1) = 18;
  word_1ED529260 = 258;
  byte_1ED529262 = 3;
}

void PreferenceValues.setValue<A>(_:of:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PreferenceValues.Value();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22[-v15];
  v17 = *v5;
  v18 = *(*v5 + 2);
  if (v18 == a4)
  {
    goto LABEL_4;
  }

  if (v18 <= a4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    *v5 = v17;
    goto LABEL_11;
  }

  if (*&v17[56 * a4 + 32] != a2)
  {
LABEL_4:
    v16 = *(a1 + *(v13 + 28));
    if (!v16)
    {
      return;
    }

    v25[3] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    v23[0] = a2;
    v23[1] = a3;
    v24 = v16;
    if (v18 >= a4)
    {
      outlined init with copy of PreferenceValues.Entry(v23, v22);
      specialized Array.replaceSubrange<A>(_:with:)(a4, a4, v22);
LABEL_7:
      outlined destroy of PreferenceValues.Entry(v23);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!*(a1 + *(v13 + 28)))
  {
    specialized Array.remove(at:)(a4, v23);
    goto LABEL_7;
  }

  v20 = a1;
  a1 = v13;
  (*(v12 + 16))(v16, v20, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (*(v17 + 2) <= a4)
  {
    __break(1u);
  }

  else
  {
    specialized PreferenceValues.Entry.subscript.setter(v16, a5);
    (*(v12 + 8))(v16, a1);
    *v5 = v17;
  }
}

uint64_t outlined destroy of CollectionOfOne<PreferenceValues.Entry>(uint64_t a1)
{
  type metadata accessor for GesturePhase<()>(0, &lazy cache variable for type metadata for CollectionOfOne<PreferenceValues.Entry>, &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ViewTraitCollection.value<A>(for:defaultValue:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of AnyTrackedValue(v9, v18);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v11 + 8))(v10, v11) == a2)
      {
        v13 = v19;
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v15 = *(v14 + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v15(AssociatedTypeWitness, v13, v14);
        __swift_destroy_boxed_opaque_existential_1(v18);
        return;
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(v18);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v12 = swift_getAssociatedTypeWitness();
    (*(*(v12 - 8) + 16))(a3, a1, v12);
  }
}

void _LayoutTraits.Dimension.init(min:ideal:max:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

void _LayoutTraits.Dimension._checkInvariant()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v0 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v0 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || v2 == INFINITY)
  {
LABEL_20:
    v9 = v3;
    v10 = v1;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v1 > v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v1 > v2 || v2 > v3)
  {
    goto LABEL_20;
  }
}

__n128 _LayoutTraits.init(width:height:)@<Q0>(__n128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4 = a1[1].n128_u64[0];
  *(&v4 + 1) = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v8 = *a1;
  v9 = v4;
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  result = v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  return result;
}

uint64_t protocol witness for PlatformViewFactory.makePlatformView() in conformance ViewLeafView<A>(uint64_t a1)
{
  specialized ViewLeafView.makePlatformView()(a1);

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions()
{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

uint64_t specialized static Semantics.UnifiedLayout.isEnabled.getter()
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
LABEL_5:
      v0 = 1;
      return v0 & 1;
    }
  }

  else if (static Semantics.forced == -1)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v0 = static EnableUnifiedLayoutFeature.cachedValue;
  if (static EnableUnifiedLayoutFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of ViewGraphHost.LayoutInvalidator?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
      v0 = [v5 BOOLForKey_];

      static EnableUnifiedLayoutFeature.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of ViewGraphHost.LayoutInvalidator?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v0 = 0;
      static EnableUnifiedLayoutFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

double closure #1 in ViewLeafView.layoutTraits()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  type metadata accessor for ViewLeafView();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState();
  v9(v13, v10, AssociatedConformanceWitness);
  v14 = v13[0];
  v15 = v13[1];
  v16 = v13[2];
  closure #1 in closure #1 in ViewLeafView.layoutTraits()(a1, &v14, a2, a3);
  v11 = v15;
  *a4 = v14;
  a4[1] = v11;
  result = *&v16;
  a4[2] = v16;
  return result;
}

uint64_t ViewLeafView.layoutTraits()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AGGraphClearUpdate();
  closure #1 in ViewLeafView.layoutTraits()(v2, *(a1 + 16), *(a1 + 24), a2);

  return AGGraphSetUpdate();
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in closure #1 in ViewLeafView.layoutTraits()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  type metadata accessor for ViewLeafView();
  ViewLeafView.representedViewProvider.getter();
  (*(a4 + 160))(a2, v10, a3, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t closure #3 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v18[1] = a5;
  v18[0] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v18 - v14;
  type metadata accessor for ViewLeafView();
  ViewLeafView.representedViewProvider.getter();
  v16 = *(a8 + 120);
  v20 = a4 & 1;
  v19 = a6 & 1;
  v16(a2, v18[0]);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

Swift::Void __swiftcall PreferenceValues.combine(with:)(SwiftUI::PreferenceValues with)
{
  v2 = *with.entries._rawValue;
  v3 = *(*with.entries._rawValue + 16);
  if (!v3)
  {
    return;
  }

  v4 = v1;
  v5 = *v1;
  v40 = *(*v1 + 2);
  if (!v40)
  {

    *v1 = v2;
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v39 = v2 + 32;
  v9 = 56;
  v34 = v2;
  v35 = v1;
  v33 = v3;
  do
  {
    if (v7 >= *(v5 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v41 = v6;
    outlined init with copy of PreferenceValues.Entry(&v5[v9 - 24], v44);
    v10 = v44[0];
    outlined destroy of PreferenceValues.Entry(v44);
    if (v8 >= *(v2 + 16))
    {
      goto LABEL_28;
    }

    v11 = v39 + 56 * v8;
    outlined init with copy of PreferenceValues.Entry(v11, v44);
    v12 = v44[0];
    outlined destroy of PreferenceValues.Entry(v44);
    if (v10 == v12)
    {
      outlined init with copy of PreferenceValues.Entry(v11, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        *v4 = v5;
      }

      if (v7 >= *(v5 + 2))
      {
        goto LABEL_29;
      }

      v38 = v8;
      v17 = *&v5[v9 - 24];
      v18 = *&v5[v9 - 16];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37 = &v32;
      v20 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v22 = &v32 - v21;
      outlined init with copy of Any(&v5[v9], &v42);
      v23 = swift_dynamicCast();
      v36 = &v32;
      v24 = MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 4) = v17;
      *(&v32 - 3) = v18;
      *(&v32 - 2) = &v5[v9 - 24];
      v25 = v38;
      *(&v32 - 1) = v44;
      v26 = *(v18 + 24);
      v4 = v35;
      v26(v22, partial apply for closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:), v24);
      v43 = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 16))(boxed_opaque_existential_1, v22, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(&v5[v9]);
      v3 = v33;
      outlined init with take of Any(&v42, &v5[v9]);
      v28 = AssociatedTypeWitness;
      v2 = v34;
      (*(v20 + 8))(v22, v28);
      outlined destroy of PreferenceValues.Entry(v44);
      *v4 = v5;
      v8 = v25 + 1;
LABEL_16:
      v29 = v41;
      goto LABEL_19;
    }

    if (v12 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v5 + 2);
    if (v13 < v7)
    {
      goto LABEL_30;
    }

    outlined init with copy of PreferenceValues.Entry(v11, v44);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (v14 && v13 < *(v5 + 3) >> 1)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v13 + 1, 1, v5);
      *v4 = v5;
    }

    swift_arrayDestroy();
    v29 = v41;
    memmove(&v5[v9 + 32], &v5[v9 - 24], 56 * (v41 + *(v5 + 2)));
    ++*(v5 + 2);
    outlined init with copy of PreferenceValues.Entry(v44, &v5[v9 - 24]);
    outlined destroy of CollectionOfOne<PreferenceValues.Entry>(v44);
    *v4 = v5;
    ++v40;
    v8 = v15 + 1;
LABEL_19:
    if (++v7 >= v40)
    {
      break;
    }

    v9 += 56;
    v6 = v29 - 1;
  }

  while (v8 < v3);
  if (v8 >= v3)
  {
    return;
  }

  v30 = *(v2 + 16);
  if (v30 >= v8 && v30 >= v3)
  {

    specialized Array.append<A>(contentsOf:)(v31, v39, v8, (2 * v3) | 1);
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t PlatformViewLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, double *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (one-time initialization token for firstTextBaseline != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  if (static VerticalAlignment.firstTextBaseline == a1)
  {
    v21 = 0.0;
    v22 = 0.0;
    MEMORY[0x1EEE9AC00](a1);
    v14 = *(v7 + 16);
    v15 = &v21;
    v16 = v2;
    v17 = v4;
    v18 = v3;
    v19 = v6;
    v20 = v5;
    specialized static Update.syncMain(_:)(partial apply for closure #1 in PlatformViewLayoutEngine.explicitAlignment(_:at:), v13);
    if ((*&v21 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v21 & 0x7FF0000000000000) == 0)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v21;
    }
  }

  else
  {
    if (one-time initialization token for lastTextBaseline != -1)
    {
      v12 = a1;
      swift_once();
      a1 = v12;
    }

    if (static VerticalAlignment.lastTextBaseline == a1)
    {
      v21 = 0.0;
      v22 = 0.0;
      MEMORY[0x1EEE9AC00](a1);
      v14 = *(v10 + 16);
      v15 = &v21;
      v16 = v2;
      v17 = v4;
      v18 = v3;
      v19 = v6;
      v20 = v5;
      specialized static Update.syncMain(_:)(partial apply for closure #2 in PlatformViewLayoutEngine.explicitAlignment(_:at:), v13);
      if ((~*&v22 & 0x7FF0000000000000) != 0 || (*&v22 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        *&result = v3 - v22;
      }

      else
      {
        *&result = v3;
      }
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t destroy for ViewLeafView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  return v7(v8, AssociatedTypeWitness);
}

uint64_t outlined init with copy of ViewGraphHost.LayoutInvalidator?(uint64_t a1, uint64_t a2)
{
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t $defer #1 <A>() in PlatformViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformViewLayoutEngine();
  type metadata accessor for ViewLeafView();
  outlined init with copy of ViewGraphHost.LayoutInvalidator?(a2, v7);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 48);
  swift_unknownObjectRetain();
  v5 = swift_checkMetadataState();
  v4(v7, v5, AssociatedConformanceWitness);
  return swift_unknownObjectRelease();
}

double PlatformViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for ViewLeafView();
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v63 = *a1;
  v61 = *(a1 + 8);
  v60 = *(a1 + 16);
  v62 = *(a1 + 24);
  v11 = v3 + *(a2 + 36);
  swift_getAssociatedTypeWitness();
  v64 = v7;
  v65 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 40);
  v14 = swift_checkMetadataState();
  v13(v70, v14, AssociatedConformanceWitness);
  v71 = 0;
  v72 = 0;
  LOBYTE(v73) = 1;
  v15 = *(AssociatedConformanceWitness + 48);
  v16 = v14;
  v17 = v60;
  v18 = AssociatedConformanceWitness;
  v19 = v61;
  v15(&v71, v16, v18);
  v20 = *(v68 + 16);
  v66 = v10;
  v21 = v11;
  v22 = v63;
  v67 = v8;
  v23 = v8;
  v24 = v62;
  v20(v10, v21, v23);
  v25 = *(v3 + *(a2 + 40));
  v26 = *(v3 + *(a2 + 44));
  v27 = *v3;
  v28 = *(v3 + 8);
  v30 = *(v3 + 16);
  v29 = *(v3 + 24);
  v32 = *(v3 + 32);
  v31 = *(v3 + 40);
  v33 = *(v3 + 48);
  v34 = *(v3 + 72);
  v35 = *(v3 + 56);
  v37 = *(v3 + 88);
  v36 = *(v3 + 96);
  v38 = *(v3 + 144);
  if ((v33 & 1) == 0)
  {
    if (v19)
    {
      if ((v28 & 1) == 0)
      {
        if (*(v3 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v3 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v28 & 1) != 0 || v22 != v27)
    {
      goto LABEL_2;
    }

    if (v24)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v29 & 1) != 0 || v17 != v30)
    {
      goto LABEL_2;
    }

    v38 = *(v3 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v3 + 104))
  {
    goto LABEL_22;
  }

  if (v19)
  {
    goto LABEL_10;
  }

  if ((*(v3 + 64) & 1) != 0 || *&v35 != v22)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v24)
  {
    if (*(v3 + 80))
    {
LABEL_21:
      v38 = *(v3 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v3 + 80) & 1) == 0 && *&v34 == v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v3 + 160))
  {
LABEL_23:
    v50 = *(v3 + 104);
    v51 = v34;
    v52 = v35;
    v56 = v33;
    v57 = v29;
    v55 = v30;
    v54 = v28;
    v53 = v27;
    v58 = v32;
    v59 = v31;
    v39 = v17;
    v40 = *&v22;
    swift_beginAccess();
    v41 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      *(v41 + 4) = v40;
      *(v41 + 5) = v19;
      v41[6] = v39;
      *(v41 + 28) = v24;
    }

    v69 = v24;
    v71 = v40;
    LOBYTE(v72) = v19;
    v73 = v39;
    v74 = v24;
    v38 = ViewLeafView.sizeThatFits(in:environment:context:)(&v71, v25, v26, v67);
    v42 = v51;
    *(v3 + 112) = v52;
    *(v3 + 128) = v42;
    *(v3 + 144) = v37;
    *(v3 + 152) = v36;
    *(v3 + 160) = v50;
    v43 = v54;
    *(v3 + 56) = v53;
    *(v3 + 64) = v43;
    v44 = v57;
    *(v3 + 72) = v55;
    *(v3 + 80) = v44;
    v45 = v59;
    *(v3 + 88) = v58;
    *(v3 + 96) = v45;
    *(v3 + 104) = v56;
    *v3 = v40;
    *(v3 + 8) = v19;
    *(v3 + 16) = v39;
    *(v3 + 24) = v24;
    *(v3 + 32) = v38;
    *(v3 + 40) = v46;
    *(v3 + 48) = 0;
    goto LABEL_41;
  }

  if (v19)
  {
    if ((*(v3 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v3 + 120) & 1) != 0 || *(v3 + 112) != v22)
  {
    goto LABEL_23;
  }

  if (v24)
  {
    if ((*(v3 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v3 + 136) & 1) != 0 || *(v3 + 128) != v17)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v47 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v47[4] = v22;
    *(v47 + 5) = v19;
    v47[6] = v17;
    *(v47 + 28) = v24 | 0x100;
  }

LABEL_41:
  (*(v68 + 8))(v66, v67);
  $defer #1 <A>() in PlatformViewLayoutEngine.sizeThatFits(_:)(v3, v70);
  outlined destroy of ViewGraphHost.LayoutInvalidator?(v70, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator);
  return v38;
}

uint64_t initializeWithCopy for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = *(v10 + 80);
  swift_unknownObjectRetain();
  v11((v7 + v12 + 8) & ~v12, (v8 + v12 + 8) & ~v12, AssociatedTypeWitness);
  return a1;
}

uint64_t outlined destroy of ViewGraphHost.LayoutInvalidator?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v5;
  *(a1 + 160) = *(a2 + 160);
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v12 | v14 | 7;
  v16 = (v15 + 161 + a1) & ~v15;
  v17 = (v15 + 161 + a2) & ~v15;
  (*(v11 + 16))(v16, v17, v10);
  v18 = *(v11 + 64) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = v19 + v14 + 8;
  v22 = v20 + v14 + 8;
  v23 = *(v13 + 16);
  swift_unknownObjectRetain();
  v23(v21 & ~v14, v22 & ~v14, AssociatedTypeWitness);
  v24 = *(v13 + 64) + ((v14 + 8 + (v18 & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 3;
  v25 = ((v24 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = ((v24 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  *v25 = *v26;
  *((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t destroy for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v7 = *(v12 + 80);
  v8 = (a1 + (v5 | v7 | 7) + 161) & ~(v5 | v7 | 7);
  (*(v4 + 8))(v8, v3);
  v9 = (*(v4 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = *(v12 + 8);

  return v10((v7 + v9 + 8) & ~v7, AssociatedTypeWitness);
}

double ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v17[0] = 0;
  v17[1] = 0;
  v9[1] = *(a4 + 16);
  v10 = a2;
  v11 = a3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v17;
  specialized static Update.syncMain(_:)(partial apply for closure #1 in ViewLeafView.sizeThatFits(in:environment:context:), v9);
  return *v17;
}

uint64_t closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, double *a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v17 = type metadata accessor for PlatformViewRepresentableContext();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = a2;
  v21 = a6;
  v22 = a7;
  closure #1 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a1, v20, a3, &v34 - v18);
  v23 = a5;
  LOBYTE(v38) = a5 & 1;
  v43 = v22 & 1;
  closure #2 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a4, a5 & 1, v21, v22 & 1, v19, a10, &v38);
  if ((LOBYTE(v39) & 1) == 0)
  {
    *v37 = v38;
    return (*(v35 + 8))(v19, v36);
  }

  v24 = v37;
  if (specialized static Semantics.UnifiedLayout.isEnabled.getter())
  {
    *&v38 = a4;
    BYTE8(v38) = v23 & 1;
    v39 = *&v21;
    LOBYTE(v40) = v22 & 1;
    v25 = type metadata accessor for ViewLeafView();
    ViewLeafView.unifiedLayoutSize(in:)(&v38, v25);
    v28 = v24;
LABEL_20:
    *v28 = v26;
    v28[1] = v27;
    LOBYTE(v38) = v23 & 1;
    v43 = v22 & 1;
    closure #3 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a1, v28, a4, v23 & 1, v21, v22 & 1, a9, a10);
    return (*(v35 + 8))(v19, v36);
  }

  v29 = type metadata accessor for ViewLeafView();
  result = ViewLeafView.layoutTraits()(v29, &v38);
  v31 = *&v38;
  v26 = v39;
  v32 = v41;
  if ((v22 & 1) == 0)
  {
    v32 = *&v21;
  }

  if (*&v38 > v39)
  {
    __break(1u);
  }

  else if (v40 <= v42)
  {
    v28 = v24;
    v33 = *(&v38 + 1);
    if ((v23 & 1) == 0)
    {
      v33 = *&a4;
    }

    if (*&v38 <= v33)
    {
      v31 = v33;
    }

    if (v39 >= v31)
    {
      v26 = v31;
    }

    if (v40 > v32)
    {
      v27 = v40;
    }

    else
    {
      v27 = v32;
    }

    if (v42 < v27)
    {
      v27 = v42;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15[-1] - v10;
  v12 = type metadata accessor for ViewLeafView();
  (*(v9 + 16))(v11, a1 + *(v12 + 40), AssociatedTypeWitness);
  v15[0] = a2 | (a3 << 32);
  v15[1] = 0;
  v16 = 1;
  return PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)(v11, 0, 0, v15, a4);
}

uint64_t closure #2 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v24 = a5;
  v22 = a1;
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21 - v13;
  type metadata accessor for ViewLeafView();
  ViewLeafView.representedViewProvider.getter();
  v15 = *(a6 + 112);
  v26 = a2 & 1;
  v25 = a4 & 1;
  v16 = v15(v22);
  v18 = v17;
  LOBYTE(a6) = v19;
  result = (*(v12 + 8))(v14, AssociatedTypeWitness);
  *a7 = v16;
  *(a7 + 8) = v18;
  *(a7 + 16) = a6 & 1;
  return result;
}

uint64_t ViewLeafView.representedViewProvider.getter()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 32);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t ViewGraphHostEnvironmentWrapper.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t ViewGraphHostEnvironmentWrapper.phase.setter(int *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a3;
  v29 = a2;
  v31 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for Optional();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v29 - v11;
  v13 = type metadata accessor for PlatformViewChild();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v14 + 16))(v16, v34, v13, v19);
  PlatformViewChild.representedViewProvider.getter(v13, v12);
  (*(v14 + 8))(v16, v13);
  if ((*(v17 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v10 + 8))(v12, v30);
  }

  v23 = (*(v17 + 32))(v21, v12, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v23);
  *(&v29 - 6) = a6;
  *(&v29 - 5) = a7;
  v24 = v32;
  v25 = v33;
  *(&v29 - 4) = v32;
  *(&v29 - 3) = v25;
  *(&v29 - 2) = v21;
  if (v31)
  {
    v26 = one-time initialization token for _lock;
    swift_unknownObjectRetain();
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    ObjectType = swift_getObjectType();
    ViewRendererHost.performExternalUpdate(_:)(partial apply for closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue(), (&v29 - 8), ObjectType, v29);
    static Update.end()();
    _MovableLockUnlock(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(v24, v25, v21, a6, a7);
  }

  return (*(v17 + 8))(v21, AssociatedTypeWitness);
}

uint64_t ViewLeafView.init(content:platformView:coordinator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for ViewLeafView();
  *(a5 + *(v8 + 36)) = a2;
  v9 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 32);

  return v11(a5 + v9, a3, AssociatedTypeWitness);
}

uint64_t ColorBox.resolve(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 184) + 32))(&v4, *(v2 + 176));
}

_OWORD *assignWithTake for AnyTransition.InsertionVisitor(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t EnvironmentValues.isEnabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v1);

    return v2 & 1;
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v1);
    if (v4)
    {
      return *(v4 + 72);
    }

    else
    {
      return 1;
    }
  }
}

uint64_t EnvironmentValues.effectiveTintColor.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v1);

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(v1);
    if (!v4)
    {
LABEL_9:
      v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(v1);
      if (!v8)
      {
        return 0;
      }

      v5 = v8[9];

      return v5;
    }

    v3 = v4[9];

    if (!v3)
    {
LABEL_7:
      if (v2)
      {

        v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v1);

        return v6;
      }

      goto LABEL_9;
    }
  }

  v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v3);

  if (!v5)
  {
    goto LABEL_7;
  }

  return v5;
}

Swift::Int Color.Resolved.hashValue.getter(float a1, float a2, float a3, float a4)
{
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(a1, a2, a3, a4);
  return Hasher._finalize()();
}

uint64_t closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a3;
  v41 = a5;
  v42 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UncheckedSendable();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v38 = &v36 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UncheckedSendable();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v40 = &v36 - v19;
  closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a1, v51);
  v21 = v51[0];
  v36 = v51[1];
  v49 = v51[3];
  v50 = v51[2];
  v37 = v52;
  v22 = *(v14 + 16);
  v39 = a4;
  v22(v17, v43, a4);
  UncheckedSendable.init(_:)(v17, a4, v20);
  (*(v8 + 16))(v10, v44, AssociatedTypeWitness);
  UncheckedSendable.init(_:)(v10, AssociatedTypeWitness, v13);
  swift_beginAccess();
  v23 = static RepresentableContextValues.current;
  v24 = qword_1ED527ED0;
  v43 = qword_1ED527ED8;
  v44 = *(&static RepresentableContextValues.current + 1);
  v25 = byte_1ED527EE0;
  outlined copy of RepresentableContextValues?(static RepresentableContextValues.current, *(&static RepresentableContextValues.current + 1), qword_1ED527ED0, qword_1ED527ED8, byte_1ED527EE0);
  *&static RepresentableContextValues.current = v21;
  *(&static RepresentableContextValues.current + 1) = v36;
  v26 = v49;
  v27 = v50;
  qword_1ED527ED0 = v50;
  qword_1ED527ED8 = v49;
  LOBYTE(v20) = v37;
  byte_1ED527EE0 = v37;
  v28 = v43;
  outlined consume of RepresentableContextValues?(v23, *(&v23 + 1), v24, v43, v25);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v27, v26, v20);
  v29 = v38;
  v30 = v40;
  (*(v41 + 72))(v38, v42, v39);
  v31 = static RepresentableContextValues.current;
  v32 = qword_1ED527ED0;
  v33 = qword_1ED527ED8;
  *&static RepresentableContextValues.current = v23;
  *(&static RepresentableContextValues.current + 1) = v44;
  qword_1ED527ED0 = v24;
  qword_1ED527ED8 = v28;
  v34 = byte_1ED527EE0;
  byte_1ED527EE0 = v25;
  outlined consume of RepresentableContextValues?(v31, *(&v31 + 1), v32, v33, v34);

  outlined consume of RepresentableContextValues.EnvironmentStorage(v50, v49, v20);
  (*(v47 + 8))(v29, v48);
  return (*(v45 + 8))(v30, v46);
}

uint64_t PlatformViewChild.representedViewProvider.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 80)))
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 32);
    v6 = swift_checkMetadataState();
    v5(v6, AssociatedConformanceWitness);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = 0;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = 1;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 56);

  return v9(a2, v8, 1);
}

uint64_t PlatformViewLayoutEngine.init(cache:view:environment:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v9;
  *(a5 + 160) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v10;
  v11 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v11;
  v12 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v12;
  v13 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v13;
  v14 = type metadata accessor for PlatformViewLayoutEngine();
  v15 = v14[9];
  v16 = type metadata accessor for ViewLeafView();
  result = (*(*(v16 - 8) + 32))(a5 + v15, a2, v16);
  *(a5 + v14[10]) = a3;
  *(a5 + v14[11]) = a4;
  return result;
}

void specialized PlatformColorProvider.resolve(in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  v6 = static UIKitPlatformColorProvider.safeDefinition;
  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v7 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v7(v10);
    if (CoreColorDependsOnEnvironment(a3, v10[0]))
    {
      v8 = MEMORY[0x193AC38C0]();
      v10[0] = a1;
      v10[1] = a2;
      v6[12](a3, v10);
      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v7(v10);
      v9 = CGColorForCoreColor(LOBYTE(v10[0]), a3);
      if (v9)
      {
        specialized Color.Resolved.init(failableCGColor:)(v9);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

{
  v6 = swift_beginAccess();
  v7 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v6 = swift_beginAccess();
    v7 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      type metadata accessor for PlatformColorDefinition();
      v6 = swift_dynamicCastMetatypeUnconditional();
      v7 = v6;
      static PlatformColorDefinition.appKit = v6;
    }
  }

  v7[10](v13, v6);
  if (CoreColorDependsOnEnvironment(a3, v13[0]))
  {
    v8 = MEMORY[0x193AC38C0]();
    v9 = static PlatformColorDefinition.appKitInternal;
    if (static PlatformColorDefinition.appKitInternal)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    v9 = static PlatformColorDefinition.appKit;
    if (static PlatformColorDefinition.appKit)
    {
      goto LABEL_14;
    }

    if (CoreColorGetKitColorClass(1))
    {
      swift_getObjCClassMetadata();
      type metadata accessor for NSObject();
      if (swift_dynamicCastMetatype())
      {
        if ([swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
        {
          type metadata accessor for PlatformColorDefinition();
          v9 = swift_dynamicCastMetatypeUnconditional();
          static PlatformColorDefinition.appKit = v9;
LABEL_14:
          v12[0] = a1;
          v12[1] = a2;
          (*(v9 + 12))(a3, v12);
          objc_autoreleasePoolPop(v8);
          return;
        }
      }
    }

    goto LABEL_25;
  }

  v10 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    swift_beginAccess();
    v10 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1))
      {
        goto LABEL_26;
      }

      swift_getObjCClassMetadata();
      type metadata accessor for NSObject();
      if (!swift_dynamicCastMetatype() || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        goto LABEL_26;
      }

      type metadata accessor for PlatformColorDefinition();
      v10 = swift_dynamicCastMetatypeUnconditional();
      static PlatformColorDefinition.appKit = v10;
    }
  }

  (*(v10 + 10))(v12);
  v11 = CGColorForCoreColor(LOBYTE(v12[0]), a3);
  if (v11)
  {
    specialized Color.Resolved.init(failableCGColor:)(v11);
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance HostPreferencesKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  PreferenceValues.combine(with:)(&v3);
}

uint64_t PlatformViewDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v73 = *(a1 + 16);
  v74 = v3;
  v4 = type metadata accessor for ViewLeafView();
  v5 = type metadata accessor for UncheckedSendable();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v63[-v6];
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63[-v12];
  v14 = ++static DisplayList.Version.lastValue;
  Value = AGGraphGetValue();
  v17 = v16;
  v70 = v7;
  v19 = *(v7 + 16);
  v18 = v7 + 16;
  v20 = v13;
  v75 = v19;
  v19(v13, Value, v4);
  if (v17)
  {
    v21 = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
    if (!v14)
    {
      LOWORD(v21) = 0;
    }

    *(v2 + 16) = v21;
  }

  v69 = v14;
  type metadata accessor for CGPoint(0);
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = v22[1];
  v25 = AGGraphGetValue();
  v26 = v23 - *v25;
  v27 = v24 - v25[1];
  v28 = v2[7];
  v29 = AGGraphGetValue();
  v31 = *v29;
  v30 = v29[1];
  v68 = v18;
  v75(v10, v20, v4);
  v32 = v76;
  UncheckedSendable.init(_:)(v10, v4, v76);
  closure #1 in PlatformViewDisplayList.updateValue()(v32, v73, v74);
  if ((v91[0] & 4) != 0)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v35 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v65 = v30;
    v66 = v26;
    v67 = v27;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    if (v28 != v35)
    {
      v64 = v2[2];
      v40 = v2[4];
      v41 = *(v2 + 5);
      v42 = CurrentAttribute;
      InputValue = AGGraphGetInputValue();
      v44 = *(InputValue + 16);
      v87 = *InputValue;
      *&v88 = v44;
      *v91 = v42;
      *&v91[4] = v42;
      *&v91[12] = vrev64_s32(v41);
      *&v91[8] = v40;
      *&v91[20] = v64;
      *&v91[24] = v28;
      v36 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(-1, 0, v91);
      v37 = v45;
      v38 = v46;
      v39 = v47;
    }

    v48 = *(v2 + 1);
    *v91 = *v2;
    *&v91[16] = v48;
    LOWORD(v92) = *(v2 + 16);
    PlatformViewDisplayList.environment.getter(&v87);
    v49 = v87;
    if (*(&v87 + 1))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v49, &v83);

      v50 = v83;
    }

    else
    {
      v51 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v87);
      if (v51)
      {
        v50 = *(v51 + 72);
      }

      else
      {
        v50 = 0;
      }
    }

    if (v50)
    {
      v52 = v37;
    }

    else
    {
      v52 = v39;
    }

    if (v50)
    {
      v53 = v39;
    }

    else
    {
      v53 = v37;
    }

    v27 = v67 - v36;
    v54 = v37 + v39;
    v26 = v66 - v53;
    v31 = v31 + v54;
    v30 = v65 + v36 + v38;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = v20;
    v56 = *(AssociatedConformanceWitness + 96);
    v57 = swift_checkMetadataState();
    v56(v57, AssociatedConformanceWitness, v36, v53, v38, v52);
  }

  else
  {
    v33 = v20;
  }

  v58 = swift_allocObject();
  *(v58 + 40) = v4;
  *(v58 + 48) = &protocol witness table for ViewLeafView<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v58 + 16));
  v75(boxed_opaque_existential_1, v33, v4);
  v60 = *(v2 + 16);
  v61 = *v2;
  *&v83 = v26;
  *(&v83 + 1) = v27;
  *&v84 = v31;
  *(&v84 + 1) = v30;
  *&v86[1] = 0;
  *(&v85 + 1) = v58 | 0x8000000000000000;
  v86[0] = v60;
  DWORD2(v86[1]) = v61;
  *&v85 = v69;
  v91[0] = 0;
  DisplayList.Item.canonicalize(options:)(v91);
  v89 = v85;
  v90[0] = v86[0];
  *(v90 + 12) = *(v86 + 12);
  v87 = v83;
  v88 = v84;
  v92 = v85;
  v93[0] = v86[0];
  *(v93 + 12) = *(v86 + 12);
  *v91 = v83;
  *&v91[16] = v84;
  outlined init with copy of DisplayList.Item(&v87, &v80);
  DisplayList.init(_:)(v91, &v80);
  v77 = v80;
  v78 = v81;
  v79 = v82;
  AGGraphSetOutputValue();
  v92 = v85;
  v93[0] = v86[0];
  *(v93 + 12) = *(v86 + 12);
  *v91 = v83;
  *&v91[16] = v84;
  outlined destroy of DisplayList.Item(v91);

  (*(v70 + 8))(v33, v4);
  return (*(v71 + 8))(v76, v72);
}

uint64_t sub_18D161988()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t closure #1 in PlatformViewDisplayList.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  type metadata accessor for ViewLeafView();
  ViewLeafView.representedViewProvider.getter();
  (*(a3 + 144))(v8, a2, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewLeafView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10 | *(v6 + 80) & 0xF8;
  if (v11 <= 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((-9 - (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10)) | v10) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v16 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = a2 + v7 + 7;
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);
    v19 = *(v9 + 16);
    swift_unknownObjectRetain();
    v19(v16 + 1, v18, v15);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + (((v11 | 7) + 16) & ~(v11 | 7)));
  }

  return a1;
}

uint64_t ViewLeafView.updatePlatformView(_:)(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *(v2 + *(a2 + 36));

  return swift_unknownObjectRetain();
}

uint64_t CoreViewSetOpacity(uint64_t result, void *a2, double a3)
{
  if (result)
  {
    if (result == 1)
    {
      return [a2 setAlpha:?];
    }
  }

  else
  {
    *&a3 = a3;
    return [a2 setOpacity:a3];
  }

  return result;
}

void DisplayList.ViewUpdater.Platform.setFilters(_:of:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = _CAFilterArrayCreate();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    for (i = (a1 + (v7 << 7) - 96); ; i -= 8)
    {
      v10 = i[5];
      v11 = i[3];
      v29 = i[4];
      v30 = v10;
      v12 = i[5];
      v31[0] = i[6];
      *(v31 + 12) = *(i + 108);
      v13 = i[1];
      v26[0] = *i;
      v26[1] = v13;
      v14 = i[3];
      v16 = *i;
      v15 = i[1];
      v27 = i[2];
      v28 = v14;
      v23 = v29;
      v24 = v12;
      v25[0] = i[6];
      *(v25 + 12) = *(i + 108);
      v19 = v16;
      v20 = v15;
      v21 = v27;
      v22 = v11;
      outlined init with copy of GraphicsFilter(v26, &v18);
      v17 = GraphicsFilter.makeCAFilter()();
      v32[4] = v23;
      v32[5] = v24;
      v33[0] = v25[0];
      *(v33 + 12) = *(v25 + 12);
      v32[0] = v19;
      v32[1] = v20;
      v32[2] = v21;
      v32[3] = v22;
      outlined destroy of GraphicsFilter(v32);
      if (v17)
      {
        _CAFilterArrayAppend(v6, v17);
      }

      if (!v8)
      {
        break;
      }

      --v8;
    }
  }

  CoreViewSetFilters(v5 & 3, a2, v6);
}

uint64_t static GlassEffectModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v79 = a1[2];
  v80 = v7;
  v81 = a1[4];
  v82 = *(a1 + 20);
  v8 = a1[1];
  v77 = *a1;
  v78 = v8;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10 = AGGraphCreateOffsetAttribute2();

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v80))
  {
    *&v71 = __PAIR64__(v10, OffsetAttribute2);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v61 = v79;
    v62 = v80;
    v63 = v81;
    v64 = v82;
    v59 = v77;
    v60 = v78;
    v13 = v79;
    LODWORD(v61) = 0;
    LODWORD(v41) = v11;
    v65 = v77;
    v66 = v78;
    v70 = v82;
    v68 = v80;
    v69 = v81;
    v67 = v61;
    v55 = v61;
    v56 = v80;
    v57 = v81;
    v58 = v82;
    v53 = v77;
    v54 = v78;
    outlined init with copy of _ViewInputs(&v77, &v71);
    outlined init with copy of _ViewInputs(&v65, &v71);
    static GlassEffectContainerModifier._makeView(modifier:inputs:body:)(&v53, a2, &v47);
    v73 = v55;
    v74 = v56;
    v75 = v57;
    v76 = v58;
    v71 = v53;
    v72 = v54;
    outlined destroy of _ViewInputs(&v71);
    LODWORD(v61) = v13;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v47, &v59);
      AGSubgraphEndTreeElement();
    }

    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    result = outlined destroy of _ViewInputs(&v53);
    v16 = *(&v47 + 1);
    v15 = v47;
LABEL_21:
    *a4 = v15;
    a4[1] = v16;
    return result;
  }

  v29 = a4;
  *&v71 = __PAIR64__(v10, OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  v18 = AGSubgraphShouldRecordTree();
  if (v18)
  {
    AGSubgraphBeginTreeElement();
  }

  v61 = v79;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v59 = v77;
  v60 = v78;
  v27 = v79;
  LODWORD(v61) = 0;
  v65 = v77;
  v66 = v78;
  v70 = v82;
  v68 = v80;
  v69 = v81;
  v67 = v61;
  outlined init with copy of _ViewInputs(&v77, &v71);
  outlined init with copy of _ViewInputs(&v65, &v71);
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassEffectLocalModifier, &v71);
  v19 = v71;
  v20 = v72;
  v21 = DWORD1(v72);
  v55 = v67;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v53 = v65;
  v54 = v66;
  if (AGTypeGetKind() - 2 <= 3)
  {
    outlined init with copy of _ViewInputs(&v65, &v71);
    LOBYTE(v71) = v20;
    v28 = v17;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v53, v19, *(&v19 + 1), v20 | (v21 << 32), v17, &v71);
    v22 = v71;
    v25 = v72;
    v26 = *(&v71 + 1);
    v23 = BYTE8(v72);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(a2, a3, 0);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    if (v18)
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      outlined init with copy of _ViewInputs(&v47, &v71);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v47, &v71);
    }

    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v24 = v49;
    LODWORD(v43) = 0;
    v76 = v52;
    v74 = v50;
    v75 = v51;
    v71 = v47;
    v72 = v48;
    v73 = v43;
    outlined init with copy of _ViewInputs(&v47, v39);
    outlined init with copy of _ViewInputs(&v71, v39);
    _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_O0VyAA0kl5LocalP008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0klmP0AULLVGG_Tt2B5(v22, &v71, v30);
    outlined destroy of _ViewInputs(&v71);
    LODWORD(v43) = v24;
    if (v18)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v30, &v41);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v47);
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v40 = v46;
    v39[0] = v41;
    v39[1] = v42;
    outlined destroy of _ViewInputs(v39);
    v15 = v30[0];
    v16 = v30[1];
    if (v23)
    {
      v35 = v55;
      v36 = v56;
      v37 = v57;
      v38 = v58;
      v33 = v53;
      v34 = v54;
      outlined destroy of _ViewInputs(&v33);
      outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v33) = v20;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v28, v19, *(&v19 + 1), v20, v26, v25, &type metadata for GlassEffectLocalModifier, type metadata accessor for GlassEffectLocalModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v35 = v55;
      v36 = v56;
      v37 = v57;
      v38 = v58;
      v33 = v53;
      v34 = v54;
      outlined destroy of _ViewInputs(&v33);
    }

    outlined destroy of _ViewInputs(&v65);
    a4 = v29;
    v31 = v15;
    v32 = v16;
    LODWORD(v61) = v27;
    if (v18)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v31, &v59);
      AGSubgraphEndTreeElement();
      v15 = v31;
      v16 = v32;
    }

    v35 = v61;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v33 = v59;
    v34 = v60;
    result = outlined destroy of _ViewInputs(&v33);
    goto LABEL_21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v85 = *(a1 + 32);
  v86 = v6;
  v87 = *(a1 + 64);
  v88 = *(a1 + 80);
  v7 = *(a1 + 16);
  v83 = *a1;
  v84 = v7;
  v8 = v6;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    v15 = *(a1 + 48);
    *&v79[32] = *(a1 + 32);
    v80 = v15;
    v81 = *(a1 + 64);
    v82 = *(a1 + 80);
    v16 = *(a1 + 16);
    *v79 = *a1;
    *&v79[16] = v16;
    return a2();
  }

  v53 = v8;
  v56 = a2;
  v52 = a3;
  AGGraphCreateOffsetAttribute2();
  specialized static GraphHost.currentHost.getter();
  swift_beginAccess();

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v58 = v83;
  v9 = v84;
  v51 = DWORD2(v84);
  swift_beginAccess();
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v10 = MEMORY[0x1E698D398];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, TintAdjustmentMode>, &type metadata for EnvironmentValues, &type metadata for TintAdjustmentMode, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], v10);
  lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemGlass and conformance GlassEffectItemGlass();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  memset(&v79[8], 0, 40);
  v49 = AGGraphCreateOffsetAttribute2();
  *v79 = __PAIR64__(DWORD2(v87), v49);
  v80 = 0u;
  v81 = 0u;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemRadii and conformance GlassEffectItemRadii();
  v48 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of GlassEffectItemRadii(v79);
  v60 = v9;
  v12 = *(v9 + 16);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v58, *v79);
  if (v13)
  {
    v14 = *(v13 + 72);
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for PropertyList.Tracker();
  v18 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = MEMORY[0x1E69E7CC8];
  *(v19 + 24) = 0;
  *(v19 + 32) = v20;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 40) = v20;
  *(v19 + 48) = v21;
  *(v19 + 56) = 0;
  *(v18 + 16) = v19;
  v50 = v11;
  *v79 = v11;
  *&v79[4] = v12;
  v79[8] = v14;
  *&v79[16] = v18;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial();
  v22 = Attribute.init<A>(body:value:flags:update:)();

  *&v79[32] = v85;
  v80 = v86;
  v81 = v87;
  v82 = v88;
  *v79 = v83;
  *&v79[16] = v84;
  v23 = v86;
  *&v71[0] = v86;
  v24 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v83, &v73);

  v25 = *(v23 + 16);
  if (v24 != v25)
  {
    if (v24 >= v25)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*(v23 + 16 * v24 + 32) == &type metadata for GlassContainer.Item.Key)
    {
      specialized Array.remove(at:)(v24);
      v23 = v80;
    }
  }

  *&v73 = v23;
  v26 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v27 = *(v23 + 16);
  if (v26 == v27)
  {
    goto LABEL_14;
  }

  if (v26 >= v27)
  {
LABEL_27:
    __break(1u);
  }

  if (*(v23 + 16 * v26 + 32) == &type metadata for GlassContainer.DataStorage.Key)
  {
    specialized Array.remove(at:)(v26);
  }

LABEL_14:
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v73 = v83;
  v74 = v84;
  swift_beginAccess();
  v28 = CachedEnvironment.animatedPosition(for:)(&v73);
  swift_endAccess();
  *&v73 = __PAIR64__(HIDWORD(v86), v28);
  v47 = HIDWORD(v86);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  HIDWORD(v80) = Attribute.init<A>(body:value:flags:update:)();
  v29 = *&v79[32];
  *&v79[32] |= 4u;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v30 = *(swift_dynamicCastClassUnconditional() + 248);

  *&v79[32] = v29 | 0xC;
  LODWORD(v81) = v30;
  DWORD1(v81) = v30;
  *&v73 = __PAIR64__(*(v60 + 16), v22);
  DWORD2(v73) = OffsetAttribute2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectEnvironment and conformance GlassEffectEnvironment();
  v31 = Attribute.init<A>(body:value:flags:update:)();
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v21);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v21;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0u;
  *(v33 + 64) = 0u;
  *(v33 + 80) = 256;
  *(v33 + 88) = v32;

  *&v79[16] = v33;
  if ((v29 & 0x20) == 0)
  {
    *&v79[32] = v29 | 0x2C;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v58, &v73);
  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<GlassContainerCache>(&v73);
  if (Strong)
  {
    if (one-time initialization token for glassEffectBackdropObserver != -1)
    {
      swift_once();
    }

    v35 = static CachedEnvironment.ID.glassEffectBackdropObserver;
    swift_beginAccess();
    v36 = specialized CachedEnvironment.attribute<A>(id:_:)(v35);
    swift_endAccess();
    type metadata accessor for GlassMaterialContext();
    v37 = swift_allocObject();
    *(v37 + 32) = xmmword_18DD85550;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    *(v37 + 16) = *(Strong + 120);
    v75 = v85;
    v76 = v86;
    v77 = v87;
    v78 = v88;
    v73 = v83;
    v74 = v84;

    _ViewInputs.materialSubstrate.getter(v71);
    *(v37 + 24) = v71[0];
    v38 = *(Strong + 120);
    LODWORD(v73) = v36;
    *(&v73 + 1) = v37;
    v74 = v38;
    LODWORD(v75) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

    Attribute.init<A>(body:value:flags:update:)();

    _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)();
  }

  v71[2] = *&v79[32];
  v71[3] = v80;
  v71[4] = v81;
  v72 = v82;
  v71[0] = *v79;
  v71[1] = *&v79[16];
  v67 = *&v79[32];
  v68 = v80;
  v69 = v81;
  v70 = v82;
  v65 = *v79;
  v66 = *&v79[16];
  v39 = outlined init with copy of _ViewInputs(v71, &v73);
  (v56)(&v63, v39, &v65);
  v75 = v67;
  v76 = v68;
  v77 = v69;
  v78 = v70;
  v73 = v65;
  v74 = v66;
  outlined destroy of _ViewInputs(&v73);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v53) & 1) == 0)
  {
    goto LABEL_25;
  }

  v59 = HIDWORD(v64);
  v57 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v63);
  DWORD2(v65) = 0;
  *&v65 = v51;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemID and conformance GlassEffectItemID();
  v55 = Attribute.init<A>(body:value:flags:update:)();
  *&v65 = __PAIR64__(OffsetAttribute2, v55);
  *(&v65 + 1) = __PAIR64__(v48, v50);
  LODWORD(v66) = v49;
  *(&v66 + 4) = v22;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type GlassEffectItemInit and conformance GlassEffectItemInit();
  v62 = Attribute.init<A>(body:value:flags:update:)();
  v40 = v87;
  *&v65 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v40);
  DWORD2(v65) = v47;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
  lazy protocol witness table accessor for type GlassEffectAnchor and conformance GlassEffectAnchor();
  v54 = Attribute.init<A>(body:value:flags:update:)();
  v67 = v85;
  v68 = v86;
  v69 = v87;
  v70 = v88;
  v65 = v83;
  v66 = v84;
  swift_beginAccess();
  v41 = CachedEnvironment.animatedPosition(for:)(&v65);
  v67 = v85;
  v68 = v86;
  v69 = v87;
  v70 = v88;
  v65 = v83;
  v66 = v84;
  v42 = CachedEnvironment.animatedCGSize(for:)(&v65);
  swift_endAccess();
  *&v65 = __PAIR64__(v42, v41);
  DWORD2(v65) = v47;
  v43 = Attribute.init<A>(body:value:flags:update:)();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v44 = result;
    v45 = *MEMORY[0x1E698D3F8];
    if ((v57 & 0x100000000) == 0)
    {
      v45 = v57;
    }

    *&v65 = __PAIR64__(v54, v55);
    *(&v65 + 1) = __PAIR64__(v45, v43);
    LODWORD(v66) = v59;
    *(&v66 + 1) = result;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEffectDataInit and conformance GlassEffectDataInit();
    v46 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v65) = 0;
    PreferencesOutputs.subscript.setter(v62, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    LOBYTE(v65) = 0;
    PreferencesOutputs.subscript.setter(v46, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
    LOBYTE(v65) = 1;
    PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_25:
    v67 = *&v79[32];
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v65 = *v79;
    v66 = *&v79[16];
    result = outlined destroy of _ViewInputs(&v65);
    *v52 = v63;
    v52[1] = v64;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18D163320@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.effectiveTintAdjustmentMode.getter(&v4);
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform()
{
  result = lazy protocol witness table cache variable for type ResetPositionTransform and conformance ResetPositionTransform;
  if (!lazy protocol witness table cache variable for type ResetPositionTransform and conformance ResetPositionTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetPositionTransform and conformance ResetPositionTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectEnvironment and conformance GlassEffectEnvironment()
{
  result = lazy protocol witness table cache variable for type GlassEffectEnvironment and conformance GlassEffectEnvironment;
  if (!lazy protocol witness table cache variable for type GlassEffectEnvironment and conformance GlassEffectEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectEnvironment and conformance GlassEffectEnvironment);
  }

  return result;
}

uint64_t mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v5 = type metadata accessor for DynamicLayoutComputer();
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

unint64_t static GlassEffectGroupModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v17 = a1[2];
  v6 = *(a1 + 6);
  v19[0] = *(a1 + 56);
  *(v19 + 12) = *(a1 + 68);
  AGGraphCreateOffsetAttribute2();
  v18 = v6;
  a2();
  v13 = 0;
  v14 = 1;
  *&v15 = v6;
  result = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v8 = *(v6 + 16);
  if (result != v8)
  {
    if (result >= v8)
    {
      __break(1u);
    }

    if (*(v6 + 16 * result + 32) == &type metadata for GlassContainer.Item.Key)
    {
      v9 = specialized getter of itemTransform #1 in static GlassEffectGroupModifier._makeView(modifier:inputs:body:)(&v13);
      v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(*a3);
      v11 = *MEMORY[0x1E698D3F8];
      if ((v10 & 0x100000000) == 0)
      {
        v11 = v10;
      }

      *&v15 = __PAIR64__(v11, v9);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [GlassContainer.Item]();
      type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>();
      lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
      v12 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v15) = 0;
      return PreferencesOutputs.subscript.setter(v12, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    }
  }

  return result;
}

double static GlassEffectIDModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v18 = *a1;
  v19 = v4;
  v20 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v23 = *(a1 + 60);
  v24 = *(a1 + 76);
  v21 = v5;
  v22 = v6;
  a2(&v16);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v5))
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v8 = AGGraphCreateOffsetAttribute2();
    LODWORD(v18) = OffsetAttribute2;
    *(&v18 + 4) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ItemIDTransform and conformance ItemIDTransform();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    *&v18 = v5;
    v10 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
    v11 = *(v5 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      if (*(v5 + 16 * v10 + 32) == &type metadata for GlassContainer.Item.Key)
      {
        v12 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v16);
        v13 = *MEMORY[0x1E698D3F8];
        if ((v12 & 0x100000000) == 0)
        {
          v13 = v12;
        }

        *&v18 = __PAIR64__(v13, v9);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [String](0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
        type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>();
        lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
        v14 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v18) = 0;
        PreferencesOutputs.subscript.setter(v14, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
      }
    }
  }

  *a3 = v16;
  result = v17;
  a3[1] = v17;
  return result;
}

void type metadata accessor for AnchorValueBox<UnitRect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ItemIDTransform and conformance ItemIDTransform()
{
  result = lazy protocol witness table cache variable for type ItemIDTransform and conformance ItemIDTransform;
  if (!lazy protocol witness table cache variable for type ItemIDTransform and conformance ItemIDTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ItemIDTransform and conformance ItemIDTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform()
{
  result = lazy protocol witness table cache variable for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform;
  if (!lazy protocol witness table cache variable for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for DynamicStackOrientation);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static DynamicStackOrientation.defaultValue;
  }

  return *v3;
}

unint64_t static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v16 = a1[2];
  v5 = *(a1 + 6);
  v18[0] = *(a1 + 56);
  *(v18 + 12) = *(a1 + 68);
  v17 = v5;
  a2(a3);
  v12 = 0;
  v13 = 1;
  *&v14 = v5;
  result = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v7 = *(v5 + 16);
  if (result != v7)
  {
    if (result >= v7)
    {
      __break(1u);
    }

    if (*(v5 + 16 * result + 32) == &type metadata for GlassContainer.Item.Key)
    {
      v8 = specialized getter of transform #1 in static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)(&v12);
      v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(*a3);
      v10 = *MEMORY[0x1E698D3F8];
      if ((v9 & 0x100000000) == 0)
      {
        v10 = v9;
      }

      *&v14 = __PAIR64__(v10, v8);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [GlassContainer.Item]();
      type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>();
      lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
      v11 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v14) = 0;
      return PreferencesOutputs.subscript.setter(v11, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform()
{
  result = lazy protocol witness table cache variable for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform;
  if (!lazy protocol witness table cache variable for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform);
  }

  return result;
}

void storeEnumTagSinglePayload for StatefulMaterialProviderBox.Cache(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v11 = 0;
    v12 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v6 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = a3 - v7 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(a1 + v8) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v8) = 0;
      }

      else if (v11)
      {
        *(a1 + v8) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v15 = *(v6 + 56);

      v15(a1, a2);
      return;
    }
  }

  if (((*(v6 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v6 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(a1 + v8) = v13;
    }

    else
    {
      *(a1 + v8) = v13;
    }
  }

  else if (v11)
  {
    *(a1 + v8) = v13;
  }
}

uint64_t type metadata completion function for StatefulMaterialProviderBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StatefulMaterialProviderBox.Cache();
    type metadata accessor for Optional();
    result = type metadata accessor for Mutex();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for StatefulMaterialProviderBox.Cache()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Material.init<A>(statefulProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return Material.init<A>(provider:)(a1, a2, type metadata accessor for AnimatableStatefulMaterialProviderBox, specialized AnimatableStatefulMaterialProviderBox.init(_:), a3);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StatefulMaterialProviderBox();
  (*(v6 + 16))(v8, a1, a2);
  swift_allocObject();
  v9 = StatefulMaterialProviderBox.init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  *(a3 + 8) = 1;
  *(a3 + 12) = 0;
  return result;
}

uint64_t *specialized AnimatableStatefulMaterialProviderBox.init(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return StatefulMaterialProviderBox.init(_:)(v3);
}

uint64_t *StatefulMaterialProviderBox.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = type metadata accessor for StatefulMaterialProviderBox.Cache();
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = (v1 + *(v3 + 224));
  (*(*(v5 - 8) + 56))(&v14 - v8, 1, 1, v5, v7);
  *v10 = 0;
  v11 = *(type metadata accessor for Mutex() + 28);
  v12 = type metadata accessor for _Cell();
  bzero(v10 + v11, *(*(v12 - 8) + 64));
  _sSpsRi_zrlE10initialize2toyxn_tF(v9, v10 + v11, v6);
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 216), a1, v4);
  return v1;
}

uint64_t Material.init<A>(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  a3(0);
  swift_allocObject();
  v9 = a4(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v9;
  *(a5 + 8) = 1;
  *(a5 + 12) = 0;
  return result;
}

uint64_t sub_18D164440()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for StatefulMaterialProviderBox.Cache();
  type metadata accessor for Optional();
  return type metadata accessor for Mutex();
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _BlurEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t specialized static RendererEffect._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(unsigned int *, _OWORD *), uint64_t (*a6)(void, uint64_t, uint64_t (*)(void), uint64_t))
{
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    return a3();
  }

  v15 = a1;
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v16[2] = *(a2 + 32);
  outlined init with copy of _GraphInputs(v16, v14);
  a5(&v15, v16);
  outlined destroy of _GraphInputs(v16);
  return a6(v15, a2, a3, a4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_BlurEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_CompositingGroupEffect>, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<HiddenForReuseEffect>, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlendModeEffect>, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerViewModifier>, &type metadata for _ForegroundLayerViewModifier, &protocol witness table for _ForegroundLayerViewModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<CAFilterEffect>, &type metadata for CAFilterEffect, &protocol witness table for CAFilterEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendModeEffect>, &type metadata for GraphicsBlendModeEffect, &protocol witness table for GraphicsBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerLevelViewModifier>, &type metadata for _ForegroundLayerLevelViewModifier, &protocol witness table for _ForegroundLayerLevelViewModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_PremultipliedColorMatrixEffect>, &type metadata for _PremultipliedColorMatrixEffect, &protocol witness table for _PremultipliedColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp2>, &type metadata for _BackdropGroupEffect_temp2, &protocol witness table for _BackdropGroupEffect_temp2, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<MayNotInsertCALayersEffect>, &type metadata for MayNotInsertCALayersEffect, &protocol witness table for MayNotInsertCALayersEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp>, &type metadata for _BackdropGroupEffect_temp, &protocol witness table for _BackdropGroupEffect_temp, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ExtendedBlendModeEffect>, &type metadata for _ExtendedBlendModeEffect, &protocol witness table for _ExtendedBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_LuminanceToAlphaEffect>, &type metadata for _LuminanceToAlphaEffect, &protocol witness table for _LuminanceToAlphaEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect2>, &type metadata for _BackdropGroupEffect2, &protocol witness table for _BackdropGroupEffect2, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect>, &type metadata for _BackdropGroupEffect, &protocol witness table for _BackdropGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<LuminanceCurveEffect>, &type metadata for LuminanceCurveEffect, &protocol witness table for LuminanceCurveEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMatrixEffect>, &type metadata for _ColorMatrixEffect, &protocol witness table for _ColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorInvertEffect>, &type metadata for _ColorInvertEffect, &protocol witness table for _ColorInvertEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendMode>, &type metadata for GraphicsBlendMode, &protocol witness table for GraphicsBlendMode, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsFilter>, &type metadata for GraphicsFilter, &protocol witness table for GraphicsFilter, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}