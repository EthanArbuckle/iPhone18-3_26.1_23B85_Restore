uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] <= v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) <= *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 <= *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 <= *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t specialized closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a2[5];
  v6 = a2[7];
  v7 = a2[11];
  v8 = v7(1);
  if (v4)
  {
    v5 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    v5(v8);
  }

LABEL_6:
  *a3 = 2;
  return v7(0);
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>)
  {
    type metadata accessor for SliderTick<Double>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityAdjustableAction>, lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction, type metadata accessor for AccessibilityActionStorage);
    lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(&lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityAdjustableAction>, lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction);
    v0 = type metadata accessor for AnyAccessibilityAction.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>);
    }
  }
}

uint64_t outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();
    v7 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v8 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v9 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v12[0] = &type metadata for ResolvedSliderStyle;
    v12[1] = MEMORY[0x1E6980340];
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = v9;
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a3 + 80);
  v12[4] = *(a3 + 64);
  v12[5] = v8;
  v13 = *(a3 + 96);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v10 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v10;
  return specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(v5, v4, v7, v6, a2, v12);
}

void type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for specialized closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 104);
  v4(1);
  v6 = v2;
  v3(&v6);
  return (v4)(0);
}

uint64_t partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  result = v4(&v6);
  *a2 = 2;
  return result;
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>)
  {
    type metadata accessor for SliderTick<Double>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilitySetValueAction>, lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction, &type metadata for AccessibilitySetValueAction, type metadata accessor for AccessibilityActionStorage);
    lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(&lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilitySetValueAction> and conformance AccessibilityActionStorage<A>, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilitySetValueAction>, lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction, &type metadata for AccessibilitySetValueAction);
    v0 = type metadata accessor for AnyAccessibilityAction.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>);
    }
  }
}

void type metadata accessor for SliderTick<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SliderTick<Double>(255, a2, a3, a4, type metadata accessor for AccessibilityActionStorage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for Normalizing()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = v3;
    v0 = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      if (v4 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t *initializeBufferWithCopyOfBuffer for Normalizing(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  v11 = (v7 + v9) & ~v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v7 + v14;
  v16 = *(v13 + 64);
  if (*(v13 + 84))
  {
    v17 = *(v13 + 64);
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 | v8) > 7 || ((*(v13 + 80) | v8) & 0x100000) != 0 || ((v17 + v14 + ((v17 + v14 + ((v15 + v11) & ~v14)) & ~v14)) & ~v14) + v16 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + (((v14 | v8) + 16) & ~(v14 | v8)));
  }

  else
  {
    v31 = AssociatedTypeWitness;
    v32 = v17 + v14;
    __n = v17;
    v30 = ~v14;
    v21 = *(v6 + 16);
    v21(a1, a2, v5);
    v22 = (a2 + v10) & ~v9;
    v21(((a1 + v10) & ~v9), v22, v5);
    v23 = ((((a1 + v10) & ~v9) + v15) & v30);
    v24 = ((v22 + v15) & v30);
    v25 = *(v13 + 48);
    if (v25(v24, 1, v31))
    {
      memcpy(v23, v24, __n);
    }

    else
    {
      (*(v13 + 16))(v23, v24, v31);
      (*(v13 + 56))(v23, 0, 1, v31);
    }

    v26 = ((v23 + v32) & v30);
    v27 = ((v24 + v32) & v30);
    if (v25(v27, 1, v31))
    {
      memcpy(v26, v27, __n);
      (*(v13 + 16))((v26 + v32) & v30, (v27 + v32) & v30, v31);
    }

    else
    {
      v28 = *(v13 + 16);
      v28(v26, v27, v31);
      (*(v13 + 56))(v26, 0, 1, v31);
      v28(((v26 + v32) & v30), ((v27 + v32) & v30), v31);
    }
  }

  return a1;
}

