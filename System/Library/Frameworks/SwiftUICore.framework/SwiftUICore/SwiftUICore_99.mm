uint64_t key path setter for _GraphInputs.opacityAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.opacityAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.opacityAccessibilityProvider.modify(uint64_t *a1))()
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.opacityAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.OpacityAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.opacityAccessibilityProvider.modify(uint64_t *a1))()
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.opacityAccessibilityProvider.modify;
}

void _GraphInputs.opacityAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

float ShapeStyle.opacity(_:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a1, v8);
  (*(v7 + 32))(a2, v10, a1);
  *&a3 = a3;
  *(a2 + *(type metadata accessor for _OpacityShapeStyle() + 36)) = LODWORD(a3);
  return result;
}

uint64_t ShapeStyle.opacities(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  *(a3 + *(type metadata accessor for _OpacitiesShapeStyle() + 36)) = a1;
}

uint64_t partial apply for closure #1 in View.repeatingOpacity(from:to:animation:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = 40;
  if (a2)
  {
    v4 = 32;
  }

  v6 = *(v2 + v4);
  return View.modifier<A>(_:)(&v6, v3, &type metadata for _OpacityEffect);
}

unint64_t specialized _OpacityEffect.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_37:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_11;
      }

      if (v5 < v3)
      {
        goto LABEL_35;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_35:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v6 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v3 = v2[1] + result;
          if (v4 < v3)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_35;
          }

          v3 = v2[1] + 4;
          if (v4 < v3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          v3 = v2[1];
          goto LABEL_4;
        }

        if (v6 != 1)
        {
          goto LABEL_35;
        }

        v3 = v2[1] + 8;
        if (v4 < v3)
        {
          goto LABEL_35;
        }
      }

      v2[1] = v3;
      goto LABEL_4;
    }

    if (v6 == 2)
    {
      break;
    }

    if (v6 != 5)
    {
      goto LABEL_35;
    }

    v7 = v2[1];
LABEL_28:
    v3 = v7 + 4;
    if (v4 < v7 + 4)
    {
      goto LABEL_35;
    }

    v2[1] = v3;
LABEL_4:
    if (v3 >= v4)
    {
      goto LABEL_37;
    }
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v7 = v2[1];
    if (v4 < v7 + result)
    {
      goto LABEL_35;
    }

    v2[3] = 13;
    v2[4] = v7 + result;
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in _OpacityShapeStyle._apply(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + *(type metadata accessor for _OpacityShapeStyle() + 36));
  *a2 = a1;
  *(a2 + 8) = v6;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OpacityShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xFC;
  if (v6 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 19) & ~v6 & 0x1FC));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

uint64_t assignWithCopy for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 40) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 24) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithCopy for OpacityResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void static _GlassEffectTransition.identity.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

double static _GlassEffectTransition.matchedGeometry.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_18DDB6AD0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 0;
  return result;
}

void static _GlassEffectTransition.materialize.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 1;
}

uint64_t static _GlassEffectTransition.matchedGeometry(properties:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = 0;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition.Kind(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] == a2[1];
  if (a1[2] != a2[2])
  {
    v4 = 0;
  }

  if (LODWORD(v2) != LODWORD(v3))
  {
    v4 = 0;
  }

  if (a2[3])
  {
    v4 = 0;
  }

  v5 = *(a1 + 2) | *(a1 + 1) | *&v2;
  v6 = *(a2 + 2) | *(a2 + 1) | *&v3;
  v7 = v6 == 0;
  if (!*(a2 + 24))
  {
    v7 = 0;
  }

  v8 = v6 != 0;
  if ((a2[3] & 1) == 0)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (*(a1 + 24) == 1)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition.MatchedGeometryConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

BOOL static _GlassEffectTransition.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (*(a1 + 24) != 1)
  {
    if (a2[3])
    {
      return 0;
    }

    v8 = LODWORD(v2) == LODWORD(v5) && v3 == v6;
    return v8 && v4 == v7;
  }

  if (!(*&v4 | *&v3 | *&v2))
  {
    v11 = *&v7 | *&v6 | *&v5;
    return *(a2 + 24) && v11 == 0;
  }

  return (a2[3] & 1) != 0 && *&v7 | *&v6 | *&v5;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (*(a1 + 24) == 1)
  {
    if (*&v4 | *&v3 | *&v2)
    {
      if (a2[3])
      {
        return (*&v7 | *&v6 | *&v5) != 0;
      }
    }

    else if (*(a2 + 24))
    {
      return (*&v7 | *&v6 | *&v5) == 0;
    }
  }

  else if ((a2[3] & 1) == 0 && LODWORD(v2) == LODWORD(v5) && v3 == v6)
  {
    return v4 == v7;
  }

  return 0;
}

uint64_t specialized getter of transform #1 in static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)(_BYTE *a1)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v2;
  *a1 = v2;
  a1[4] = 0;
  return result;
}

uint64_t closure #1 in GlassEffectTransitionModifier.Transform.value.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if ((a5 & 0x100) != 0)
  {
    v5 = *result;
    v6 = *(*result + 16);
    if (v6)
    {
      v7 = a5;
      v9 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
      }

      if (v6 > *(v5 + 16))
      {
        __break(1u);
      }

      else
      {
        v12 = (v5 + 208);
        do
        {
          *(v12 - 3) = a2;
          *(v12 - 2) = a3;
          *(v12 - 1) = a4;
          *v12 = v7 & 1;
          v12 += 656;
          --v6;
        }

        while (v6);
        *v9 = v5;
      }
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance GlassEffectTransitionModifier.Transform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *Value;
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 25);
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 41) = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in GlassEffectTransitionModifier.Transform.value.getter;
  *(result + 24) = v6;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout [ScrollTargetRole.Role : [ScrollableCollection]]) -> ();
  a1[1] = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for _GlassEffectTransition.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GlassEffectTransitionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEffectTransitionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in GlassEffectTransitionModifier.Transform.value.getter(uint64_t a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return closure #1 in GlassEffectTransitionModifier.Transform.value.getter(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | *(v1 + 40));
}

unint64_t instantiation function for generic protocol witness table for GlassEffectTransitionModifier.Transform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform();
  *(a1 + 8) = result;
  return result;
}

uint64_t _ShadowEffect.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double _ShadowEffect.resolve(in:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v11 = *a1;
  (*(*a2 + 120))(&v12, &v11);
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = 1056964608;
  *(a3 + 52) = 0;
  return result;
}

__n128 _ShadowEffect._Resolved.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 45);
  return result;
}

__n128 _ShadowEffect._Resolved.style.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 45) = *(a1 + 45);
  return result;
}

double _ShadowEffect._Resolved.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double _ShadowEffect._Resolved.animatableData.setter(uint64_t a1)
{
  v3 = *a1;
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v3 = v11;
  }

  v10 = vmulq_f32(v3, v4);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v10.f32[0];
    v7 = v10.i32[2];
    v6 = v10.i32[1];
    v8 = v10.i32[3];
  }

  else
  {
    v13 = 2;
    v12 = v10;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
  }

  *v1 = v5;
  *(v1 + 4) = v6;
  *(v1 + 8) = v7;
  *(v1 + 12) = v8;
  result = *(a1 + 32);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 40) = result;
  return result;
}

void (*_ShadowEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return _ShadowEffect._Resolved.animatableData.modify;
}

void _ShadowEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  _ShadowEffect._Resolved.animatableData.setter(v3);

  free(v2);
}

double _ShadowEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  *v11 = v1[2];
  *&v11[13] = *(v1 + 45);
  v4 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi3_(&v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *v11;
  v8 = *&v11[16];
  v4[3] = *v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ShadowEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  *v11 = v1[2];
  *&v11[13] = *(v1 + 45);
  v4 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi3_(&v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *v11;
  v8 = *&v11[16];
  v4[3] = *v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _ShadowEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ShadowEffect._Resolved(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return _ShadowEffect._Resolved.animatableData.modify;
}

BOOL static _ShadowEffect.== infix(_:_:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 == a2)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return a5 == a8 && a4 == a7;
  }

  v14 = (*(*a1 + 88))(a2);
  result = 0;
  if ((v14 & 1) != 0 && a3 == a6)
  {
    return a5 == a8 && a4 == a7;
  }

  return result;
}

__n128 protocol witness for EnvironmentalModifier.resolve(in:) in conformance _ShadowEffect@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[3];
  v7 = *(v2 + 1);
  v8 = *a1;
  (*(*v4 + 120))(&v9, &v8);
  *a2 = v9;
  *(a2 + 16) = v10;
  result = v7;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
  *(a2 + 48) = 1056964608;
  *(a2 + 52) = 0;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _ShadowEffect(double *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*a1 == *a2)
  {
    if (v3 != v6)
    {
      return 0;
    }

    return v4 == v7 && v2 == v5;
  }

  v8 = (*(**a1 + 88))();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ShadowEffect._Resolved(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithTake for _ShadowEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShadowEffect._Resolved(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 53))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShadowEffect._Resolved(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
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

  *(result + 53) = v3;
  return result;
}

uint64_t LayoutProxyAttributes.init(layoutComputer:traitsList:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t LayoutProxyAttributes.init(traitsList:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *MEMORY[0x1E698D3F8];
  a2[1] = result;
  return result;
}

uint64_t LayoutProxyAttributes.init(layoutComputer:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *MEMORY[0x1E698D3F8];
  *a2 = result;
  a2[1] = v2;
  return result;
}

void LayoutProxyAttributes.init()(_DWORD *a1@<X8>)
{
  v1 = *MEMORY[0x1E698D3F8];
  *a1 = *MEMORY[0x1E698D3F8];
  a1[1] = v1;
}

double LayoutProxy.init(context:attributes:)@<D0>(int a1@<W0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 4) = *a2;
  return result;
}

uint64_t LayoutProxy.init(context:layoutComputer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *MEMORY[0x1E698D3F8];
  if ((a2 & 0x100000000) != 0)
  {
    v4 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v4 = a2;
  }

  *a3 = result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

uint64_t LayoutProxy.layoutComputer.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v4 = *(InputValue + 1);
  *a1 = *InputValue;
  a1[1] = v4;
}

void LayoutProxy.traits.getter(void *a1@<X8>)
{
  if (*(v1 + 8) == *MEMORY[0x1E698D3F8])
  {
    *a1 = 0;
  }

  else
  {
    type metadata accessor for ViewList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 56))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

CGSize __swiftcall LayoutProxy.idealSize()()
{
  v1 = *(v0 + 2);
  v9 = *v0;
  v10 = v1;
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  v5 = static _ProposedSize.unspecified;
  v6 = byte_1ED52ECF8;
  v7 = qword_1ED52ED00;
  v8 = byte_1ED52ED08;
  LayoutProxy.size(in:)(&v5);
  result.height = v3;
  result.width = v2;
  return result;
}

void LayoutProxy.finallyPlaced(at:in:layoutDirection:)(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = *(a1 + 24);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = *a2;
  v16 = *(v4 + 2);
  v28 = *v4;
  v29 = v16;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  LayoutProxy.dimensions(in:)(&v24, v30);
  v17 = v30[0];
  v18 = v30[1];
  v19 = rect;
  v20 = v33;
  v21 = v13 - v11 * rect;
  v22 = v32;
  v23 = v14 - v12 * *&v32;
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v22;
  *(a3 + 56) = v20;
  if (v15 == 1)
  {
    *a3 = a4 - CGRectGetMaxX(*&v21);
  }
}

uint64_t LayoutProxy.ignoresAutomaticPadding.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v4 = (*(*v2 + 96))();

    return v4 & 1;
  }

  return result;
}

uint64_t LayoutProxyCollection.init(context:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t LayoutProxyCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      *a2 = *v2;
      *(a2 + 4) = *(v3 + 8 * result + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 8) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance LayoutProxyCollection(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 8) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance LayoutProxyCollection(uint64_t *a1, unint64_t *a2))(void *a1)
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
  *(v4 + 32) = LayoutProxyCollection.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

char *LayoutProxyCollection.subscript.read(char *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > a2)
    {
      v4 = *(v3 + 8 * a2 + 32);
      *result = *v2;
      *(result + 4) = v4;
      return _ViewInputs.base.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance LayoutProxyCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *(v2 + 8), result[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = *v2;
    *(a2 + 24) = result;
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance LayoutProxyCollection(void *a1@<X8>)
{
  v2 = *(*(v1 + 8) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 8) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance LayoutProxyCollection(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 8) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 8) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance LayoutProxyCollection(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance LayoutProxyCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

unint64_t lazy protocol witness table accessor for type LayoutProxyCollection and conformance LayoutProxyCollection()
{
  result = lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection;
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection;
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection;
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection;
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<LayoutProxyCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<LayoutProxyCollection>(255, &lazy cache variable for type metadata for Slice<LayoutProxyCollection>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<LayoutProxyCollection> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<LayoutProxyCollection>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<LayoutProxyCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type LayoutProxyCollection and conformance LayoutProxyCollection();
    v7 = a3(a1, &type metadata for LayoutProxyCollection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t assignWithCopy for LayoutProxyCollection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for LayoutProxyCollection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

char *RasterizationOptions.init(colorMode:allowedDynamicRange:flags:)@<X0>(char *result@<X0>, char *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a2;
  v6 = *a3;
  *a4 = -1;
  *(a4 + 4) = v4;
  *(a4 + 5) = v5;
  *(a4 + 8) = v6;
  *(a4 + 12) = 3;
  return result;
}

Swift::Int ColorRenderingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::ColorRenderingMode_optional __swiftcall ColorRenderingMode.init(protobufValue:)(Swift::UInt protobufValue)
{
  v2 = 3;
  if (protobufValue < 3)
  {
    v2 = protobufValue;
  }

  *v1 = v2;
  return protobufValue;
}

uint64_t static RasterizationOptions.Flags.defaultFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static RasterizationOptions.Flags.defaultFlags;
  return result;
}

uint64_t (*RasterizationOptions.isAccelerated.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return RasterizationOptions.isAccelerated.modify;
}

uint64_t (*RasterizationOptions.isOpaque.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return RasterizationOptions.isOpaque.modify;
}

uint64_t (*RasterizationOptions.rendersAsynchronously.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return RasterizationOptions.rendersAsynchronously.modify;
}

uint64_t (*RasterizationOptions.rendersFirstFrameAsynchronously.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return RasterizationOptions.rendersFirstFrameAsynchronously.modify;
}

uint64_t RasterizationOptions.prefersDisplayCompositing.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t (*RasterizationOptions.prefersDisplayCompositing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 8) != 0;
  return RasterizationOptions.prefersDisplayCompositing.modify;
}

uint64_t RasterizationOptions.prefersDisplayCompositing.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFF7;
  return result;
}

uint64_t (*RasterizationOptions.allowsPackedDrawable.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return RasterizationOptions.allowsPackedDrawable.modify;
}

uint64_t RasterizationOptions.fixedPixelFormat.setter(uint64_t result)
{
  if (result)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFBFF | v2;
  return result;
}

uint64_t (*RasterizationOptions.fixedPixelFormat.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x400) != 0;
  return RasterizationOptions.fixedPixelFormat.modify;
}

uint64_t RasterizationOptions.fixedPixelFormat.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 1024;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFBFF;
  return result;
}

uint64_t RasterizationOptions.alphaOnly.setter(uint64_t result)
{
  if (result)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFBF | v2;
  return result;
}

uint64_t (*RasterizationOptions.alphaOnly.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x40) != 0;
  return RasterizationOptions.alphaOnly.modify;
}

uint64_t RasterizationOptions.alphaOnly.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFBF;
  return result;
}

uint64_t RasterizationOptions.requiresLayer.setter(uint64_t result)
{
  if (result)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t (*RasterizationOptions.requiresLayer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x80) != 0;
  return RasterizationOptions.requiresLayer.modify;
}

uint64_t RasterizationOptions.requiresLayer.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 128;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFF7F;
  return result;
}

void RasterizationOptions.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[2];
  v5 = *(v0 + 12);
  if (*(v0 + 4))
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v2);
  }

  if (v1 != -1)
  {
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
      return;
    }

    if (v1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v5) ^ (v5 >> 63));
  }

  if (v3 != 3)
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

void _DrawingGroupEffect.rasterizationOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

uint64_t _DrawingGroupEffect.rasterizationOptions.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 8);
  v4 = *(result + 12);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t _DrawingGroupEffect.isOpaque.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.isOpaque.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return _DrawingGroupEffect.isOpaque.modify;
}

uint64_t _DrawingGroupEffect.isOpaque.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFFD;
  return result;
}

_BYTE *(*_DrawingGroupEffect.colorMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return _DrawingGroupEffect.colorMode.modify;
}

uint64_t _DrawingGroupEffect.init(opaque:colorMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (one-time initialization token for defaultFlags != -1)
  {
    v7 = result;
    v8 = a3;
    swift_once();
    result = v7;
    a3 = v8;
  }

  v4 = static RasterizationOptions.Flags.defaultFlags | 3;
  v5 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFC;
  *a3 = -1;
  if (result)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a3 + 4) = v3;
  *(a3 + 5) = 3;
  *(a3 + 8) = v6;
  *(a3 + 12) = 3;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance _DrawingGroupEffect.ChildEnvironment@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, 0, 255);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v4, *a1);
  }
}

BOOL static _DrawingGroupEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _DrawingGroupEffect(int *a1, int *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  return specialized static RasterizationOptions.== infix(_:_:)(&v14, &v10);
}

uint64_t _DrawingGroupEffect._rendersAsynchronously.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect._rendersAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return _DrawingGroupEffect._rendersAsynchronously.modify;
}

uint64_t _DrawingGroupEffect._rendersAsynchronously.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFFB;
  return result;
}

unint64_t _DrawingGroupEffect.rbColorMode.getter()
{
  LODWORD(v1) = *v0;
  if (*v0 == -1)
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | ((*v0 == -1) << 32);
}

uint64_t _DrawingGroupEffect.rbColorMode.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.rbColorMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  v3 = *v1 == -1;
  if (*v1 == -1)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v4 = v3;
  *(a1 + 12) = v4;
  return _DrawingGroupEffect.rbColorMode.modify;
}

uint64_t _DrawingGroupEffect.rbColorMode.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = -1;
  }

  else
  {
    v1 = *(result + 8);
  }

  **result = v1;
  return result;
}

uint64_t _DrawingGroupEffect.rendersFirstFrameAsynchronously.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.rendersFirstFrameAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return _DrawingGroupEffect.rendersFirstFrameAsynchronously.modify;
}

uint64_t _DrawingGroupEffect.rendersFirstFrameAsynchronously.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFEF;
  return result;
}

uint64_t (*_DrawingGroupEffect.isAccelerated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return _DrawingGroupEffect.isAccelerated.modify;
}

uint64_t _DrawingGroupEffect.allowsPackedDrawable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.allowsPackedDrawable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return _DrawingGroupEffect.allowsPackedDrawable.modify;
}

uint64_t _DrawingGroupEffect.allowsPackedDrawable.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFDF;
  return result;
}

uint64_t DrawingGroupDynamicRange.value.getter@<X0>(_BYTE *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7 = v4;
  v8 = v3;

  v6 = *(AGGraphGetValue() + 5);
  EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v6, &v9);

  *a1 = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type ColorRenderingMode and conformance ColorRenderingMode()
{
  result = lazy protocol witness table cache variable for type ColorRenderingMode and conformance ColorRenderingMode;
  if (!lazy protocol witness table cache variable for type ColorRenderingMode and conformance ColorRenderingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorRenderingMode and conformance ColorRenderingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags()
{
  result = lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags;
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags;
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags;
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags;
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RasterizationOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RasterizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DrawingGroupDynamicRange(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DrawingGroupDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList();
  *(a1 + 8) = result;
  return result;
}

void (*EnvironmentValues.isLuminanceReduced.modify(void *a1))(uint64_t *a1)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v5);
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
  return EnvironmentValues.isLuminanceReduced.modify;
}

void EnvironmentValues.isLuminanceReduced.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016ReducedLuminanceK033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t CountViews.init(source:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for CountViews();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t static CountViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  v56[0] = *a1;
  v56[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v56[2] = a1[2];
  v56[3] = v10;
  v14 = a1[2];
  v13 = a1[3];
  v56[4] = a1[4];
  v53 = v14;
  v54 = v13;
  v55 = a1[4];
  v15 = *&v56[0];
  v51 = v12;
  v52 = v11;
  outlined init with copy of _ViewListCountInputs(v56, &v46);
  outlined init with copy of _ViewListCountInputs(v56, &v46);
  v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v15);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(&v51, 0);
  outlined destroy of _ViewListCountInputs(v56);
  if ((v16 & 1) == 0)
  {
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v36 = v51;
    v37 = v52;
    v33 = v53;
    v34 = v54;
    v35 = v55;
    v31 = v51;
    v32 = v52;
    v17 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(&v36, &v46);
    v18 = v17(&v31, a3, a5);
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v41 = v31;
    v42 = v32;
    outlined destroy of _ViewListCountInputs(&v41);
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    v19 = &v46;
LABEL_7:
    outlined destroy of _ViewListCountInputs(v19);
    return v18;
  }

  v43 = v53;
  v44 = v54;
  v45 = v55;
  v41 = v51;
  v42 = v52;
  v38 = v53;
  v39 = v54;
  v40 = v55;
  v36 = v51;
  v37 = v52;
  v20 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(&v41, &v31);
  v18 = v20(&v36, a2, a4);
  v22 = v21;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v46 = v36;
  v47 = v37;
  outlined destroy of _ViewListCountInputs(&v46);
  if ((v22 & 1) == 0)
  {
    if (v18 < 1)
    {
      v38 = v53;
      v39 = v54;
      v40 = v55;
      v36 = v51;
      v37 = v52;
      outlined destroy of _ViewListCountInputs(&v36);
      return 0;
    }

    v30[2] = v53;
    v30[3] = v54;
    v30[4] = v55;
    v30[0] = v51;
    v30[1] = v52;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v25 = v51;
    v26 = v52;
    v23 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(v30, &v36);
    v18 = v23(&v25, a3, a5);
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v31 = v25;
    v32 = v26;
    outlined destroy of _ViewListCountInputs(&v31);
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v36 = v51;
    v37 = v52;
    v19 = &v36;
    goto LABEL_7;
  }

  v38 = v53;
  v39 = v54;
  v40 = v55;
  v36 = v51;
  v37 = v52;
  outlined destroy of _ViewListCountInputs(&v36);
  return v18;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CountViews<A, B>.MakeDynamicContent@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CountViewsProxy.count.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v2 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = ViewList.count.getter(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    static Update.end()();
    _MovableLockUnlock(v2);
  }

  return v1;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance RequiresSourceModifier(uint64_t a1, uint64_t *a2)
{
  v3 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(*a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(a2, v3 | 1);
}

void static ViewContentOffset.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ViewContentOffset(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t _ViewListInputs.updateStaticContentOffset(count:needsDynamicView:)(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + 128);
  if (v3 == 255)
  {
    v8 = 0;
    v7 = a2 & 1;
    goto LABEL_8;
  }

  v5 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (v3)
  {
    v6 = __OFADD__(v4, result);
    v7 = v4 + result;
    if (!v6)
    {
      result = v5;
      v8 = 1;
LABEL_8:
      *(v2 + 112) = result;
      *(v2 + 120) = v7;
      *(v2 + 128) = v8;
      return result;
    }

    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v5, result);
    result += v5;
    if (!v6)
    {
      v8 = 0;
      v7 = (v4 | a2) & 1;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Rule.value.getter in conformance _ViewListInputs.ContentOffsetMutation@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 4);
  result = AGGraphGetValue();
  v5 = *result;
  if (v3 == *MEMORY[0x1E698D3F8])
  {
    v6 = 0;
  }

  else
  {
    result = AGGraphGetValue();
    v6 = *result;
  }

  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v8;
  }

  return result;
}

uint64_t closure #1 in static CountViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *), uint64_t a7)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v13[2] = a6(0, v14);
  v13[3] = a2;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a7, v13, a2, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t static EnumeratedViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = a1[1];
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = a1[3];
  v34 = a1[4];
  v11 = *&v31[0];
  v12 = *(&v31[0] + 1) | 0x10800;
  *&v24[0] = *&v31[0];
  *(&v24[0] + 1) = *(&v31[0] + 1) | 0x10800;
  v24[1] = v8;
  v24[2] = v32;
  v13 = a1[4];
  v24[3] = v10;
  v24[4] = v13;
  v21 = v32;
  v22 = v10;
  v23 = v13;
  v19 = v24[0];
  v20 = v8;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v31, v26);
  outlined init with copy of _ViewListCountInputs(v24, v26);
  v15 = v14(&v19, a2, a4);
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v25[0] = v19;
  v25[1] = v20;
  outlined destroy of _ViewListCountInputs(v25);
  v26[0] = v11;
  v26[1] = v12;
  v16 = a1[2];
  v27 = a1[1];
  v28 = v16;
  v17 = a1[4];
  v29 = a1[3];
  v30 = v17;
  outlined destroy of _ViewListCountInputs(v26);
  return v15;
}

uint64_t *initializeBufferWithCopyOfBuffer for CountViews(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t assignWithTake for CountViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for CountViews.MakeDynamicContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CountViews.MakeDynamicContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t lazy protocol witness table accessor for type CountViewsOptions and conformance CountViewsOptions()
{
  result = lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions;
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions;
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions;
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions;
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }

  return result;
}

double (*_BrightnessEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _BrightnessEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi10_(v9);
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

double protocol witness for _RendererEffect.effectValue(size:) in conformance _BrightnessEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi10_(v9);
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

void type metadata accessor for RendererVisualEffect<_BrightnessEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_BrightnessEffect>)
  {
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<_BrightnessEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_BrightnessEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMonochromeEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22_ColorMonochromeEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA016_ColorMonochromeD0V9_ResolvedV_Tt3B5);
}