uint64_t destroy for Normalizing(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v6 = *(v4 + 64);
  v7 = (v6 + a1 + *(v4 + 80)) & ~*(v4 + 80);
  v5(v7, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ~v10;
  v12 = (v7 + v6 + v10) & ~v10;
  v20 = v9;
  v13 = *(v9 + 48);
  if (!v13(v12, 1, AssociatedTypeWitness))
  {
    (*(v20 + 8))(v12, AssociatedTypeWitness);
  }

  if (*(v20 + 84))
  {
    v14 = *(v20 + 64);
  }

  else
  {
    v14 = *(v20 + 64) + 1;
  }

  v15 = (v12 + v10 + v14) & v11;
  v16 = v13(v15, 1, AssociatedTypeWitness);
  v17 = *(v20 + 8);
  if (!v16)
  {
    v19 = *(v20 + 8);
    v17(v15, AssociatedTypeWitness);
    v17 = v19;
  }

  return (v17)((v14 + v10 + v15) & v11, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v27 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = ((v8 + v14 + v10) & ~v14);
  v17 = ((v8 + v14 + v11) & ~v14);
  v18 = *(v13 + 48);
  if (v18(v17, 1, AssociatedTypeWitness))
  {
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
    if (v19)
    {
      v21 = *(v13 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v16, v17, v21);
  }

  else
  {
    (*(v13 + 16))(v16, v17, AssociatedTypeWitness);
    (*(v13 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = ((v16 + v14 + v22) & v15);
  v24 = ((v17 + v14 + v22) & v15);
  if (v18(v24, 1, AssociatedTypeWitness))
  {
    memcpy(v23, v24, v22);
    (*(v13 + 16))((v23 + v22 + v14) & v15, (v24 + v22 + v14) & v15, AssociatedTypeWitness);
  }

  else
  {
    v25 = *(v13 + 16);
    v25(v23, v24, AssociatedTypeWitness);
    (*(v13 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v25(((v23 + v22 + v14) & v15), ((v24 + v22 + v14) & v15), AssociatedTypeWitness);
  }

  return v27;
}

uint64_t assignWithCopy for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v31 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v8 + v14;
  v16 = v8 + v14 + v10;
  v17 = ~v14;
  v18 = (v16 & ~v14);
  v19 = ((v15 + v11) & ~v14);
  v20 = *(v13 + 48);
  LODWORD(v10) = v20(v18, 1, AssociatedTypeWitness);
  v21 = v20(v19, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v21)
    {
      (*(v13 + 16))(v18, v19, AssociatedTypeWitness);
      (*(v13 + 56))(v18, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v13 + 24))(v18, v19, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
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
LABEL_12:
  if (*(v13 + 84))
  {
    v25 = *(v13 + 64);
  }

  else
  {
    v25 = *(v13 + 64) + 1;
  }

  v26 = ((v18 + v14 + v25) & v17);
  v27 = ((v19 + v14 + v25) & v17);
  v28 = v20(v26, 1, AssociatedTypeWitness);
  v29 = v20(v27, 1, AssociatedTypeWitness);
  if (!v28)
  {
    if (!v29)
    {
      (*(v13 + 24))(v26, v27, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v13 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v29)
  {
LABEL_20:
    memcpy(v26, v27, v25);
    goto LABEL_21;
  }

  (*(v13 + 16))(v26, v27, AssociatedTypeWitness);
  (*(v13 + 56))(v26, 0, 1, AssociatedTypeWitness);
LABEL_21:
  (*(v13 + 24))((v26 + v25 + v14) & v17, (v27 + v25 + v14) & v17, AssociatedTypeWitness);
  return v31;
}

uint64_t initializeWithTake for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v27 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = ((v8 + v14 + v10) & ~v14);
  v17 = ((v8 + v14 + v11) & ~v14);
  v18 = *(v13 + 48);
  if (v18(v17, 1, AssociatedTypeWitness))
  {
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
    if (v19)
    {
      v21 = *(v13 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v16, v17, v21);
  }

  else
  {
    (*(v13 + 32))(v16, v17, AssociatedTypeWitness);
    (*(v13 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = ((v16 + v14 + v22) & v15);
  v24 = ((v17 + v14 + v22) & v15);
  if (v18(v24, 1, AssociatedTypeWitness))
  {
    memcpy(v23, v24, v22);
    (*(v13 + 32))((v23 + v22 + v14) & v15, (v24 + v22 + v14) & v15, AssociatedTypeWitness);
  }

  else
  {
    v25 = *(v13 + 32);
    v25(v23, v24, AssociatedTypeWitness);
    (*(v13 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v25(((v23 + v22 + v14) & v15), ((v24 + v22 + v14) & v15), AssociatedTypeWitness);
  }

  return v27;
}

uint64_t assignWithTake for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v31 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v8 + v14;
  v16 = v8 + v14 + v10;
  v17 = ~v14;
  v18 = (v16 & ~v14);
  v19 = ((v15 + v11) & ~v14);
  v20 = *(v13 + 48);
  LODWORD(v10) = v20(v18, 1, AssociatedTypeWitness);
  v21 = v20(v19, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v21)
    {
      (*(v13 + 32))(v18, v19, AssociatedTypeWitness);
      (*(v13 + 56))(v18, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v13 + 40))(v18, v19, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
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
LABEL_12:
  if (*(v13 + 84))
  {
    v25 = *(v13 + 64);
  }

  else
  {
    v25 = *(v13 + 64) + 1;
  }

  v26 = ((v18 + v14 + v25) & v17);
  v27 = ((v19 + v14 + v25) & v17);
  v28 = v20(v26, 1, AssociatedTypeWitness);
  v29 = v20(v27, 1, AssociatedTypeWitness);
  if (!v28)
  {
    if (!v29)
    {
      (*(v13 + 40))(v26, v27, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v13 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v29)
  {
LABEL_20:
    memcpy(v26, v27, v25);
    goto LABEL_21;
  }

  (*(v13 + 32))(v26, v27, AssociatedTypeWitness);
  (*(v13 + 56))(v26, 0, 1, AssociatedTypeWitness);
LABEL_21:
  (*(v13 + 40))((v26 + v25 + v14) & v17, (v27 + v25 + v14) & v17, AssociatedTypeWitness);
  return v31;
}

uint64_t getEnumTagSinglePayload for Normalizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v6;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  if (v11 > v14)
  {
    v14 = *(v10 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 + v15;
  v20 = v18 + v16;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v21 = ((v20 + ((v20 + ((v12 + v16 + (v19 & ~v15)) & ~v16)) & ~v16)) & ~v16) + v17;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v24 < 2)
    {
LABEL_35:
      if (v14)
      {
LABEL_36:
        if (v7 == v14)
        {
          v28 = *(v9 + 48);

          return v28(a1, v7, v5);
        }

        else
        {
          v30 = (((a1 + v19) & ~v15) + v12 + v16) & ~v16;
          if (v13 == v14)
          {
            v31 = (*(v10 + 48))(v30);
            if (v31 >= 2)
            {
              return v31 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v32 = *(v10 + 48);
            v33 = (v20 + ((v20 + v30) & ~v16)) & ~v16;

            return v32(v33);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_22:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for Normalizing(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v8;
  v12 = 0;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  if (v14 > v17)
  {
    v17 = *(v13 + 84);
  }

  v18 = *(v11 + 80);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  if (v14)
  {
    v21 = *(v13 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = v21 + v19;
  v23 = ((v22 + ((v22 + ((v15 + v19 + ((v15 + v18) & ~v18)) & ~v19)) & ~v19)) & ~v19) + v20;
  if (a3 <= v17)
  {
    goto LABEL_22;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v17 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v12 = 4;
      if (v17 >= a2)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }

LABEL_22:
    if (v17 >= a2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v12 = 1;
  if (v17 >= a2)
  {
LABEL_32:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v23] = 0;
    }

    else if (v12)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

LABEL_39:
    if (v9 == v17)
    {
      v29 = *(v11 + 56);

      v29(a1, a2, v9, v7);
    }

    else
    {
      v30 = ((&a1[v15 + v18] & ~v18) + v15 + v19) & ~v19;
      v31 = *(v13 + 56);
      if (v16 == v17)
      {
        v32 = (a2 + 1);
      }

      else
      {
        v30 = (v22 + ((v22 + v30) & ~v19)) & ~v19;
        v32 = a2;
      }

      v31(v30, v32);
    }

    return;
  }

LABEL_23:
  v26 = ~v17 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v12 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_52:
    if (v12 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_52;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v12 > 1)
    {
LABEL_56:
      if (v12 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v12 > 1)
    {
      goto LABEL_56;
    }
  }

LABEL_53:
  if (v12)
  {
    a1[v23] = v27;
  }
}

double specialized Clamping.get(base:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  result = v6;
  if (v6 < 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t specialized Clamping.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v24 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v22 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18 = *(v8 + 8);
  v18(a1, a2, v15);
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v19 = v22;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  Comparable.clamp(min:max:)();
  (v18)(v19, a2);
  (v18)(v13, a2);
  return (v18)(v17, a2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance OpenScenePayload(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static OpenScenePayload.== infix(_:_:)(v7, v8);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OpenScenePayload.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x4449656E656373;
  if (v2 != 1)
  {
    v4 = 1635017060;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x63617073656D616ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x4449656E656373;
  if (*a2 != 1)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x63617073656D616ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OpenScenePayload.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OpenScenePayload.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OpenScenePayload.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OpenScenePayload.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OpenScenePayload.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OpenScenePayload.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE700000000000000;
  v5 = 0x4449656E656373;
  if (v2 != 1)
  {
    v5 = 1635017060;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63617073656D616ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance OpenScenePayload.CodingKeys()
{
  v1 = 0x4449656E656373;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance OpenScenePayload.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized OpenScenePayload.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OpenScenePayload.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<OpenScenePayload.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = *(v3 + 16);
  v17 = 0;
  lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = *(v3 + 4);
  if (*(v3 + 40))
  {
    *&v18 = _typeName(_:qualified:)();
    *(&v18 + 1) = v12;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v17 = v11;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v13);
  }

  else
  {
  }

  LOBYTE(v18) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  v14 = *(v3 + 7);
  if (v14 >> 60 == 15)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = *(v3 + 6);
  *&v18 = v15;
  *(&v18 + 1) = v14;
  v17 = 2;
  outlined copy of Data._Representation(v15, v14);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v7 + 8))(v9, v6);
  return outlined consume of Data?(v15, v14);
}

double protocol witness for Decodable.init(from:) in conformance OpenScenePayload@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized OpenScenePayload.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t OpenScenePayload.description.getter()
{
  v1 = v0;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v12 = 0x63617073656D616ELL;
  v13 = 0xEB00000000203A65;
  v2 = SceneList.Namespace.description.getter(*v1, *(v1 + 8), *(v1 + 16));
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0x49656E656373202CLL, 0xEB00000000203A44);
  v3 = *(v0 + 32);
  if (*(v0 + 40))
  {
    *&v14 = _typeName(_:qualified:)();
    *(&v14 + 1) = v4;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v11) = v3;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v5);

    v3 = *(&v14 + 1);
    v6 = v14;
  }

  else
  {
    v7 = *(v0 + 24);

    v6 = v7;
  }

  MEMORY[0x18D00C9B0](v6, v3);

  MEMORY[0x18D00C9B0](0x203A61746164202CLL, 0xE800000000000000);
  v14 = *(v1 + 48);
  v11 = *(v1 + 48);
  outlined init with copy of Data?(&v14, &v10);
  type metadata accessor for Data?();
  v8 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v8);

  return v12;
}

uint64_t _s7SwiftUI35OpenSceneConnectionOptionDefinitionO0D16BridgingDelegate_pSo7UISceneCIegg_Ieghno_AcD_pxq_Ri_zRi0_zRi__Ri0__r0_lyAFytIsegnr_Iegnr_TR03_s7a4UI35cdefg8O19scenei11MethodyySo7j7CcAC0d8H27I0_pYbcvpZfiyAFcAcG_pYbcfu_Tf3nnpf_n@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of _Benchmark(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of static OpenSceneConnectionOptionDefinition.sceneDelegateMethod;
  *(result + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIScene) -> ();
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static UISceneConnectionOptionDefinition.invokeSceneDelegate(_:scene:payload:) in conformance OpenSceneConnectionOptionDefinition(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  static UISceneConnectionOptionDefinition<>.invokeSceneDelegate(_:scene:payload:)();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x18CFFF420]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x18CFFF420]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x18CFFF420]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static OpenScenePayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v5 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v5 != 2 || (v4 | v3) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v2 != v3 || v4 != a1[1])
    {
      v8 = a1;
      v9 = a2;
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v9;
      v11 = v10;
      a1 = v8;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v14 = a1[3];
  v13 = a1[4];
  v16 = a2[3];
  v15 = a2[4];
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      if (v14 != v16 || v13 != v15)
      {
        v25 = a1;
        v26 = a2;
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2 = v26;
        v28 = v27;
        a1 = v25;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_36;
    }

    v18 = a1;
    v19 = a2;

    *&v36 = _typeName(_:qualified:)();
    *(&v36 + 1) = v20;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v35) = v15;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    v15 = *(&v36 + 1);
    if (v14 != v36)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if ((a2[5] & 1) == 0)
  {
    v18 = a1;
    v19 = a2;
    *&v36 = _typeName(_:qualified:)();
    *(&v36 + 1) = v22;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v35) = v13;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v23);

    v13 = *(&v36 + 1);

    if (v36 != v16)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v13 == v15)
    {

      a2 = v19;
      a1 = v18;
LABEL_36:
      v29 = *(a1 + 3);
      v35 = *(a2 + 3);
      v36 = v29;
      v30 = v29;
      v31 = v35;
      if (*(&v29 + 1) >> 60 == 15)
      {
        if (*(&v35 + 1) >> 60 == 15)
        {
          outlined init with copy of Data?(&v36, v34);
          outlined init with copy of Data?(&v35, v34);
          outlined consume of Data?(v30, *(&v30 + 1));
          return 1;
        }
      }

      else if (*(&v35 + 1) >> 60 != 15)
      {
        outlined init with copy of Data?(&v36, v34);
        outlined init with copy of Data?(&v35, v34);
        v33 = specialized static Data.== infix(_:_:)(v30, *(&v30 + 1), v31, *(&v31 + 1));
        outlined consume of Data?(v31, *(&v31 + 1));
        outlined consume of Data?(v30, *(&v30 + 1));
        return (v33 & 1) != 0;
      }

      outlined init with copy of Data?(&v36, v34);
      outlined init with copy of Data?(&v35, v34);
      outlined consume of Data?(v30, *(&v30 + 1));
      outlined consume of Data?(v31, *(&v31 + 1));
      return 0;
    }

LABEL_31:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v19;
    a1 = v18;
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_36;
  }

  v17 = 0;
  if (v14 == v16 && a1[4] == v15)
  {
    goto LABEL_36;
  }

  return v17;
}

uint64_t specialized OpenScenePayload.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<OpenScenePayload.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v25) = 0;
    lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v29;
    v24 = v30;
    v46 = v31;
    LOBYTE(v29) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v12;
    v22 = v11;
    v43 = 0;
    v39 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    v14 = v40;
    v13 = v41;
    outlined consume of Data?(0, 0xF000000000000000);
    v15 = v10;
    v16 = v24;
    *&v25 = v10;
    *(&v25 + 1) = v24;
    LOBYTE(v10) = v46;
    LOBYTE(v26) = v46;
    *(&v26 + 1) = v44[0];
    DWORD1(v26) = *(v44 + 3);
    v17 = v22;
    *(&v26 + 1) = v22;
    *&v27 = v23;
    v45 = v43;
    BYTE8(v27) = v43;
    *(&v27 + 9) = *v42;
    HIDWORD(v27) = *&v42[3];
    *&v28 = v14;
    *(&v28 + 1) = v13;
    outlined init with copy of OpenScenePayload(&v25, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = v15;
    v30 = v16;
    v31 = v10;
    *v32 = v44[0];
    *&v32[3] = *(v44 + 3);
    v33 = v17;
    v34 = v23;
    v35 = v45;
    *v36 = *v42;
    *&v36[3] = *&v42[3];
    v37 = v14;
    v38 = v13;
    result = outlined destroy of OpenScenePayload(&v29);
    v19 = v26;
    *a2 = v25;
    a2[1] = v19;
    v20 = v28;
    a2[2] = v27;
    a2[3] = v20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
    v7 = a3(a1, &unk_1EFFA9698, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Data?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Data?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

uint64_t destroy for OpenScenePayload(uint64_t a1)
{
  outlined consume of SceneList.Namespace(*a1, *(a1 + 8), *(a1 + 16));
  result = outlined consume of SceneID(*(a1 + 24), *(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 56);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 48);

    return outlined consume of Data._Representation(v4, v3);
  }

  return result;
}

uint64_t initializeWithCopy for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of SceneID(v7, v8, v9);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 56);
  if (v10 >> 60 == 15)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v11 = *(a2 + 48);
    outlined copy of Data._Representation(v11, v10);
    *(a1 + 48) = v11;
    *(a1 + 56) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of SceneList.Namespace(v7, v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  outlined copy of SceneID(v10, v11, v12);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  outlined consume of SceneID(v13, v14, v15);
  v16 = *(a2 + 56);
  if (*(a1 + 56) >> 60 != 15)
  {
    if (v16 >> 60 != 15)
    {
      v18 = *(a2 + 48);
      outlined copy of Data._Representation(v18, v16);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *(a1 + 48) = v18;
      *(a1 + 56) = v16;
      outlined consume of Data._Representation(v19, v20);
      return a1;
    }

    outlined destroy of Data(a1 + 48);
    goto LABEL_6;
  }

  if (v16 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v17 = *(a2 + 48);
  outlined copy of Data._Representation(v17, v16);
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  return a1;
}

uint64_t assignWithTake for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of SceneList.Namespace(v5, v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v8;
  outlined consume of SceneID(v9, v10, v11);
  v12 = *(a1 + 56);
  if (v12 >> 60 != 15)
  {
    v13 = *(a2 + 56);
    if (v13 >> 60 != 15)
    {
      v14 = *(a1 + 48);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v13;
      outlined consume of Data._Representation(v14, v12);
      return a1;
    }

    outlined destroy of Data(a1 + 48);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenScenePayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for OpenScenePayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpenScenePayload and conformance OpenScenePayload()
{
  result = lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload;
  if (!lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload;
  if (!lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload);
  }

  return result;
}

unint64_t specialized OpenScenePayload.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OpenScenePayload.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIScene) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of static OpenSceneConnectionOptionDefinition.sceneDelegateMethod(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t closure #1 in static GestureContainerDefinition.printGestureContainerAncestors(_:)()
{
  type metadata accessor for ViewResponderGestureContainer();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v0 = ViewResponderGestureContainer.description.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    v1 = AGTypeID.description.getter();
    MEMORY[0x18D00C9B0](v1);

    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  return v0;
}

uint64_t specialized static GestureContainerDefinition.printGestureContainerAncestors(_:)()
{
  v10 = specialized thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String);
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String?);
  v9 = &block_descriptor_16;
  v0 = _Block_copy(&v6);

  v1 = _UIGestureRecognizerContainerAncestralDescription();
  _Block_release(v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v6 = 0;
  v7 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v6 = 0xD000000000000013;
  v7 = 0x800000018CD43630;
  MEMORY[0x18D00C9B0](v2, v4);

  MEMORY[0x18D0097D0](v6, v7);
}

void PointerBridge.preferencesDidChange(_:)()
{
  v1 = v0;
  PreferenceValues.subscript.getter();
  v2 = OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed;
  if (v12 == -1 || v12 != *(v0 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed))
  {
    v3 = v0 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction;
      v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction);
      if (v8)
      {
        if ((v11 & 1) == 0)
        {
          v9 = v8;
          [v6 removeInteraction_];

          v10 = 0;
LABEL_10:
          v6 = *(v1 + v7);
          *(v1 + v7) = v10;
        }
      }

      else if (v11)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
        [v6 swiftui:v10 addManagedInteraction:?];

        goto LABEL_10;
      }

      *(v1 + v2) = v12;
    }
  }
}

uint64_t PointerBridge.hoverEffectResponder(for:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    [a1 location];
    [v7 convertPoint:0 toView:?];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 8);
      v9 = swift_getObjectType();
      v10 = (*(v8 + 24))(v9, v8);
      swift_unknownObjectRelease();
      if (v10)
      {
        type metadata accessor for ViewResponder();
        if (!swift_dynamicCastClass())
        {

          return 0;
        }

        v11 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

        if (v11)
        {
          type metadata accessor for HoverEffectResponder();
          ResponderNode.firstAncestor<A>(ofType:)();

          return 0;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL PointerIdentifier.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (v7)
  {
    type metadata accessor for PointerIdentifier();
    if (swift_dynamicCast())
    {
      v2 = *&v5[OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base];

      return v2 && *(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) == v2;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for Any?);
  }

  v2 = 0;
  return v2 && *(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) == v2;
}

uint64_t PointerIdentifier.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD43730);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0;
}

uint64_t PointerIdentifier.pointerStyle(host:)(UIView *a1)
{
  v3 = type metadata accessor for UIPointerEffect();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v97 - v8);
  type metadata accessor for UIPointerShape?();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v97 - v13);
  result = 0;
  if (*(*(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) + 296) == 3)
  {
    return result;
  }

  v107 = *(*(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) + 296);
  v108 = v12;
  v109 = v6;
  v110 = v4;
  v111 = v3;
  v16 = OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base;

  UIViewSnapshotResponder.contentPath.getter(&v129);
  y = *(&v129 + 1);
  v105 = v129;
  v102 = *(&v130 + 1);
  v103 = *&v130;
  v101 = v131;

  LODWORD(v123) = *(*(v1 + v16) + 300);
  v113 = a1;
  v17 = UIView.findPortal(kind:id:excludingGroups:)(4, &v123, 0);
  LODWORD(v106) = v18;
  v99 = v16;
  v100 = v1;
  v19 = *(v1 + v16);
  v112 = v17;
  v20 = v17;

  v21 = v20;
  v22 = [v20 superview];
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  v23 = *(v19 + 136);
  v125 = *(v19 + 120);
  v126 = v23;
  v127 = *(v19 + 152);
  v128 = *(v19 + 168);
  v24 = *(v19 + 104);
  v123 = *(v19 + 88);
  v124 = v24;
  _ViewInputs.position.getter();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v26 = *Value;
  v27 = Value[1];
  AGGraphSetUpdate();
  v28 = *(v19 + 240);
  v29 = *(v19 + 248);
  UIViewSnapshotResponder.contentPath.getter(v132);
  if (v133 == 255)
  {
    v33 = 0.0;
    v31 = 0.0;
  }

  else
  {
    v136 = v132[0];
    v137 = v132[1];
    v138 = v133;
    Path.boundingRect.getter();
    v31 = v30;
    v33 = v32;
    outlined destroy of AnyAccessibilityValue?(v132, &lazy cache variable for type metadata for Path?);
  }

  v34 = v26 - v28;
  v35 = v27 - v29;
  if (v112)
  {
    v36 = v20;
    [v36 convertPoint:v113 toCoordinateSpace:{0.0, 0.0}];
    v38 = v37;
    v40 = v39;
    *v134 = v34;
    *(v134 + 1) = v35;
    hostingViewCoordinateSpace.getter();
    v118 = 1;
    AGGraphClearUpdate();
    LOBYTE(v123) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ViewTransform?);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v119 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v123 = v119;
      v124 = v120;
      v125 = v121;
    }

    ViewTransform.appendPosition(_:)(*(v19 + 240));
    ApplyViewTransform.convert(to:transform:)();
    outlined destroy of CoordinateSpace(&v114);

    v43 = *(v134 + 1) - v40;
    v44 = v40 - *(v134 + 1);
    if (v106)
    {
      v31 = v38 - *v134;
    }

    else
    {
      v31 = *v134 - v38;
    }

    if (v106)
    {
      v33 = v44;
    }

    else
    {
      v33 = v43;
    }

    [v36 bounds];
  }

  else
  {
    v41 = *(v19 + 224);
    v42 = *(v19 + 232);
  }

  v45 = v31;
  v46 = v33;
  v139 = CGRectOffset(*(&v41 - 2), v34, v35);
  v114.i64[0] = *&v139.origin.x;
  v114.i64[1] = *&v139.origin.y;
  width = v139.size.width;
  height = v139.size.height;
  v117 = 0;
  v47 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v114, v113, 2, v22);
  v49 = v48;
  v106 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v48 center:{v47, v50}];

  static Update.end()();

  v51 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v52 = [objc_opt_self() clearColor];
  [(UIView *)v51 setBackgroundColor:v52];

  v53 = type metadata accessor for UIPointerShape();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v55(v14, 1, 1, v53);
  if (v131 == 255)
  {
    v56 = v14;
    v57 = v21;

    goto LABEL_27;
  }

  v98 = v55;
  v134[0] = v129;
  v134[1] = v130;
  v135 = v131;
  outlined copy of Path.Storage(v105, *&y, *&v103, v102, v101);
  if (Path.isEmpty.getter())
  {
    v56 = v14;
    v57 = v21;

    outlined destroy of AnyAccessibilityValue?(&v129, &lazy cache variable for type metadata for Path?);
LABEL_27:
    v84 = v108;
    goto LABEL_28;
  }

  Path.roundedRect()();
  v58 = v126;
  if (v126 == 2 || (v59 = v125, v60 = v124, v61 = v123, (v126 & 1) == 0) && (LOBYTE(v126) = 0, FixedRoundedRect.rect.getter(), v63 = v62, v119 = v61, v120 = v60, v121 = v59, v122 = 0, FixedRoundedRect.rect.getter(), v63 != v64) || (v123 = v61, v124 = v60, v125 = v59, v65 = v58 & 1, LOBYTE(v126) = v65, FixedRoundedRect.cornerSize.getter(), v67 = v66, v119 = v61, v120 = v60, v121 = v59, v122 = v65, FixedRoundedRect.cornerSize.getter(), v67 != v68))
  {
    v57 = v21;

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
    v85 = UIBezierPath.init(_:)(v134);
    outlined destroy of UIPointerShape?(v14);
    *v14 = v85;
    (*(v54 + 104))(v14, *MEMORY[0x1E69DBED8], v53);
    v56 = v14;
    v98(v14, 0, 1, v53);
    goto LABEL_27;
  }

  v102 = *(v100 + v99);
  v123 = v61;
  v124 = v60;
  v125 = v59;
  LOBYTE(v126) = v65;

  FixedRoundedRect.rect.getter();
  v70 = v69;
  v103 = v72;
  y = v71;
  v74 = v73;
  LODWORD(v105) = v65;
  v57 = v21;
  v75 = [v21 superview];

  v140.origin.x = v70;
  v140.size.width = v103;
  v140.origin.y = y;
  v140.size.height = v74;
  v141 = UIViewSnapshotResponder.convertRectToTargetSpace(_:host:preferredContainer:)(v140, v113, v75);
  x = v141.origin.x;
  v103 = v141.size.width;
  y = v141.origin.y;
  v77 = v141.size.height;

  v123 = v61;
  v124 = v60;
  v125 = v59;
  LOBYTE(v126) = v105;
  FixedRoundedRect.cornerSize.getter();
  v79 = v78;
  outlined destroy of AnyAccessibilityValue?(&v129, &lazy cache variable for type metadata for Path?);
  outlined destroy of UIPointerShape?(v14);
  v80 = v108;
  v81 = v103;
  v82 = y;
  *v108 = x;
  v80[1] = v82;
  v80[2] = v81;
  v80[3] = v77;
  *(v80 + 4) = v79;
  (*(v54 + 104))(v80, *MEMORY[0x1E69DBED0], v53);
  v98(v80, 0, 1, v53);
  v83 = v14;
  v84 = v80;
  v56 = v83;
  outlined init with take of UIPointerShape?(v80, v83);
LABEL_28:
  v86 = v57;
  if (!v112)
  {
    v87 = *(v100 + v99);

    AGGraphClearUpdate();
    closure #1 in UIViewSnapshotResponder.snapshotView(host:)(v87, v113, &v123);
    AGGraphSetUpdate();

    v86 = v123;
  }

  v88 = objc_allocWithZone(MEMORY[0x1E69DD070]);
  v89 = v57;
  v90 = v51;
  v113 = v51;
  v91 = v106;
  v92 = [v88 initWithView:v86 parameters:v90 target:v106];

  v93 = v110;
  v94 = *(v110 + 104);
  *v9 = v92;
  v95 = v111;
  v94(v9, **(&unk_1E7237AC0 + v107), v111);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle);
  (*(v93 + 16))(v109, v9, v95);
  outlined init with copy of UIPointerShape?(v56, v84);
  v96 = UIPointerStyle.init(effect:shape:)();

  outlined destroy of AnyAccessibilityValue?(&v129, &lazy cache variable for type metadata for Path?);
  (*(v93 + 8))(v9, v95);
  outlined destroy of UIPointerShape?(v56);
  return v96;
}

id PointerIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointerIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for UIPointerShape?()
{
  if (!lazy cache variable for type metadata for UIPointerShape?)
  {
    type metadata accessor for UIPointerShape();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIPointerShape?);
    }
  }
}

uint64_t outlined init with copy of UIPointerShape?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIPointerShape?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIPointerShape?(uint64_t a1)
{
  type metadata accessor for UIPointerShape?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of UIPointerShape?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIPointerShape?();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized PointerBridge.pointerInteraction(_:regionFor:defaultRegion:)(void *a1)
{
  MEMORY[0x18D00ABE0]();
  v2 = PointerBridge.hoverEffectResponder(for:)(a1);
  if (v2)
  {
    v3 = v2;

    UIViewSnapshotResponder.contentPath.getter(v28);
    if (v29 == 255)
    {
      v9 = *(v3 + 224);
      v11 = *(v3 + 232);
      v5 = 0;
      v7 = 0;
    }

    else
    {
      v30 = v28[0];
      v31 = v28[1];
      v32 = v29;
      Path.boundingRect.getter();
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      outlined destroy of AnyAccessibilityValue?(v28, &lazy cache variable for type metadata for Path?);
    }

    v24 = v5;
    v25 = v7;
    v26 = v9;
    v27 = v11;
    hostingViewCoordinateSpace.getter();
    v23[40] = 1;
    AGGraphClearUpdate();
    LOBYTE(v20) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ViewTransform?);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v17 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v20 = v17;
      v21 = v18;
      v22 = v19;
    }

    ViewTransform.appendPosition(_:)(*(v3 + 240));

    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v23);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerRegion);
    v13 = type metadata accessor for PointerIdentifier();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base] = v3;
    v16.receiver = v14;
    v16.super_class = v13;

    *&v17 = objc_msgSendSuper2(&v16, sel_init);
    lazy protocol witness table accessor for type PointerIdentifier and conformance NSObject();
    AnyHashable.init<A>(_:)();
    v12 = UIPointerRegion.init(rect:identifier:)();

    static Update.end()();
  }

  else
  {
    static Update.end()();
    return 0;
  }

  return v12;
}

uint64_t specialized PointerBridge.pointerInteraction(_:styleFor:)()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      UIPointerRegion.identifier.getter();
      if (v9)
      {
        v6.isa = AnyHashable._bridgeToObjectiveC()().isa;
        outlined destroy of AnyHashable(v8);
        type metadata accessor for PointerIdentifier();
        if (swift_dynamicCastClass())
        {
          v7 = PointerIdentifier.pointerStyle(host:)(v5);

          return v7;
        }
      }

      else
      {

        outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AnyHashable?);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PointerIdentifier and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject)
  {
    type metadata accessor for PointerIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject);
  }

  return result;
}