uint64_t ResetPositionTransform.init(position:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ContrastEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_ContrastEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _GrayscaleEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_GrayscaleEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _BrightnessEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_BrightnessEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n0oa24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e14E04view6inputss3_E7ju1_klv9ACyxq_GG_s3_E6m6VtFZAjz13_K0V_APtcfU0_s7_ef1_D0v72AA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_nD4VTG5AKyAA15ModifiedContentVyAA01_I16Modifier_ContentVyAA28GlassTransitionStateModifier33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGARGGTf1nnncn_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v60 = *(a2 + 32);
  v61 = v6;
  v62 = v7;
  v63 = *(a2 + 80);
  v8 = *(a2 + 16);
  v58 = *a2;
  v59 = v8;
  v41 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 36);
  if ((v10 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) != 0 && (v10 & 0x2000) == 0)
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    v11 = AGMakeUniqueID();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    v38 = v11;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v58, v11);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    v38 = 0;
  }

  v37 = *(a2 + 48);
  v12 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v37);
  if (v12)
  {
    v13 = *(a2 + 48);
    v54 = *(a2 + 32);
    v55 = v13;
    v56 = *(a2 + 64);
    v57 = *(a2 + 80);
    v14 = *(a2 + 16);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
    DWORD1(v62) = v15;
  }

  v50[2] = v60;
  v50[3] = v61;
  v50[4] = v62;
  v51 = v63;
  v50[0] = v58;
  v50[1] = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v44 = v58;
  v45 = v59;
  outlined init with copy of _ViewInputs(v50, &v52);
  specialized closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)(&v44, a3, v42);
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v52 = v44;
  v53 = v45;
  outlined destroy of _ViewInputs(&v52);
  if ((v12 & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = ++lastIdentity;
  if ((v10 & 0x100) == 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
LABEL_11:
    v18 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v18;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v19 = *(a2 + 16);
    v44 = *a2;
    v45 = v19;
    swift_beginAccess();
    v20 = CachedEnvironment.animatedPosition(for:)(&v44);
    v21 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v21;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v22 = *(a2 + 16);
    v44 = *a2;
    v45 = v22;
    v23 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v24 = *(v9 + 16);
    v25 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v42[0]);
    if ((v25 & 0x100000000) == 0)
    {
      v17 = v25;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v41, v44);
    if (v26)
    {
      v27 = *(v26 + 72);
    }

    else
    {
      v27 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v41, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    v30 = *(a2 + 60);
    v31 = *(a2 + 68);
    v32 = *(a2 + 76);
    *&v44 = __PAIR64__(a1, v16);
    *(&v44 + 1) = __PAIR64__(v23, v20);
    *&v45 = __PAIR64__(v31, v30);
    *(&v45 + 1) = __PAIR64__(v32, v24);
    LODWORD(v46) = v17;
    BYTE4(v46) = v27;
    *(&v46 + 1) = __PAIR64__(v29, v38);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>();
    v33 = Attribute.init<A>(body:value:flags:update:)();
    if ((v10 & 0x20) != 0)
    {
      v34 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v37);
      if (v10 & 0x2000) == 0 && (v34)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v33, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_24:
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v44 = v58;
    v45 = v59;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v42[0];
    a4[1] = v42[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v41, &v44);
  result = AGWeakAttributeGetAttribute();
  v17 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v36 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    v36(&v44, 0);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a14UI21StyledTextni5V010_e63InnerF033_641995D812913A47B866B20B88782376LL4view6inputsAA01_F7j6VAA11_kl13VyACG_AA01_F6M21VtFZAiA01_Q0V_ANtcfU_AA0rsnI0VXMtAKyAUG09AttributeK09AttributeVyAA16_ShapeStyle_PackVGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v52 = *(a2 + 32);
  v53 = v10;
  v11 = *(a2 + 68);
  v54 = *(a2 + 64);
  v12 = *(a2 + 16);
  v50 = *a2;
  v51 = v12;
  v41 = *(a2 + 72);
  v42 = *(a2 + 80);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v13)
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 64);
    v16 = *(a2 + 16);
    v57 = *(a2 + 32);
    v58 = v14;
    v59 = v15;
    v60 = *(a2 + 80);
    v55 = *a2;
    v56 = v16;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v44);
    v11 = CachedEnvironment.animatedPosition(for:)(&v55);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v55);
  }

  v57 = v52;
  v58 = v53;
  v55 = v50;
  v56 = v51;
  *&v59 = __PAIR64__(v11, v54);
  *(&v59 + 1) = v41;
  v60 = v42;
  outlined init with copy of _ViewInputs(&v55, &v44);
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(a3, &v55, a4, 0, v40);
  outlined destroy of _ViewInputs(&v55);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    v46 = v52;
    v47 = v53;
    v44 = v50;
    v45 = v51;
    *&v48 = __PAIR64__(v11, v54);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a5 = v40[0];
    a5[1] = v40[1];
    return result;
  }

  v39 = a1;
  v17 = ++lastIdentity;
  v18 = *a2;
  v19 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v21 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v21;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v22 = *(a2 + 16);
    v44 = *a2;
    v45 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedPosition(for:)(&v44);
    v24 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v24;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v25 = *(a2 + 16);
    v44 = *a2;
    v45 = v25;
    v26 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v27 = *(v19 + 16);
    v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v28 & 0x100000000) == 0)
    {
      v20 = v28;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v18, v44);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v18, v44);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a2 + 60);
    v34 = *(a2 + 68);
    v35 = *(a2 + 76);
    *&v44 = __PAIR64__(v39, v17);
    *(&v44 + 1) = __PAIR64__(v26, v23);
    *&v45 = __PAIR64__(v34, v33);
    *(&v45 + 1) = __PAIR64__(v35, v27);
    LODWORD(v46) = v20;
    BYTE4(v46) = v30;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v32;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v36, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v17;
    v38 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    v38(&v44, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a17UI24DynamicLayouti124AdaptorV14MakeTransition33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV012makeArchivedH06helperyAA0H6HelperAELLVyxG_tAA0H0RzlFAA01_E7j5VAA6_k9V_AA01_E6M18VtcfU0_AnP_ARtcfU_AnIIegnr_Tf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, __int128 *)@<X2>, void *a4@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v57 = *(a2 + 32);
  v58 = v8;
  v9 = *(a2 + 68);
  v59 = *(a2 + 64);
  v10 = *(a2 + 16);
  v55 = *a2;
  v56 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v51 = *(a2 + 32);
    v52 = v12;
    v53 = v13;
    v54 = *(a2 + 80);
    v49 = *a2;
    v50 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v43);
    v9 = CachedEnvironment.animatedPosition(for:)(&v49);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v49);
  }

  v51 = v57;
  v52 = v58;
  v49 = v55;
  v50 = v56;
  *&v53 = __PAIR64__(v9, v59);
  *(&v53 + 1) = v40;
  v54 = v41;
  v45 = v57;
  v46 = v58;
  v47 = v53;
  v48 = v41;
  v43 = v55;
  v44 = v56;
  outlined init with copy of _ViewInputs(&v49, v42);
  a3(v39, &v43);
  outlined destroy of _ViewInputs(&v49);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v57;
    v46 = v58;
    v43 = v55;
    v44 = v56;
    *&v47 = __PAIR64__(v9, v59);
    *(&v47 + 1) = v40;
    v48 = v41;
    outlined destroy of _ViewInputs(&v43);

    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v15 = ++lastIdentity;
  v16 = *a2;
  v17 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v18 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v19 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v19;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v20 = *(a2 + 16);
    v43 = *a2;
    v44 = v20;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedPosition(for:)(&v43);
    v22 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v22;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v23 = *(a2 + 16);
    v43 = *a2;
    v44 = v23;
    v24 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v25 = *(v17 + 16);
    v26 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v26 & 0x100000000) == 0)
    {
      v18 = v26;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v16, v43);
    if (v27)
    {
      v28 = *(v27 + 72);
    }

    else
    {
      v28 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v16, v43);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a2 + 60);
    v32 = *(a2 + 68);
    v33 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v15);
    *(&v43 + 1) = __PAIR64__(v24, v21);
    *&v44 = __PAIR64__(v32, v31);
    *(&v44 + 1) = __PAIR64__(v33, v25);
    LODWORD(v45) = v18;
    BYTE4(v45) = v28;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v30;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
    v34 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v34, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v16, &v43);
  Attribute = AGWeakAttributeGetAttribute();
  v18 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v15;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m116VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_Opacityd8VG_AA11_nD4VTG5AKyAA0qR0VyAUyAA01_ix1_R0VyAA020GlassTransitionStateX033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA08_OpacityD0VGARGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, __int128 *, uint64_t)@<X3>, void *a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v52 = *(a2 + 32);
  v53 = v10;
  v11 = *(a2 + 68);
  v54 = *(a2 + 64);
  v12 = *(a2 + 16);
  v50 = *a2;
  v51 = v12;
  v41 = *(a2 + 72);
  v42 = *(a2 + 80);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v13)
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 64);
    v16 = *(a2 + 16);
    v57 = *(a2 + 32);
    v58 = v14;
    v59 = v15;
    v60 = *(a2 + 80);
    v55 = *a2;
    v56 = v16;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v44);
    v11 = CachedEnvironment.animatedPosition(for:)(&v55);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v55);
  }

  v57 = v52;
  v58 = v53;
  v55 = v50;
  v56 = v51;
  *&v59 = __PAIR64__(v11, v54);
  *(&v59 + 1) = v41;
  v60 = v42;
  outlined init with copy of _ViewInputs(&v55, &v44);
  a4(v40, &v55, a3);
  outlined destroy of _ViewInputs(&v55);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    v46 = v52;
    v47 = v53;
    v44 = v50;
    v45 = v51;
    *&v48 = __PAIR64__(v11, v54);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a5 = v40[0];
    a5[1] = v40[1];
    return result;
  }

  v39 = a1;
  v17 = ++lastIdentity;
  v18 = *a2;
  v19 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v21 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v21;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v22 = *(a2 + 16);
    v44 = *a2;
    v45 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedPosition(for:)(&v44);
    v24 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v24;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v25 = *(a2 + 16);
    v44 = *a2;
    v45 = v25;
    v26 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v27 = *(v19 + 16);
    v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v28 & 0x100000000) == 0)
    {
      v20 = v28;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v18, v44);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v18, v44);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a2 + 60);
    v34 = *(a2 + 68);
    v35 = *(a2 + 76);
    *&v44 = __PAIR64__(v39, v17);
    *(&v44 + 1) = __PAIR64__(v26, v23);
    *&v45 = __PAIR64__(v34, v33);
    *(&v45 + 1) = __PAIR64__(v35, v27);
    LODWORD(v46) = v20;
    BYTE4(v46) = v30;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v32;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v36, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v17;
    v38 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    v38(&v44, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m123VtFZAjA01_K0V_APtcfU0_ACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ATLLVG_AA20_noD4VTG5AKyAA0rS0VyAUyAA018PrimitiveGlassItemI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA020GlassTransitionStateY0AWLLVGARGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(void *__return_ptr, void, void)@<X3>, void *a5@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 16);
  v62 = *a2;
  v63 = v8;
  v9 = *(a2 + 32);
  v60 = *(a2 + 36);
  v61 = *(a2 + 52);
  v11 = *(a2 + 64);
  v10 = *(a2 + 68);
  v12 = *(a2 + 72);
  v13 = *(a2 + 76);
  v14 = *(a2 + 60);
  v15 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v51 = v13;
  if (v15)
  {
    v46 = a4;
    v49 = v9;
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    v18 = *(a2 + 16);
    *v66 = *(a2 + 32);
    *&v66[16] = v16;
    *v67 = v17;
    *&v67[16] = *(a2 + 80);
    v64 = *a2;
    v65 = v18;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v56);
    v19 = CachedEnvironment.animatedPosition(for:)(&v64);
    swift_endAccess();
    *&v64 = __PAIR64__(*(a2 + 60), v19);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v11 = *(swift_dynamicCastClassUnconditional() + 248);

    v20 = *(a2 + 64);
    v21 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
    swift_endAccess();
    *&v64 = __PAIR64__(v21, v20);
    DWORD2(v64) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    v9 = v49 | 0x1C;
    v10 = v11;
    v13 = v51;
    a4 = v46;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v64);
  }

  v64 = v62;
  v65 = v63;
  *&v66[4] = v60;
  *&v66[20] = v61;
  *v66 = v9;
  *&v66[28] = v14;
  *v67 = v11;
  *&v67[4] = v10;
  *&v67[8] = v12;
  *&v67[12] = v13;
  outlined init with copy of _ViewInputs(&v64, &v56);
  a4(v54, &v64, a3);
  outlined destroy of _ViewInputs(&v64);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v47 = v14;
  v53 = ++lastIdentity;
  v24 = *a2;
  v25 = *(a2 + 16);
  v50 = v9;
  if ((*(a2 + 37) & 1) == 0)
  {
    v26 = *MEMORY[0x1E698D3F8];
LABEL_9:
    v45 = a5;
    v27 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v27;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v28 = *(a2 + 16);
    v56 = *a2;
    v57 = v28;
    swift_beginAccess();
    v29 = CachedEnvironment.animatedPosition(for:)(&v56);
    v30 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v30;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v31 = *(a2 + 16);
    v56 = *a2;
    v57 = v31;
    v32 = CachedEnvironment.animatedSize(for:)(&v56);
    swift_endAccess();
    v33 = *(v25 + 16);
    v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v54[0]);
    if ((v34 & 0x100000000) == 0)
    {
      v26 = v34;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v35 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v24, v56);
    if (v35)
    {
      v36 = *(v35 + 72);
    }

    else
    {
      v36 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v37 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v24, v56);
    if (v37)
    {
      v38 = *(v37 + 72);
    }

    else
    {
      v38 = 0;
    }

    v13 = v51;
    v39 = *(a2 + 60);
    v40 = *(a2 + 68);
    v41 = *(a2 + 76);
    *&v56 = __PAIR64__(a1, v53);
    *(&v56 + 1) = __PAIR64__(v32, v29);
    *&v57 = __PAIR64__(v40, v39);
    *(&v57 + 1) = __PAIR64__(v41, v33);
    *v58 = v26;
    v58[4] = v36;
    *&v58[8] = 0;
    *&v58[12] = v38;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v56) = 0;
    PreferencesOutputs.subscript.setter(v42, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v45;
    v9 = v50;
    v14 = v47;
LABEL_18:
    v56 = v62;
    v57 = v63;
    *v58 = v9;
    *&v58[4] = v60;
    *&v58[20] = v61;
    *&v58[28] = v14;
    *v59 = v11;
    *&v59[4] = v10;
    *&v59[8] = v12;
    *&v59[12] = v13;
    result = outlined destroy of _ViewInputs(&v56);
    *a5 = v54[0];
    a5[1] = v54[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v24, &v56);
  result = AGWeakAttributeGetAttribute();
  v26 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v55[0] = v53;
    v44 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v55);
    v44(&v56, 0);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t static RendererEffectDisplayList.scrapeContent(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetAttributeInfo();
  v11 = v10;
  v12 = *(type metadata accessor for RendererEffectDisplayList() + 16);
  Value = AGGraphGetValue();
  (*(*(v12 - 8) + 16))(v9, Value, v12);
  (*(a3 + 64))(&v18, a2, a3);
  result = (*(v7 + 8))(v9, a2);
  v15 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v17 = v18;
    outlined copy of ScrapeableContent.Content(v18);
    closure #1 in static RendererEffectDisplayList.scrapeContent(from:)(&v17, v11, a4);
    outlined consume of ScrapeableContent.Content?(v15);
    return outlined consume of ScrapeableContent.Content(v17);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
  }

  return result;
}

uint64_t closure #1 in static RendererEffectDisplayList.scrapeContent(from:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for RendererEffectDisplayList();
  type metadata accessor for CGPoint(0);
  v6 = *(a2 + 40);
  outlined copy of ScrapeableContent.Content(v5);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 32) - (v8 - *(v13 + 16));
  v17 = *(v13 + 40) - (v9 - *(v13 + 24));
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v15;
  *(a3 + 40) = v14;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v16;
  *(a3 + 72) = v17;
}

double ResetPositionTransform.value.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetValue();
  result = v6 - (*v8 - v4);
  v10 = v7 - (v8[1] - v5);
  *(a1 + 32) = result;
  *(a1 + 40) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t GraphicsFilter.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v13[0] = v1[6];
  *(v13 + 12) = *(v1 + 108);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v6[7] = v1[6];
  *(v6 + 124) = *(v1 + 108);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of GraphicsFilter(v12, &v11);
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance GraphicsFilter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v13[0] = v1[6];
  *(v13 + 12) = *(v1 + 108);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v6[7] = v1[6];
  *(v6 + 124) = *(v1 + 108);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of GraphicsFilter(v12, &v11);
}

uint64_t GraphicsBlendMode.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 12) = 5;
  return outlined copy of GraphicsBlendMode(v2, v3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _AlphaThresholdEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21_AlphaThresholdEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA015_AlphaThresholdD0V9_ResolvedV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoreInteractionRepresentableEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance VariableBlurStyle(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17VariableBlurStyleV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA17VariableBlurStyleV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance Shader.ResolvedShader(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5);
}

uint64_t _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationZ033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Ttg5Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v3 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v3 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(v2);
    v5 = *v1;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v5, v12);
    if (v6)
    {
      v7 = (v6 + 72);
      v8 = (v6 + 80);
    }

    else
    {
      v7 = &static ReusableInputs.defaultValue;
      v8 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v9 = *v7;
    v10 = *v8;

    if (!v10 || *(v10 + 16) != v2)
    {
      v11 = swift_allocObject();
      v11[2] = v2;
      v11[3] = &protocol witness table for BodyInput<A>;
      v11[4] = v10;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v1, v9 | v12, v11);
    }
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Ttg5Tm(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>(0, a1, a2, a3);
  v5 = v4;
  v6 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v6 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v6 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(v5);
    v8 = *v3;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v8, v15);
    if (v9)
    {
      v10 = (v9 + 72);
      v11 = (v9 + 80);
    }

    else
    {
      v10 = &static ReusableInputs.defaultValue;
      v11 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v12 = *v10;
    v13 = *v11;

    if (!v13 || *(v13 + 16) != v5)
    {
      v14 = swift_allocObject();
      v14[2] = v5;
      v14[3] = &protocol witness table for BodyInput<A>;
      v14[4] = v13;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v3, v12 | v15, v14);
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance MayNotInsertCALayersEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(unint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, _OWORD *, uint64_t (*)(unint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t))
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v12;
  v26[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v13 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v13;
  v14 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v12);
  if (v14)
  {
    return a7(v11, v26, a3, a4);
  }

  v22 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v22;
  v24[4] = *(a2 + 64);
  v25 = *(a2 + 80);
  v23 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v23;
  return a3(v14, v24, v15, v16, v17, v18, v19, v20);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AppearanceAnimationView<A, B>.AnimationEffect@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _SaturationEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_SaturationEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMultiplyEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20_ColorMultiplyEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_ColorMultiplyD0V9_ResolvedV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _HueRotationEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18_HueRotationEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

unint64_t instantiation function for generic protocol witness table for ResetPositionTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GraphicsFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GraphicsFilter and conformance GraphicsFilter();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsFilter and conformance GraphicsFilter()
{
  result = lazy protocol witness table cache variable for type GraphicsFilter and conformance GraphicsFilter;
  if (!lazy protocol witness table cache variable for type GraphicsFilter and conformance GraphicsFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsFilter and conformance GraphicsFilter);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GraphicsBlendMode(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GraphicsBlendMode and conformance GraphicsBlendMode();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsBlendMode and conformance GraphicsBlendMode()
{
  result = lazy protocol witness table cache variable for type GraphicsBlendMode and conformance GraphicsBlendMode;
  if (!lazy protocol witness table cache variable for type GraphicsBlendMode and conformance GraphicsBlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsBlendMode and conformance GraphicsBlendMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier, lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>, &lazy cache variable for type metadata for ScalePulseModifier<Int>, type metadata accessor for ScalePulseModifier, lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(255, a3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], a4);
    a5();
    v7 = type metadata accessor for _ViewModifier_Content();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t StatefulTabContainer.init(id:cacheSize:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for StatefulTabContainer();
  v11 = *(a4 - 8);
  v12 = (*(v11 + 16))(a5 + *(v10 + 52), a1, a4);
  *(a5 + *(v10 + 56)) = a2;
  a3(v12);
  return (*(v11 + 8))(a1, a4);
}

uint64_t static StatefulTabContainer._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v33 = a7;
  v52 = *MEMORY[0x1E69E9840];
  v11 = a2[1];
  v40 = a2[2];
  v12 = a2[2];
  v41 = a2[3];
  v13 = a2[3];
  v42 = a2[4];
  v14 = a2[1];
  v38 = *a2;
  v15 = *a2;
  v39 = v14;
  v46 = v12;
  v47 = v13;
  v48 = a2[4];
  v44 = v15;
  v31 = *a1;
  v43 = *(a2 + 20);
  LODWORD(v49) = *(a2 + 20);
  v45 = v11;
  _ViewInputs.makeIndirectOutputs()(v34);
  v16 = *v34;
  v17 = *&v34[8];
  v18 = *&v34[12];
  v46 = v40;
  v47 = v41;
  v48 = v42;
  LODWORD(v49) = v43;
  v44 = v38;
  v45 = v39;
  outlined init with copy of _ViewInputs(&v38, v34);

  v32 = a3;
  *v34 = a3;
  *&v34[8] = a4;
  *&v34[16] = a5;
  *&v34[24] = a6;
  type metadata accessor for StatefulTabContainer.Container.Item();
  v19 = static Array._allocateUninitialized(_:)();
  *&v37[36] = v46;
  *&v37[52] = v47;
  *&v37[68] = v48;
  *&v37[84] = v49;
  *&v37[4] = v44;
  *&v37[20] = v45;
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
  }

  *&v34[36] = *&v37[32];
  *&v34[52] = *&v37[48];
  *&v34[68] = *&v37[64];
  *&v34[4] = *v37;
  *&v34[84] = *&v37[80];
  *&v34[20] = *&v37[16];
  *v34 = v31;
  *&v35 = v16;
  v30 = v18;
  v31 = v17;
  *(&v35 + 1) = __PAIR64__(v18, v17);
  *&v36 = v20;
  *(&v36 + 1) = v19;
  MEMORY[0x1EEE9AC00](v20);
  *&v44 = v32;
  *(&v44 + 1) = a4;
  *&v45 = a5;
  *(&v45 + 1) = a6;
  v29[2] = type metadata accessor for StatefulTabContainer.Container.Item();
  *&v44 = v32;
  *(&v44 + 1) = a4;
  *&v45 = a5;
  *(&v45 + 1) = a6;
  v21 = type metadata accessor for StatefulTabContainer.Container();
  v29[3] = v21;
  v29[4] = swift_getWitnessTable();
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v29, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v48 = *&v34[64];
  v49 = *&v34[80];
  v50 = v35;
  v51 = v36;
  v44 = *v34;
  v45 = *&v34[16];
  v46 = *&v34[32];
  v47 = *&v34[48];
  result = (*(*(v21 - 8) + 8))(&v44, v21);
  v25 = *(v16 + 16);
  if (v25)
  {
    v26 = v16 + 48;
    do
    {
      v26 += 24;
      result = AGGraphSetIndirectDependency();
      --v25;
    }

    while (v25);
  }

  v27 = v30;
  if (v30 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  v28 = v33;
  *v33 = v16;
  *(v28 + 2) = v31;
  *(v28 + 3) = v27;
  return result;
}

uint64_t StatefulTabContainer.Container.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StatefulTabContainer();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

Swift::Void __swiftcall StatefulTabContainer.Container.updateValue()()
{
  v1 = v0;
  v165 = *MEMORY[0x1E69E9840];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  *&v157 = v0[2];
  v3 = v157;
  *(&v157 + 1) = v2;
  *&v158 = v5;
  *(&v158 + 1) = v4;
  v6 = type metadata accessor for StatefulTabContainer.Container.Item();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v123 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v123 - v12;
  v153 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v128 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v138 = &v123 - v16;
  v145 = v3;
  *&v157 = v3;
  *(&v157 + 1) = v2;
  v146 = v2;
  v147 = v5;
  *&v158 = v5;
  *(&v158 + 1) = v4;
  v148 = v4;
  v17 = v6;
  v18 = type metadata accessor for StatefulTabContainer();
  v144 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v123 - v19;
  v139 = v15;
  v142 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v123 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v123 - v26;
  v154 = type metadata accessor for Optional();
  v149 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v123 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v123 - v33;
  OutputValue = AGGraphGetOutputValue();
  v133 = v28;
  v137 = v31;
  if (OutputValue)
  {
    (*(v7 + 16))(v34, OutputValue, v17);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v7 + 56))(v34, v36, 1, v17);
  v37 = v150[5];
  v161 = v150[4];
  v162 = v37;
  v38 = v150[1];
  v157 = *v150;
  v158 = v38;
  v39 = v150[3];
  v159 = v150[2];
  v160 = v39;
  v40 = v150[7];
  v163 = v150[6];
  v164 = v40;
  v125 = v40;
  v135 = v1;
  StatefulTabContainer.Container.view.getter(v20);
  v41 = v153;
  v42 = *(v153 + 16);
  v43 = v152;
  v44 = v34;
  v45 = v7;
  v46 = v146;
  v42(v152, &v20[*(v18 + 52)], v146);
  (*(v144 + 1))(v20, v18);
  v47 = *(v41 + 56);
  v47(v43, 0, 1, v46);
  v48 = v149;
  v49 = *(v149 + 16);
  v50 = v137;
  v144 = v44;
  v51 = v44;
  v52 = v154;
  v132 = v149 + 16;
  v131 = v49;
  v49(v137, v51, v154);
  v53 = *(v45 + 48);
  v130 = v45 + 48;
  v129 = v53;
  v54 = v53(v50, 1, v17);
  v141 = v17;
  v140 = v45;
  if (v54 == 1)
  {
    v45 = v48;
    v55 = v52;
    v56 = 1;
  }

  else
  {
    v42(v151, v50, v46);
    v56 = 0;
    v55 = v17;
  }

  (*(v45 + 8))(v50, v55);
  v57 = v151;
  v47(v151, v56, 1, v46);
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = v142;
  v60 = *(v142 + 16);
  v61 = v138;
  v62 = v152;
  v63 = v139;
  v60(v138, v152, v139);
  v60(&v61[v58], v57, v63);
  v64 = *(v153 + 48);
  if (v64(v61, 1, v46) == 1)
  {
    v65 = *(v59 + 8);
    v65(v151, v63);
    v65(v62, v63);
    v66 = v46;
    v67 = v64(&v61[v58], 1, v46);
    v68 = v63;
    v69 = v148;
    if (v67 == 1)
    {
      v65(v61, v68);
      v70 = v147;
      v71 = v144;
      v72 = v154;
LABEL_29:
      $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(v150, v145, v66, v70, v69);
      v117 = v149;
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v73 = v127;
  v60(v127, v61, v63);
  if (v64(&v61[v58], 1, v46) == 1)
  {
    v74 = *(v142 + 8);
    v74(v151, v63);
    v74(v152, v63);
    v66 = v46;
    (*(v153 + 8))(v73, v46);
    v69 = v148;
LABEL_12:
    (*(v128 + 8))(v61, TupleTypeMetadata2);
    v70 = v147;
    v71 = v144;
    v72 = v154;
    goto LABEL_13;
  }

  v118 = v153;
  v119 = v124;
  (*(v153 + 32))(v124, &v61[v58], v46);
  v120 = v63;
  v69 = v148;
  LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v118 + 8);
  v121(v119, v46);
  v122 = *(v142 + 8);
  v122(v151, v120);
  v122(v152, v120);
  v66 = v46;
  v121(v73, v46);
  v122(v61, v120);
  v70 = v147;
  v71 = v144;
  v72 = v154;
  if (TupleTypeMetadata2)
  {
    goto LABEL_29;
  }

LABEL_13:
  v75 = v133;
  v131(v133, v71, v72);
  v76 = v141;
  v77 = v129(v75, 1, v141);
  v78 = v150;
  if (v77 != 1)
  {
    v81 = v70;
    v82 = v126;
    (*(v140 + 32))(v126, v75, v76);
    AGSubgraphApply();
    v83 = *(v78 + 12);
    v84 = *(v78 + 27);
    v85 = *(v83 + 16);
    if (v85)
    {
      v86 = *MEMORY[0x1E698D3F8];
      v87 = v83 + 48;

      do
      {
        v87 += 24;
        AGGraphSetIndirectAttribute();
        --v85;
      }

      while (v85);
      v69 = v148;
      if (v84 == v86)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if (v84 == *MEMORY[0x1E698D3F8])
      {
        goto LABEL_20;
      }
    }

    AGGraphSetIndirectAttribute();
LABEL_20:

    AGSubgraphRemoveChild();
    v88 = v140;
    v76 = v141;
    (*(v140 + 16))(v136, v82, v141);
    type metadata accessor for Array();
    Array.append(_:)();
    v80 = (*(v88 + 8))(v82, v76);
    v70 = v81;
    v79 = v146;
    goto LABEL_21;
  }

  v79 = v66;
  v80 = (*(v149 + 8))(v75, v72);
LABEL_21:
  v155 = *(v78 + 15);
  MEMORY[0x1EEE9AC00](v80);
  *(&v123 - 6) = v89;
  *(&v123 - 5) = v79;
  *(&v123 - 4) = v70;
  *(&v123 - 3) = v69;
  *(&v123 - 2) = v78;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (BYTE8(v157))
  {
    v90 = AGSubgraphGetGraph();
    v91 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v92 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v93 = v69;
    v94 = v70;
    v95 = v136;
    v96 = v145;
    closure #2 in StatefulTabContainer.Container.updateValue()(v78, v91, v145, v79, v94, v93, v136);
    AGSubgraphSetCurrent();

    v97 = AGGraphSetUpdate();
    MEMORY[0x1EEE9AC00](v97);
    *(&v123 - 2) = v135;
    *(&v123 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v95, partial apply for closure #1 in StatefulRule.value.setter, (&v123 - 4), v76, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v98);

    (*(v140 + 8))(v95, v76);
    v99 = v78;
    v100 = v96;
    v101 = v79;
  }

  else
  {
    v102 = v134;
    Array.subscript.getter();
    AGSubgraphAddChild();
    v103 = *(v78 + 12);
    v104 = *(v78 + 26);
    v105 = *(v78 + 27);
    v106 = v102 + *(v76 + 52);
    v107 = *v106;
    v108 = *(v106 + 8);
    v109 = *(v106 + 12);
    *&v157 = v103;
    DWORD2(v157) = v104;
    v155 = v107;
    v156 = v108;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    PreferencesOutputs.attachIndirectOutputs(to:)(&v155);

    if (v105 != *MEMORY[0x1E698D3F8] && v109 != *MEMORY[0x1E698D3F8])
    {
      AGGraphSetIndirectAttribute();
    }

    AGSubgraphApply();
    v110 = v150;
    v111 = v136;
    Array.remove(at:)();
    v112 = *(v140 + 8);
    v113 = v141;
    v114 = v112(v111, v141);
    MEMORY[0x1EEE9AC00](v114);
    *(&v123 - 2) = v135;
    *(&v123 - 1) = swift_getWitnessTable();
    v115 = v134;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v134, closure #1 in StatefulRule.value.setterpartial apply, (&v123 - 4), v113, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v116);
    v112(v115, v113);
    v99 = v110;
    v100 = v145;
    v101 = v146;
  }

  $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(v99, v100, v101, v147, v148);
  v72 = v154;
  v117 = v149;
  v71 = v144;
LABEL_30:
  (*(v117 + 8))(v71, v72);
}

void $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  v10 = type metadata accessor for StatefulTabContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v14 = a1[5];
  v24 = a1[4];
  v25 = v14;
  v15 = a1[7];
  v26 = a1[6];
  v27 = v15;
  v16 = a1[1];
  v20 = *a1;
  v21 = v16;
  v17 = a1[3];
  v22 = a1[2];
  v23 = v17;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for StatefulTabContainer.Container();
  StatefulTabContainer.Container.view.getter(v13);
  v18 = *&v13[*(v10 + 56)];
  (*(v11 + 8))(v13, v10);
  StatefulTabContainer.Container.trimCache(to:)(v18);
}

uint64_t closure #1 in StatefulTabContainer.Container.updateValue()(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a6;
  v26[1] = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = v13;
  *(&v27 + 1) = v14;
  *&v28 = v15;
  *(&v28 + 1) = v16;
  v17 = type metadata accessor for StatefulTabContainer();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - v19;
  v21 = a2[5];
  v31 = a2[4];
  v32 = v21;
  v22 = a2[7];
  v33 = a2[6];
  v34 = v22;
  v23 = a2[1];
  v27 = *a2;
  v28 = v23;
  v24 = a2[3];
  v29 = a2[2];
  v30 = v24;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = v26[0];
  type metadata accessor for StatefulTabContainer.Container();
  StatefulTabContainer.Container.view.getter(v20);
  (*(v10 + 16))(v12, v20 + *(v17 + 52), a4);
  (*(v18 + 8))(v20, v17);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v10 + 8))(v12, a4);
  return v20 & 1;
}