uint64_t _SymmetricallyScaledText.source.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t _SymmetricallyScaledText.source.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t _SymmetricallyScaledText.reference.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Text.Storage(v1, *(v0 + 40), *(v0 + 48));

  return v1;
}

uint64_t _SymmetricallyScaledText.reference.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*(v4 + 32), *(v4 + 40), *(v4 + 48));

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3 & 1;
  *(v4 + 56) = a4;
  return result;
}

uint64_t _SymmetricallyScaledText.init(source:reference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  return result;
}

uint64_t static _SymmetricallyScaledText._makeView(view:inputs:)(int *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = v2;
  v4 = *(a2 + 48);
  v12 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v17 = v10;
  v18 = v4;
  v19 = *(a2 + 64);
  v6 = *a1;
  v13 = *(a2 + 80);
  v20 = *(a2 + 80);
  v15 = v9[0];
  v16 = v3;
  v7 = _ViewInputs.textAccessibilityProvider.getter();
  v14 = v6;
  return static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(v7, &v14, v9);
}

uint64_t static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *a3;
  v4 = a3[2];
  v5 = *(a3 + 5);
  v19 = *(a3 + 3);
  v20 = v5;
  v21[0] = *(a3 + 7);
  *(v21 + 12) = *(a3 + 68);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  v8 = *(v4 + 16);
  PropertyList.subscript.getter();
  v9 = v22;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *&v22 = __PAIR64__(v7, OffsetAttribute2);
  DWORD2(v22) = v8;
  *v23 = PropertyList.Tracker.init()();
  memset(&v23[8], 0, 80);
  *&v23[88] = v9;
  v24 = 0;
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for SymmetricTextChildQuery();
  v13 = a3[1];
  HIDWORD(v22) = v13;
  v17[3] = *&v23[48];
  v17[4] = *&v23[64];
  v17[5] = *&v23[80];
  v18 = 0;
  v17[1] = *&v23[16];
  v17[2] = *&v23[32];
  v16 = v22;
  v17[0] = *v23;
  v11 = *(v10 - 8);
  (*(v11 + 16))(v15, &v22, v10);
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  *&v16 = v14;
  *(&v16 + 1) = v13;
  *&v17[0] = v4;
  *(v17 + 8) = v19;
  *(&v17[1] + 8) = v20;
  *(&v17[2] + 8) = v21[0];
  *(&v17[3] + 4) = *(v21 + 12);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  return (*(v11 + 8))(&v22, v10);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _SymmetricallyScaledText(int *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = v2;
  v4 = *(a2 + 48);
  v12 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v17 = v10;
  v18 = v4;
  v19 = *(a2 + 64);
  v6 = *a1;
  v13 = *(a2 + 80);
  v20 = *(a2 + 80);
  v15 = v9[0];
  v16 = v3;
  v7 = _ViewInputs.textAccessibilityProvider.getter();
  v14 = v6;
  return static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(v7, &v14, v9);
}