id closure #2 in StatefulTabContainer.Container.updateValue()@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a3;
  v70 = a7;
  v71 = a2;
  v121 = *MEMORY[0x1E69E9840];
  v67 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v84 = v12;
  *(&v84 + 1) = v13;
  *&v85 = v14;
  *(&v85 + 1) = v15;
  v16 = type metadata accessor for StatefulTabContainer();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v59[-v17];
  v18 = *(a1 + 40);
  v109 = *(a1 + 24);
  v110 = v18;
  v19 = *(a1 + 72);
  v111 = *(a1 + 56);
  v112 = v19;
  v113 = *(a1 + 22);
  v20 = v109;
  v107 = *(a1 + 8);
  v108 = v107;
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  *(v106 + 12) = *(a1 + 76);
  v105 = v22;
  v106[0] = v23;
  v104 = v21;
  swift_beginAccess();
  v24 = v20[3];
  v114[1] = v20[2];
  v114[2] = v24;
  v25 = v20[5];
  v114[3] = v20[4];
  v114[4] = v25;
  v114[0] = v20[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v26 = swift_allocObject();
  memmove((v26 + 16), v20 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(&v108, &v84);
  outlined init with copy of CachedEnvironment(v114, &v84);
  v27 = v73;

  *&v84 = v27;
  *(&v84 + 1) = a4;
  v68 = a4;
  v69 = a6;
  v72 = a5;
  *&v85 = a5;
  *(&v85 + 1) = a6;
  v61 = type metadata accessor for StatefulTabContainer.Container();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v74);
  v29 = v74;
  v115 = v107;
  v62 = v26;
  *v116 = v26;
  *&v116[8] = v104;
  *&v116[24] = v105;
  *&v116[40] = v106[0];
  *&v116[52] = *(v106 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v96 = *&v116[16];
  v97 = *&v116[32];
  v98 = *&v116[48];
  v99 = *&v116[64];
  v94 = v115;
  v95 = *v116;
  v60 = *&v116[16];
  LODWORD(v96) = 0;
  LODWORD(v78) = v29;
  v100[0] = v115;
  v100[1] = *v116;
  v101 = *&v116[64];
  v100[3] = *&v116[32];
  v100[4] = *&v116[48];
  v100[2] = v96;
  v86 = v96;
  v87 = *&v116[32];
  v88 = *&v116[48];
  LODWORD(v89) = *&v116[64];
  v84 = v115;
  v85 = *v116;
  v31 = v72;
  v32 = *(v72 + 24);
  outlined init with copy of _ViewInputs(&v115, v83);
  outlined init with copy of _ViewInputs(v100, v83);
  v32(&v75, &v78, &v84, v27, v31);
  v102[2] = v86;
  v102[3] = v87;
  v102[4] = v88;
  v103 = v89;
  v102[0] = v84;
  v102[1] = v85;
  outlined destroy of _ViewInputs(v102);
  LODWORD(v96) = v60;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v75, &v94);
    AGSubgraphEndTreeElement();
  }

  v92[2] = v96;
  v92[3] = v97;
  v92[4] = v98;
  v93 = v99;
  v92[0] = v94;
  v92[1] = v95;
  outlined destroy of _ViewInputs(v92);
  v33 = v75;
  v34 = v77;
  v35 = *(a1 + 26);
  v36 = *(a1 + 27);
  *&v84 = *(a1 + 12);
  DWORD2(v84) = v35;
  *&v83[0] = v75;
  v60 = v76;
  DWORD2(v83[0]) = v76;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(v83);

  if (v36 != *MEMORY[0x1E698D3F8] && v34 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v37 = a1[5];
  v38 = a1[3];
  v88 = a1[4];
  v89 = v37;
  v39 = a1[5];
  v40 = a1[7];
  v90 = a1[6];
  v91 = v40;
  v41 = a1[1];
  v84 = *a1;
  v85 = v41;
  v42 = a1[3];
  v44 = *a1;
  v43 = a1[1];
  v86 = a1[2];
  v87 = v42;
  v83[4] = v88;
  v83[5] = v39;
  v45 = a1[7];
  v83[6] = v90;
  v83[7] = v45;
  v83[0] = v44;
  v83[1] = v43;
  v46 = v61;
  v83[2] = v86;
  v83[3] = v38;
  v47 = *(v61 - 8);
  (*(v47 + 16))(&v78, &v84, v61);
  v48 = v63;
  StatefulTabContainer.Container.view.getter(v63);
  v78 = v107;
  v79 = v62;
  v80 = v104;
  v81 = v105;
  v82[0] = v106[0];
  *(v82 + 12) = *(v106 + 12);
  outlined destroy of _ViewInputs(&v78);
  (*(v47 + 8))(&v84, v46);
  v49 = v65;
  v50 = v66;
  v52 = v67;
  v51 = v68;
  (*(v67 + 16))(v66, &v48[*(v65 + 52)], v68);
  (*(v64 + 8))(v48, v49);
  v53 = v70;
  (*(v52 + 32))(v70, v50, v51);
  v117 = v73;
  v118 = v51;
  v119 = v72;
  v120 = v69;
  v54 = type metadata accessor for StatefulTabContainer.Container.Item();
  v55 = v53 + *(v54 + 52);
  *v55 = v33;
  *(v55 + 8) = v60;
  *(v55 + 12) = v34;
  v56 = *(v54 + 56);
  v57 = v71;
  *(v53 + v56) = v71;

  return v57;
}

Swift::Void __swiftcall StatefulTabContainer.Container.destroy()()
{
  v2 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v2;
  v3 = type metadata accessor for StatefulTabContainer.Container.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *(v1 + 120);

  if (!MEMORY[0x193ABF2C0](v9, v3))
  {
LABEL_11:

    return;
  }

  v10 = 0;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v13 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v5 != 8)
    {
      break;
    }

    *&v14[0] = v13;
    (*(v4 + 16))(v7, v14, v3);
    swift_unknownObjectRelease();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    AGSubgraphRef.willInvalidate(isInserted:)(0);
    AGSubgraphInvalidate();
    (*(v4 + 8))(v7, v3);
    ++v10;
    if (v12 == MEMORY[0x193ABF2C0](v8, v3))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall StatefulTabContainer.Container.trimCache(to:)(Swift::Int to)
{
  v4 = *(v1 + 32);
  v27 = *(v1 + 16);
  v28 = v4;
  v5 = type metadata accessor for StatefulTabContainer.Container.Item();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v12 = *(v2 + 120);
  v10 = v2 + 120;
  v11 = v12;
  if (MEMORY[0x193ABF270](v12, v5, v7) > to)
  {
    v13 = MEMORY[0x193ABF270](v11, v5);
    if (__OFSUB__(v13, to))
    {
LABEL_11:
      __break(1u);
      return;
    }

    v21 = v13 - to;
    v26 = v13 - to;
    v14 = type metadata accessor for Array();
    type metadata accessor for PartialRangeUpTo<Int>();
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
    v20[1] = v14;
    v22 = v10;
    MutableCollection.subscript.getter();
    v15 = v27;
    v16 = v28;
    swift_unknownObjectRetain();
    v17 = ArraySlice.startIndex.getter();
    swift_unknownObjectRelease();
    v18 = ArraySlice.endIndex.getter();
    v25 = v17;
    if (v17 != v18)
    {
      v23 = v6 + 16;
      v24 = *(&v16 + 1) >> 1;
      v19 = v25;
      while (1)
      {
        ArraySlice._hoistableIsNativeTypeChecked()();
        if (v25 < v16 || v24 <= v19)
        {
          break;
        }

        (*(v6 + 16))(v9, *(&v15 + 1) + *(v6 + 72) * v19++, v5);
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
        (*(v6 + 8))(v9, v5);
        if (v19 == ArraySlice.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    swift_unknownObjectRelease();
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst(_:)(v21);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance StatefulTabContainer<A, B>.Container()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for StatefulTabContainer()
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

uint64_t *initializeBufferWithCopyOfBuffer for StatefulTabContainer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *((*(v9 + 48) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 48) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *((*(v9 + 40) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 40) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *((*(v9 + 24) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for StatefulTabContainer(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t destroy for StatefulTabContainer.Container(uint64_t a1)
{
}

uint64_t initializeWithCopy for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer.Container(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for StatefulTabContainer.Container(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for StatefulTabContainer.Container.Item()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StatefulTabContainer.Container.Item(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 12) = *(v11 + 12);
    v12 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *v12;

    v14 = v13;
  }

  return v3;
}

void destroy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *v9;

  v11 = v10;
  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v9;
  *v9 = v10;
  v12 = v10;

  return a1;
}

uint64_t initializeWithTake for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *v9 = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer.Container.Item(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for StatefulTabContainer.Container.Item(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
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

uint64_t instantiation function for generic protocol witness table for StatefulTabContainer<A, B>.Container(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for PartialRangeUpTo<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeUpTo<Int>)
  {
    v0 = type metadata accessor for PartialRangeUpTo();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeUpTo<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>)
  {
    type metadata accessor for PartialRangeUpTo<Int>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>);
  }

  return result;
}

void _GeometryGroupEffect.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

unint64_t instantiation function for generic protocol witness table for _GeometryGroupEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _GeometryGroupEffect and conformance _GeometryGroupEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _GeometryGroupEffect and conformance _GeometryGroupEffect()
{
  result = lazy protocol witness table cache variable for type _GeometryGroupEffect and conformance _GeometryGroupEffect;
  if (!lazy protocol witness table cache variable for type _GeometryGroupEffect and conformance _GeometryGroupEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GeometryGroupEffect and conformance _GeometryGroupEffect);
  }

  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _GeometryGroupEffect(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

uint64_t StaticIf<>.init<>(_:then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 8))(a1, a3);
  v8 = *(*(a4 - 8) + 32);

  return v8(a5, a2, a4);
}

uint64_t StaticIf.init(_trueBody:_falseBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v8 = type metadata accessor for StaticIf();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 44);

  return v9(v10, a2, a4);
}

uint64_t StaticIf<>.init<A>(in:then:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a5 - 8) + 8))(a1, a5);
  v6 = type metadata accessor for StyleContextAcceptsPredicate();
  return a2(v6);
}

uint64_t StaticIf<>.init<A>(isLinkedOnOrAfter:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for SemanticsIsLinkedOnOrAfter();
  a2();
  type metadata accessor for StaticIf();
  a4();
  v12 = *(*(a8 - 8) + 8);

  return v12(a1, a8);
}

uint64_t StaticIf<>.init<A>(isLinkedOnOrAfter:then:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a5 - 8) + 8))(a1, a5);
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter();
  return a2(IsLinkedOnOrAfter);
}

uint64_t StaticIf<>.init(_:then:else:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v8 = type metadata accessor for StaticIf();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 44);

  return v9(v10, a2, a4);
}

uint64_t StaticIf<>.init<A>(in:then:else:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 8))(a1, a6);
  type metadata accessor for StyleContextAcceptsPredicate();
  (*(*(a4 - 8) + 32))(a7, a2, a4);
  v12 = type metadata accessor for StaticIf();
  v13 = *(*(a5 - 8) + 32);
  v14 = a7 + *(v12 + 44);

  return v13(v14, a3, a5);
}

uint64_t StaticIf<>.init<A>(idiom:then:else:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, void (*a9)(void, uint64_t, uint64_t))
{
  (*(*(a6 - 8) + 8))(a1, a6);
  a9(0, a6, a8);
  (*(*(a4 - 8) + 32))(a7, a2, a4);
  v15 = type metadata accessor for StaticIf();
  v16 = *(*(a5 - 8) + 32);
  v17 = a7 + *(v15 + 44);

  return v16(v17, a3, a5);
}

uint64_t StaticIf<>.init<A>(idiom:then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void (*a6)(void, uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 8))(a1, a4);
  a6(0, a4, a5);
  (*(*(a3 - 8) + 32))(a7, a2, a3);
  v13 = type metadata accessor for StaticIf();
  v14 = *(qword_1F00A9C08 + 32);
  v15 = a7 + *(v13 + 44);

  return v14(v15);
}

double static StaticIf<>._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = a2[5];
  v42 = a2[4];
  v43 = v15;
  v44[0] = a2[6];
  *(v44 + 12) = *(a2 + 108);
  v16 = a2[1];
  v38 = *a2;
  v39 = v16;
  v17 = a2[3];
  v19 = *a2;
  v18 = a2[1];
  v40 = a2[2];
  v41 = v17;
  v28 = v19;
  v29 = v18;
  v20 = *a1;
  v30 = v40;
  v21 = *(a6 + 8);
  outlined init with copy of _GraphInputs(&v38, v45);
  v22 = v21(&v28, a3, a6);
  v45[0] = v28;
  v45[1] = v29;
  v45[2] = v30;
  outlined destroy of _GraphInputs(v45);
  v23 = type metadata accessor for StaticIf();
  MEMORY[0x1EEE9AC00](v23);
  v35[1] = v20;
  type metadata accessor for _GraphValue();
  if (v22)
  {
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeGesture(gesture:inputs:), a4, v35);
    v32 = v42;
    v33 = v43;
    v34[0] = v44[0];
    *(v34 + 12) = *(v44 + 12);
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    (*(a7 + 32))(v36, v35, &v28, a4, a7);
  }

  else
  {
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a5, v35);
    v32 = v42;
    v33 = v43;
    v34[0] = v44[0];
    *(v34 + 12) = *(v44 + 12);
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    (*(a8 + 32))(v36, v35, &v28, a5, a8);
  }

  result = *v36;
  v25 = v36[1];
  v26 = v37;
  *a9 = v36[0];
  *(a9 + 8) = v25;
  *(a9 + 16) = v26;
  return result;
}