uint64_t destroy for _SymmetricallyScaledText(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t initializeWithCopy for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  outlined copy of Text.Storage(v10, v11, v12);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a2 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t destroy for SymmetricTextChildQuery(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  return result;
}

uint64_t initializeWithCopy for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 64);

  if (!v5)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v9 = *(a2 + 96);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_6;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of Text.Storage(v6, v7, v8);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v5;

  v9 = *(a2 + 96);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v9;

LABEL_6:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v16)
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = *(a2 + 88);
      outlined copy of Text.Storage(v17, v18, v19);
      v20 = *(a1 + 72);
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v26 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v26;
    }
  }

  else if (v16)
  {
    v23 = *(a2 + 72);
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    outlined copy of Text.Storage(v23, v24, v25);
    *(a1 + 72) = v23;
    *(a1 + 80) = v24;
    *(a1 + 88) = v25;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v27 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v27;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  if (*(a1 + 64))
  {
    v4 = *(a2 + 64);
    if (v4)
    {
      v5 = *(a2 + 56);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 64) = v4;

      if (!*(a1 + 96))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  if (!*(a1 + 96))
  {
LABEL_10:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_11;
  }

LABEL_7:
  v9 = *(a2 + 96);
  if (!v9)
  {
    outlined destroy of Text(a1 + 72);
    goto LABEL_10;
  }

  v10 = *(a2 + 88);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(a1 + 96) = v9;

LABEL_11:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for SymmetricTextChildQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for SymmetricTextChildQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for SymmetricallyScaledTextLayout(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for SymmetricallyScaledTextLayout(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t SymmetricTextChildQuery.updateValue()(uint64_t a1)
{
  v2 = v1;
  v140 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v112 = a1;
  v107 = v3;
  v106 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v101[-v6];
  v109 = v7;
  v115 = type metadata accessor for ModifiedContent();
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v101[-v8];
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v101[-v12];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  v18 = v17;
  v19 = *(Value + 8);
  v20 = *(Value + 16);
  v21 = *(Value + 24);
  v125 = *Value;
  v126 = v19;
  v127 = v20;
  outlined copy of Text.Storage(v125, v19, v20);
  v128 = v21;

  v22 = AGGraphGetValue();
  v24 = v23;
  v26 = *v22;
  v25 = *(v22 + 8);
  v27 = *(v22 + 16);
  v123 = *(v22 + 24);
  v122 = v26;
  v124 = v25;
  outlined copy of Text.Storage(v26, v25, v27);

  v28 = AGGraphGetValue();
  v30 = v29;
  v31 = *v28;
  v32 = *(v1 + 104);
  v113 = v28[1];
  if (v32)
  {
  }

  else
  {
    if (*(v1 + 24))
    {

      if (ResolvedStyledText.isDynamic.getter())
      {
        v33 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (*(v1 + 32))
    {
      v33 = ResolvedStyledText.isDynamic.getter();
      goto LABEL_10;
    }
  }

  v33 = 0;
LABEL_10:
  v121 = v14;
  v34 = *(v1 + 24);
  v129 = v27;
  v114 = v13;
  v117 = v31;
  if (v34)
  {
    v116 = v34;
    if (v18 & 1) == 0 || (v35 = *(v1 + 64)) != 0 && (v37 = *(v2 + 48), v36 = *(v2 + 56), v38 = *(v2 + 40), v27 = v125, v39 = v126, v104 = v30, v40 = v127, outlined copy of Text.Storage(v125, v126, v127), *&v103 = v24, , outlined copy of Text?(v38, v37, v36, v35), LOBYTE(v134) = v36 & 1, v102 = static Text.== infix(_:_:)(), v41 = v40, v30 = v104, outlined consume of Text.Storage(v27, v39, v41), LOBYTE(v24) = v103, , v42 = v37, v13 = v114, outlined consume of Text?(v38, v42, v36, v35), LOBYTE(v27) = v129, (v102))
    {
      if (v24 & 1) == 0 || (v43 = *(v2 + 96)) != 0 && (v45 = *(v2 + 80), v44 = *(v2 + 88), v46 = *(v2 + 72), v47 = v122, v104 = v30, v30 = v124, outlined copy of Text.Storage(v122, v124, v27), , outlined copy of Text?(v46, v45, v44, v43), LOBYTE(v134) = v44 & 1, LODWORD(v103) = static Text.== infix(_:_:)(), v48 = v30, LOBYTE(v30) = v104, outlined consume of Text.Storage(v47, v48, v129), , outlined consume of Text?(v46, v45, v44, v43), (v103))
      {
        if ((v30 & 1) == 0 || (, v49 = PropertyList.Tracker.hasDifferentUsedValues(_:)(), , (v49 & 1) == 0))
        {
          if (AGGraphGetOutputValue())
          {
            if ((v33 & 1) == 0 || (v50 = *(v2 + 24), v51 = *(v2 + 112), *AGGraphGetValue() < v51))
            {
              outlined consume of Text.Storage(v122, v124, v129);

              outlined consume of Text.Storage(v125, v126, v127);
            }

            v116 = v50;
          }
        }
      }
    }
  }

  else
  {
    v116 = 0;
  }

  LODWORD(v104) = v33;
  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();
  v53 = *(v2 + 40);
  v54 = *(v2 + 48);
  v55 = *(v2 + 56);
  v56 = *(v2 + 64);
  v57 = v125;
  v58 = v126;
  v59 = v127;
  outlined copy of Text.Storage(v125, v126, v127);
  v60 = v128;

  outlined consume of Text?(v53, v54, v55, v56);
  *(v2 + 40) = v57;
  *(v2 + 48) = v58;
  *(v2 + 56) = v59;
  *(v2 + 64) = v60;
  v61 = *(v2 + 72);
  v62 = *(v2 + 80);
  v63 = *(v2 + 88);
  v64 = *(v2 + 96);
  v65 = v13;
  v66 = v122;
  v67 = v124;
  v68 = v129;
  outlined copy of Text.Storage(v122, v124, v129);
  v69 = v123;

  outlined consume of Text?(v61, v62, v63, v64);
  *(v2 + 72) = v66;
  *(v2 + 80) = v67;
  v70 = v65;
  *(v2 + 88) = v68;
  *(v2 + 96) = v69;
  v71 = v118;
  EnvironmentValues.stringResolutionDate.getter();
  v72 = v121;
  v73 = *(v121 + 48);
  if (v73(v71, 1, v70) == 1)
  {
    v116 = *(v2 + 24);
    *&v134 = *AGGraphGetValue();
    v74 = v120;
    static Date.now.getter();
    if (v73(v71, 1, v70) != 1)
    {
      outlined destroy of Date?(v71);
    }
  }

  else
  {
    v74 = v120;
    (*(v72 + 32))(v120, v71, v70);
  }

  v75 = v119;
  (*(v72 + 16))(v119, v74, v70);
  (*(v72 + 56))(v75, 0, 1, v70);
  EnvironmentValues.stringResolutionDate.setter();
  v76 = v139;
  v134 = v139;
  v138 = 0uLL;
  v132 = 128;

  v119 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  v134 = v76;
  v138 = 0uLL;
  v132 = 128;

  v77 = v122;
  v118 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  type metadata accessor for ResolvedStyledText();
  v138 = v76;
  v131 = *(v2 + 104);

  Text.isCollapsible()();
  v133 = 2;
  default argument 1 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v130 = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v103 = xmmword_18CD68310;
  v137 = xmmword_18CD68310;
  default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  default argument 8 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  LOWORD(v99) = 768;
  v97 = default argument 9 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v98 = &v133;
  v78 = static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();

  outlined consume of ResolvedTextSuffix(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137);

  v138 = v139;
  v131 = *(v2 + 104);

  v79 = v124;
  v80 = v129;
  Text.isCollapsible()();
  outlined consume of Text.Storage(v77, v79, v80);

  v133 = 2;
  default argument 1 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v130 = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v137 = v103;
  default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  default argument 8 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  LOWORD(v99) = 768;
  v97 = default argument 9 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v98 = &v133;
  v81 = v2;
  v82 = static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();

  outlined consume of ResolvedTextSuffix(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137);

  v83 = v78;

  *(v81 + 24) = v78;

  v129 = v81;
  *(v81 + 32) = v82;

  v84 = v125;
  *&v134 = v78;
  *(&v134 + 1) = v125;
  v85 = v126;
  *&v135 = v126;
  LOBYTE(v78) = v127;
  BYTE8(v135) = v127;
  v136 = v128;
  *&v137 = 0;
  BYTE8(v137) = 0;
  type metadata accessor for AccessibilityStyledTextContentView();
  v86 = v105;
  AccessibilityStyledTextContentView.body.getter();

  outlined consume of Text.Storage(v84, v85, v78);

  *&v138 = v83;
  *(&v138 + 1) = v82;
  v87 = v109;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = v110;
  MEMORY[0x18D00A570](&v138, v87, &unk_1EFFA9910, AssociatedConformanceWitness);
  v90 = (*(v108 + 8))(v86, v87);
  MEMORY[0x1EEE9AC00](v90);
  v99 = v112;
  WitnessTable = swift_getWitnessTable();
  v91 = v115;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, partial apply for closure #1 in StatefulRule.value.setter, &v97, v115, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v92);
  (*(v111 + 8))(v89, v91);
  if (v104)
  {
    *&v138 = *AGGraphGetValue();
    v93 = v120;
    ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)();

    v94 = *&v134;
    v132 = *AGGraphGetValue();
    ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)();

    if (*&v138 < v94)
    {
      v94 = *&v138;
    }

    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();

    (*(v121 + 8))(v93, v114);

    type metadata accessor for ViewGraph();
    v95 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v96 = *(v95 + 376);
    if (v94 < v96)
    {
      v96 = v94;
    }

    *(v95 + 376) = v96;
  }

  else
  {

    (*(v121 + 8))(v120, v114);
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance SymmetricTextChildQuery<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SymmetricTextChildQuery<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t SymmetricallyScaledTextLayout.sizeThatFits(in:context:child:)()
{
  v0 = _ProposedSize.fixingUnspecifiedDimensions(at:)(__PAIR128__(0x7FF0000000000000, 0x7FF0000000000000));
  dispatch thunk of ResolvedStyledText.drawingScale(size:)();
  v2 = v1;
  v3 = dispatch thunk of ResolvedStyledText.drawingScale(size:)();
  if (v2 > v4)
  {
    v3 = ResolvedStyledText.scaleFactorOverride.setter();
  }

  return MEMORY[0x18D007250](v3, v0.width, v0.height);
}

uint64_t protocol witness for UnaryLayout.placement(of:in:) in conformance SymmetricallyScaledTextLayout()
{
  PlacementContext.size.getter();
  static UnitPoint.topLeading.getter();

  return _Placement.init(proposedSize:anchoring:at:)();
}

unint64_t lazy protocol witness table accessor for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout()
{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SymmetricallyScaledTextLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = v8;
  v11 = lazy protocol witness table accessor for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout();
  return (*(v11 + 80))(&v15, v13, a3, a4, a5, v11);
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

void *outlined consume of ResolvedTextSuffix(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Layout.Line.Line(result);
  }

  return result;
}

uint64_t outlined consume of Text.Layout.Line.Line(void *a1)
{
}

void type metadata accessor for FocusedValueModifier<ServiceItemHandler?>()
{
  if (!lazy cache variable for type metadata for FocusedValueModifier<ServiceItemHandler?>)
  {
    type metadata accessor for ServiceItemHandler?();
    v0 = type metadata accessor for FocusedValueModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusedValueModifier<ServiceItemHandler?>);
    }
  }
}

void type metadata accessor for ServiceItemHandler?()
{
  if (!lazy cache variable for type metadata for ServiceItemHandler?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ServiceItemHandler?);
    }
  }
}

uint64_t destroy for ServiceItemHandler(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 24))
  {
  }

  return result;
}

void *initializeWithCopy for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = a2[4];
    a1[3] = v7;
    a1[4] = v8;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  return a1;
}

void *assignWithCopy for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

  return a1;
}

void *assignWithTake for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;
      return a1;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

  return a1;
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  outlined init with copy of ToolbarPlacement.Role(a2, v4);
  *(v5 + 72) = specialized Dictionary._Variant.subscript.modify((v5 + 40), v5);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v4);
  *(v5 + 160) = specialized Dictionary._Variant.subscript.modify((v5 + 128), v5);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();
  outlined destroy of ToolbarPlacement.Role(v1);

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 160))();
  outlined destroy of IdentifiedDocumentGroupConfiguration(v1);

  free(v1);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4 & 1);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, unint64_t a2, unint64_t a3))()
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
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = specialized Dictionary._Variant.subscript.modify(v10, a2, a3, a4, a5);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, Swift::UInt32 a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v130 = v9;
  v131 = v8;
  v132 = v7;
  v133 = v6;
  v134 = v5;
  v135 = v4;
  v136 = v2;
  v137 = v3;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v11[13];
    v15 = v11[11];
    v90 = v11[12];
    v91 = v14;
    v16 = v11[13];
    v92 = v11[14];
    v17 = v11[9];
    v18 = v11[7];
    v86 = v11[8];
    v87 = v17;
    v19 = v11[9];
    v20 = v11[11];
    v88 = v11[10];
    v89 = v20;
    v21 = v11[5];
    v22 = v11[3];
    v82 = v11[4];
    v83 = v21;
    v23 = v11[5];
    v24 = v11[7];
    v84 = v11[6];
    v85 = v24;
    v25 = v11[1];
    v79[0] = *v11;
    v79[1] = v25;
    v26 = v11[3];
    v27 = *v11;
    v28 = v11[1];
    v80 = v11[2];
    v81 = v26;
    v29 = v12[11];
    v106 = v12[12];
    v30 = v12[12];
    v107 = v12[13];
    v31 = v12[13];
    v108 = v12[14];
    v32 = v12[7];
    v102 = v12[8];
    v33 = v12[8];
    v103 = v12[9];
    v34 = v12[9];
    v104 = v12[10];
    v35 = v12[10];
    v105 = v12[11];
    v36 = v12[3];
    v98 = v12[4];
    v37 = v12[4];
    v99 = v12[5];
    v38 = v12[5];
    v100 = v12[6];
    v39 = v12[6];
    v101 = v12[7];
    v40 = v12[1];
    v94 = *v12;
    v41 = *v12;
    v95 = v12[1];
    v96 = v12[2];
    v42 = v12[2];
    v97 = v12[3];
    v110[12] = v11[12];
    v110[13] = v11[13];
    v110[14] = v11[14];
    v110[8] = v11[8];
    v110[9] = v11[9];
    v110[10] = v11[10];
    v110[11] = v11[11];
    v110[4] = v11[4];
    v110[5] = v11[5];
    v110[6] = v11[6];
    v110[7] = v11[7];
    v110[0] = *v11;
    v110[1] = v11[1];
    v110[2] = v11[2];
    v110[3] = v11[3];
    v124 = v30;
    v125 = v31;
    v126 = v12[14];
    v120 = v33;
    v121 = v34;
    v122 = v35;
    v123 = v29;
    v116 = v37;
    v117 = v38;
    v118 = v39;
    v119 = v32;
    v112 = v41;
    v113 = v40;
    v114 = v42;
    v115 = v36;
    v128[12] = v90;
    v128[13] = v16;
    v128[14] = v11[14];
    v128[8] = v86;
    v128[9] = v19;
    v128[10] = v88;
    v128[11] = v15;
    v128[4] = v82;
    v128[5] = v23;
    v128[6] = v84;
    v128[7] = v18;
    v128[0] = v27;
    v128[1] = v28;
    v128[2] = v80;
    v93 = *(v11 + 120);
    v109 = *(v12 + 120);
    v111 = *(v11 + 120);
    v127 = *(v12 + 120);
    v129 = *(v11 + 120);
    v128[3] = v22;
    Enum = getEnumTag for AccessibilityLargeContentViewTree(v128);
    if (!Enum)
    {
      v47 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v128);
      v75 = v106;
      v76 = v107;
      v77 = v108;
      v78 = v109;
      v71 = v102;
      v72 = v103;
      v73 = v104;
      v74 = v105;
      v67 = v98;
      v68 = v99;
      v69 = v100;
      v70 = v101;
      v63 = v94;
      v64 = v95;
      v65 = v96;
      v66 = v97;
      if (getEnumTag for AccessibilityLargeContentViewTree(&v63))
      {
LABEL_20:
        outlined init with copy of AccessibilityLargeContentViewTree(&v94, v61);
        v57 = v79;
        goto LABEL_22;
      }

      v48 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v63);
      v61[12] = *(v47 + 192);
      v61[13] = *(v47 + 208);
      v61[14] = *(v47 + 224);
      v62 = *(v47 + 240);
      v61[8] = *(v47 + 128);
      v61[9] = *(v47 + 144);
      v61[10] = *(v47 + 160);
      v61[11] = *(v47 + 176);
      v61[4] = *(v47 + 64);
      v61[5] = *(v47 + 80);
      v61[6] = *(v47 + 96);
      v61[7] = *(v47 + 112);
      v61[0] = *v47;
      v61[1] = *(v47 + 16);
      v61[2] = *(v47 + 32);
      v61[3] = *(v47 + 48);
      v49 = *(v48 + 208);
      v59[12] = *(v48 + 192);
      v59[13] = v49;
      v59[14] = *(v48 + 224);
      v60 = *(v48 + 240);
      v50 = *(v48 + 144);
      v59[8] = *(v48 + 128);
      v59[9] = v50;
      v51 = *(v48 + 176);
      v59[10] = *(v48 + 160);
      v59[11] = v51;
      v52 = *(v48 + 80);
      v59[4] = *(v48 + 64);
      v59[5] = v52;
      v53 = *(v48 + 112);
      v59[6] = *(v48 + 96);
      v59[7] = v53;
      v54 = *(v48 + 16);
      v59[0] = *v48;
      v59[1] = v54;
      v55 = *(v48 + 48);
      v59[2] = *(v48 + 32);
      v59[3] = v55;
      outlined init with copy of AccessibilityLargeContentViewTree(&v94, v58);
      outlined init with copy of AccessibilityLargeContentViewTree(v79, v58);
      outlined init with copy of AccessibilityLargeContentViewTree(&v94, v58);
      outlined init with copy of AccessibilityLargeContentViewTree(v79, v58);
      outlined init with copy of AccessibilityLargeContentViewTree(&v94, v58);
      outlined init with copy of AccessibilityLargeContentViewTree(v79, v58);
      v46 = specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(v61, v59);
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v110, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
      outlined destroy of AccessibilityLargeContentViewTree(&v94);
      outlined destroy of AccessibilityLargeContentViewTree(v79);
      goto LABEL_11;
    }

    if (Enum != 1)
    {
      break;
    }

    v44 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v128);
    v65 = v96;
    v66 = v97;
    v63 = v94;
    v64 = v95;
    v69 = v100;
    v70 = v101;
    v67 = v98;
    v68 = v99;
    v73 = v104;
    v74 = v105;
    v71 = v102;
    v72 = v103;
    v78 = v109;
    v76 = v107;
    v77 = v108;
    v75 = v106;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v63) != 1)
    {
      goto LABEL_20;
    }

    v45 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v63);
    outlined init with copy of AccessibilityLargeContentViewTree(&v94, v61);
    outlined init with copy of AccessibilityLargeContentViewTree(v79, v61);
    outlined init with copy of AccessibilityLargeContentViewTree(&v94, v61);
    outlined init with copy of AccessibilityLargeContentViewTree(v79, v61);
    v46 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(v44, v45);
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v110, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
LABEL_11:
    outlined destroy of AccessibilityLargeContentViewTree(&v94);
    outlined destroy of AccessibilityLargeContentViewTree(v79);
    if ((v46 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

LABEL_16:
    v12 = (v12 + 248);
    v11 = (v11 + 248);
  }

  v75 = v106;
  v76 = v107;
  v77 = v108;
  v78 = v109;
  v71 = v102;
  v72 = v103;
  v73 = v104;
  v74 = v105;
  v67 = v98;
  v68 = v99;
  v69 = v100;
  v70 = v101;
  v63 = v94;
  v64 = v95;
  v65 = v96;
  v66 = v97;
  if (getEnumTag for AccessibilityLargeContentViewTree(&v63) == 2)
  {
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v110, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
    if (!i)
    {
      return 1;
    }

    goto LABEL_16;
  }

  v57 = &v94;
LABEL_22:
  outlined init with copy of AccessibilityLargeContentViewTree(v57, v61);
  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v110, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18TabCustomizationIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      if (*i)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }
      }

      else if (*v3)
      {
        return 0;
      }

      v5 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ScrollTargetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      v3 = 0;
      do
      {
        v4 = static ScrollTarget.== infix(_:_:)();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v3 - 4);
      v8 = *(v3 - 3);
      if (*v4)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v9 = *(v4 - 2);
        v10 = *(v4 - 1);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v13 = v5 == v7 && v6 == v8;
        if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if (v9 != v11 || v10 != v12)
        {
LABEL_5:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        if (v5 != v7 || v6 != v8)
        {
          goto LABEL_5;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          MEMORY[0x18D00E9C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      v15 = dispatch thunk of AnyFontModifier.isEqual(to:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI23AccessibilityAttachmentVACE4TreeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 304)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v3, v16);
    outlined init with copy of AccessibilityAttachment.Tree(i, v15);
    outlined init with copy of AccessibilityAttachment.Tree(v16, v11);
    outlined init with copy of AccessibilityAttachment.Tree(v15, v13);
    if (!v12)
    {
      break;
    }

    if (v12 == 1)
    {
      outlined init with copy of AccessibilityAttachment.Tree(v11, v10);
      if (v14 != 1)
      {

        goto LABEL_21;
      }

      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI23AccessibilityAttachmentVACE4TreeO_Tt1g5(v10[0], v13[0]);

      if ((v5 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_21;
      }

      v7 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v13[5], *&v13[21]), vorrq_s8(*&v13[13], *&v13[29])), vorrq_s8(vorrq_s8(*&v13[9], *&v13[25]), vorrq_s8(*&v13[17], *&v13[33]))), vorrq_s8(vorrq_s8(vorrq_s8(*&v13[7], *&v13[23]), vorrq_s8(*&v13[15], *&v13[31])), vorrq_s8(vorrq_s8(*&v13[11], *&v13[27]), vorrq_s8(*&v13[19], *&v13[35]))));
      if (*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v13[4] | v13[3] | v13[2] | v13[1] | v13[0])
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    outlined destroy of AccessibilityAttachment.Tree(v11);
    outlined destroy of AccessibilityAttachment.Tree(v15);
    outlined destroy of AccessibilityAttachment.Tree(v16);
    v3 += 304;
    if (!--v2)
    {
      return 1;
    }
  }

  outlined init with copy of AccessibilityAttachment.Tree(v11, v10);
  if (!v14)
  {
    memcpy(__dst, v13, sizeof(__dst));
    v6 = static AccessibilityAttachment.== infix(_:_:)();
    outlined destroy of AccessibilityAttachment(__dst);
    outlined destroy of AccessibilityAttachment(v10);
    if ((v6 & 1) == 0)
    {
LABEL_18:
      outlined destroy of AccessibilityAttachment.Tree(v11);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  outlined destroy of AccessibilityAttachment(v10);
LABEL_21:
  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v11, &lazy cache variable for type metadata for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree));