uint64_t ViewModifier.requiring<A, B>(_:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v8 = v7;
  v15 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AndOperationViewInputPredicate.init()(v19, v20, v21, v22, v16);
  (*(v15 + 16))(v18, v8, a2);
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v23 = type metadata accessor for AndOperationViewInputPredicate();
  (*(*(v23 - 8) + 8))(v23, v23);
  return (*(v15 + 32))(a7, v18, a2);
}

uint64_t View.staticIf<A, B, C>(idiom:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for InterfaceIdiomPredicate();

  return View.staticIf<A, B, C>(_:then:else:)(v18, a2, a3, a4, a5, a6, v18, a8, a9, a10, &protocol witness table for InterfaceIdiomPredicate<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(idiom:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for InterfaceIdiomPredicate();

  return View.staticIf<A, B>(_:then:)(v14, a2, a3, a4, v14, a6, a7, &protocol witness table for InterfaceIdiomPredicate<A>, a9);
}

uint64_t View.staticIf<A, B, C>(context:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for StyleContextAcceptsPredicate();

  return View.staticIf<A, B, C>(_:then:else:)(v18, a2, a3, a4, a5, a6, v18, a8, a9, a10, &protocol witness table for StyleContextAcceptsPredicate<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(context:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for StyleContextAcceptsPredicate();

  return View.staticIf<A, B>(_:then:)(v14, a2, a3, a4, v14, a6, a7, &protocol witness table for StyleContextAcceptsPredicate<A>, a9);
}

uint64_t View.staticIf<A, B, C>(isLinkedOnOrAfter:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter();

  return View.staticIf<A, B, C>(_:then:else:)(IsLinkedOnOrAfter, a2, a3, a4, a5, a6, IsLinkedOnOrAfter, a8, a9, a10, &protocol witness table for SemanticsIsLinkedOnOrAfter<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(isLinkedOnOrAfter:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter();

  return View.staticIf<A, B>(_:then:)(IsLinkedOnOrAfter, a2, a3, a4, IsLinkedOnOrAfter, a6, a7, &protocol witness table for SemanticsIsLinkedOnOrAfter<A>, a9);
}

uint64_t instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1);
}

{
  return instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1);
}

{
  return instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1);
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA22InterfaceIdiomProtocolRd__AaBRd_0_AaBRd_1_r_1_lAA8StaticIfVyAA0dE9PredicateVyqd__Gqd_0_qd_1_GAaBHPAhA0c5InputI0HPyHC_qd_0_AaBHD3_qd_1_AaBHD4_HCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 40));
  type metadata accessor for StaticIf();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA22InterfaceIdiomProtocolRd__AaBRd_0_r_0_lAA8StaticIfVyAA0dE9PredicateVyqd__Gqd_0_xGAaBHPAhA0c5InputI0HPyHC_qd_0_AaBHD3_xAaBHD1_HCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 32));
  type metadata accessor for StaticIf();
  return swift_getWitnessTable();
}

uint64_t Solarium.EnablementIdiom.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<MacInterfaceIdiom>, &type metadata for MacInterfaceIdiom, &protocol witness table for MacInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
  v4 = *(v3 + 16);
  result = v4();
  if (result & 1) != 0 || (type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<TouchBarInterfaceIdiom>, &type metadata for TouchBarInterfaceIdiom, &protocol witness table for TouchBarInterfaceIdiom, type metadata accessor for InterfaceIdiomBox), result = v4(), (result))
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<TVInterfaceIdiom>, &type metadata for TVInterfaceIdiom, &protocol witness table for TVInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    result = v4();
    if (result)
    {
      v6 = 2;
    }

    else
    {
      type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      result = v4();
      if (result)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  *a2 = v6;
  return result;
}

unint64_t _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a1;
  if (!*(*a1 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v8 & 1) == 0))
  {
    if (v3 == 2)
    {
      v25 = &type metadata for Solarium.FeatureFlagKey;
      v26 = lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey();
      v12 = swift_allocObject();
      v24[0] = v12;
      *(v12 + 16) = "SwiftUI";
      *(v12 + 24) = 7;
      *(v12 + 32) = 2;
      *(v12 + 40) = "Solarium";
      *(v12 + 48) = 8;
      *(v12 + 56) = 2;
      v13 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v24);
      if (v13)
      {
        v25 = &unk_1F0064F08;
        v26 = lazy protocol witness table accessor for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey();
        v14 = swift_allocObject();
        v24[0] = v14;
        *(v14 + 16) = "SwiftUI";
        *(v14 + 24) = 7;
        *(v14 + 32) = 2;
        *(v14 + 40) = "SolariumTV";
        *(v14 + 48) = 10;
        *(v14 + 56) = 2;
        v15 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v25 = &type metadata for Solarium.FeatureFlagKey;
      v26 = lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey();
      v16 = swift_allocObject();
      v24[0] = v16;
      *(v16 + 16) = "SwiftUI";
      *(v16 + 24) = 7;
      *(v16 + 32) = 2;
      *(v16 + 40) = "Solarium";
      *(v16 + 48) = 8;
      *(v16 + 56) = 2;
      v15 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v24);
      if (v3 == 3)
      {
        if (one-time initialization token for v5 != -1)
        {
          swift_once();
        }

        v17 = &static Semantics.v5;
LABEL_15:
        v18 = *v17;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (static Semantics.forced < v18)
        {
LABEL_19:
          if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13LinkedOnCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5())
          {
            v19 = 2;
          }

          else
          {
            v19 = 0;
          }

LABEL_24:
          if (one-time initialization token for hardwareSupportsSolarium != -1)
          {
            swift_once();
          }

          if (static Solarium.SolariumHardwareSupport.hardwareSupportsSolarium)
          {
            v20 = v19 | 4;
          }

          else
          {
            v20 = v19;
          }

          v11 = v20 | v15 & 1;
          if (v3 == 3)
          {
            if ((v20 & 2) != 0)
            {
LABEL_40:
              if ((~v11 & 5) == 0)
              {
LABEL_41:
                v10 = 2;
LABEL_50:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v23 = *a1;
                result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11, v3, isUniquelyReferenced_nonNull_native);
                *a1 = v23;
                goto LABEL_51;
              }

LABEL_49:
              v10 = 0;
              goto LABEL_50;
            }

            goto LABEL_44;
          }

          if (one-time initialization token for v8 != -1)
          {
            swift_once();
          }

          if (byte_1ED53C51C == 1)
          {
            if (dyld_program_sdk_at_least())
            {
              goto LABEL_39;
            }
          }

          else if (static Semantics.forced >= static Semantics.v8)
          {
            goto LABEL_39;
          }

          if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei6OptOutcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5() & 1) == 0)
          {
            if ((infoPlist(_:default:)(0xD00000000000001DLL, 0x800000018DD79980, 0) & 1) == 0)
            {
              v21 = infoPlist(_:default:)(0xD000000000000010, 0x800000018DD799A0, 1);
              if ((v20 & 2) != 0)
              {
                if ((~v11 & 5) != 0)
                {
                  goto LABEL_49;
                }

                if (v21)
                {
                  goto LABEL_41;
                }

                goto LABEL_45;
              }
            }

LABEL_44:
            if ((~v11 & 5) != 0)
            {
              goto LABEL_49;
            }

LABEL_45:
            v10 = 1;
            goto LABEL_50;
          }

LABEL_39:
          if ((v20 & 2) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

        v19 = 2;
        goto LABEL_24;
      }
    }

    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v17 = &static Semantics.v7;
    goto LABEL_15;
  }

  v9 = *(v6 + 56) + 16 * result;
  v10 = *v9;
  v11 = *(v9 + 8);
LABEL_51:
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t infoPlist(_:default:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        a3 = v12;
      }
    }

    else
    {
    }
  }

  return a3 & 1;
}

void static Solarium.enablementCriteria(_:)(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v3, v4);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  *a2 = v5;
}

BOOL static Solarium.useMetrics(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v1, v3);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return (~v4 & 3) == 0;
}

uint64_t key path setter for _GraphInputs.allowsSolariumInCompatibilityApps : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.allowsSolariumInCompatibilityApps.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1, a1);
}

void (*_GraphInputs.allowsSolariumInCompatibilityApps.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.allowsSolariumInCompatibilityApps.modify;
}

void _GraphInputs.allowsSolariumInCompatibilityApps.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1[2], v2);

  free(v1);
}

BOOL specialized static SolariumMetrics.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v1, v8);
  if (v2 && (v3 = v2, (v4 = *(v2 + 72)) != 0))
  {
    v5 = *(v3 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    v5 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  v8 = v4;
  v9 = v5;
  Solarium.EnablementIdiom.init(_:)(&v8, &v10);
  v6 = v10;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v6, &v8);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return (~v9 & 3) == 0;
}

uint64_t specialized static Solarium.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v1, v9[0]);
  if (v2 && (v3 = v2, (v4 = *(v2 + 72)) != 0))
  {
    v5 = *(v3 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    v5 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  v9[0] = v4;
  v9[1] = v5;
  Solarium.EnablementIdiom.init(_:)(v9, &v10);
  v6 = v10;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v6, v9);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  if (LOBYTE(v9[0]))
  {
    if (LOBYTE(v9[0]) == 1)
    {
      v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel()
{
  result = lazy protocol witness table cache variable for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria()
{
  result = lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria;
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey()
{
  result = lazy protocol witness table cache variable for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey;
  if (!lazy protocol witness table cache variable for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey);
  }

  return result;
}

uint64_t AsymmetricTransition._makeContentTransition(transition:)(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4 == 3)
  {
    v5 = 0;
    if (Transition.hasContentTransition.getter(a2[2], a2[4]))
    {
      v6 = 1;
    }

    else
    {
      v6 = Transition.hasContentTransition.getter(a2[3], a2[5]) & 1;
    }
  }

  else
  {
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    v28[0] = *a1;
    v9 = Transition.contentTransitionEffects(style:size:)(v28, v8, v7, a2[2], a2[4]);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v10 - 1;
      v12 = (v9 + 64);
      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *v28 = *(v12 - 2);
        *&v28[12] = *(v12 - 5);
        v13 = *v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        }

        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 36 * v15;
        v17 = *v28;
        *(v16 + 44) = *&v28[12];
        *(v16 + 32) = v17;
        *(v16 + 60) = 1;
        *(v16 + 64) = v13;
        if (!v11)
        {
          break;
        }

        v12 += 9;
        --v11;
      }
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v28[0] = v4;
    v18 = Transition.contentTransitionEffects(style:size:)(v28, v8, v7, a2[3], a2[5]);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      for (i = (v18 + 64); ; i += 9)
      {
        *v28 = *(i - 2);
        *&v28[12] = *(i - 5);
        v22 = *i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        }

        v24 = *(v6 + 16);
        v23 = *(v6 + 24);
        if (v24 >= v23 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v6);
        }

        *(v6 + 16) = v24 + 1;
        v25 = v6 + 36 * v24;
        v26 = *v28;
        *(v25 + 44) = *&v28[12];
        *(v25 + 32) = v26;
        *(v25 + 60) = 2;
        *(v25 + 64) = v22;
        if (!v20)
        {
          break;
        }

        --v20;
      }
    }

    v5 = 1;
  }

  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
  *(a1 + 3) = v6;
  a1[32] = v5;
  return result;
}

void *assignWithCopy for AnyTransition.InsertionVisitor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyTransition.RemovalVisitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithTake for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void UnitPoint.prepare(geometry:)(double a1)
{
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  CGPoint.prepare(geometry:)(*Value * a1);
}

void protocol witness for AnchorProtocol.prepare(geometry:) in conformance UnitPoint(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  *a1 = CGPoint.prepare(geometry:)(v3 * *Value);
  *(a1 + 8) = v5;
}

uint64_t static Anchor.Source<A>.unitPoint(_:)(double a1, double a2)
{
  return static Anchor.Source<A>.point(_:)(type metadata accessor for AnchorBox<UnitPoint>, a1, a2);
}

{
  type metadata accessor for AnchorBox<UnitRect>();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t static Anchor.Source<A>.point(_:)(void (*a1)(void), double a2, double a3)
{
  a1(0);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t static Anchor.Source<A>.topLeading.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double static Anchor.Source<A>.top.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 0.5;
  *(v0 + 16) = xmmword_18DDB0860;
  return result;
}

double static Anchor.Source<A>.topTrailing.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 1.0;
  *(v0 + 16) = xmmword_18DDAA020;
  return result;
}

double static Anchor.Source<A>.leading.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_18DDB0850;
  return result;
}

__n128 static Anchor.Source<A>.center.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  __asm { FMOV            V0.2D, #0.5 }

  v0[1] = result;
  return result;
}

double static Anchor.Source<A>.trailing.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 1.0;
  *(v0 + 16) = xmmword_18DDC4180;
  return result;
}

double static Anchor.Source<A>.bottomLeading.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_18DDAB500;
  return result;
}

double static Anchor.Source<A>.bottom.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  result = 0.5;
  *(v0 + 16) = xmmword_18DDAF530;
  return result;
}

__n128 static Anchor.Source<A>.bottomTrailing.getter()
{
  type metadata accessor for AnchorBox<UnitPoint>();
  v0 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  v0[1] = result;
  return result;
}

uint64_t static UnitPoint.hashValue(_:into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

void type metadata accessor for AnchorBox<CGPoint>()
{
  if (!lazy cache variable for type metadata for AnchorBox<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    v0 = type metadata accessor for AnchorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnchorBox<CGPoint>);
    }
  }
}

void type metadata accessor for AnchorBox<UnitPoint>()
{
  if (!lazy cache variable for type metadata for AnchorBox<UnitPoint>)
  {
    v0 = type metadata accessor for AnchorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnchorBox<UnitPoint>);
    }
  }
}