LABEL_22:
  outlined destroy of AccessibilityAttachment.Tree(v15);
  outlined destroy of AccessibilityAttachment.Tree(v16);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22AccessibilityNodeProxyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v64 = v5[8];
    v65 = v8;
    v10 = v5[9];
    v66 = v5[10];
    v11 = v5[5];
    v12 = v5[3];
    v60 = v5[4];
    v61 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v62 = v5[6];
    v63 = v14;
    v15 = v5[1];
    v57[0] = *v5;
    v57[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v58 = v5[2];
    v59 = v16;
    v53 = v64;
    v54 = v10;
    v55 = v5[10];
    v49 = v60;
    v50 = v13;
    v51 = v62;
    v52 = v9;
    v45 = v18;
    v46 = v17;
    v47 = v58;
    v48 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v75 = v6[8];
    v76 = v19;
    v21 = v6[9];
    v77 = v6[10];
    v22 = v6[5];
    v23 = v6[3];
    v71 = v6[4];
    v72 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v73 = v6[6];
    v74 = v25;
    v26 = v6[1];
    v68[0] = *v6;
    v68[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v69 = v6[2];
    v70 = v27;
    v41 = v75;
    v42 = v21;
    v43 = v6[10];
    v37 = v71;
    v38 = v24;
    v39 = v73;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v67 = *(v5 + 22);
    v56 = *(v5 + 22);
    v78 = *(v6 + 22);
    v44 = *(v6 + 22);
    v35 = v69;
    v36 = v23;
    outlined init with copy of AccessibilityNodeProxy(v57, v32);
    outlined init with copy of AccessibilityNodeProxy(v68, v32);
    v30 = static AccessibilityNodeProxy.== infix(_:_:)(&v45, &v33);
    v79[8] = v41;
    v79[9] = v42;
    v79[10] = v43;
    v80 = v44;
    v79[4] = v37;
    v79[5] = v38;
    v79[6] = v39;
    v79[7] = v40;
    v79[0] = v33;
    v79[1] = v34;
    v79[2] = v35;
    v79[3] = v36;
    outlined destroy of AccessibilityNodeProxy(v79);
    v81[8] = v53;
    v81[9] = v54;
    v81[10] = v55;
    v82 = v56;
    v81[5] = v50;
    v81[6] = v51;
    v81[7] = v52;
    v81[0] = v45;
    v81[1] = v46;
    v81[2] = v47;
    v81[3] = v48;
    v81[4] = v49;
    outlined destroy of AccessibilityNodeProxy(v81);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 184);
    v5 = (v5 + 184);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x18D00E9C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 160))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSSSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI25UIKitSearchBarCoordinatorC0E5Token33_9E78780A6F2626BA9019200B48F4A36BLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 72)
    {
      outlined init with copy of UIKitSearchBarCoordinator.SearchToken(v3, v15);
      outlined init with copy of UIKitSearchBarCoordinator.SearchToken(i, v12);
      if ((MEMORY[0x18D00E7E0](&v17, &v14) & 1) == 0)
      {
        break;
      }

      v6 = v16;
      v7 = v13;
      if (v16)
      {
        if (!v13)
        {
          break;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        v8 = v7;
        v9 = v6;
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      else if (v13)
      {
        break;
      }

      if (v15[0] == v12[0] && v15[1] == v12[1])
      {
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
    outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ22UniformTypeIdentifiers6UTTypeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        outlined init with copy of AnyHashable(v3, v8);
        outlined init with copy of AnyHashable(v4, v7);
        v5 = MEMORY[0x18D00E7E0](v8, v7);
        outlined destroy of AnyHashable(v7);
        outlined destroy of AnyHashable(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI19MultimodalBadgeInfoV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    result = CGRectEqualToRect(*(v4 - 24), *(v3 - 24));
    if (result)
    {
      v5 = v2 == 1;
    }

    else
    {
      v5 = 1;
    }

    --v2;
    v3 += 32;
    v4 += 32;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8UniqueIDV_Tt1g5Tm(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t TableColumnCustomization.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI26TableColumnCustomizationIDV_AC0efG5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t TableColumnCustomization.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  v7[3] = 0;
  v8 = 0;
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 16 * v4 + 9);
  }

  else
  {
    return 0;
  }
}

uint64_t key path getter for TableColumnCustomization.subscript(visibility:) : <A>TableColumnCustomization<A>A@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TableColumnCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t key path setter for TableColumnCustomization.subscript(visibility:) : <A>TableColumnCustomization<A>A(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return TableColumnCustomization.subscript.setter(v5, v3, v4);
}

uint64_t TableColumnCustomization.subscript.setter(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = 0;
  v17[3] = 0;
  v18 = 0;
  if (a1)
  {
    v6 = *v3;
    if (*(*v4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v8 & 1) != 0))
    {
      v9 = *(v6 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11 | (a1 << 8), v17, isUniquelyReferenced_nonNull_native);

    *v4 = v16[0];
  }

  else
  {
    v15 = specialized Dictionary.subscript.modify(v16, v17);
    if (*(v14 + 9) << 8 != 768)
    {
      *(v14 + 9) = 0;
    }

    (v15)(v16, 0);
  }

  return result;
}

void (*TableColumnCustomization.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 16) = a4;
  *(v9 + 24) = v4;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 32) = TableColumnCustomization.subscript.getter(a2, a3);
  return TableColumnCustomization.subscript.modify;
}

void TableColumnCustomization.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(*a1 + 32);

  TableColumnCustomization.subscript.setter(v4, v3, v2);

  free(v1);
}

uint64_t static TableColumnCustomization.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_AC06ScrollD11EffectStyleVTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_SbTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 40 * v12;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v3 + 56) + 16 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 9);
    v27 = *(v13 + 32);
    v28[0] = *v13;
    v28[1] = v14;
    v28[2] = v15;
    v28[3] = v16;
    v29 = v27;
    outlined copy of TableColumnCustomizationID.Base(v28[0], v14, v15, v16, v27);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    v23 = v22;
    result = outlined destroy of TableColumnCustomizationID(v28);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v24 = *(a2 + 56) + 16 * v21;
    v25 = *(v24 + 9);
    if (*(v24 + 8))
    {
      if (!v19 || v25 != v20)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        return 0;
      }

      if (*v24 != v18 || v25 != v20)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 64;
  v27 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(result + 48) + 24 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = (*(result + 56) + 2 * v11);
    v17 = *v16;
    v18 = v16[1];
    outlined copy of TabCustomizationID.Base();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, v15);
    v21 = v20;
    outlined consume of TabCustomizationID.Base();
    if (v21)
    {
      v22 = (*(a2 + 56) + 2 * v19);
      v23 = *v22;
      v24 = v22[1];
      v25 = v23 == v17 && v24 == v18;
      result = v27;
      v6 = v28;
      if (v25)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_12:
      v12 = v9 | (v3 << 6);
      v13 = *(result + 48) + 24 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(*(result + 56) + 8 * v12);
      outlined copy of TabCustomizationID.Base();

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      v20 = v19;
      result = outlined consume of TabCustomizationID.Base();
      if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
      {
LABEL_32:

        return 0;
      }

      if (v22 && v21 != v17)
      {
        break;
      }

LABEL_19:

      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v24 = (v17 + 48);
    v25 = (v21 + 48);
    while (v22)
    {
      result = *(v25 - 2);
      if (*v25)
      {
        if ((*v24 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*v24)
      {
        goto LABEL_32;
      }

      if (result != *(v24 - 2) || *(v25 - 1) != *(v24 - 1))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v24 += 24;
      v25 += 24;
      if (!--v22)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v28 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI22SpatialEventCollectionV0E0V2IDV_AGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 80 * v12;
    v14 = *(v13 + 40);
    if (v14 == 3)
    {
      return 1;
    }

    v15 = *(v13 + 72);
    v16 = *(v13 + 64);
    v17 = *(v13 + 32);
    v18 = *(*(v3 + 48) + 8 * v12);
    v19 = *(v13 + 16);
    v27[0] = *v13;
    v27[1] = v19;
    v28 = v17;
    v29 = v14;
    v30 = *(v13 + 48);
    v31 = v16;
    v32 = v15;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
    if (v21)
    {
      v22 = (*(a2 + 56) + 80 * v20);
      v23 = v22[3];
      v25[2] = v22[2];
      v26[0] = v23;
      *(v26 + 9) = *(v22 + 57);
      v24 = v22[1];
      v25[0] = *v22;
      v25[1] = v24;
      result = specialized static SpatialEventCollection.Event.== infix(_:_:)(v25, v27);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12VerticalEdgeO_SdTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 12 * v12), *(*(v3 + 48) + 12 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI30AccessibilityEnabledTechnologyO_AC0D5FocusV5MatchOTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 4;
    if (v13 != 4)
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_AC0D23AppearanceConfigurationVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v12, &v47);
    v13 = (*(v3 + 56) + 80 * v12);
    v14 = *(v13 + 57);
    v16 = v13[2];
    v15 = v13[3];
    v52 = v13[1];
    v17 = *v13;
    v53 = v16;
    *v54 = v15;
    *&v54[9] = v14;
    v51 = v17;
    v18 = v49;
    v34 = v52;
    v35 = v48;
    v36 = v17;
    v31 = v47;
    v32 = *v54;
    v33 = v16;
    v19 = v14 >> 56;
    v20 = HIBYTE(v14);
    outlined init with copy of ToolbarAppearanceConfiguration(&v51, &v47);
    if (*(&v36 + 1) == 1)
    {
      return 1;
    }

    v45[0] = v31;
    v45[1] = v35;
    v46 = v18;
    v51 = v36;
    v52 = v34;
    v53 = v33;
    *v54 = v32;
    *&v54[16] = v19;
    v54[24] = v20;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v45, ToolbarPlacement.Role.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v23 = v22;
    outlined destroy of ToolbarPlacement.Role(v45);
    if ((v23 & 1) == 0)
    {
      v49 = v53;
      v50[0] = *v54;
      *(v50 + 9) = *&v54[9];
      v47 = v51;
      v48 = v52;
      outlined destroy of ToolbarAppearanceConfiguration(&v47);
      return 0;
    }

    v24 = (*(a2 + 56) + 80 * v21);
    v41[0] = *v24;
    v26 = v24[2];
    v25 = v24[3];
    v27 = v24[1];
    *(v42 + 9) = *(v24 + 57);
    v41[2] = v26;
    v42[0] = v25;
    v41[1] = v27;
    v28 = v24[3];
    v39 = v24[2];
    v40[0] = v28;
    *(v40 + 9) = *(v24 + 57);
    v29 = v24[1];
    v37 = *v24;
    v38 = v29;
    outlined init with copy of ToolbarAppearanceConfiguration(v41, &v47);
    v30 = specialized static ToolbarAppearanceConfiguration.== infix(_:_:)(&v37, &v51);
    v43[2] = v39;
    v44[0] = v40[0];
    *(v44 + 9) = *(v40 + 9);
    v43[0] = v37;
    v43[1] = v38;
    outlined destroy of ToolbarAppearanceConfiguration(v43);
    v49 = v53;
    v50[0] = *v54;
    *(v50 + 9) = *&v54[9];
    v47 = v51;
    v48 = v52;
    result = outlined destroy of ToolbarAppearanceConfiguration(&v47);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v30 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v31 = v8;
  v32 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_18:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v3 + 56) + 32 * v13;
    v20 = *v18;
    v19 = *(v18 + 8);
    v33 = *(v18 + 16);
    v34 = *(v18 + 24);
    outlined copy of SceneID(*v14, v16, v17);

    if (!v19)
    {
      return 1;
    }

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v17);
    v23 = v22;
    outlined consume of SceneID(v15, v16, v17);
    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = *(a2 + 56) + 32 * v21;
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (*v24 == v20 && v19 == *(v24 + 8))
    {

      v3 = v32;
      result = v19 == 0;
      v9 = v25 == v33 && v34 == v26;
      v8 = v31;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v32;
      result = v19 == 0;
      if ((v28 & 1) == 0)
      {
        return result;
      }

      v29 = v25 == v33 && v34 == v26;
      v8 = v31;
      if (!v29)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v30 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t TableColumnCustomization.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D756C6F43726570 && a2 == 0xEE0065746174536ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x724F6E6D756C6F63 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TableColumnCustomization.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x724F6E6D756C6F63;
  }

  else
  {
    return 0x6D756C6F43726570;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomization<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  ControlGroup.BodyMode.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomization<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TableColumnCustomization.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TableColumnCustomization<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance AccessibilityLargeContentViewHitTestingTransform();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomization<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomization<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TableColumnCustomization.encode(to:)(void *a1)
{
  type metadata accessor for TableColumnCustomization.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v15 = v1[1];
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v7;
  v17 = 0;
  type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry]();
  lazy protocol witness table accessor for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B](&lazy protocol witness table cache variable for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v12)
  {
    v18 = v15;
    v17 = 1;
    type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TableColumnCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v11);
}

uint64_t TableColumnCustomization.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for TableColumnCustomization.CodingKeys();
  swift_getWitnessTable();
  v15 = type metadata accessor for KeyedDecodingContainer();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v13 - v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI26TableColumnCustomizationIDV_AC0efG5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v7 = v4;
    v8 = v14;
    type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry]();
    v16 = 0;
    lazy protocol witness table accessor for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B](&lazy protocol witness table cache variable for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
    v9 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v10 = v17;
    type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    v16 = 1;
    lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TableColumnCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v6, v9);
    v12 = v17;
    *v8 = v10;
    v8[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TableColumnCustomizationEntry.Visibility.encode(to:)(void *a1, int a2)
{
  v26 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.HiddenCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.VisibleCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v3);
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = 1;
      lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v21 + 8))(v8, v22);
    }

    else
    {
      v29 = 2;
      lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();
      v17 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v24 + 8))(v17, v25);
    }
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys()
{
  v1 = 0x656C6269736976;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationEntry.Visibility.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TableColumnCustomizationEntry.Visibility.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationEntry.Visibility@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TableColumnCustomizationEntry.Visibility.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TableColumnCustomizationEntry.encode(to:)(void *a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[2] = a2;
  v14 = a3 & 1;
  v17 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v11 = v13[1];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v11)
  {
    v16 = HIBYTE(a3);
    v15 = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TableColumnCustomizationEntry.hash(into:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x18D00F730](v5);
  }

  return MEMORY[0x18D00F6F0](v3);
}

Swift::Int TableColumnCustomizationEntry.hashValue.getter(uint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18D00F730](v4);
  }

  MEMORY[0x18D00F6F0](HIBYTE(a2));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationEntry.CodingKeys()
{
  if (*v0)
  {
    return 0x696C696269736976;
  }

  else
  {
    return 0x57746E6572727563;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x57746E6572727563 && a2 == 0xEC00000068746469;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationEntry@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized TableColumnCustomizationEntry.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationEntry()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18D00F730](v4);
  }

  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
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

  return *(a1 + 9) == *(a2 + 9);
}