unsigned __int8 *AbsoluteEdge.Set.init(_:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 8;
  if (v2 >= 8)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Bool __swiftcall AbsoluteEdge.Set.contains(_:)(SwiftUI::AbsoluteEdge a1)
{
  v2 = *a1;
  v3 = v2 > 8;
  if (v2 >= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if (v3)
  {
    v4 = 0;
  }

  return (v4 & ~*v1) == 0;
}

SwiftUI::AbsoluteEdge_optional __swiftcall AbsoluteEdge.init(rawValue:)(SwiftUI::AbsoluteEdge_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = SwiftUI_AbsoluteEdge_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::tuple_min_SwiftUI_AbsoluteEdge_max_SwiftUI_AbsoluteEdge __swiftcall Axis.perpendicularAbsoluteEdges(with:)(SwiftUI::LayoutDirection with)
{
  if (*v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (*v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v4 = 0;
    v5 = 2;
  }

  *with = v4;
  *v1 = v5;
  result.max = v1;
  result.min = with;
  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set()
{
  result = lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set;
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set;
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set;
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set;
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AbsoluteEdge] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AbsoluteEdge] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AbsoluteEdge] and conformance [A])
  {
    type metadata accessor for [AbsoluteEdge]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AbsoluteEdge] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [AbsoluteEdge]()
{
  if (!lazy cache variable for type metadata for [AbsoluteEdge])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AbsoluteEdge]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AbsoluteEdge and conformance AbsoluteEdge()
{
  result = lazy protocol witness table cache variable for type AbsoluteEdge and conformance AbsoluteEdge;
  if (!lazy protocol witness table cache variable for type AbsoluteEdge and conformance AbsoluteEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteEdge and conformance AbsoluteEdge);
  }

  return result;
}

uint64_t one-time initialization function for sizeThatFits()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.sizeThatFits = result;
  return result;
}

uint64_t one-time initialization function for lengthThatFits()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.lengthThatFits = result;
  return result;
}

uint64_t one-time initialization function for childGeometries()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.childGeometries = result;
  return result;
}

uint64_t one-time initialization function for contentDescription()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.contentDescription = result;
  return result;
}

uint64_t one-time initialization function for explicitAlignment()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.explicitAlignment = result;
  return result;
}

uint64_t one-time initialization function for alignmentType()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.alignmentType = result;
  return result;
}

uint64_t static LayoutTrace.recorder.setter(void *a1)
{
  swift_beginAccess();
  static LayoutTrace.recorder = a1;
}

uint64_t key path setter for static LayoutTrace.recorder : LayoutTrace.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static LayoutTrace.recorder = v1;
}

id LayoutTrace.Recorder.graph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void LayoutTrace.Recorder.graph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t LayoutTrace.Recorder.frameActive.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

__n128 LayoutTrace.Recorder.cacheLookup.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3].n128_u64[0];
  v4 = v1[3].n128_u16[4];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u16[4] = v4;
  return result;
}

__n128 LayoutTrace.Recorder.cacheLookup.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  swift_beginAccess();
  result = v5;
  v1[2] = v5;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u16[4] = v3;
  return result;
}

unint64_t LayoutTrace.Recorder.alignmentTypeID(for:)(uint64_t a1)
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 64);
  v9 = v8[2];
  if (v9)
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v11)
    {
      v9 = *(v8[7] + 4 * v10);
      goto LABEL_11;
    }

    swift_endAccess();
    if (HIDWORD(v9))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = one-time initialization token for alignmentType;
  v8 = *(v2 + 16);
  if (v12 != -1)
  {
LABEL_13:
    swift_once();
  }

  v20 = a1;
  AGTypeID.description.getter();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  v22 = v9;
  if (v15 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  AGGraphAddNamedTraceEvent();

  outlined consume of Data?(v13, v15);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v20, isUniquelyReferenced_nonNull_native);
  *(v2 + 64) = v21;
LABEL_11:
  swift_endAccess();
  return v9;
}

uint64_t LayoutTrace.Recorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static LayoutTrace.traceSizeThatFits(_:proposal:_:)(unint64_t a1, uint64_t *a2, double (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = *(a2 + 24);
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;

    LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(a1 | ((HIDWORD(a1) & 1) << 32), &v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(uint64_t a1, uint64_t a2, double (*a3)(uint64_t))
{
  v13 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    swift_beginAccess();
    v5 = one-time initialization token for update;
    v6 = *(v3 + 16);
    if (v5 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v12[0] = 17;

    static Update.enqueueAction(reason:_:)(v12, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v3);
  }

  swift_beginAccess();
  v7 = one-time initialization token for sizeThatFits;
  v8 = *(v3 + 16);
  if (v7 != -1)
  {
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v9 = swift_beginAccess();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 512;
  v10 = a3(v9);
  AGGraphAddNamedTraceEvent();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 512;
  return v10;
}

uint64_t static LayoutTrace.traceLengthThatFits(_:proposal:in:_:)(unint64_t a1, uint64_t *a2, char a3, double (*a4)(uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = a2[2];
  v10 = *(a2 + 24);
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;

    LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(a1 | ((HIDWORD(a1) & 1) << 32), &v12, a3 & 1, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v14 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    swift_beginAccess();
    v6 = one-time initialization token for update;
    v7 = *(v4 + 16);
    if (v6 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v13[0] = 17;

    static Update.enqueueAction(reason:_:)(v13, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v4);
  }

  swift_beginAccess();
  v8 = one-time initialization token for lengthThatFits;
  v9 = *(v4 + 16);
  if (v8 != -1)
  {
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v10 = swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 512;
  v11 = a4(v10);
  AGGraphAddNamedTraceEvent();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 512;
  return v11;
}

uint64_t static LayoutTrace.traceCacheLookup(_:_:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  result = swift_beginAccess();
  v8 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if (a2)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v6;
    result = swift_beginAccess();
    v8[4] = v3;
    v8[5] = v4;
    v8[6] = v5;
    *(v8 + 28) = v10;
  }

  return result;
}

uint64_t static LayoutTrace.traceCacheLookup(_:_:)(char a1, double a2, double a3)
{
  result = swift_beginAccess();
  v7 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if (a1)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    result = swift_beginAccess();
    v7[4] = a2;
    v7[5] = 0.0;
    v7[6] = a3;
    *(v7 + 28) = v8;
  }

  return result;
}

uint64_t static LayoutTrace.traceChildGeometries(_:at:origin:_:)(double a1, double a2, uint64_t a3, __int128 *a4, uint64_t (*a5)(void))
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = a4[1];
  v26 = *a4;
  swift_beginAccess();
  v8 = static LayoutTrace.recorder;
  if (!static LayoutTrace.recorder)
  {
    __break(1u);
  }

  swift_beginAccess();
  if (*(v8 + 24) == 1)
  {
  }

  else
  {
    *(v8 + 24) = 1;
    swift_beginAccess();
    v9 = *(v8 + 2);
    v10 = one-time initialization token for update;

    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    LOBYTE(v29[0]) = 17;

    static Update.enqueueAction(reason:_:)(v29, partial apply for closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded(), v8);
  }

  v29[0] = v26;
  v29[1] = v27;
  v30 = a1;
  v31 = a2;
  v12 = _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5();
  v14 = v13;
  swift_beginAccess();
  v15 = one-time initialization token for childGeometries;
  v16 = *(v8 + 2);
  if (v15 != -1)
  {
    swift_once();
  }

  outlined copy of Data._Representation(v12, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v12, v14);
  v18 = a5();

  v28 = specialized EndChildGeometries.init(_:)(v19);
  MEMORY[0x1EEE9AC00](v28);
  v20 = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in static ProtobufEncoder.encoding<A>(_:));
  v22 = v21;

  v23 = *(v8 + 2);
  outlined copy of Data._Representation(v20, v22);
  v24 = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v12, v14);

  return v18;
}

void static LayoutTrace.traceContentDescription(_:_:)(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if ((a1 & 0x100000000) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = a1;
    }

    swift_beginAccess();
    v8 = one-time initialization token for contentDescription;
    v9 = v6[2];

    if (v8 != -1)
    {
      swift_once();
    }

    static String.Encoding.utf8.getter();
    v10 = String.data(using:allowLossyConversion:)();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
    v14[1] = v7;
    if (v12 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    AGGraphAddNamedTraceEvent();

    outlined consume of Data?(v10, v12);
  }
}

uint64_t static LayoutTrace.traceExplicitAlignment(_:alignment:at:body:)(unint64_t a1, unint64_t a2, __int128 *a3, uint64_t (*a4)(void))
{
  v9 = *a3;
  v10 = a3[1];
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v11[0] = v9;
    v11[1] = v10;

    v8 = LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = 1;
  swift_beginAccess();
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    swift_beginAccess();
    v9 = one-time initialization token for update;
    v8 = *(v5 + 16);
    if (v9 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v14[0] = 17;

    static Update.enqueueAction(reason:_:)(v14, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v5);
  }

  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a2 < 2)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(off_1ED537F58 + 2 * (a2 >> 1) + 2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  LayoutTrace.Recorder.alignmentTypeID(for:)(v10);
  swift_beginAccess();
  v11 = one-time initialization token for explicitAlignment;
  v8 = *(v5 + 16);
  if (v11 != -1)
  {
LABEL_13:
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v12 = a4();
  AGGraphAddNamedTraceEvent();
  return v12;
}

void BeginChildGeometries.encode(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v9;
  *(a1 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v9 + 1;
    CGSize.encode(to:)(a1, v3, v4);
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }
  }

  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  v10 = isUniquelyReferenced_nonNull_native;
LABEL_7:
  v15 = *(v10 + 2);
  v14 = *(v10 + 3);
  if (v15 >= v14 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 2) = v15 + 1;
  *&v10[8 * v15 + 32] = v9;
  *(a1 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  *(a1 + 8) = v9 + 1;
  CGPoint.encode(to:)(a1, v7, v8);
  ProtobufEncoder.endLengthDelimited()();
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  ViewSize.proposal.getter(&v26);
  if (v27)
  {
    goto LABEL_22;
  }

  v7 = v26;
  v16 = fabs(v26);
  if (v16 >= 65536.0)
  {
    v17 = 25;
  }

  else
  {
    v17 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v17);
  if (v16 >= 65536.0)
  {
    v19 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v19 + 8;
    if (!__OFADD__(v19, 8))
    {
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        v20 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        v20 = (*a1 + v19);
      }

      *v20 = v7;
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = v18 + 4;
  if (__OFADD__(v18, 4))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *&v7 = v7;
  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_42;
  }

  *(a1 + 8) = isUniquelyReferenced_nonNull_native;
  *(*a1 + v18) = LODWORD(v7);
LABEL_22:
  while (1)
  {
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    ViewSize.proposal.getter(&v26);
    if (v29)
    {
      break;
    }

    v3 = v28;
    v4 = fabs(v28);
    LODWORD(v7) = 0;
    if (v4 >= 65536.0)
    {
      v21 = 33;
    }

    else
    {
      v21 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v4 >= 65536.0)
    {
      v24 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v24 + 8;
      if (!__OFADD__(v24, 8))
      {
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          v25 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          v25 = (*a1 + v24);
        }

        *v25 = v3;
        return;
      }
    }

    else
    {
      v22 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v22 + 4;
      if (!__OFADD__(v22, 4))
      {
        v23 = v3;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v23;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v22) = v23;
        }

        return;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v7);
  }
}

int64_t EndChildGeometries.CodableViewGeometry.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = v12;
  *(a1 + 24) = v13;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v12 + 1;
    CGSize.encode(to:)(a1, v10, v11);
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_7;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  v13 = result;
LABEL_7:
  v18 = *(v13 + 2);
  v17 = *(v13 + 3);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v18 + 1;
  *&v13[8 * v18 + 32] = v12;
  *(a1 + 24) = v13;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_39;
  }

  *(a1 + 8) = v12 + 1;
  CGPoint.encode(to:)(a1, v4, v5);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v7)
  {
LABEL_23:
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    return result;
  }

  v4 = fabs(v6);
  if (v4 >= 65536.0)
  {
    v19 = 25;
  }

  else
  {
    v19 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v19);
  if (v4 >= 65536.0)
  {
    v21 = *(a1 + 8);
    result = v21 + 8;
    if (__OFADD__(v21, 8))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (*(a1 + 16) < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
    }

    else
    {
      *(a1 + 8) = result;
      result = *a1 + v21;
    }

    *result = v6;
    goto LABEL_23;
  }

  v20 = *(a1 + 8);
  result = v20 + 4;
  if (__OFADD__(v20, 4))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *&v4 = v6;
  if (*(a1 + 16) < result)
  {
    goto LABEL_43;
  }

  *(a1 + 8) = result;
  for (*(*a1 + v20) = LODWORD(v4); (v9 & 1) == 0; *result = LODWORD(v4))
  {
LABEL_24:
    v4 = fabs(v8);
    if (v4 >= 65536.0)
    {
      v22 = 33;
    }

    else
    {
      v22 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v22);
    if (v4 >= 65536.0)
    {
      v25 = *(a1 + 8);
      result = v25 + 8;
      if (!__OFADD__(v25, 8))
      {
        if (*(a1 + 16) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          *(a1 + 8) = result;
          result = *a1 + v25;
        }

        *result = v8;
        return result;
      }
    }

    else
    {
      v23 = *(a1 + 8);
      result = v23 + 4;
      if (!__OFADD__(v23, 4))
      {
        v24 = v8;
        if (*(a1 + 16) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v24;
        }

        else
        {
          *(a1 + 8) = result;
          *(*a1 + v23) = v24;
        }

        return result;
      }

LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
  }

  return result;
}