uint64_t TableColumnCustomizationEntry.description.getter()
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x18D00C9B0](0x203A6874646977, 0xE700000000000000);
  type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v0 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0x696269736976202CLL, 0xEE00203A7974696CLL);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t TableColumnCustomizationID.TransientHint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.TransientHint.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TableColumnCustomizationID.Base.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, MEMORY[0x1E69E6F58]);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v4);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v4);
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v2;
  v15 = v2[1];
  if (v2[4])
  {
    v29 = *(v2 + 1);
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v16;
    v27 = v15;
    v28 = v29;
    lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint();
    v18 = v23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v11, v9);
  }

  return (*(v24 + 8))(v14, v17);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.TransientHint.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID.TransientHint@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized TableColumnCustomizationID.TransientHint.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnCustomizationID.TransientHint()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TableColumnCustomizationID.TransientHint()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationID.TransientHint()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationID.Base.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6569736E617274;
  }

  else
  {
    return 0x746963696C707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.Base.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746963696C707865 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xE900000000000074)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID.Base@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TableColumnCustomizationID.Base.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID.Base(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if (a2[4])
    {
      v8 = a1[2];
      v9 = a1[3];
      v10 = a2[2];
      v11 = a2[3];
      v12 = v4 == v6 && v5 == v7;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = v8 == v10 && v9 == v11;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[4])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t TableColumnCustomizationID.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v9;
  v12 = *(v2 + 32);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TableColumnCustomizationID.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnCustomizationID.Base()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TableColumnCustomizationID.Base()
{
  if (*(v0 + 32))
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationID.Base()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v8 = a1[2];
    v9 = a1[3];
    v10 = a2[2];
    v11 = a2[3];
    v12 = v4 == v6 && v5 == v7;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v8 == v10 && v9 == v11)
    {
      return 1;
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t TableColumnCustomizationID.description.getter()
{
  if (*(v0 + 32))
  {
    MEMORY[0x18D00C9B0](0x6569736E6172745BLL, 0xEC000000203A746ELL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](93, 0xE100000000000000);
    return 0;
  }

  else
  {
    MEMORY[0x18D00C9B0](*v0, *(v0 + 8));
    MEMORY[0x18D00C9B0](93, 0xE100000000000000);
    return 0x6963696C7078655BLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyTableColumnCustomization(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for Projection.get(base:) in conformance TableColumnCustomization<A>.ToAnyCustomization@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized TableColumnCustomization.ToAnyCustomization.get(base:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double SceneStorage.init<A>(wrappedValue:_:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = type metadata accessor for TableColumnCustomization();
  v9 = type metadata accessor for TableColumnCustomizationTransform();
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v10, v14, v8, v9, v15);
  v11 = v15[1];
  *a4 = v15[0];
  a4[1] = v11;
  result = *&v16;
  v13 = v17;
  a4[2] = v16;
  a4[3] = v13;
  return result;
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for TableColumnCustomizationTransform();
  v13[0] = v7;
  v13[1] = v8;
  v10 = type metadata accessor for TableColumnCustomization();
  v11 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v9, &protocol witness table for TableColumnCustomizationTransform<A>, a4, v13, v10);

  return v11;
}

uint64_t TableColumnCustomizationTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a4 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13);
    outlined destroy of AnyHashable(v12);
    result = swift_dynamicCast();
    if (result)
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      *(a5 + 24) = type metadata accessor for TableColumnCustomization();
      swift_getWitnessTable();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(a2, a3);
    }
  }

  else
  {
    result = outlined destroy of AnyHashable(v12);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

void static TableColumnCustomizationTransform.readValue(from:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 dataForKey_];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    *(a4 + 24) = type metadata accessor for TableColumnCustomization();
    swift_getWitnessTable();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

void static TableColumnCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7CA0];
  _sypSgWOcTm_0(a1, v17, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  if (v17[3])
  {
    type metadata accessor for TableColumnCustomization();
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v17[0] = v15;
      v17[1] = v16;
      type metadata accessor for Optional();
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v11 = v10;

      outlined copy of Data._Representation(v9, v11);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v9, v11);
      v13 = MEMORY[0x18D00C850](a3, a4);
      [a2 setObject:isa forKey:{v13, WitnessTable}];
      swift_unknownObjectRelease();

      outlined consume of Data?(v9, v11);
      return;
    }
  }

  else
  {
    _sypSgWOhTm_0(v17, &lazy cache variable for type metadata for Any?, v7 + 8);
  }

  v8 = MEMORY[0x18D00C850](a3, a4);
  [a2 removeObjectForKey_];
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x18D00F6B0](*(v1 + 40), a1, 4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = MEMORY[0x18D00F6B0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x18D00F6F0](0);
    v4 = a2 & 1;
  }

  else
  {
    v4 = a2 - 1;
  }

  MEMORY[0x18D00F6F0](v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1, double a2)
{
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(a1, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v4, a1, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x18D00F6F0](1);
    LODWORD(v4) = a1;
  }

  else
  {
    v4 = HIDWORD(a1);
    MEMORY[0x18D00F6F0](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](a3);
  MEMORY[0x18D00F6F0](a4);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*v8 == a1)
      {
        v9 = *(v8 + 8);
        switch(v9)
        {
          case 2:
            if (a2 == 2)
            {
              return result;
            }

            break;
          case 3:
            if (a2 == 3)
            {
              return result;
            }

            break;
          case 4:
            if (a2 == 4)
            {
              return result;
            }

            break;
          default:
            if (a2 - 2 >= 3 && ((v9 ^ a2) & 1) == 0)
            {
              return result;
            }

            break;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && a2 == v10)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 12 * result;
      v9 = *v8;
      if (*(v8 + 8))
      {
        if ((a2 & 1) != 0 && v9 == a1)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    type metadata accessor for NSObject(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a4;
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == a3 && v17 == v12)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t specialized static _SymbolEffect.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v24[0] = *a1;
  v24[1] = v3;
  v24[2] = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v10 = v5 >> 12;
  v29 = v9;
  if (v5 >> 12 <= 3)
  {
    if (v5 >> 12 > 1)
    {
      if (v10 != 2)
      {
        if ((v9 & 0xF000) == 0x3000)
        {
          v19 = v2;
          v20 = v3;
          v21 = v4 & 1;
          v22 = HIDWORD(v4);
          v23 = v5 & 0x101;
          v14 = v6;
          v15 = v7;
          v16 = v8 & 1;
          v17 = HIDWORD(v8);
          v18 = v9 & 0x101;
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          v12 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v19, &v14);
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if ((v9 & 0xF000) != 0x2000)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v10)
      {
        if (v9 < 0x1000)
        {
          v19 = v2;
          LOBYTE(v20) = v3 & 1;
          v14 = v6;
          LOBYTE(v15) = v7 & 1;
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          v12 = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v19, &v14);
LABEL_33:
          v11 = v12;
          outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
          outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
          return v11 & 1;
        }

        goto LABEL_34;
      }

      if ((v9 & 0xF000) != 0x1000)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    v19 = v2;
    LODWORD(v20) = v3;
    BYTE4(v20) = BYTE4(v3) & 1;
    v14 = v6;
    LODWORD(v15) = v7;
    BYTE4(v15) = BYTE4(v7) & 1;
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    v12 = specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)(&v19, &v14);
    goto LABEL_33;
  }

  if (v5 >> 12 <= 5)
  {
    if (v10 == 4)
    {
      if ((v9 & 0xF000) == 0x4000)
      {
        goto LABEL_24;
      }
    }

    else if ((v9 & 0xF000) == 0x5000)
    {
      v19 = v2;
      LODWORD(v20) = v3;
      v14 = v6;
      LODWORD(v15) = v7;
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      v12 = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v19, &v14);
      goto LABEL_33;
    }

LABEL_34:
    outlined copy of _SymbolEffect.Trigger?(v2);
    goto LABEL_35;
  }

  if (v10 == 6)
  {
    if ((v9 & 0xF000) == 0x6000)
    {
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
      if (v2 == v6)
      {
        v11 = BYTE4(v2) & 1 ^ ((v6 & 0x100000000) == 0);
      }

      else
      {
        v11 = 0;
      }

      return v11 & 1;
    }

    goto LABEL_35;
  }

  if (v10 != 7)
  {
    if ((v9 & 0xF000) == 0x8000 && !(v7 | v6 | v8) && v9 == 0x8000)
    {
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
LABEL_41:
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_35;
  }

  if ((v9 & 0xF000) != 0x7000)
  {
LABEL_35:
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
    v11 = 0;
    return v11 & 1;
  }

  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
  v11 = 0;
  if ((v2 & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      return v11 & 1;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    return v11 & 1;
  }

  if (v2 == v6 && ((v2 >> 40) & 1) == ((v6 >> 40) & 1) && (HIWORD(v2) & 1) == (HIWORD(v6) & 1))
  {
    goto LABEL_41;
  }

  return v11 & 1;
}

uint64_t specialized TableColumnCustomization.ToAnyCustomization.get(base:)(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [TableColumnCustomizationID](255, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized TableColumnCustomizationID.TransientHint.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.TransientHint.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized TableColumnCustomizationID.Base.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v5;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v3);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v3);
  v11 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();
  v15 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v16 = v7;
  v17 = v39;
  v18 = v40;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v47 = v19;
  v48 = v19 + 32;
  v49 = 0;
  v50 = v20;
  v21 = specialized Collection<>.popFirst()();
  v22 = v11;
  if (v21 == 2 || v49 != v50 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v27 = &type metadata for TableColumnCustomizationID.Base;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v41 + 8))(v13, v22);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  LODWORD(v42) = v21;
  if (v21)
  {
    LOBYTE(v43) = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v13;
    lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint();
    v23 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v41;
    (*(v38 + 8))(v17, v23);
    (*(v24 + 8))(v37, v22);
    swift_unknownObjectRelease();
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
  }

  else
  {
    LOBYTE(v43) = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v16;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v34;
    (*(v37 + 1))(v9, v29);
    (*(v41 + 8))(v13, v22);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v51);
  *v18 = v30;
  *(v18 + 8) = v31;
  *(v18 + 16) = v32;
  *(v18 + 24) = v33;
  *(v18 + 32) = v42 & 1;
  return result;
}

uint64_t specialized TableColumnCustomizationID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v17;
  v13 = v16;
  v14 = v15;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v13;
  *v9 = v14;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  return result;
}

uint64_t specialized TableColumnCustomizationEntry.Visibility.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.HiddenCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, MEMORY[0x1E69E6F48]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v29 - v4;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.VisibleCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v2);
  v34 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v29 - v6;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v2);
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v2);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();
  v15 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v10;
    v38 = v8;
    v17 = v35;
    v18 = v36;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v14;
    if (v21 == 3 || v41 != v42 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      v10 = swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v26 = &type metadata for TableColumnCustomizationEntry.Visibility;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v37 + 8))(v14, v12);
    }

    else
    {
      v10 = v21;
      if (v21)
      {
        v23 = v37;
        if (v21 != 1)
        {
          LODWORD(v38) = v21;
          v43 = 2;
          lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v32 + 8))(v18, v33);
          (*(v23 + 8))(v22, v12);
          swift_unknownObjectRelease();
          v10 = v38;
          goto LABEL_9;
        }

        v43 = 1;
        lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v31 + 8))(v17, v34);
        (*(v23 + 8))(v22, v12);
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v37;
        (*(v30 + 8))(v16, v38);
        (*(v28 + 8))(v14, v12);
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t specialized TableColumnCustomizationEntry.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v10;
    v11 = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized TableColumnCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  outlined init with copy of Any(a1, v15);
  type metadata accessor for TableColumnCustomization();
  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v15[0] = v11;
    v15[1] = v12;
    swift_getWitnessTable();
    v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v9 = v8;

    v11 = a3;
    v12 = a4;

    AnyHashable.init<A>(_:)();
    if (v9 >> 60 == 15)
    {
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v13 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E6969080];
    }

    v11 = v7;
    v12 = v9;
    v14 = v10;
    return specialized Dictionary.subscript.setter(&v11, v15);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

uint64_t specialized TableColumnCustomizationEntry.Visibility.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6269736976 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized TableColumnCustomization.ToAnyCustomization.set(base:newValue:)(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;

  a1[1] = a3;
  return result;
}

void *assignWithCopy for TableColumnCustomization(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnCustomizationEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnCustomizationEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}