int64_t EndChildGeometries.encode(to:)(int64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 32);
    while (1)
    {
      v6 = v5[1];
      v10[0] = *v5;
      v10[1] = v6;
      v7 = v5[3];
      v10[2] = v5[2];
      v10[3] = v7;
      v8 = v4[1];
      v9 = v4[2];
      if (v8 >= v9)
      {
        result = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          return result;
        }

        if (v9 < result)
        {
          *ProtobufEncoder.growBufferSlow(to:)(result) = 10;
        }

        else
        {
          v4[1] = result;
          *(*v4 + v8) = 10;
        }
      }

      else
      {
        *(*v4 + v8) = 10;
        v4[1] = v8 + 1;
      }

      result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v10);
      if (!v2)
      {
        v5 += 4;
        if (--v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC8];
  BeginChildGeometries.encode(to:)(&v10);
  if (v0)
  {
    free(v10);
    v5 = v13;
  }

  else
  {
    if (v10)
    {
      v6 = v11;
      v7 = v10;
      (*(v2 + 104))(v4, *MEMORY[0x1E6969000], v1);
      v5 = specialized Data.init(bytesNoCopy:count:deallocator:)(v7, v6, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    swift_beginAccess();
    v3 = one-time initialization token for update;
    v4 = *(a1 + 16);
    if (v3 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    return AGGraphSyncTracing();
  }

  return result;
}

uint64_t specialized EndChildGeometries.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = a1;
    v3 = 0;
    v4 = v23;
    v5 = *(v23 + 16);
    v6 = v5 << 6;
    for (i = v1 - 1; ; --i)
    {
      v8 = *(v2 + v3 + 32);
      v9 = *(v2 + v3 + 64);
      v10 = (~*(v2 + v3 + 80) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 80) & 0xFFFFFFFFFFFFFLL) != 0 ? 0 : *(v2 + v3 + 80);
      v11 = (~*(v2 + v3 + 88) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 88) & 0xFFFFFFFFFFFFFLL) != 0 ? 0 : *(v2 + v3 + 88);
      v12 = (~*(v2 + v3 + 80) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 80) & 0xFFFFFFFFFFFFFLL) != 0;
      v13 = (~*(v2 + v3 + 88) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 88) & 0xFFFFFFFFFFFFFLL) != 0;
      v24 = v4;
      v14 = *(v4 + 24);
      if (v5 >= v14 >> 1)
      {
        v16 = v6;
        v18 = *(v2 + v3 + 32);
        v19 = *(v2 + v3 + 64);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v5 + 1, 1);
        v8 = v18;
        v9 = v19;
        v6 = v16;
        v2 = a1;
        v4 = v24;
      }

      *(v4 + 16) = v5 + 1;
      v15 = v4 + v6 + v3;
      *(v15 + 32) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = v12;
      *(v15 + 57) = *v22;
      *(v15 + 60) = *&v22[3];
      *(v15 + 64) = v11;
      *(v15 + 72) = v13;
      *(v15 + 76) = *&v21[3];
      *(v15 + 73) = *v21;
      *(v15 + 80) = v9;
      if (!i)
      {
        break;
      }

      v3 += 64;
      ++v5;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t Date.ComponentsFormatStyle.Field.magnitude.getter@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  (*(v5 + 16))(&v22 - v10, v2, v4, v9);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 31536000.0;
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    if (v16)
    {
      result = (v13)(v11, v4);
      v15 = 2592000.0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v7, v4);
      if (v17)
      {
        result = (v13)(v11, v4);
        v15 = 604800.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v7, v4);
        if (v18)
        {
          result = (v13)(v11, v4);
          v15 = 86400.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.spellOut.getter();
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v7, v4);
          if (v19)
          {
            result = (v13)(v11, v4);
            v15 = 3600.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
            v20 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v7, v4);
            if (v20)
            {
              result = (v13)(v11, v4);
              v15 = 60.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.second.getter();
              v21 = dispatch thunk of static Equatable.== infix(_:_:)();
              v13(v7, v4);
              result = (v13)(v11, v4);
              v15 = INFINITY;
              if (v21)
              {
                v15 = 1.0;
              }
            }
          }
        }
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field.magnitude.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E6968490])
  {
    *a1 = 0x4122750000000000;
  }

  else if (result == *MEMORY[0x1E6968480])
  {
    *a1 = 0x40F5180000000000;
  }

  else if (result == *MEMORY[0x1E6968488])
  {
    *a1 = 0x40AC200000000000;
  }

  else if (result == *MEMORY[0x1E6968498])
  {
    *a1 = 0x404E000000000000;
  }

  else if (result == *MEMORY[0x1E69684A0])
  {
    *a1 = 0x3FF0000000000000;
  }

  else if (result == *MEMORY[0x1E6968470])
  {
    *a1 = 0x3EB0C6F7A0B5ED8DLL;
  }

  else if (result == *MEMORY[0x1E6968478])
  {
    *a1 = 0x3F50624DD2F1A9FCLL;
  }

  else if (result == *MEMORY[0x1E6968468])
  {
    *a1 = 0x3E112E0BE826D695;
  }

  else
  {
    *a1 = 0x7FF0000000000000;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.magnitude.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E6968558])
  {
    v10 = 0x422D5EC4B0000000;
LABEL_21:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E6968570] || result == *MEMORY[0x1E6968548])
  {
    v10 = 0x417E133800000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968590])
  {
    v10 = 0x415DA9C000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968578])
  {
    v10 = 0x4143C68000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968528] || result == *MEMORY[0x1E6968530])
  {
    goto LABEL_18;
  }

  if (result == *MEMORY[0x1E6968598])
  {
LABEL_20:
    v10 = 0x40F5180000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968540])
  {
LABEL_18:
    v10 = 0x4122750000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968550] || result == *MEMORY[0x1E69685A8])
  {
    goto LABEL_20;
  }

  if (result == *MEMORY[0x1E6968560])
  {
    v10 = 0x40E5180000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968568])
  {
    v10 = 0x40AC200000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968580])
  {
    v10 = 0x404E000000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968588])
  {
    v10 = 0x3FF0000000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968538])
  {
    v10 = 0x3F50624DD2F1A9FCLL;
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E69685A0];
  *a1 = 0x7FF0000000000000;
  if (result != v14)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t URL.swiftUI_contentType.getter()
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>, type metadata accessor for NSURLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v4 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v5 = v4;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();

  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  URLResourceValues.contentType.getter();
  return (*(v7 + 8))(v2, v6);
}

uint64_t Set<>.init(_:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  result = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  if ((a2 & 1) == 0)
  {
    v12 = 0;
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *(&outlined read-only object #0 of Set<>.init(_:) + v12 + 32);
      if ((v14 & ~a1) == 0)
      {
        if (v14 > 127)
        {
          switch(v14)
          {
            case 0x80:
              static Duration.UnitsFormatStyle.Unit.seconds.getter();
              break;
            case 0x8000:
              static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
              break;
            case 0x200:
              static Duration.UnitsFormatStyle.Unit.weeks.getter();
              break;
            default:
              goto LABEL_5;
          }
        }

        else
        {
          switch(v14)
          {
            case 16:
              static Duration.UnitsFormatStyle.Unit.days.getter();
              break;
            case 32:
              static Duration.UnitsFormatStyle.Unit.hours.getter();
              break;
            case 64:
              static Duration.UnitsFormatStyle.Unit.minutes.getter();
              break;
            default:
              goto LABEL_5;
          }
        }

        specialized Set._Variant.insert(_:)(v10, v6);
        (*v13)(v10, v4);
      }

LABEL_5:
      v12 += 8;
      if (v12 == 40)
      {
        return v16;
      }
    }
  }

  return result;
}

{
  return specialized Set<>.init(_:)(a1, a2 & 1);
}

uint64_t closure #1 in NSCalendarUnit.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  (*(v7 + 16))(&v26 - v12, a1, v6, v11);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    result = (v15)(v13, v6);
    v17 = 0;
    v18 = 4;
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v9, v6);
    if (v19)
    {
      result = (v15)(v13, v6);
      v17 = 0;
      v18 = 8;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v15(v9, v6);
      if (v20)
      {
        v15(v13, v6);
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v21 = specialized Set.contains(_:)(v9, a2);
        result = (v15)(v9, v6);
        v17 = 0;
        v18 = 0x2000;
        if (v21)
        {
          v18 = 4096;
        }
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15(v9, v6);
        if (v22)
        {
          result = (v15)(v13, v6);
          v17 = 0;
          v18 = 16;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.spellOut.getter();
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v15(v9, v6);
          if (v23)
          {
            result = (v15)(v13, v6);
            v17 = 0;
            v18 = 32;
          }

          else
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
            v24 = dispatch thunk of static Equatable.== infix(_:_:)();
            v15(v9, v6);
            if (v24)
            {
              result = (v15)(v13, v6);
              v17 = 0;
              v18 = 64;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.second.getter();
              v25 = dispatch thunk of static Equatable.== infix(_:_:)();
              v15(v9, v6);
              result = (v15)(v13, v6);
              if (v25)
              {
                v18 = 128;
              }

              else
              {
                v18 = 0;
              }

              v17 = v25 ^ 1;
            }
          }
        }
      }
    }
  }

  *a3 = v18;
  *(a3 + 8) = v17 & 1;
  return result;
}

uint64_t closure #1 in NSCalendarUnit.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  (*(v5 + 16))(v24 - v10, a1, v4, v9);
  static Duration.UnitsFormatStyle.Unit.weeks.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 0;
    v16 = 0x2000;
  }

  else
  {
    static Duration.UnitsFormatStyle.Unit.days.getter();
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    if (v17)
    {
      result = (v13)(v11, v4);
      v15 = 0;
      v16 = 16;
    }

    else
    {
      static Duration.UnitsFormatStyle.Unit.hours.getter();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v7, v4);
      if (v18)
      {
        result = (v13)(v11, v4);
        v15 = 0;
        v16 = 32;
      }

      else
      {
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v7, v4);
        if (v19)
        {
          result = (v13)(v11, v4);
          v15 = 0;
          v16 = 64;
        }

        else
        {
          static Duration.UnitsFormatStyle.Unit.seconds.getter();
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v7, v4);
          if (v20)
          {
            result = (v13)(v11, v4);
            v15 = 0;
            v16 = 128;
          }

          else
          {
            static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
            v21 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v7, v4);
            if (v21 & 1) != 0 || (static Duration.UnitsFormatStyle.Unit.microseconds.getter(), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v22))
            {
              result = (v13)(v11, v4);
              v15 = 0;
              v16 = 0x8000;
            }

            else
            {
              static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
              v23 = dispatch thunk of static Equatable.== infix(_:_:)();
              v13(v7, v4);
              result = (v13)(v11, v4);
              if (v23)
              {
                v16 = 0x8000;
              }

              else
              {
                v16 = 0;
              }

              v15 = v23 ^ 1;
            }
          }
        }
      }
    }
  }

  *a2 = v16;
  *(a2 + 8) = v15 & 1;
  return result;
}

double Calendar.Component.Magnitude.init(_:)@<D0>(double *a1@<X8>)
{
  v2 = Duration.components.getter();
  result = v3 * 1.0e-18 + v2;
  *a1 = result;
  return result;
}

double Calendar.Component.Magnitude.ratio(to:)(double *a1)
{
  v2 = *a1;
  v3 = INFINITY;
  if (*v1 == 0.0)
  {
    v3 = NAN;
  }

  if (v2 == 0.0)
  {
    return v3;
  }

  else
  {
    return *v1 / v2;
  }
}

double one-time initialization function for zero()
{
  static Duration.zero.getter();
  v0 = Duration.components.getter();
  result = v1 * 1.0e-18 + v0;
  *&static Calendar.Component.Magnitude.zero = result;
  return result;
}

double static Calendar.Component.Magnitude.zero.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static Calendar.Component.Magnitude.zero;
  *a1 = static Calendar.Component.Magnitude.zero;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Calendar.Component.Magnitude.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.Component.Magnitude.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.Component.Magnitude.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.Component.Magnitude.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Calendar.Component.Magnitude.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

Swift::Int Calendar.Component.Magnitude.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t Calendar.Component.Magnitude.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *v9 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.Component.Magnitude()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Calendar.Component.Magnitude(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.Key()
{
  Hasher.init(_seed:)();
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Locale.Key()
{
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.Key()
{
  Hasher.init(_seed:)();
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *one-time initialization function for minusSignCache()
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>, type metadata accessor for ObjectCache);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Locale.minusSignCache, 0);
  static Locale.minusSignCache = result;
  return result;
}

void closure #1 in variable initialization expression of static Locale.minusSignCache(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  (*(v5 + 16))(v7, a1, v4);
  Locale.init(components:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  [v12 setLocale_];

  v14 = [v12 minusSign];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *a2 = v16;
    a2[1] = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Duration.UnitsFormatStyle.Unit.magnitude.getter@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  (*(v5 + 16))(&v24 - v10, v2, v4, v9);
  static Duration.UnitsFormatStyle.Unit.weeks.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12 & 1) != 0 || (static Duration.UnitsFormatStyle.Unit.days.getter(), v14 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v14) || (static Duration.UnitsFormatStyle.Unit.hours.getter(), v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v15) || (static Duration.UnitsFormatStyle.Unit.minutes.getter(), v16 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v16) || (static Duration.UnitsFormatStyle.Unit.seconds.getter(), v17 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v17) || (static Duration.UnitsFormatStyle.Unit.milliseconds.getter(), v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v18) || (static Duration.UnitsFormatStyle.Unit.microseconds.getter(), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v19))
  {
    v13(v11, v4);
  }

  else
  {
    static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    result = (v13)(v11, v4);
    if ((v20 & 1) == 0)
    {
      v23 = INFINITY;
      goto LABEL_14;
    }
  }

  result = Duration.components.getter();
  v23 = v22 * 1.0e-18 + result;
LABEL_14:
  *a1 = v23;
  return result;
}

BOOL String.isBeginningOfSentence(pattern:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x193ABEC20](a4, a5);
  v8 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  isBeginningOfSentence = _isBeginningOfSentence(v7, v8, isa);

  return isBeginningOfSentence;
}

void one-time initialization function for uiKit()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x193ABEC20](0x6C7070612E6D6F63, 0xEF74694B49552E65);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.uiKit = v2;
}

id static NSUserDefaults.swiftUI.getter(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

Swift::Bool __swiftcall NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(NSAttributedString to, __C::_NSRange_optional in)
{
  if (in.is_nil)
  {

    v4 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
    v37 = [v2 length];
  }

  else
  {
    length = in.value.length;
    location = in.value.location;
    v41.length = [v2 length];
    v36 = location;
    v37 = length;
    v40.location = location;
    v40.length = length;
    v41.location = 0;
    NSIntersectionRange(v40, v41);
    v7 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Range<>.init(_:in:)();
    LOBYTE(v7) = v8;

    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = [v2 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = String.subscript.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  isa = to.super.isa;
  v18 = [(objc_class *)to.super.isa string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = String.subscript.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (v15 == v23 && v17 == v25 && v11 >> 16 == v19 >> 16 && v13 >> 16 == v21 >> 16)
  {
  }

  else
  {
    v29 = _stringCompareInternal(_:_:_:_:expecting:)();

    v30 = 0;
    if ((v29 & 1) == 0)
    {
      return v30;
    }
  }

  v39 = 1;
  v31 = swift_allocObject();
  v31[2] = v36;
  v31[3] = v37;
  v31[4] = isa;
  v31[5] = &v39;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in NSAttributedString.isCharacterAndRunwiseEqual(to:in:);
  *(v32 + 24) = v31;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_6;
  v33 = _Block_copy(aBlock);
  v34 = isa;

  [v2 enumerateAttributesInRange:v36 options:v37 usingBlock:{0, v33}];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v30 = v39;

    return v30;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void closure #1 in NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, uint64_t a5, int a6, id a7, _BYTE *a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  v20 = 0uLL;
  v13 = [a7 attributesAtIndex:v8 effectiveRange:&v20];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 == __PAIR128__(a3, v8))
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    v15 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithDictionary_];

    specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v17 isEqualToDictionary_];

    if ((v19 & 1) == 0)
    {
      *a8 = 0;
      *a4 = 1;
    }
  }

  else
  {

    *a8 = 0;
    *a4 = 1;
  }
}