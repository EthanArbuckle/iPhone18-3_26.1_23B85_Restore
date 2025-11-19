uint64_t (*EdgeInsets.subscript.modify(uint64_t a1, unsigned __int8 a2))(uint64_t result, char a2)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  v4 = v2 + 2;
  if (a2 != 2)
  {
    v4 = v2 + 3;
  }

  if (!a2)
  {
    v3 = v2;
  }

  if (a2 > 1u)
  {
    v3 = v4;
  }

  *a1 = *v3;
  return EdgeInsets.subscript.modify;
}

uint64_t EdgeInsets.subscript.modify(uint64_t result, char a2)
{
  v2 = *(result + 16);
  v3 = *(result + 8);
  v4 = v3 + 2;
  if (v2 == 2)
  {
    v5 = v3 + 2;
  }

  else
  {
    v5 = v3 + 3;
  }

  if (*(result + 16))
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = *(result + 8);
  }

  if (*(result + 16) <= 1u)
  {
    v5 = v6;
  }

  if (v2 != 2)
  {
    v4 = v3 + 3;
  }

  if (*(result + 16))
  {
    ++v3;
  }

  if (*(result + 16) <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2)
  {
    v7 = v5;
  }

  *v7 = *result;
  return result;
}

double EdgeInsets.subscript.getter(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double EdgeInsets.subscript.getter(char a1, char a2, double a3, double a4, double a5, double a6)
{
  if ((a2 & 1) == 0)
  {
    a4 = a6;
    result = a5;
  }

  if ((a1 & 1) == 0)
  {
    return a4;
  }

  return result;
}

uint64_t EdgeInsets.subscript.setter(uint64_t result, char a2, double a3)
{
  v4 = 16;
  if (a2)
  {
    v4 = 0;
  }

  v5 = 24;
  if (a2)
  {
    v5 = 8;
  }

  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  *(v3 + v4) = a3;
  return result;
}

uint64_t (*EdgeInsets.subscript.modify(uint64_t a1, char a2, char a3))(uint64_t result)
{
  *(a1 + 8) = v3;
  *(a1 + 17) = a3;
  *(a1 + 16) = a2;
  v4 = v3 + 1;
  v5 = v3 + 2;
  if (a3)
  {
    v5 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  if (a2)
  {
    v4 = v5;
  }

  *a1 = *v4;
  return EdgeInsets.subscript.modify;
}

uint64_t EdgeInsets.subscript.modify(uint64_t result)
{
  v1 = 24;
  if (*(result + 16))
  {
    v1 = 16;
  }

  v2 = 8;
  if (*(result + 16))
  {
    v2 = 0;
  }

  if (*(result + 17))
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  *(*(result + 8) + v3) = *result;
  return result;
}

double EdgeInsets.adding(_:)(uint64_t a1, double result)
{
  if (!*(a1 + 8))
  {
    return *a1 + result;
  }

  return result;
}

double EdgeInsets.merge(_:)(_BYTE *a1)
{
  if (!a1[8])
  {
    return *a1;
  }

  return result;
}

CGSize __swiftcall EdgeInsets.originOffset(in:)(SwiftUI::LayoutDirection in)
{
  v4 = v1;
  if (*in)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

void *EdgeInsets.xFlipIfRightToLeft(layoutDirection:)(void *result)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if (v2 != v3)
  {
    result = (result)(&v4);
    if (v4 == 1)
    {
      *(v1 + 8) = v3;
      *(v1 + 24) = v2;
    }
  }

  return result;
}

uint64_t EdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x193AC11E0](*&v9);
}

double CGRect.inset(by:layoutDirection:)(void (*a1)(uint64_t *__return_ptr, double), double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v12 = a6;
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  if (!CGRectIsNull(v28))
  {
    v26 = a4;
    v29.origin.x = v12;
    v29.origin.y = a7;
    v29.size.width = a8;
    v29.size.height = a9;
    v30 = CGRectStandardize(v29);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v22 = a5;
    if (a3 != a5)
    {
      a1(&v27, a5);
      if (v27)
      {
        v22 = a5;
      }

      else
      {
        v22 = a3;
      }
    }

    v12 = x + v22;
    v23 = width - (a3 + a5);
    v24 = height - (a2 + v26);
    v31.origin.x = x + v22;
    v31.origin.y = y + a2;
    v31.size.width = v23;
    v31.size.height = v24;
    if (CGRectGetWidth(v31) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v32.origin.x = v12;
    v32.origin.y = y + a2;
    v32.size.width = v23;
    v32.size.height = v24;
    if (CGRectGetHeight(v32) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v12;
}

double CGRect.outset(by:layoutDirection:)(void (*a1)(uint64_t *__return_ptr, double), double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v12 = a6;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  if (!CGRectIsNull(v29))
  {
    v30.origin.x = v12;
    v30.origin.y = a7;
    v30.size.width = a8;
    v30.size.height = a9;
    v31 = CGRectStandardize(v30);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    v21 = -a5;
    if (a3 != a5)
    {
      height = v31.size.height;
      a1(&v28, v21);
      v31.size.height = height;
      if (v28)
      {
        v23 = a5;
      }

      else
      {
        v23 = a3;
      }

      v21 = -v23;
    }

    v12 = x + v21;
    v24 = y - a2;
    v25 = width - (-a5 - a3);
    v26 = v31.size.height - (-a4 - a2);
    v32.origin.x = v12;
    v32.origin.y = v24;
    v32.size.width = v25;
    v32.size.height = v26;
    if (CGRectGetWidth(v32) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v33.origin.x = v12;
    v33.origin.y = v24;
    v33.size.width = v25;
    v33.size.height = v26;
    if (CGRectGetHeight(v33) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v12;
}

__C::CGRect __swiftcall CGRect.outset(bySize:)(CGSize bySize)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  height = bySize.height;
  width = bySize.width;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  if (!CGRectIsNull(v15))
  {
    v16.origin.x = v8;
    v16.origin.y = v7;
    v16.size.width = v6;
    v16.size.height = v5;
    v17 = CGRectStandardize(v16);
    v8 = v17.origin.x - width;
    v7 = v17.origin.y - height;
    v6 = v17.size.width - (-width - width);
    v5 = v17.size.height - (-height - height);
    v17.origin.x = v17.origin.x - width;
    v17.origin.y = v17.origin.y - height;
    v17.size.width = v6;
    v17.size.height = v5;
    if (CGRectGetWidth(v17) < 0.0 || (v18.origin.x = v8, v18.origin.y = v7, v18.size.width = v6, v18.size.height = v5, CGRectGetHeight(v18) < 0.0))
    {
      v8 = *MEMORY[0x1E695F050];
      v7 = *(MEMORY[0x1E695F050] + 8);
      v6 = *(MEMORY[0x1E695F050] + 16);
      v5 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void EdgeInsets.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t (*EdgeInsets.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return UnevenRoundedRectangle.animatableData.modify;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance EdgeInsets(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle;
}

uint64_t EdgeInsets.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6[4] = *MEMORY[0x1E69E9840];
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return closure #1 in EdgeInsets.encode(to:)(v6, a1);
}

uint64_t closure #1 in EdgeInsets.encode(to:)(uint64_t result, void *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = *(result + v3);
    if (v4 == 0.0)
    {
      goto LABEL_3;
    }

    v5 = fabs(v4);
    v6 = v3 + 5;
    if (v5 >= 65536.0)
    {
      v6 = v3 + 1;
    }

    v7 = v6 + 8;
    v8 = a2[1];
    v9 = a2[2];
    if (v8 >= v9)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_25;
      }

      if (v9 < v18)
      {
        v24 = result;
        v23 = v5;
        v20 = v7;
        v21 = ProtobufEncoder.growBufferSlow(to:)(v8 + 1);
        v5 = v23;
        v22 = v21;
        result = v24;
        *v22 = v20;
      }

      else
      {
        a2[1] = v18;
        *(*a2 + v8) = v7;
      }
    }

    else
    {
      *(*a2 + v8) = v7;
      a2[1] = v8 + 1;
    }

    if (v5 < 65536.0)
    {
      break;
    }

    v14 = a2[1];
    v15 = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_24;
    }

    if (a2[2] >= v15)
    {
      a2[1] = v15;
      *(*a2 + v14) = v4;
    }

    else
    {
      v16 = result;
      v17 = ProtobufEncoder.growBufferSlow(to:)(v14 + 8);
      result = v16;
      *v17 = v4;
    }

LABEL_3:
    v3 += 8;
    if (v3 == 32)
    {
      return result;
    }
  }

  v10 = a2[1];
  v11 = v10 + 4;
  if (!__OFADD__(v10, 4))
  {
    if (a2[2] < v11)
    {
      v19 = result;
      v12 = ProtobufEncoder.growBufferSlow(to:)(v10 + 4);
      result = v19;
    }

    else
    {
      a2[1] = v11;
      v12 = (*a2 + v10);
    }

    v13 = v4;
    *v12 = v13;
    goto LABEL_3;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double EdgeInsets.init(from:)(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  closure #1 in EdgeInsets.init(from:)(v4, a1, &v3);
  if (!v1)
  {
    return *v4;
  }

  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance EdgeInsets(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  return closure #1 in EdgeInsets.encode(to:)(v4, a1);
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance EdgeInsets@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  closure #1 in EdgeInsets.init(from:)(&v7, a1, &v6);
  if (!v2)
  {
    result = *&v7;
    v5 = v8;
    *a2 = v7;
    a2[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionalEdgeInsets and conformance OptionalEdgeInsets()
{
  result = lazy protocol witness table cache variable for type OptionalEdgeInsets and conformance OptionalEdgeInsets;
  if (!lazy protocol witness table cache variable for type OptionalEdgeInsets and conformance OptionalEdgeInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalEdgeInsets and conformance OptionalEdgeInsets);
  }

  return result;
}

uint64_t _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVACyAfCyA2FGGGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for EdgeInsets(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets();
  *(a1 + 8) = result;
  return result;
}

SwiftUI::Spacing::Key __swiftcall Spacing.Key.init(category:edge:)(SwiftUI::Spacing::Category category, SwiftUI::AbsoluteEdge edge)
{
  v3 = *edge;
  *v2 = *category.base.value;
  *(v2 + 8) = v3;
  result.category = category;
  result.edge = edge;
  return result;
}

void Spacing.Value.init(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

unsigned __int8 *Spacing.reset(_:layoutDirection:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  AbsoluteEdge.Set.init(_:layoutDirection:)(&v4, &v3);
  return Spacing.reset(_:)(&v3);
}

uint64_t Spacing.clear(_:layoutDirection:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *a2;
  result = AbsoluteEdge.Set.init(_:layoutDirection:)(&v5, &v6);
  if (v6)
  {
    v4 = specialized _NativeDictionary.filter(_:)(*v2, v6);

    *v2 = v4;
  }

  return result;
}

uint64_t Spacing.isLayoutDirectionSymmetric.getter()
{
  v1 = *v0;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
  v8 = off_1ED533000;
  while (v4)
  {
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v6 << 6);
    v11 = *(v1 + 48) + 16 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v1 + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);
    if (v7[430] != -1)
    {
      v45 = v12;
      v47 = *(v14 + 24);
      swift_once();
      v12 = v45;
      v17 = v47;
      v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
      v8 = off_1ED533000;
    }

    v4 &= v4 - 1;
    if (v12 != v8[164] && ((v13 - 1) & 0xFD) == 0)
    {
      v20 = 0.0;
      if (*(v1 + 16))
      {
        v46 = v17;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0x1000302u >> (8 * v13));
        if (v22)
        {
          v23 = *(v1 + 56) + 40 * v21;
          v20 = *v23;
          v24 = *(v23 + 8);
          v26 = *(v23 + 16);
          v25 = *(v23 + 24);
          v27 = *(v23 + 32);
        }

        else
        {
          v27 = 255;
          v24 = 0.0;
          v26 = 0.0;
          v25 = 0.0;
        }

        v8 = off_1ED533000;
        v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
        v17 = v46;
        if (v19 == 255)
        {
          goto LABEL_24;
        }

LABEL_17:
        if (v27 == 255)
        {
          goto LABEL_49;
        }

        if (v19)
        {
          if (v19 == 1)
          {
            if (v27 != 1)
            {
              goto LABEL_49;
            }
          }

          else if (v27 != 2)
          {
            goto LABEL_49;
          }

          if (v20 != v16 || v24 != v15 || v26 != v18 || v25 != v17)
          {
LABEL_49:

            goto LABEL_50;
          }
        }

        else if (v27 || v20 != v16)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v27 = 255;
        v24 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
        if (v19 != 255)
        {
          goto LABEL_17;
        }

LABEL_24:
        if (v27 != 255)
        {
          goto LABEL_49;
        }
      }
    }
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v6;
    if (v4)
    {
      v6 = v9;
      goto LABEL_9;
    }
  }

  v28 = v7;

  if (v28[430] == -1)
  {
    goto LABEL_36;
  }

LABEL_53:
  swift_once();
LABEL_36:
  v29 = 0uLL;
  if (*(v1 + 16))
  {
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, 1u);
    if (v31)
    {
      v32 = *(v1 + 56) + 40 * v30;
      v33 = *v32;
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      v36 = *(v32 + 24);
      v37 = *(v32 + 32);
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 255;
    }

    if (*(v1 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, 3u), (v41 & 1) != 0))
    {
      v42 = *(v1 + 56) + 40 * v40;
      v29 = *v42;
      v38 = *(v42 + 16);
      v39 = *(v42 + 32);
    }

    else
    {
      v39 = 255;
      v38 = 0uLL;
      v29 = 0uLL;
    }
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 255;
    v38 = 0uLL;
    v39 = 255;
  }

  v50 = v33;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v55[0] = v29;
  v55[1] = v38;
  v56 = v39;
  if (v37 == 255)
  {
    v43 = v39 == 255;
    return v43 & 1;
  }

  v48[0] = v33;
  v48[1] = v34;
  v48[2] = v35;
  v48[3] = v36;
  v49 = v37;
  if (v39 != 255)
  {
    v43 = specialized static Spacing.Value.== infix(_:_:)(v48, v55);
    return v43 & 1;
  }

LABEL_50:
  v43 = 0;
  return v43 & 1;
}

uint64_t Spacing.description.getter()
{
  result = 0x20676E6963617053;
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v25 = 0x20676E6963617053;
    v26 = 0xEA00000000000A5BLL;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SpacingV3KeyV_Tt1g5(v3, 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v21, (v4 + 32), v3, v2);
    swift_bridgeObjectRetain_n();
    outlined consume of Set<EventID>.Iterator._Variant();
    if (v5 == v3)
    {
      v21 = v4;
      specialized MutableCollection<>.sort(by:)(&v21);

      v6 = *(v21 + 16);
      if (!v6)
      {
LABEL_11:

        MEMORY[0x193ABEDD0](93, 0xE100000000000000);
        return v25;
      }

      v7 = (v21 + 40);
      while (1)
      {
        v4 = *(v7 - 1);
        v11 = *v7;
        v21 = 0;
        v22 = 0xE000000000000000;
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        if (!*(v2 + 16))
        {
          break;
        }

        v13 = v21;
        v12 = v22;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = *(v2 + 56) + 40 * v14;
        v17 = *v16;
        if (*(v16 + 32))
        {
          v19 = *(v16 + 8);
          v18 = *(v16 + 16);
          v20 = *(v16 + 24);
          v21 = v17;
          v22 = v19;
          v23 = v18;
          v24 = v20;
          _print_unlocked<A, B>(_:_:)();
          v8 = 0;
          v10 = 0xE000000000000000;
        }

        else
        {
          v8 = Double.description.getter();
          v10 = v9;
        }

        v7 += 16;
        v21 = 8224;
        v22 = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v13, v12);

        MEMORY[0x193ABEDD0](2112032, 0xE300000000000000);
        MEMORY[0x193ABEDD0](v8, v10);

        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v21, v22);

        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

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

double static Spacing.defaultMinimum.getter()
{
  swift_beginAccess();
  result = *&static Spacing.defaultValue;
  if (dbl_1EAB21528 < *&static Spacing.defaultValue)
  {
    return dbl_1EAB21528;
  }

  return result;
}

SwiftUI::Spacing::Category __swiftcall Spacing.Category.init()()
{
  v1 = v0;
  result.base.value = AGMakeUniqueID();
  v1->base.value = result.base.value;
  return result;
}

uint64_t one-time initialization function for leftTextBaseline()
{
  result = AGMakeUniqueID();
  static Spacing.Category.leftTextBaseline = result;
  return result;
}

uint64_t one-time initialization function for rightTextBaseline()
{
  result = AGMakeUniqueID();
  static Spacing.Category.rightTextBaseline = result;
  return result;
}

Swift::Int Spacing.Category.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void Spacing.Key.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int Spacing.Key.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Spacing.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Spacing.Key()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Spacing.Key()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void Spacing.TextMetrics.init(ascend:descend:leading:pixelLength:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t Spacing.TextMetrics.isAlmostEqual(to:)(double *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v1[1];
  v5 = v1[2];
  if ((specialized FloatingPoint.isAlmostEqual(to:tolerance:)(*a1, 0.0000000149011612, *v1) & 1) == 0 || (specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v2, 0.0000000149011612, v4) & 1) == 0)
  {
    return 0;
  }

  return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v3, 0.0000000149011612, v5);
}

uint64_t Spacing.Value.value.getter()
{
  if (v0[32])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Spacing.Value.distance(to:)(uint64_t *a1)
{
  result = *a1;
  v4 = *(a1 + 32);
  v5 = *v1;
  if (*(v1 + 32))
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = a1[3];
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *(v1 + 24);
    if (*(v1 + 32) == 1)
    {
      if (v4)
      {
        if (v4 == 2)
        {
          v17 = *v1;
          v18 = v10;
          v19 = v9;
          v20 = v11;
          v13 = *&result;
          v14 = v7;
          v15 = v6;
          v16 = v8;
LABEL_13:
          specialized static Spacing.TextMetrics.spacing(top:bottom:)(&v17, &v13);
          return v12;
        }

LABEL_15:
        *&result = 0.0;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v17 = *&result;
        v18 = v7;
        v19 = v6;
        v20 = v8;
        v13 = v5;
        v14 = v10;
        v15 = v9;
        v16 = v11;
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  else if (*(a1 + 32))
  {
    return *v1;
  }

  else
  {
    *&result = *&result + v5;
  }

  return result;
}

unsigned __int8 *Spacing.clear(_:)(unsigned __int8 *result)
{
  if (*result)
  {
    v2 = specialized _NativeDictionary.filter(_:)(*v1, *result);

    *v1 = v2;
  }

  return result;
}

uint64_t Spacing.minima.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static Spacing.defaultValue.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static Spacing.defaultValue = *&a1;
  dbl_1EAB21528 = a2;
  return result;
}

uint64_t static Spacing.zero.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Spacing.zero;
}

uint64_t static Spacing.all(_:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = 1;
  *(inited + 48) = a2;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = v5;
  *(inited + 96) = 3;
  *(inited + 104) = a2;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 112) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = v5;
  *(inited + 152) = 0;
  *(inited + 160) = a2;
  *(inited + 168) = 0;
  *(inited + 176) = 0;
  *(inited + 192) = 0;
  *(inited + 184) = 0;
  *(inited + 200) = v5;
  *(inited + 208) = 2;
  *(inited + 216) = a2;
  *(inited + 232) = 0;
  *(inited + 240) = 0;
  *(inited + 224) = 0;
  *(inited + 248) = 0;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a1 = v6;
  return result;
}

uint64_t static Spacing.horizontal(_:)@<X0>(char a1@<W0>, char a2@<W1>, unint64_t *a3@<X8>, double a4@<D0>)
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  if (one-time initialization token for default != -1)
  {
    v12 = inited;
    swift_once();
    inited = v12;
  }

  v9 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = a1;
  *(inited + 48) = a4;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = v9;
  *(inited + 96) = a2;
  *(inited + 104) = a4;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 112) = 0;
  *(inited + 136) = 0;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a3 = v10;
  return result;
}

uint64_t specialized static Spacing.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v5 = vzip1q_s64(v2, v3);
      return *&vmovn_s64(vceqq_f64(vdupq_laneq_s64(v5, 1), v5)) & 1;
    }

    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v3), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
  }

  if (v4 == 2)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v3), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
  }

  return 0;
}

uint64_t specialized static Spacing.TextMetrics.spacing(top:bottom:)(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v8 = static Semantics_v5.semantic;
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
      return result;
    }
  }

  else if (static Semantics.forced < v8)
  {
    return result;
  }

  result = specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v5, 0.0000000149011612, v3);
  if (result)
  {
    result = specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v6, 0.0000000149011612, v2);
    if (result)
    {
      return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v7, 0.0000000149011612, v4);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Spacing.Category and conformance Spacing.Category()
{
  result = lazy protocol witness table cache variable for type Spacing.Category and conformance Spacing.Category;
  if (!lazy protocol witness table cache variable for type Spacing.Category and conformance Spacing.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.Category and conformance Spacing.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Spacing.TextMetrics and conformance Spacing.TextMetrics()
{
  result = lazy protocol witness table cache variable for type Spacing.TextMetrics and conformance Spacing.TextMetrics;
  if (!lazy protocol witness table cache variable for type Spacing.TextMetrics and conformance Spacing.TextMetrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.TextMetrics and conformance Spacing.TextMetrics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Spacing.Value and conformance Spacing.Value()
{
  result = lazy protocol witness table cache variable for type Spacing.Value and conformance Spacing.Value;
  if (!lazy protocol witness table cache variable for type Spacing.Value and conformance Spacing.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.Value and conformance Spacing.Value);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Spacing.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Spacing.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t static ViewGraphHost.defaultEnvironment.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *a1 = static ViewGraphHost._defaultEnvironment;
  a1[1] = v1;
}

uint64_t key path getter for static ViewGraphHost.defaultEnvironment : ViewGraphHost.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *a1 = static ViewGraphHost._defaultEnvironment;
  a1[1] = v1;
}

uint64_t key path setter for static ViewGraphHost.defaultEnvironment : ViewGraphHost.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = one-time initialization token for _defaultEnvironment;

  if (v3 != -1)
  {
    swift_once();
  }

  static ViewGraphHost._defaultEnvironment = v1;
  *(&static ViewGraphHost._defaultEnvironment + 1) = v2;

  result = swift_beginAccess();
  static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  return result;
}

uint64_t static ViewGraphHost.defaultEnvironment.setter(__int128 *a1)
{
  v1 = *a1;
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v3 = *a1;
    swift_once();
    v1 = v3;
  }

  static ViewGraphHost._defaultEnvironment = v1;

  result = swift_beginAccess();
  static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  return result;
}

void (*static ViewGraphHost.defaultEnvironment.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    swift_once();
  }

  v4 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *(v3 + 48) = static ViewGraphHost._defaultEnvironment;
  *(v3 + 56) = v4;

  return static ViewGraphHost.defaultEnvironment.modify;
}

void static ViewGraphHost.defaultEnvironment.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  static ViewGraphHost._defaultEnvironment = *(*a1 + 48);
  *(&static ViewGraphHost._defaultEnvironment + 1) = v3;
  if (a2)
  {

    swift_beginAccess();
    static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  }

  else
  {

    swift_beginAccess();
    static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  }

  free(v2);
}

uint64_t static ViewGraphHost.isDefaultEnvironmentConfigured.setter(char a1)
{
  result = swift_beginAccess();
  static ViewGraphHost.isDefaultEnvironmentConfigured = a1;
  return result;
}

void ViewGraphHost.AssetCatalogConfiguration.referenceBounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ViewGraphHost.AssetCatalogConfiguration.init(referenceBounds:pointsPerInch:preferredArtworkSubtype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  return result;
}

BOOL static ViewGraphHost.AssetCatalogConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v6 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ViewGraphHost.AssetCatalogConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v6 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t EnvironmentValues.viewGraphIdiom.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 6;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues.viewGraphIdiom : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 6;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.viewGraphIdiom : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(v3, *a2);
  }
}

void (*EnvironmentValues.viewGraphIdiom.modify(void *a1))(uint64_t *a1)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v5, &v10);

    v7 = v10;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 6;
    }
  }

  *(v4 + 40) = v7;
  return EnvironmentValues.viewGraphIdiom.modify;
}

void EnvironmentValues.viewGraphIdiom.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t EnvironmentValues.viewGraphAssetCatalogConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v3, &v11);

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v7 = *(&v13 + 1);
      v10 = v13;
      v9 = v11;
      v8 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = *(result + 120);
      v6 = *(result + 88);
      v11 = *(result + 72);
      v12 = v6;
      v13 = *(result + 104);
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
  v8 = vdupq_n_s64(0x4059000000000000uLL);
  v9 = 0uLL;
  v10 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v7;
  return result;
}

double key path getter for EnvironmentValues.viewGraphAssetCatalogConfiguration : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  EnvironmentValues.viewGraphAssetCatalogConfiguration.getter(v6);
  result = v7;
  v4 = v8;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.viewGraphAssetCatalogConfiguration : EnvironmentValues(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = a1[2];
  v7 = 0;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(a2, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.viewGraphAssetCatalogConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[22] = v1;
  v5 = *v1;
  v3[23] = *v1;
  v6 = *(v1 + 8);
  v3[24] = v6;
  if (!v6)
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v5);
    if (v11 && (v11[15] & 1) == 0)
    {
      v9 = *(v11 + 5);
      v8 = *(v11 + 6);
      v7 = v11[14];
      v10 = v11[9];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v5, &v13);

  if (v17)
  {
LABEL_9:
    v7 = 0;
    v8 = xmmword_18DDED940;
    v9 = xmmword_18DDED950;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v16;
  v9 = v14;
  v8 = v15;
  v10 = v13;
LABEL_10:
  v4[14] = v10;
  *(v4 + 15) = v9;
  *(v4 + 17) = v8;
  v4[19] = v7;
  return EnvironmentValues.viewGraphAssetCatalogConfiguration.modify;
}

void EnvironmentValues.viewGraphAssetCatalogConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v7 = *(*a1 + 136);
  v6 = *(*a1 + 144);
  v8 = *(*a1 + 152);
  v9 = *(*a1 + 192);
  v10 = *(*a1 + 176);
  if (a2)
  {
    *v2 = v3;
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v7;
    *(v2 + 32) = v6;
    *(v2 + 40) = v8;
    *(v2 + 48) = 0;
    swift_retain_n();
    v11 = v10;
    v12 = v2;
  }

  else
  {
    *(v2 + 56) = v3;
    *(v2 + 64) = v5;
    *(v2 + 72) = v4;
    *(v2 + 80) = v7;
    *(v2 + 88) = v6;
    *(v2 + 96) = v8;
    *(v2 + 104) = 0;
    swift_retain_n();
    v12 = v2 + 56;
    v11 = v10;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(v11, v12);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v2 + 184), **(v2 + 176));
  }

  free(v2);
}

uint64_t EnvironmentValues.viewGraphRenderingRootView.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v1, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v1, v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<Swift.AnyObject>(v4);
  return Strong;
}

uint64_t key path getter for EnvironmentValues.viewGraphRenderingRootView : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v3, v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(*a1, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  result = outlined destroy of WeakBox<Swift.AnyObject>(v6);
  *a2 = Strong;
  return result;
}

uint64_t key path setter for EnvironmentValues.viewGraphRenderingRootView : EnvironmentValues()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE017RenderingRootViewN033_F748B30B59970FC73194935C526E3031LLV_Tt0g5(v1);
  return outlined destroy of WeakBox<Swift.AnyObject>(v1);
}

uint64_t EnvironmentValues.viewGraphRenderingRootView.setter()
{
  v5 = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v1 = *v0;
  outlined init with copy of WeakBox<Swift.AnyObject>(v4, v3);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v0, v3);

  outlined destroy of WeakBox<Swift.AnyObject>(v3);
  if (v0[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v1, *v0);
  }

  swift_unknownObjectRelease();

  return outlined destroy of WeakBox<Swift.AnyObject>(v4);
}

void (*EnvironmentValues.viewGraphRenderingRootView.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = *v1;
  v3[7] = *v1;
  v6 = *(v1 + 8);
  v3[8] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v5, (v4 + 1));
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, (v3 + 1));
  }

  v4[9] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<Swift.AnyObject>((v4 + 1));
  *v4 = Strong;
  return EnvironmentValues.viewGraphRenderingRootView.modify;
}

void EnvironmentValues.viewGraphRenderingRootView.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  outlined init with copy of WeakBox<Swift.AnyObject>(v3 + 8, v3 + 24);
  swift_retain_n();
  v6 = v3 + 24;
  if (a2)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, v6);

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 24);
    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v3 + 56), **(v3 + 48));
    }

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 8);
    swift_unknownObjectRelease();
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, v6);

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 24);
    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v3 + 56), **(v3 + 48));
    }

    swift_unknownObjectRelease();
    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 8);
  }

  free(v3);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.RenderingRootViewKey()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t outlined destroy of WeakBox<Swift.AnyObject>(uint64_t a1)
{
  type metadata accessor for WeakBox<Swift.AnyObject>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<Swift.AnyObject>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double PlatformDrawableContent.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 5;
  return result;
}

id PlatformDrawableOptions.caLayerContentsFormat.getter()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E6979658];
  if ((v1 & 0x100) != 0)
  {
    v2 = MEMORY[0x1E6979660];
  }

  if ((v1 & 0x40) != 0)
  {
    v3 = MEMORY[0x1E6979648];
  }

  else
  {
    v3 = v2;
  }

  return *v3;
}

uint64_t PlatformDrawableContent.State._renderer.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

char *PlatformDrawableContent.State.init(platformViewMode:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 8) = 0;
  *a2 = v2;
  return result;
}

uint64_t PlatformDrawableContent.State.renderer()()
{
  if (!*(v0 + 8))
  {
    v2 = *v0;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    *(v0 + 8) = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v2);
  }
}

BOOL static PlatformDrawableOptions.== infix(_:_:)(int *a1, int *a2)
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

uint64_t assignWithTake for PlatformDrawableContent.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithCopy for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  outlined consume of PlatformDrawableContent.Storage(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformDrawableContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformDrawableContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PlatformDrawableContent.Storage(uint64_t a1)
{
  if (*(a1 + 40) <= 4u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for PlatformDrawableContent.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

Swift::Void __swiftcall DisplayList.insertLayerFilters(matrices:version:premultiplied:)(Swift::OpaquePointer matrices, SwiftUI::DisplayList::Version version, Swift::Bool premultiplied)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(matrices._rawValue + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(matrices._rawValue + 8);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v5 |= *(*(matrices._rawValue + 6) + ((v10 << 8) | (4 * v11)));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(matrices._rawValue + v10 + 8);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  ForegroundTransform.apply(to:)(v3);
}

uint64_t ForegroundTransform.apply(to:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v238 = *MEMORY[0x1E69E9840];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *&v216[8] = *MEMORY[0x1E695F050];
  v5 = *(v1 + 16);
  *&v215.x = MEMORY[0x1E69E7CC0];
  *&v215.y = MEMORY[0x1E69E7CC0];
  *v216 = 0;
  *&v216[24] = v4;
  *&v216[40] = v5;
  v6 = *a1;
  v197 = *(*a1 + 16);
  if (!v197)
  {

    goto LABEL_153;
  }

  v7 = 0;
  v196 = v6 + 32;
  v187 = v1;
  v188 = *a1;
  while (1)
  {
    v8 = v196 + 80 * v7;
    v9 = *(v8 + 60);
    v10 = *(v8 + 48);
    v11 = *(v8 + 16);
    v230 = *(v8 + 32);
    *v231 = v10;
    *&v231[12] = v9;
    r2.origin = *v8;
    r2.size = v11;
    v12 = *(&v230 + 1);
    v14 = *&v231[8];
    v13 = v10;
    v15 = v9 >> 32;
    v16 = DWORD1(v9) >> 30;
    if (DWORD1(v9) >> 30 > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_29;
      }

      v18 = *(*(&v230 + 1) + 16);
      if (v18)
      {
        if (v18 > 7)
        {
          v19 = v18 & 0x7FFFFFFFFFFFFFF8;
          v21 = (*(&v230 + 1) + 188);
          v22 = 0uLL;
          v23 = v18 & 0x7FFFFFFFFFFFFFF8;
          v24 = 0uLL;
          do
          {
            v25.i32[0] = *(v21 - 30);
            v25.i32[1] = *(v21 - 20);
            v25.i32[2] = *(v21 - 10);
            v25.i32[3] = *v21;
            v26.i32[0] = v21[10];
            v26.i32[1] = v21[20];
            v26.i32[2] = v21[30];
            v26.i32[3] = v21[40];
            v22 = vorrq_s8(v25, v22);
            v24 = vorrq_s8(v26, v24);
            v21 += 80;
            v23 -= 8;
          }

          while (v23);
          v27 = vorrq_s8(v24, v22);
          v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
          v17 = v28.i32[0] | v28.i32[1];
          if (v18 == v19)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v29 = v18 - v19;
        v30 = (*(&v230 + 1) + 40 * v19 + 68);
        do
        {
          v31 = *v30;
          v30 += 10;
          v17 |= v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
      }

LABEL_24:
      outlined init with copy of DisplayList.Item(&r2, &v224);
      goto LABEL_29;
    }

    if (!v16)
    {
      if (*(&v230 + 1) >> 60 != 6 && *(&v230 + 1) >> 60 != 11)
      {
        outlined init with copy of DisplayList.Item(&r2, &v224);
        v17 = 0;
        goto LABEL_29;
      }

      v17 = *((*(&v230 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      goto LABEL_24;
    }

    switch(BYTE4(v10))
    {
      case 2u:
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined init with copy of DisplayList.Item(&r2, &v224);

        x_low = v12;
        break;
      case 7u:
        x_low = *(*(&v230 + 1) + 28);
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined consume of DisplayList.Effect(v12, v13, 7);

        break;
      case 0x12u:
        (*(**(&v230 + 1) + 120))(&v218);
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined consume of DisplayList.Effect(v12, v13, 18);

        x_low = LODWORD(v218.origin.x);
        break;
      default:
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined consume of DisplayList.Effect(v12, v13, SBYTE4(v13));

        x_low = 0;
        break;
    }

    v17 = x_low | HIDWORD(v15);
LABEL_29:
    v32 = *(v2 + 8);
    v33 = v32 & v17;
    v34 = *(v2 + 28);
    if (v34 || v33 == 0)
    {
      if (*v216 != v34)
      {
        ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
        *v216 = *(v2 + 28);
      }

      v36 = *&v215.y;
      outlined init with copy of DisplayList.Item(&r2, &v224);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[80 * v38];
      *(v39 + 2) = r2.origin;
      v40 = *&v231[12];
      size = r2.size;
      v42 = *v231;
      *(v39 + 4) = v230;
      *(v39 + 5) = v42;
      *(v39 + 3) = size;
      *(v39 + 92) = v40;
      *&v215.y = v36;
      *&v40 = *&v216[8];
      v43 = *&v216[16];
      *&v42 = *&v216[32];
      v239 = CGRectUnion(*&v40, r2);
      x = v239.origin.x;
      y = v239.origin.y;
      width = v239.size.width;
      height = v239.size.height;
      outlined destroy of DisplayList.Item(&r2);
      *&v216[8] = x;
      *&v216[16] = y;
      *&v216[24] = width;
      *&v216[32] = height;
      v48 = v230;
      if (v230 <= *&v216[40])
      {
        v48 = *&v216[40];
      }

      *&v216[40] = v48;
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          if (v12 >> 60 == 11)
          {
            v49 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v50 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v51 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v52 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v53 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v54 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v55 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v56 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v206 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            LOWORD(v207) = v49;
            v208 = v50;
            outlined init with copy of DisplayList.Item(&r2, &v224);
            outlined copy of DisplayList.Content.Value(v12);

            ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
            ForegroundTransform.apply(to:)(&v206);
            v57 = swift_allocObject();
            v58 = v207;
            v59 = v208;
            *(v57 + 16) = v206;
            *(v57 + 24) = v58;
            *(v57 + 28) = v59;
            *(v57 + 32) = v51;
            *(v57 + 40) = v52;
            *(v57 + 48) = v53;
            *(v57 + 52) = v54;
            *(v57 + 56) = v55;
            v60 = v57 | 0xB000000000000000;
            *(v57 + 60) = v56;
            outlined consume of DisplayList.Content.Value(v12);
            v217[0] = r2;
            v61 = v230;
            v62 = *v231;
            v63 = *&v231[16];
            v189 = *&v231[24];
            v64 = v13;
            outlined init with copy of DisplayList.Item(&r2, &v224);
            outlined copy of DisplayList.Content.Value(v60);
            outlined consume of DisplayList.Item.Value(*(&v61 + 1), v62, *(&v62 + 1), v63);
            v65 = *&v215.x;
            if (*&v216[40] <= v61)
            {
              v66 = v61;
            }

            else
            {
              v66 = *&v216[40];
            }

            v224 = v217[0];
            *&v225 = v66;
            v191 = v64;
            *(&v225 + 1) = v60;
            *v226 = v64;
            *&v226[16] = 0;
            *&v226[24] = v189;
            outlined init with copy of DisplayList.Item(&v224, &v218);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
            }

            v2 = v187;
            v6 = v188;
            v68 = *(v65 + 2);
            v67 = *(v65 + 3);
            if (v68 >= v67 >> 1)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
            }

            outlined destroy of DisplayList.Item(&r2);
            *(v65 + 2) = v68 + 1;
            v69 = &v65[80 * v68];
            *(v69 + 2) = v224.origin;
            v70 = *&v226[12];
            v71 = v224.size;
            v72 = *v226;
            *(v69 + 4) = v225;
            *(v69 + 5) = v72;
            *(v69 + 3) = v71;
            *(v69 + 92) = v70;
            *&v215.x = v65;
            v218 = v217[0];
            *&v219 = v66;
            *(&v219 + 1) = v60;
            v220 = v191;
            *&v221 = 0;
            DWORD2(v221) = v189;
            outlined destroy of DisplayList.Item(&v218);
            outlined consume of DisplayList.Content.Value(v12);
            v12 = v60;
          }

          else
          {
            if (*v216)
            {
              outlined init with copy of DisplayList.Item(&r2, &v224);
              ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
              *v216 = *(v2 + 28);
            }

            else
            {
              outlined init with copy of DisplayList.Item(&r2, &v224);
            }

            v119 = *&v215.y;
            outlined init with copy of DisplayList.Item(&r2, &v224);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
            }

            v121 = *(v119 + 2);
            v120 = *(v119 + 3);
            if (v121 >= v120 >> 1)
            {
              v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v119);
            }

            *(v119 + 2) = v121 + 1;
            v122 = &v119[80 * v121];
            *(v122 + 2) = r2.origin;
            v123 = *&v231[12];
            v124 = r2.size;
            v125 = *v231;
            *(v122 + 4) = v230;
            *(v122 + 5) = v125;
            *(v122 + 3) = v124;
            *(v122 + 92) = v123;
            *&v215.y = v119;
            *&v123 = *&v216[8];
            v126 = *&v216[16];
            *&v125 = *&v216[32];
            v240 = CGRectUnion(*&v123, r2);
            v127 = v240.origin.x;
            v128 = v240.origin.y;
            v129 = v240.size.width;
            v130 = v240.size.height;
            outlined destroy of DisplayList.Item(&r2);
            *&v216[8] = v127;
            *&v216[16] = v128;
            *&v216[24] = v129;
            *&v216[32] = v130;
            v131 = v230;
            if (v230 <= *&v216[40])
            {
              v131 = *&v216[40];
            }

            *&v216[40] = v131;
          }

          outlined consume of DisplayList.Content.Value(v12);
          goto LABEL_43;
        }

        v212 = v14;
        v213 = v15;
        v214 = HIDWORD(v15);
        if (BYTE4(v13) == 2)
        {
          v195 = v7;
          if ((v12 & 0x71 & v32 & ((v12 & 0x71 & v32) - 1)) == 0)
          {
            v100 = *(v2 + 16);
            v101 = *(v2 + 24);
            v218.origin.x = *v2;
            LODWORD(v218.origin.y) = v32;
            v218.size.width = v100;
            LOBYTE(v218.size.height) = v101;
            HIDWORD(v218.size.height) = v12 & 0x71 & v32;
            outlined init with copy of DisplayList.Item(&r2, &v224);

            ForegroundTransform.apply(to:)(&v212);

            v102 = 0x200000000;
            goto LABEL_93;
          }
        }

        else
        {
          if (BYTE4(v13) == 10)
          {
            v76 = *(v12 + 96);
            *&v226[16] = *(v12 + 80);
            v227 = v76;
            v228[0] = *(v12 + 112);
            *(v228 + 12) = *(v12 + 124);
            v77 = *(v12 + 32);
            v224.origin = *(v12 + 16);
            v224.size = v77;
            v78 = *(v12 + 64);
            v225 = *(v12 + 48);
            *v226 = v78;
            v79 = *(v12 + 96);
            v221 = *(v12 + 80);
            v222 = v79;
            v223[0] = *(v12 + 112);
            *(v223 + 12) = *(v12 + 124);
            v80 = *(v12 + 32);
            v218.origin = *(v12 + 16);
            v218.size = v80;
            v81 = *(v12 + 64);
            v219 = *(v12 + 48);
            v220 = v81;
            v82 = *(v2 + 24);
            outlined init with copy of GraphicsFilter(&v224, v217);
            outlined init with copy of DisplayList.Item(&r2, v217);
            outlined init with copy of GraphicsFilter(&v224, v217);
            specialized _ColorMatrix.init(_:premultiplied:)(&v218, v82, &v232);
            if (v237)
            {
              v221 = *&v226[16];
              v222 = v227;
              v223[0] = v228[0];
              *(v223 + 12) = *(v228 + 12);
              v218 = v224;
              v219 = v225;
              v220 = *v226;
              v83 = _s7SwiftUI14GraphicsFilterOWOg(&v218);
              if (v83 <= 0x19)
              {
                if (((1 << v83) & 0x5B7FC0) != 0)
                {
                  _s7SwiftUI14GraphicsFilterOWOj6_(&v218);
LABEL_71:

                  v84 = *(v2 + 8);
                  v85 = *(v2 + 16);
                  v86 = *(v2 + 24);
                  v206 = *v2;
                  v207 = v84;
                  v209 = v85;
                  v210 = v86;
                  if (v33)
                  {
                    v87 = 1;
                  }

                  else if ((v33 & 0x10) != 0)
                  {
                    v87 = 16;
                  }

                  else if ((v33 & 0x20) != 0)
                  {
                    v87 = 32;
                  }

                  else
                  {
                    v87 = v33 & 0x40;
                  }

                  v211 = v87;
                  v168 = *v216;

                  if (v168 != v87)
                  {
                    ForegroundTransform.NewList.flushPendingItems(transform:)(&v206);
                    *v216 = v211;
                  }

                  v169 = *&v215.y;
                  outlined init with copy of DisplayList.Item(&r2, v217);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
                  }

                  v171 = *(v169 + 2);
                  v170 = *(v169 + 3);
                  if (v171 >= v170 >> 1)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v169);
                  }

                  *(v169 + 2) = v171 + 1;
                  v172 = &v169[80 * v171];
                  *(v172 + 2) = r2.origin;
                  v173 = *&v231[12];
                  v174 = r2.size;
                  v175 = *v231;
                  *(v172 + 4) = v230;
                  *(v172 + 5) = v175;
                  *(v172 + 3) = v174;
                  *(v172 + 92) = v173;
                  *&v215.y = v169;
                  *&v173 = *&v216[8];
                  v176 = *&v216[16];
                  *&v175 = *&v216[32];
                  v241 = CGRectUnion(*&v173, r2);
                  v177 = v241.origin.x;
                  v178 = v241.origin.y;
                  v179 = v241.size.width;
                  v180 = v241.size.height;
                  outlined destroy of GraphicsFilter(&v224);
                  outlined destroy of DisplayList.Item(&r2);
                  *&v216[8] = v177;
                  *&v216[16] = v178;
                  *&v216[24] = v179;
                  *&v216[32] = v180;
                  v181 = v230;
                  if (v230 <= *&v216[40])
                  {
                    v181 = *&v216[40];
                  }

                  *&v216[40] = v181;

                  outlined consume of DisplayList.Effect(v12, v13, 10);
                  goto LABEL_43;
                }

                if (((1 << v83) & 0x3000000) != 0 || v83 == 18 && (*(_s7SwiftUI14GraphicsFilterOWOj6_(&v218) + 24) & 4) == 0)
                {
                  goto LABEL_71;
                }
              }

              v195 = v7;
              outlined destroy of GraphicsFilter(&v224);
LABEL_92:
              ForegroundTransform.apply(to:)(&v212);
              v102 = v13 & 0xFF00000000;
LABEL_93:
              v103 = v13;
            }

            else
            {
              v203[2] = v234;
              v203[3] = v235;
              v204 = v236;
              v203[0] = v232;
              v203[1] = v233;
              v132 = *v2;
              v133 = *(v2 + 8);
              v134 = *(v2 + 16);
              v135 = *(v2 + 24);
              v136 = *(v2 + 28);
              v218.origin.x = *v2;
              LODWORD(v218.origin.y) = v133;
              v218.size.width = v134;
              LOBYTE(v218.size.height) = v135;
              HIDWORD(v218.size.height) = v136;
              v195 = v7;
              if ((vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(v232, xmmword_18DDD8E20), vceqq_f32(v233, xmmword_18DDC57D0)), vuzp1q_s16(vceqzq_f32(v234), vceqq_f32(v235, xmmword_18DDD8E20))))) & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_18DDA9F30, vceqq_f32(v204, xmmword_18DDC57D0))) & 0xF) != 0)
              {
                v137 = *&v132 + 64;
                v138 = 1 << *(*&v132 + 32);
                if (v138 < 64)
                {
                  v139 = ~(-1 << v138);
                }

                else
                {
                  v139 = -1;
                }

                v140 = v139 & *(*&v132 + 64);
                v141 = (v138 + 63) >> 6;
                swift_bridgeObjectRetain_n();
                v142 = 0;
                v143 = v132;
                v190 = v141;
                v193 = *&v132 + 64;
                v194 = v132;
                while (v140)
                {
                  v147 = v142;
LABEL_125:
                  v148 = __clz(__rbit64(v140)) | (v147 << 6);
                  v149 = *(*(*&v132 + 48) + 4 * v148);
                  v150 = (*(*&v132 + 56) + 80 * v148);
                  v151 = v150[3];
                  v205[2] = v150[2];
                  v205[3] = v151;
                  v205[4] = v150[4];
                  v152 = v150[1];
                  v205[0] = *v150;
                  v205[1] = v152;
                  specialized static _ColorMatrix.* infix(_:_:)(v205, v203, &v198, *&v152);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v217[0].origin.x = v143;
                  v154 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                  v156 = *(*&v143 + 16);
                  v157 = (v155 & 1) == 0;
                  v158 = __OFADD__(v156, v157);
                  v159 = v156 + v157;
                  if (v158)
                  {
                    goto LABEL_157;
                  }

                  v160 = v155;
                  if (*(*&v143 + 24) >= v159)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v167 = v154;
                      specialized _NativeDictionary.copy()();
                      v154 = v167;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v159, isUniquelyReferenced_nonNull_native);
                    v154 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                    if ((v160 & 1) != (v161 & 1))
                    {
                      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return result;
                    }
                  }

                  v140 &= v140 - 1;
                  v143 = v217[0].origin.x;
                  if (v160)
                  {
                    v144 = (*(*&v217[0].origin.x + 56) + 80 * v154);
                    v145 = v201;
                    v144[2] = v200;
                    v144[3] = v145;
                    v144[4] = v202;
                    v146 = v199;
                    *v144 = v198;
                    v144[1] = v146;
                  }

                  else
                  {
                    *(*&v217[0].origin.x + 8 * (v154 >> 6) + 64) |= 1 << v154;
                    *(*(*&v143 + 48) + 4 * v154) = v149;
                    v162 = (*(*&v143 + 56) + 80 * v154);
                    v163 = v202;
                    v162[3] = v201;
                    v162[4] = v163;
                    v164 = v200;
                    v162[1] = v199;
                    v162[2] = v164;
                    *v162 = v198;
                    v165 = *(*&v143 + 16);
                    v158 = __OFADD__(v165, 1);
                    v166 = v165 + 1;
                    if (v158)
                    {
                      goto LABEL_158;
                    }

                    *(*&v143 + 16) = v166;
                  }

                  v142 = v147;
                  v132 = v194;
                  v137 = v193;
                  v141 = v190;
                }

                while (1)
                {
                  v147 = v142 + 1;
                  if (__OFADD__(v142, 1))
                  {
                    goto LABEL_156;
                  }

                  if (v147 >= v141)
                  {
                    break;
                  }

                  v140 = *(v137 + 8 * v147);
                  ++v142;
                  if (v140)
                  {
                    goto LABEL_125;
                  }
                }

                v218.origin.x = v143;
              }

              else
              {
              }

              ForegroundTransform.apply(to:)(&v212);
              outlined destroy of GraphicsFilter(&v224);

              outlined consume of DisplayList.Effect(v12, v13, 10);
              v12 = 0;
              v103 = 0;
              v102 = 0x1400000000;
            }

            v217[0] = r2;
            v104 = v230;
            v105 = *v231;
            v106 = *&v231[16];
            v107 = *&v231[24];
            v108 = v212;
            v109 = v102 | v103;
            v110 = v213 | (v214 << 32) | 0x40000000;
            outlined init with copy of DisplayList.Item(&r2, &v224);
            outlined consume of DisplayList.Item.Value(*(&v104 + 1), v105, *(&v105 + 1), v106);
            if (*&v216[40] <= v104)
            {
              v111 = v104;
            }

            else
            {
              v111 = *&v216[40];
            }

            ForegroundTransform.NewList.flushPendingItems(transform:)(v187);
            v224 = v217[0];
            *&v225 = v111;
            *(&v225 + 1) = v12;
            *&v192 = v109;
            *(&v192 + 1) = v108;
            *v226 = v109;
            *&v226[8] = v108;
            *&v226[16] = v110;
            *&v226[24] = v107;
            v112 = *&v215.x;
            outlined init with copy of DisplayList.Item(&v224, &v218);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
            }

            v7 = v195;
            v114 = *(v112 + 2);
            v113 = *(v112 + 3);
            v2 = v187;
            if (v114 >= v113 >> 1)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v112);
            }

            outlined destroy of DisplayList.Item(&r2);
            *(v112 + 2) = v114 + 1;
            v115 = &v112[80 * v114];
            *(v115 + 2) = v224.origin;
            v116 = *&v226[12];
            v117 = v224.size;
            v118 = *v226;
            *(v115 + 4) = v225;
            *(v115 + 5) = v118;
            *(v115 + 3) = v117;
            *(v115 + 92) = v116;
            *&v215.x = v112;
            v218 = v217[0];
            *&v219 = v111;
            *(&v219 + 1) = v12;
            v220 = v192;
            *&v221 = v110;
            DWORD2(v221) = v107;
            outlined destroy of DisplayList.Item(&v218);
            v6 = v188;
            goto LABEL_43;
          }

          v195 = v7;
        }

        outlined init with copy of DisplayList.Item(&r2, &v224);
        goto LABEL_92;
      }

      if (v16 == 2)
      {
        v73 = *(v12 + 16);
        if (v73)
        {
          outlined init with copy of DisplayList.Item(&r2, &v224);
          v74 = 0;
          v75 = 56;
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
            }

            if (v74 >= *(v12 + 16))
            {
              break;
            }

            ++v74;
            ForegroundTransform.apply(to:)(v12 + v75);
            v75 += 40;
            if (v73 == v74)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
        }

        outlined init with copy of DisplayList.Item(&r2, &v224);
LABEL_80:
        v217[0] = r2;
        v88 = v230;
        v89 = *v231;
        v90 = *&v231[16];
        v91 = *&v231[24];
        outlined init with copy of DisplayList.Item(&r2, &v224);
        outlined consume of DisplayList.Item.Value(*(&v88 + 1), v89, *(&v89 + 1), v90);
        if (*&v216[40] <= v88)
        {
          v92 = v88;
        }

        else
        {
          v92 = *&v216[40];
        }

        ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
        v224 = v217[0];
        *&v225 = v92;
        *(&v225 + 1) = v12;
        *v226 = 0uLL;
        *&v226[16] = 0x80000000;
        *&v226[24] = v91;
        v93 = *&v215.x;
        outlined init with copy of DisplayList.Item(&v224, &v218);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
        }

        v95 = *(v93 + 2);
        v94 = *(v93 + 3);
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v93);
        }

        outlined destroy of DisplayList.Item(&r2);
        *(v93 + 2) = v95 + 1;
        v96 = &v93[80 * v95];
        *(v96 + 2) = v224.origin;
        v97 = *&v226[12];
        v98 = v224.size;
        v99 = *v226;
        *(v96 + 4) = v225;
        *(v96 + 5) = v99;
        *(v96 + 3) = v98;
        *(v96 + 92) = v97;
        *&v215.x = v93;
        v218 = v217[0];
        *&v219 = v92;
        *(&v219 + 1) = v12;
        v220 = 0uLL;
        *&v221 = 0x80000000;
        DWORD2(v221) = v91;
        outlined destroy of DisplayList.Item(&v218);
      }

      else
      {
        outlined destroy of DisplayList.Item(&r2);
      }
    }

LABEL_43:
    if (++v7 == v197)
    {
      break;
    }

    if (v7 >= *(v6 + 16))
    {
      goto LABEL_155;
    }
  }

  v3 = a1;
LABEL_153:
  ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
  v182 = *&v215.x;
  v224.origin = v215;
  v224.size = *v216;
  v225 = *&v216[16];
  *v226 = *&v216[32];

  outlined destroy of ForegroundTransform.NewList(&v224);
  result = DisplayList.init(_:)(v182, &v218);
  y_low = LOWORD(v218.origin.y);
  y_high = HIDWORD(v218.origin.y);
  *v3 = *&v218.origin.x;
  *(v3 + 4) = y_low;
  *(v3 + 3) = y_high;
  return result;
}

uint64_t DisplayList.applyViewGraphTransform(time:version:)(uint64_t result, uint64_t *a2)
{
  if ((*(v2 + 8) & 0x60) != 0)
  {
    v3 = *a2;
    v5 = result;
    v6 = v3;
    v7 = MEMORY[0x1E69E7CC0];
    v4 = 0;
    specialized DisplayList.transform(_:)(v2, &v5, &v4);
  }

  return result;
}

uint64_t ForegroundTransform.NewList.flushPendingItems(transform:)(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 2))
  {
    v3 = v1;
    v4 = result;
    v5 = *result;
    if (*(*result + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 16)), (v7 & 1) != 0) && (v8 = (*(v5 + 56) + 80 * v6), v9 = v8[3], v75 = v8[2], v76 = v9, v77 = v8[4], v10 = v8[1], v73 = *v8, v74 = v10, v70 = v75, v71 = v9, v72 = v77, v68 = v73, v69 = v10, !_ColorMatrix.isIdentity.getter()))
    {
      v13 = *(v2 + 2);
      if (v13)
      {
        v38 = *(v3 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        }

        v14 = 32;
        do
        {
          *&v2[v14] = vsubq_f64(*&v2[v14], v38);
          v14 += 80;
          --v13;
        }

        while (v13);
        *(v3 + 8) = v2;
      }

      v15 = swift_allocObject();
      v16 = *(v4 + 24);
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v49 = v68;
      v50 = v69;
      LOBYTE(v54) = v16;
      _s7SwiftUI14GraphicsFilterOWOi5_(&v49);
      v17 = v54;
      v15[5] = v53;
      v15[6] = v17;
      v15[7] = v55[0];
      *(v15 + 124) = *(v55 + 12);
      v18 = v50;
      v15[1] = v49;
      v15[2] = v18;
      v19 = v52;
      v15[3] = v51;
      v15[4] = v19;

      DisplayList.init(_:)(v20, &v64);
      v21 = v64;
      v22 = WORD4(v64) | (HIDWORD(v64) << 32) | 0x40000000;
      v23 = *(v3 + 24);
      v24 = *(v3 + 32);
      v25 = *(v3 + 40);
      v26 = *(v3 + 48);
      v27 = *(v3 + 56);
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *&v56 = v23;
      *(&v56 + 1) = v24;
      *&v57 = v25;
      *(&v57 + 1) = v26;
      *&v58[8] = xmmword_18DDD08E0;
      *v58 = v27;
      *&v58[24] = v21;
      *&v58[32] = v22;
      *&v58[40] = 0;
      v66 = *v58;
      *v67 = *&v58[16];
      *&v67[12] = *&v58[28];
      v64 = v56;
      v65 = v57;

      outlined init with copy of DisplayList.Item(&v56, v59);
      DisplayList.init(_:)(&v64, &v39);
      v28 = v39;
      v29 = v40 | (HIDWORD(v40) << 32) | 0x40000000;
      v59[0] = v23;
      v59[1] = v24;
      v59[2] = v25;
      v59[3] = v26;
      v60 = xmmword_18DDD08E0;
      v59[4] = v27;
      v61 = v21;
      v62 = v22;
      v63 = 0;
      outlined destroy of DisplayList.Item(v59);
      v30 = *(v3 + 56);
      v64 = 0uLL;
      *&v65 = v25;
      *(&v65 + 1) = v26;
      *&v66 = v30;
      *(&v66 + 1) = v15;
      *v67 = 0xA00000000;
      *&v67[8] = v28;
      *&v67[16] = v29;
      *&v67[24] = 0;
      v31 = *v3;
      outlined init with copy of DisplayList.Item(&v64, &v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
      }

      v39 = 0;
      v40 = 0;
      v41 = v25;
      v42 = v26;
      v43 = v30;
      v44 = v15;
      v45 = 0xA00000000;
      v46 = v28;
      v47 = v29;
      v48 = 0;
      outlined destroy of DisplayList.Item(&v39);
      *(v31 + 2) = v33 + 1;
      v34 = &v31[80 * v33];
      *(v34 + 2) = v64;
      v36 = v66;
      v35 = *v67;
      v37 = v65;
      *(v34 + 92) = *&v67[12];
      *(v34 + 4) = v36;
      *(v34 + 5) = v35;
      *(v34 + 3) = v37;
      *v3 = v31;
    }

    else
    {

      specialized Array.append<A>(contentsOf:)(v11);
    }

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 24) = *MEMORY[0x1E695F050];
    *(v3 + 40) = v12;
    *(v3 + 56) = *(v4 + 16);
  }

  return result;
}

uint64_t outlined init with copy of (StrongHash, DisplayList)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (StrongHash, DisplayList)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (StrongHash, DisplayList)()
{
  if (!lazy cache variable for type metadata for (StrongHash, DisplayList))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    }
  }
}

uint64_t outlined destroy of ForegroundTransform.NewList(uint64_t a1)
{

  return a1;
}

uint64_t initializeWithCopy for ForegroundTransform.NewList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for ForegroundTransform.NewList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for ForegroundTransform.NewList(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance EnvironmentalViewChild<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

unint64_t specialized EnvironmentalViewChild.description.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 0xD000000000000014;
}

uint64_t EnvironmentReader.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static EnvironmentReader._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return 1;
    }
  }

  else if (static Semantics.forced < v6)
  {
    return 1;
  }

  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  v10[4] = a1[4];
  v9 = a1[1];
  v10[0] = *a1;
  v10[1] = v9;
  return (*(a3 + 40))(v10, a2, a3);
}

uint64_t key path getter for _AppearanceActionModifier.appear : _AppearanceActionModifier@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @callee_guaranteed () -> ()partial apply;
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

uint64_t key path setter for _AppearanceActionModifier.appear : _AppearanceActionModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t _AppearanceActionModifier.appear.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for _AppearanceActionModifier.disappear : _AppearanceActionModifier@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @callee_guaranteed () -> ();
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

uint64_t key path setter for _AppearanceActionModifier.disappear : _AppearanceActionModifier(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t _AppearanceActionModifier.disappear.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AppearanceEffect.init(modifier:phase:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v3 = MEMORY[0x1E698D3F8];
  *(a3 + 40) = 0;
  LODWORD(v3) = *v3;
  *(a3 + 44) = 0;
  *(a3 + 48) = v3;
  *a3 = result;
  *(a3 + 4) = a2;
  return result;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance _AppearanceActionModifier.MergedCallbacks(void *a1@<X8>)
{
  *a1 = 1;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t closure #2 in AppearanceEffect.appeared()()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {

    return specialized static AppearanceEffect.willRemove(attribute:)();
  }

  return result;
}

void *assignWithTake for _AppearanceActionModifier(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;
      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for _AppearanceActionModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for _AppearanceActionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v4 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *v7;
        *(a1 + 24) = *(a2 + 24);
LABEL_25:
        *v5 = v8;
        goto LABEL_26;
      }

      v11 = *(a2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = v11;
    }

    else
    {
      *v5 = *v7;
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_26;
    }

LABEL_22:
    v15 = *(a2 + 32);
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;

    goto LABEL_26;
  }

  if (v6 != 1)
  {
    if (v4)
    {
      if (v6)
      {
        v10 = *(a2 + 16);
        *(a1 + 8) = v6;
        *(a1 + 16) = v10;

        goto LABEL_18;
      }
    }

    else if (v6)
    {
      v13 = *(a2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = v13;

      goto LABEL_18;
    }

    *v5 = *v7;
LABEL_18:
    v5 = (a1 + 24);
    v12 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v12)
      {
        v14 = *(a2 + 32);
        *(a1 + 24) = v12;
        *(a1 + 32) = v14;

        goto LABEL_26;
      }
    }

    else if (v12)
    {
      goto LABEL_22;
    }

    v8 = *(a2 + 24);
    goto LABEL_25;
  }

  outlined destroy of _AppearanceActionModifier((a1 + 8));
  v9 = v7[1];
  *v5 = *v7;
  v5[1] = v9;
LABEL_26:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

double assignWithTake for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if (v5 != 1)
  {
    if (v3)
    {
      if (v5)
      {
        v10 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v10;
        v11 = a1;

        a1 = v11;
        goto LABEL_13;
      }

      v13 = a1;

      a1 = v13;
    }

    else if (v5)
    {
      v12 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v12;
      goto LABEL_13;
    }

    *v4 = *v6;
LABEL_13:
    v14 = (a1 + 24);
    v15 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v15)
      {
        v16 = *(a2 + 32);
        *(a1 + 24) = v15;
        *(a1 + 32) = v16;
        v17 = a1;

        a1 = v17;
        goto LABEL_5;
      }

      v19 = a1;

      a1 = v19;
    }

    else if (v15)
    {
      v18 = *(a2 + 32);
      *(a1 + 24) = v15;
      *(a1 + 32) = v18;
      goto LABEL_5;
    }

    *v14 = *(a2 + 24);
    goto LABEL_5;
  }

  v7 = a1;
  outlined destroy of _AppearanceActionModifier((a1 + 8));
  a1 = v7;
LABEL_4:
  v8 = v6[1];
  *v4 = *v6;
  v4[1] = v8;
LABEL_5:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppearanceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483646);
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

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for AppearanceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _PreferenceValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(v9, WeakValue, AssociatedTypeWitness);
    (*(v11 + 56))(v9, 0, 1, AssociatedTypeWitness);
    return (*(v11 + 32))(a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 56))(v9, 1, 1, AssociatedTypeWitness);
    (*(v3 + 16))(v4, v3);
    result = (*(v13 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t static PreferenceKey._delay<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t _DelayedPreferenceView.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreferenceValueAttribute.init(source:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t View.preferenceValue<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, _UNKNOWN **a10)
{
  v32 = a9;
  v33 = a7;
  v30 = a2;
  v31 = a3;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v10, v19, v17);
  v20 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  v23 = v33;
  *(v22 + 4) = a6;
  *(v22 + 5) = v23;
  *(v22 + 6) = a8;
  *(v22 + 7) = a10;
  (*(v15 + 32))(&v22[v20], v18, a4);
  v24 = &v22[v21];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v26 = type metadata accessor for _DetachedKey();
  v34 = a5;
  v35 = a6;
  v36 = a8;
  v37 = a10;
  v27 = type metadata accessor for _PreferenceReadingView();
  v34 = v26;
  v35 = a4;
  v36 = v27;
  v37 = &protocol witness table for _DetachedKey<A>;
  v38 = v33;
  v39 = &protocol witness table for _PreferenceReadingView<A, B>;
  type metadata accessor for _DetachedView();
  v28 = v32;
  *v32 = partial apply for closure #1 in View.preferenceValue<A, B>(_:_:);
  v28[1] = v22;
}

uint64_t closure #1 in View.preferenceValue<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = type metadata accessor for _DetachedKey();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a9;
  v17[7] = a10;
  v17[8] = *a1;
  v17[9] = a2;
  v17[10] = a3;
  v18 = type metadata accessor for _PreferenceReadingView();
  View._detached<A, B>(with:_:)(v16, partial apply for closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:), v17, a4, v16, v18, a7, &protocol witness table for _DetachedKey<A>, a8, &protocol witness table for _PreferenceReadingView<A, B>);
}

uint64_t closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(a1 + 80);
  v30[4] = *(a1 + 64);
  v30[5] = v18;
  v31 = *(a1 + 96);
  v19 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v19;
  v20 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v20;
  v29 = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  *(v21 + 40) = a8;
  *(v21 + 48) = a10;
  *(v21 + 56) = a11;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  v22 = *(a1 + 80);
  *(v21 + 144) = *(a1 + 64);
  *(v21 + 160) = v22;
  *(v21 + 176) = *(a1 + 96);
  v23 = *(a1 + 16);
  *(v21 + 80) = *a1;
  *(v21 + 96) = v23;
  v24 = *(a1 + 48);
  *(v21 + 112) = *(a1 + 32);
  *(v21 + 128) = v24;
  type metadata accessor for _PreferenceValue();
  _PreferenceValue._force<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:), v21, a9);

  type metadata accessor for _DetachedKey();
  v25 = type metadata accessor for _DetachedPlaceholder();
  (*(*(v25 - 8) + 16))(v28, v30, v25);
}

uint64_t PreferenceValueAttribute.source.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static PreferenceValueAttribute.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceValueAttribute<A>(uint64_t a1, uint64_t a2)
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
  static PreferenceValueAttribute.initialValue.getter(v3, v8);
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

uint64_t specialized DelayedPreferenceChild.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0x203A79616C6544;
}

uint64_t specialized PreferenceValueAttribute.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 36;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 160);
  v7[4] = *(v1 + 144);
  v7[5] = v3;
  v8 = *(v1 + 176);
  v4 = *(v1 + 96);
  v7[0] = *(v1 + 80);
  v7[1] = v4;
  v5 = *(v1 + 128);
  v7[2] = *(v1 + 112);
  v7[3] = v5;
  return v2(a1, v7);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance LineLimitModifier()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for UpdateEnvironment<LineLimitModifier>(0, &lazy cache variable for type metadata for UpdateEnvironment<LineLimitModifier>);
  lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(&lazy protocol witness table cache variable for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>, &lazy cache variable for type metadata for UpdateEnvironment<LineLimitModifier>);
  v0 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v0);
}

uint64_t _EnvironmentKeyTransformModifier.keyPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path setter for _EnvironmentKeyTransformModifier.transform : <A>_EnvironmentKeyTransformModifier<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@inout A) -> (@out ());
  *(a2 + 16) = v8;
  return result;
}

uint64_t _EnvironmentKeyTransformModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SystemColorSchemeModifier()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for UpdateEnvironment<LineLimitModifier>(0, &lazy cache variable for type metadata for UpdateEnvironment<SystemColorSchemeModifier>);
  lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(&lazy protocol witness table cache variable for type UpdateEnvironment<SystemColorSchemeModifier> and conformance UpdateEnvironment<A>, &lazy cache variable for type metadata for UpdateEnvironment<SystemColorSchemeModifier>);
  v0 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v0);
}

uint64_t *initializeBufferWithCopyOfBuffer for ChildEnvironment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = ((v9 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + v8 + 4) & ~v8);
    v18 = ((v16 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v16 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v17, v18, v9);
    }

    else
    {
      (*(v6 + 16))(v17, v18, v4);
      (*(v6 + 56))(v17, 0, 1, v4);
    }

    *((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
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
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      if ((v23 + 1) >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for ChildEnvironment(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v23 = ((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

void type metadata accessor for UpdateEnvironment<LineLimitModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    updated = type metadata accessor for UpdateEnvironment();
    if (!v4)
    {
      atomic_store(updated, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpdateEnvironment<LineLimitModifier>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View._detached<A, B>(with:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a8;
  v25 = a2;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v10, v21, v18);
  (*(v17 + 32))(a9, v20, a4);
  v26 = a5;
  v27 = a4;
  v28 = a6;
  v29 = v24;
  v30 = a7;
  v31 = a10;
  v22 = (a9 + *(type metadata accessor for _DetachedView() + 68));
  *v22 = v25;
  v22[1] = a3;
}

uint64_t key path getter for _DetachedView.transform : <A, B, C>_DetachedView<A, B, C>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _DetachedView() + 68));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for _DetachedView.transform : <A, B, C>_DetachedView<A, B, C>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for _DetachedView() + 68));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t _DetachedView.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t _DetachedView.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 68));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t _DetachedView.init(content:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _DetachedView();
  v9 = (a5 + *(result + 68));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t static _DetachedView._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v85 = a8;
  v96 = a4;
  v196 = *MEMORY[0x1E69E9840];
  LODWORD(v98) = *a1;
  v12 = a2[3];
  v191 = a2[2];
  *v192 = v12;
  *&v192[16] = a2[4];
  *&v192[32] = *(a2 + 20);
  v13 = a2[1];
  v189 = *a2;
  v190 = v13;
  v14 = *(a6 + 16);
  v100 = a3;
  v95 = a6;
  v14(&v162, a3, a6);
  v15 = v162;
  v185[0] = *&v192[8];
  *(v185 + 12) = *&v192[20];
  v186 = v189;
  v187 = v190;
  v188 = v191;
  v193[0] = v189;
  v193[1] = v190;
  v193[2] = v191;
  v82 = *(&v191 + 1);
  v194 = *v192;
  v97 = *v192;
  *&v195[12] = *&v192[20];
  *v195 = *&v192[8];
  v184 = v189;
  v92 = v190;
  v93 = HIDWORD(v190);
  v90 = DWORD2(v190);
  v16 = v191;
  v17 = DWORD1(v191) & 0xFFFFFFFD;
  v18 = DWORD1(v191) | 2;
  v94 = *&v192[24];
  if ((v162 & 0x10) != 0)
  {
    v18 = DWORD1(v191);
  }

  v89 = v18;
  if ((v162 & 0x10) == 0)
  {
    v17 = DWORD1(v191);
  }

  v81 = v17;
  v83 = *&v195[20];
  v84 = v162;
  v76 = a9;
  if (v162)
  {
    v86 = *&v195[12];
    v87 = *&v195[8];
    v88 = *&v192[12];
    outlined init with copy of _ViewInputs(&v189, &v162);
    outlined init with copy of _ViewInputs(v193, &v162);
    if ((v15 & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v146 = *&v192[12];
  *&v146[4] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v189, &v162);
  outlined init with copy of _ViewInputs(v193, &v162);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<ViewTransform> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform);
  v88 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v162) = *&v195[8];
  *(&v162 + 4) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<CGPoint> and conformance SwitchRule<A>();
  v87 = Attribute.init<A>(body:value:flags:update:)();
  v16 |= 0xCu;
  LODWORD(v162) = *&v195[12];
  *(&v162 + 4) = 0;
  v15 = v84;
  v86 = Attribute.init<A>(body:value:flags:update:)();
  if ((v84 & 2) == 0)
  {
LABEL_9:
    DWORD2(v162) = 0;
    *&v162 = *&v192[24];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize, type metadata accessor for SwitchRule);
    lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<ViewSize> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize);
    v15 = v84;
    v94 = Attribute.init<A>(body:value:flags:update:)();
    v16 |= 0x10u;
  }

LABEL_10:
  if ((v15 & 4) != 0)
  {
    v91 = v16;
    if ((v15 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v53 = v190;
  swift_beginAccess();
  v54 = *(v53 + 16);
  DWORD2(v162) = 0;
  *&v162 = v54;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues, type metadata accessor for SwitchRule);
  v55 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<EnvironmentValues> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues);
  LODWORD(v53) = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v155) = 1;
  v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v55);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  *(v57 + 24) = v55;
  *(v57 + 32) = 0u;
  *(v57 + 48) = 0u;
  *(v57 + 64) = 0u;
  *(v57 + 80) = 256;
  *(v57 + 82) = *v146;
  *(v57 + 86) = *&v146[4];
  v92 = v57;
  *(v57 + 88) = v56;

  if ((v16 & 0x20) == 0)
  {
    v16 |= 0x20u;
  }

  v91 = v16;
  if ((v84 & 8) == 0)
  {
LABEL_12:
    DWORD2(v162) = 0;
    *&v162 = HIDWORD(v190);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction, type metadata accessor for SwitchRule);
    lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<Transaction> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction);
    v93 = Attribute.init<A>(body:value:flags:update:)();
  }

LABEL_13:
  DWORD2(v162) = 0;
  *&v162 = *&v192[8];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<PreferenceKeys> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys);
  v19 = Attribute.init<A>(body:value:flags:update:)();

  v75 = &v70;
  MEMORY[0x1EEE9AC00](v20);
  v21 = v96;
  v69[2] = v100;
  v69[3] = v96;
  v69[4] = a5;
  v69[5] = v95;
  v69[6] = a7;
  v69[7] = v85;
  v107[1] = v98;
  *&v162 = v100;
  *(&v162 + 1) = v96;
  *&v163 = a5;
  *(&v163 + 1) = v95;
  *&v164 = a7;
  *(&v164 + 1) = v85;
  v79 = type metadata accessor for _DetachedView();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _DetachedView._makeView(view:inputs:), v21, v107);
  v22 = v107[0];
  v179 = v184;
  *&v180 = v92;
  *(&v180 + 1) = __PAIR64__(v93, v90);
  *&v181 = __PAIR64__(v89, v91);
  *(&v181 + 1) = MEMORY[0x1E69E7CD0];
  *&v182 = v97;
  v80 = v19;
  *(&v182 + 1) = __PAIR64__(v88, v19);
  *&v183[0] = __PAIR64__(v86, v87);
  DWORD2(v183[0]) = v94;
  *(v183 + 12) = v83;
  v23 = v83;
  LODWORD(v99) = AGSubgraphShouldRecordTree();
  if (v99)
  {
    AGSubgraphBeginTreeElement();
  }

  v171 = v181;
  v172 = v182;
  v173 = v183[0];
  v174 = v183[1];
  v169 = v179;
  v170 = v180;
  v24 = v181;
  LODWORD(v171) = 0;
  LODWORD(v155) = v22;
  v175[0] = v179;
  v175[1] = v180;
  v176 = v183[1];
  v175[4] = v183[0];
  v175[3] = v182;
  v175[2] = v171;
  v164 = v171;
  v165 = v182;
  v166 = v183[0];
  LODWORD(v167) = v183[1];
  v162 = v179;
  v163 = v180;
  v25 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v179, v146);
  outlined init with copy of _ViewInputs(v175, v146);
  v25(&v108, &v155, &v162, v96, a7);
  v26 = v96;
  v177[2] = v164;
  v177[3] = v165;
  v177[4] = v166;
  v178 = v167;
  v177[0] = v162;
  v177[1] = v163;
  outlined destroy of _ViewInputs(v177);
  LODWORD(v171) = v24;
  if (v99)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v108, &v169);
    AGSubgraphEndTreeElement();
  }

  v148[2] = v171;
  v148[3] = v172;
  v148[4] = v173;
  v149 = v174;
  v148[0] = v169;
  v148[1] = v170;
  v27 = outlined destroy of _ViewInputs(v148);
  v28 = v108;
  *(v154 + 12) = v23;
  LODWORD(v160) = HIDWORD(v23);
  v150 = v184;
  *&v151 = v92;
  *(&v151 + 1) = __PAIR64__(v93, v90);
  *&v152 = __PAIR64__(v89, v91);
  *(&v152 + 1) = MEMORY[0x1E69E7CD0];
  *&v153 = v97;
  *(&v153 + 1) = __PAIR64__(v88, v80);
  *&v154[0] = __PAIR64__(v86, v87);
  DWORD2(v154[0]) = v94;
  v156 = v151;
  v155 = v184;
  v159 = v154[0];
  v158 = v153;
  v157 = v152;
  *(&v160 + 1) = v108;
  v71 = v109;
  v161 = v109;
  v77 = HIDWORD(v109);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v100;
  v65[0] = v100;
  v65[1] = v26;
  v72 = a7;
  v30 = v85;
  v68 = v85;
  KeyPath = swift_getKeyPath();
  v74 = v69;
  *v146 = v98;
  *&v146[8] = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  *&v146[16] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v78 = type metadata accessor for _DetachedPlaceholder();
  v65[2] = swift_getFunctionTypeMetadata1();
  v66 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v32 = v30;
  outlined init with copy of _ViewInputs(&v150, &v162);
  v33 = type metadata accessor for Attribute();
  v79 = v28;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v146, partial apply for closure #1 in Attribute.init<A>(_:), v65, v66, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);

  v98 = v65;
  *&v147[52] = v158;
  *&v147[68] = v159;
  *&v147[84] = v160;
  *&v147[4] = v155;
  *&v147[20] = v156;
  *&v147[100] = v161;
  *&v147[36] = v157;
  *v146 = v162;
  *&v146[52] = *&v147[48];
  *&v146[68] = *&v147[64];
  *&v146[84] = *&v147[80];
  *&v146[96] = *&v147[92];
  *&v146[4] = *v147;
  *&v146[20] = *&v147[16];
  *&v146[36] = *&v147[32];
  MEMORY[0x1EEE9AC00](v35);
  v64[2] = a5;
  *&v162 = v29;
  *(&v162 + 1) = a5;
  *&v163 = v95;
  *(&v163 + 1) = v30;
  v36 = type metadata accessor for DetachedChild();
  v64[3] = v36;
  v64[4] = swift_getWitnessTable();
  v37 = swift_checkMetadataState();
  v73 = *(v37 - 8);
  (*(v73 + 16))(&v162, &v155, v37);
  v38 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v146, closure #1 in Attribute.init<A>(_:)partial apply, v64, v36, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
  v166 = *&v146[64];
  v167 = *&v146[80];
  v168 = *&v146[96];
  v162 = *v146;
  v163 = *&v146[16];
  v165 = *&v146[48];
  v164 = *&v146[32];
  (*(*(v36 - 8) + 8))(&v162, v36);
  _GraphValue.init(_:)(LODWORD(v144[0]), &v103);
  v40 = v103;
  *v146 = v186;
  *&v146[16] = v187;
  *&v146[32] = v188;
  *&v146[36] = v81;
  *&v146[40] = v82;
  *&v146[48] = v97;
  *&v146[56] = v185[0];
  *&v146[68] = *(v185 + 12);
  if (v99)
  {
    AGSubgraphBeginTreeElement();
  }

  v138 = *&v146[32];
  v139 = *&v146[48];
  v140 = *&v146[64];
  v141 = *&v146[80];
  v136 = *v146;
  v137 = *&v146[16];
  v41 = *&v146[32];
  LODWORD(v138) = 0;
  LODWORD(v116) = v40;
  v142[0] = *v146;
  v142[1] = *&v146[16];
  v143 = *&v146[80];
  v142[3] = *&v146[48];
  v142[4] = *&v146[64];
  v142[2] = v138;
  v132 = v138;
  v133 = *&v146[48];
  v134 = *&v146[64];
  v135 = *&v146[80];
  v130 = *v146;
  v131 = *&v146[16];
  v42 = *(v30 + 24);
  outlined init with copy of _ViewInputs(v146, v144);
  outlined init with copy of _ViewInputs(v142, v144);
  v42(&v104, &v116, &v130, a5, v32);
  v144[2] = v132;
  v144[3] = v133;
  v144[4] = v134;
  v145 = v135;
  v144[0] = v130;
  v144[1] = v131;
  outlined destroy of _ViewInputs(v144);
  LODWORD(v138) = v41;
  if (v99)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v104, &v136);
    AGSubgraphEndTreeElement();
  }

  v74 = v37;
  v132 = v138;
  v133 = v139;
  v134 = v140;
  v135 = v141;
  v130 = v136;
  v131 = v137;
  outlined destroy of _ViewInputs(&v130);
  v78 = v104;
  v101 = MEMORY[0x1E69E7CC0];
  v43 = *MEMORY[0x1E698D3F8];
  LODWORD(v102) = 0;
  HIDWORD(v102) = v43;
  v44 = *(v97 + 16);
  v70 = v106;
  if (v44)
  {
    v98 = (v105 | (v106 << 32));
    v99 = v71 | (v77 << 32);
    v45 = ( + 40);
    v46 = v85;
    v47 = a5;
    v49 = v95;
    v48 = v96;
    v50 = v72;
    v51 = v78;
    v52 = v79;
    do
    {
      specialized connectOutput #1 <A, B, C><A1>(key:) in static _DetachedView._makeView(view:inputs:)(*(v45 - 1), &v101, v52, v99, v51, v98, v100, v48, v47, *(v45 - 1), v49, v50, v46, *v45);
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  else
  {
  }

  v58 = v97;

  if ((v84 & 0x10) != 0)
  {

    swift_beginAccess();
    v59 = v77;
  }

  else
  {

    swift_beginAccess();
    v59 = v70;
  }

  HIDWORD(v102) = v59;
  v60 = v76;
  v61 = v83;
  v62 = v88;
  if ((v102 & 0x80) == 0)
  {
    LODWORD(v102) = v102 | 0x80;
  }

  (*(v73 + 8))(&v155, v74);
  v110[0] = v186;
  v110[1] = v187;
  v111 = v188;
  v112 = v81;
  v113 = v82;
  v114 = v58;
  v115[0] = v185[0];
  *(v115 + 12) = *(v185 + 12);
  outlined destroy of _ViewInputs(v110);
  swift_beginAccess();
  *v60 = v101;
  v60[1] = v102;
  v116 = v184;
  v117 = v92;
  v118 = v90;
  v119 = v93;
  v120 = v91;
  v121 = v89;
  v122 = MEMORY[0x1E69E7CD0];
  v123 = v58;
  v124 = v80;
  v125 = v62;
  v126 = v87;
  v127 = v86;
  v128 = v94;
  v129 = v61;
  return outlined destroy of _ViewInputs(&v116);
}

uint64_t closure #1 in static _DetachedView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v12[2] = type metadata accessor for _DetachedView();
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t specialized connectOutput #1 <A, B, C><A1>(key:) in static _DetachedView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a11 + 8))(a10, a10, a14, a7);
  v14 = _ViewOutputs.subscript.getter(a10, a10, a14);
  swift_beginAccess();
  _ViewOutputs.subscript.setter(v14 | ((HIDWORD(v14) & 1) << 32), a10, a10, a14);
  return swift_endAccess();
}

uint64_t View._detached<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = &type metadata for _EmptyDetached;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = &protocol witness table for _EmptyDetached;
  v21[4] = a5;
  v21[5] = a6;
  v19 = (a7 + *(type metadata accessor for _DetachedView() + 68));
  *v19 = a1;
  v19[1] = a2;
}

uint64_t DetachedChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v11;
  type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v70 = (&v60 - v18);
  v19 = *(*(a1 + 24) - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - v24;
  v25 = v2[5];
  v78[4] = v2[4];
  v78[5] = v25;
  v78[6] = v2[6];
  v26 = v2[1];
  v78[0] = *v2;
  v78[1] = v26;
  v27 = v2[3];
  v78[2] = v2[2];
  v78[3] = v27;
  v73[2] = *(a1 + 16);
  v73[3] = v28;
  v71 = v28;
  v74 = *(a1 + 32);
  v75 = v78;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  v31 = v71;
  if (!v30)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(v29[2], v32);
    v77 = type metadata accessor for ObservationCenter();
    *&v76 = v29[3];
    outlined init with take of Any(&v76, v32);
    v31 = v71;

    v30 = v32;
  }

  outlined init with copy of Any(v30, &v76);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v72;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_19:
    v48 = v65;
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v33 + 24) = v29;
    goto LABEL_10;
  }

  v61 = CurrentAttribute;
  v62 = v7;
  swift_beginAccess();
  v63 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v35 = (*(v5 + 56))(v16, 1, 1, v4);
  MEMORY[0x1EEE9AC00](v35);
  *(&v60 - 4) = v31;
  *(&v60 - 3) = partial apply for closure #1 in DetachedChild.value.getter;
  *(&v60 - 2) = v73;
  v36 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v60 - 6), v64, v36, v31, MEMORY[0x1E69E7288], &v72);
  v38 = *(v19 + 32);
  v37 = v19 + 32;
  v39 = v69;
  v40 = v22;
  v41 = v38;
  v38(v69, v40, v31);
  v42 = v70;
  outlined init with take of ObservationTracking._AccessList?(v16, v70);
  v43 = v66;
  outlined init with copy of ObservationTracking._AccessList?(v42, v66);
  if ((*(v5 + 48))(v43, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v42);
    v44 = v43;
    v45 = v65;
    goto LABEL_13;
  }

  v60 = v37;
  v46 = v68;
  v7 = *(v5 + 32);
  (v7)(v68, v43, v4);
  (*(v5 + 16))(v67, v46, v4);
  v29 = *(v33 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 24) = v29;
  v64 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

  v48 = v65;
LABEL_10:
  v50 = v29[2];
  v49 = v29[3];
  if (v50 >= v49 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v29);
  }

  v29[2] = v50 + 1;
  (v7)(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v50, v67, v4);
  *(v33 + 24) = v29;
  (*(v5 + 8))(v68, v4);
  v45 = v48;
  v44 = v70;
  v31 = v71;
  v39 = v69;
  v41 = v64;
LABEL_13:
  outlined destroy of ObservationTracking._AccessList?(v44);
  v41(v45, v39, v31);
  v51 = *(v33 + 24);
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v62;
    v55 = *(v5 + 16);
    v54 = v5 + 16;
    v56 = v51 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v57 = *(v54 + 56);
    v69 = *(v33 + 24);
    v70 = v55;

    v58 = v61;
    do
    {
      (v70)(v53, v56, v4);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v58, v53);
      (*(v54 - 8))(v53, v4);
      v56 += v57;
      --v52;
    }

    while (v52);
  }

  *(v33 + 24) = v63;
}

uint64_t closure #1 in DetachedChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[8] = a2;
  v14[9] = a3;
  v14[10] = a4;
  v14[11] = a5;
  type metadata accessor for DetachedChild();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a1;
  type metadata accessor for _DetachedPlaceholder();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in DetachedChild.value.getter, v14, FunctionTypeMetadata1, a3, a6);
}

uint64_t closure #1 in closure #1 in DetachedChild.value.getter(void (**a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *(a2 + 56);
  v9 = *(a2 + 88);
  v25 = *(a2 + 72);
  v26 = v9;
  v27 = *(a2 + 104);
  v10 = *(a2 + 24);
  v21 = *(a2 + 8);
  v22 = v10;
  v23 = *(a2 + 40);
  v24 = v8;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v15 = a5;
  *(&v15 + 1) = a6;
  v11 = type metadata accessor for DetachedChild();
  (*(*(v11 - 8) + 16))(&v14, a2, v11);
  v7(&v21);
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v12 = type metadata accessor for _DetachedPlaceholder();
  return (*(*(v12 - 8) + 8))(&v14, v12);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DetachedChild<A, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static _DetachedPlaceholder._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v9;
  v29 = *(a2 + 64);
  v30 = *(a2 + 80);
  v10 = *(a2 + 16);
  v25 = *a2;
  v26 = v10;
  (*(a4 + 16))(&v31, a3, a4);
  if ((v31 & 1) == 0)
  {
    LODWORD(v23[0]) = v8;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v31 = v25;
    v32 = v26;
    return static _DetachedPlaceholder.makeStub(view:inputs:)(v23, &v31, a5);
  }

  specialized static GraphHost.currentHost.getter();
  v12 = specialized GraphHost.intern<A>(_:for:id:)(&type metadata for _GeometryGroupEffect, 0);

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v8;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v20 = v28;
  v21 = v29;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v15 = v27;
  v22 = v30;
  LODWORD(v19) = 0;
  v24 = v30;
  v23[3] = v28;
  v23[4] = v29;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v19;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v28))
  {
    outlined init with copy of _ViewInputs(&v25, &v31);
    outlined init with copy of _ViewInputs(v23, &v31);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B5(v12, v23, partial apply for closure #1 in static _DetachedPlaceholder._makeView(view:inputs:), a5);
    outlined destroy of _ViewInputs(v23);
    LODWORD(v19) = v15;
    if (!ShouldRecordTree)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  outlined init with copy of _ViewInputs(&v25, v16);
  v16[0] = v8;
  static _DetachedPlaceholder.makeStub(view:inputs:)(v16, &v31, a5);
  LODWORD(v19) = v15;
  if (ShouldRecordTree)
  {
LABEL_9:
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v17);
    AGSubgraphEndTreeElement();
  }

LABEL_10:

  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  return outlined destroy of _ViewInputs(&v31);
}

uint64_t static _DetachedPlaceholder.makeStub(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v27 = a2[2];
  v28 = v4;
  v6 = a2[3];
  v29 = a2[4];
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v33 = v27;
  v34 = v6;
  v35 = a2[4];
  v8 = *a1;
  v30 = *(a2 + 20);
  LODWORD(v36) = *(a2 + 20);
  v31 = v25;
  v32 = v5;
  _ViewInputs.makeIndirectOutputs()(v22);
  *&v24[36] = v27;
  *&v24[52] = v28;
  *&v24[68] = v29;
  *&v24[84] = v30;
  *&v24[4] = v25;
  *&v24[20] = v26;
  *&v22[36] = *&v24[32];
  *&v22[52] = *&v24[48];
  *&v22[68] = *&v24[64];
  *&v22[20] = *&v24[16];
  v9 = *v22;
  v11 = *&v22[8];
  v10 = *&v22[12];
  *v22 = v8;
  *&v22[84] = *&v24[80];
  *&v22[4] = *v24;
  *&v23 = v9;
  *(&v23 + 1) = __PAIR64__(v10, v11);
  v12 = type metadata accessor for _DetachedPlaceholder.Stub();
  v20 = v12;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v25, &v31);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  v14 = v13;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in Attribute.init<A>(_:), v19, v12, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v35 = *&v22[64];
  v36 = *&v22[80];
  v37 = v23;
  v31 = *v22;
  v32 = *&v22[16];
  v33 = *&v22[32];
  v34 = *&v22[48];
  result = (*(*(v12 - 8) + 8))(&v31, v12);
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = v9 + 48;
    do
    {
      v18 += 24;
      result = AGGraphSetIndirectDependency();
      --v17;
    }

    while (v17);
  }

  if (v10 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 12) = v10;
  return result;
}

uint64_t _DetachedPlaceholder.Stub.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _DetachedPlaceholder();
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 16);
  v16[2] = *(Value + 32);
  v16[0] = v4;
  v16[1] = v5;
  v6 = *(Value + 48);
  v7 = *(Value + 64);
  v8 = *(Value + 80);
  v17 = *(Value + 96);
  v16[4] = v7;
  v16[5] = v8;
  v16[3] = v6;
  v9 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v9;
  v10 = *(Value + 32);
  v11 = *(Value + 48);
  v12 = *(Value + 64);
  v13 = *(Value + 80);
  *(a1 + 96) = *(Value + 96);
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  return (*(*(v2 - 8) + 16))(v15, v16, v2);
}

uint64_t _DetachedPlaceholder.Stub.updateValue()()
{
  result = AGGraphGetOutputValue();
  if (!result)
  {
    v2 = v0[5];
    v23 = v0[4];
    v24 = v2;
    v25 = v0[6];
    v3 = v0[1];
    v19 = *v0;
    v20 = v3;
    v4 = v0[3];
    v21 = v0[2];
    v22 = v4;
    _DetachedPlaceholder.Stub.view.getter(v17);
    v5 = *(v0 + 56);
    v26[2] = *(v0 + 40);
    v26[3] = v5;
    v26[4] = *(v0 + 72);
    v27 = *(v0 + 22);
    v6 = *(v0 + 24);
    v26[0] = *(v0 + 8);
    v26[1] = v6;
    v7 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = v7;
    v15 = *(v0 + 72);
    v16 = *(v0 + 22);
    v8 = *(v0 + 24);
    v11 = *(v0 + 8);
    v12 = v8;
    v10[0] = *(v0 + 12);
    v10[1] = *(v0 + 13);
    outlined init with copy of _ViewInputs(v26, v30);
    v9 = type metadata accessor for _DetachedPlaceholder();

    _DetachedPlaceholder.attach(inputs:outputs:)(&v11, v10, v9);

    v28[2] = v13;
    v28[3] = v14;
    v28[4] = v15;
    v29 = v16;
    v28[0] = v11;
    v28[1] = v12;
    outlined destroy of _ViewInputs(v28);
    v30[4] = v17[4];
    v30[5] = v17[5];
    v31 = v18;
    v30[0] = v17[0];
    v30[1] = v17[1];
    v30[2] = v17[2];
    v30[3] = v17[3];
    return (*(*(v9 - 8) + 8))(v30, v9);
  }

  return result;
}

uint64_t _DetachedPlaceholder.attach(inputs:outputs:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 3);
  v25 = *(a2 + 2);
  v6 = *(v3 + 88);
  v7 = *(v3 + 100);
  v24 = *(v3 + 96);
  v8 = (*(*(a3 + 24) + 16))(v30);
  v9 = v30[0];
  if (v30[0])
  {
    if ((v30[0] & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v16);
    v17 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v17);
    type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v18);
    v19 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v19);
    MEMORY[0x1EEE9AC00](v20);
    v8 = AGGraphMutateAttribute();
    if ((v9 & 2) != 0)
    {
LABEL_3:
      if ((v9 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v21);
  v8 = AGGraphMutateAttribute();
  if ((v9 & 4) != 0)
  {
LABEL_4:
    if ((v9 & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  swift_beginAccess();
  v22 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v22);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v23);
  v8 = AGGraphMutateAttribute();
  if ((v9 & 8) == 0)
  {
LABEL_5:
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v10);
    v8 = AGGraphMutateAttribute();
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v11);
  AGGraphMutateAttribute();
  v12 = *(v4 + 16);
  v13 = *MEMORY[0x1E698D3F8];
  if (v12)
  {
    v14 = v4 + 48;
    do
    {
      v14 += 24;
      AGGraphSetIndirectDependency();
      --v12;
    }

    while (v12);
  }

  if (v5 != v13)
  {
    AGGraphSetIndirectDependency();
  }

  v28 = v4;
  v29 = v25;
  v26 = v6;
  v27 = v24;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v26);

  if (v5 != v13 && v7 != v13)
  {
    AGGraphSetIndirectAttribute();
  }
}

uint64_t SwitchRule.weakValue.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *(a1 - 8);
    (*(v9 + 16))(a2, WeakValue, a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v5 = *(a1 - 8);
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, a1);
}

uint64_t SwitchRule.value.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  SwitchRule.weakValue.getter(a1, &v12 - v6);
  v8 = *(a1 - 8);
  v9 = *(v8 + 48);
  if (v9(v7, 1, a1) != 1)
  {
    return (*(v8 + 32))(a2, v7, a1);
  }

  Value = AGGraphGetValue();
  (*(v8 + 16))(a2, Value, a1);
  result = (v9)(v7, 1, a1);
  if (result != 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SwitchRule<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

unint64_t lazy protocol witness table accessor for type SwitchRule<CGPoint> and conformance SwitchRule<A>()
{
  result = lazy protocol witness table cache variable for type SwitchRule<CGPoint> and conformance SwitchRule<A>;
  if (!lazy protocol witness table cache variable for type SwitchRule<CGPoint> and conformance SwitchRule<A>)
  {
    type metadata accessor for SwitchRule<CGPoint>(255, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwitchRule<CGPoint> and conformance SwitchRule<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SwitchRule<ViewTransform>(255, a2, a3, type metadata accessor for SwitchRule);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in static _DetachedPlaceholder._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v9 = v3;
  return static _DetachedPlaceholder.makeStub(view:inputs:)(&v9, v7, a2);
}

unint64_t lazy protocol witness table accessor for type _DetachableProperties and conformance _DetachableProperties()
{
  result = lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties;
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties;
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties;
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties;
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }

  return result;
}

uint64_t type metadata completion function for _DetachedView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for _DetachedPlaceholder()
{
}

uint64_t initializeWithCopy for _DetachedPlaceholder(uint64_t a1, uint64_t a2)
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
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for _DetachedPlaceholder(uint64_t a1, uint64_t a2)
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
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithTake for _DetachedPlaceholder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for _DetachedPlaceholder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for _DetachedPlaceholder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SwitchRule<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DetachedChild<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for SwitchRule<CGPoint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t specialized SwitchRule.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 547916002;
}

void type metadata accessor for SwitchRule<ViewTransform>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for specialized closure #1 in Attribute.setSwitchValue(_:)(uint64_t a1)
{
  result = AGCreateWeakAttribute();
  *(a1 + 4) = result;
  return result;
}

void DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(id a1, uint64_t a2, char a3, double a4, CGFloat a5)
{
  if (a3)
  {
    [a1 setBounds_];
    [a1 layoutIfNeeded];
  }

  v8 = a1;
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, v8, a5);
}

void specialized ShapeLayerShadowHelper.visitPaint<A>(_:)(float a1, float a2, float a3, float a4)
{
  v5 = v4;
  v87 = *MEMORY[0x1E69E9840];
  v52 = *(v4 + 2);
  v54 = *(v4 + 1);
  v68[0] = v54;
  v68[1] = v52;
  v69 = *(v4 + 48);
  v10 = v69;
  v70[0] = v54;
  v70[1] = v52;
  v71 = v69;
  outlined init with copy of Path.Storage(v70, v78);
  ShapeType.init(_:)(v68, &v72);
  v78[0] = a1;
  v78[1] = a2;
  v78[2] = a3;
  v78[3] = a4;
  v79 = 2143289344;
  v80 = 0;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v81 = v72;
  v82 = v73;
  if (!v77)
  {
    v26 = *v4;
    v12 = *(v4 + 1);
    v27 = v4[20];
    v28 = v4[22];
    v29 = *(v4 + 12);
    v30 = *(v4 + 13);
    v31 = *(v4 + 14);
    *&v32 = *(v4 + 21) * a4;
    v33 = (*(v4 + 124) >> 4) & 1;
    v34 = *(v5 + 9);
    [*(v5 + 1) setShadowPathIsBounds_];
    [v12 setShadowPath_];
    [v12 setPunchoutShadow_];
    v61.a = v34;
    *&v61.b = __PAIR64__(v32, v27);
    LODWORD(v61.c) = v28;
    LOBYTE(v66[0]) = v26 & 3;
    v35 = CoreViewLayerView(v26 & 3, v12, v66);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v36 = LOBYTE(v66[0]);
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v38 = specialized ObjectCache.subscript.getter(&v61);
    CoreViewSetShadow(v36, v37, v38, v29, v30, v31);
    outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  if (v77 == 3)
  {
    v11 = vorrq_s8(vorrq_s8(v73, v75), vorrq_s8(v74, v76));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *(&v72 + 1) | v72))
    {
      v12 = *(v4 + 1);
      v45 = *v4 & 3;
      LOBYTE(v61.a) = *v4 & 3;
      v46 = CoreViewLayerView(v45, v12, &v61);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      a_low = LOBYTE(v61.a);
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v48 = _bridgeAnythingToObjectiveC<A>(_:)();
      CoreViewSetShadow(a_low, v48, 0, 0.0, 0.0, 0.0);
      outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
      swift_unknownObjectRelease();
LABEL_15:
      v44 = &v63;
      goto LABEL_16;
    }
  }

  v13 = *v4;
  v12 = *(v4 + 1);
  v14 = *(v4 + 8);
  v15 = *(v4 + 9);
  v16 = v4[20];
  v17 = *(v4 + 21);
  v18 = v4[22];
  v19 = *(v4 + 12);
  v20 = *(v4 + 13);
  v21 = *(v4 + 14);
  v22 = *(v4 + 7);
  v23 = *(v4 + 124);
  if (v22 == 0.0 && v14 == 0.0)
  {
    outlined init with copy of Path(v68, &v63);
    outlined init with copy of ShapeType(&v72, &v63);
    v25 = v52;
    v24 = v54;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v61, -v22, -v14);
    outlined init with copy of ShapeType(&v72, &v63);
    Path.applying(_:)(&v61.a, v66);
    v25 = v66[1];
    v24 = v66[0];
    v10 = v67;
  }

  v53 = v25;
  v55 = v24;
  v63 = v24;
  v64 = v25;
  v65 = v10;
  v39 = Path.cgPath.getter();
  [v12 setShadowPath_];

  [v12 setPunchoutShadow_];
  outlined consume of Path.Storage(v55, *(&v55 + 1), v53, *(&v53 + 1), v10);
  v57 = v15;
  v58 = v16;
  v59 = v17 * a4;
  v60 = v18;
  v56 = v13 & 3;
  v40 = CoreViewLayerView(v13 & 3, v12, &v56);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v41 = v56;
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v42 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v43 = specialized ObjectCache.subscript.getter(&v57);
  CoreViewSetShadow(v41, v42, v43, v19, v20, v21);
  outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
  swift_unknownObjectRelease();

  v44 = v62;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (*(v5 + 125) != 1)
  {
LABEL_19:
    outlined destroy of ShapeType(&v72);
    return;
  }

  if (v77)
  {
    [v12 setCornerRadius_];
    goto LABEL_19;
  }

  v49 = v74.i8[8];
  [v12 setCornerRadius_];
  v50 = MEMORY[0x1E69796E8];
  if ((v49 & 1) == 0)
  {
    v50 = MEMORY[0x1E69796E0];
  }

  v51 = *v50;
  [v12 setCornerCurve_];
}

void *DisplayList.ViewUpdater.Platform.init(definition:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = (*(a1 + 80))(&v5);
  *a2 = v5 | a1;
  return result;
}

Swift::Int PlatformViewDefinition.System.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int PlatformViewDefinition.ViewKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static PlatformViewDefinition.canSupportMixedHierarchy(system:)(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v1;
  }
}

BOOL DisplayList.ViewUpdater.Platform.updateStateAsync(layer:oldItem:oldSize:oldState:newItem:newSize:newState:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, CGFloat width, CGFloat height)
{
  v12 = a2[1];
  v143 = *a2;
  v144 = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 56);
  v140 = *(a2 + 40);
  v141 = v14;
  v142 = *(a2 + 18);
  v15 = *(a4 + 16);
  v148 = *a4;
  v149 = v15;
  v16 = *(a4 + 32);
  v17 = *(a4 + 40);
  v18 = *(a4 + 56);
  v147 = *(a4 + 72);
  v145 = v17;
  v146 = v18;
  if (*(a5 + 104) != *(a3 + 104))
  {
    return 0;
  }

  v24 = *v9;
  v25 = *(a5 + 8);
  if (v25 != *(a3 + 8))
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v25);
  }

  if (*(a5 + 136) != *(a3 + 136))
  {
    return 0;
  }

  if (*(a5 + 160) != *(a3 + 160))
  {
    v79 = v16;
    *&v130 = *(a3 + 88);
    *&v120 = *(a5 + 88);
    if (*(a1 + 16) == 9)
    {

      v77 = specialized Array<A>.popColorMultiply(drawable:)(&v130, a1);
      v27 = v26;
      v29 = v28;

      v30 = specialized Array<A>.popColorMultiply(drawable:)(&v120, a1);
      v32 = v31;
      v34 = v33;

      if ((v34 & 0x100000000) == 0 || (v29 & 0x100000000) == 0)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v77, v27, v29 | ((HIDWORD(v29) & 1) << 32), v30, v32, v34 | ((HIDWORD(v34) & 1) << 32));
      }
    }

    v35 = *(a3 + 88);
    v36 = *(a5 + 88);

    specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(a1, v35, v36);
    v38 = v37;

    v16 = v79;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a5 + 152) != *(a3 + 152) || *(a5 + 144) != *(a3 + 144))
  {
    *&v130 = v24;
    if ((DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(a1, a3, a5) & 1) == 0)
    {
      return 0;
    }
  }

  v78 = *(a3 + 64);
  v80 = *(a5 + 64);
  origin = 0;
  v40 = *(a1 + 17);
  if ((v40 & 8) != 0)
  {
    v44 = *(a3 + 144);
    v45 = *(a3 + 112);
    v126 = *(a3 + 128);
    v127 = v44;
    v46 = *(a3 + 144);
    v128 = *(a3 + 160);
    v47 = *(a3 + 80);
    v48 = *(a3 + 48);
    *&v122[32] = *(a3 + 64);
    v123 = v47;
    v49 = *(a3 + 80);
    v50 = *(a3 + 112);
    v124 = *(a3 + 96);
    v125 = v50;
    v51 = *(a3 + 16);
    v120 = *a3;
    v121 = v51;
    v52 = *(a3 + 48);
    v54 = *a3;
    v53 = *(a3 + 16);
    *v122 = *(a3 + 32);
    *&v122[16] = v52;
    v115 = v126;
    v116 = v46;
    v117 = *(a3 + 160);
    v111 = *&v122[32];
    v112 = v49;
    v113 = v124;
    v114 = v45;
    v107 = v54;
    v108 = v53;
    v129 = *(a3 + 176);
    v118 = *(a3 + 176);
    v109 = *v122;
    v110 = v48;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v119);
    v136 = v115;
    v137 = v116;
    v138 = v117;
    v139 = v118;
    *&v132[32] = v111;
    v133 = v112;
    v134 = v113;
    v135 = v114;
    v130 = v107;
    v131 = v108;
    *v132 = v109;
    *&v132[16] = v110;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v120, &v95);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v130);
    if (v119.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v55 = *(a5 + 144), v56 = *(a5 + 112), v103 = *(a5 + 128), v104 = v55, v57 = *(a5 + 144), v105 = *(a5 + 160), v58 = *(a5 + 80), v59 = *(a5 + 48), v99 = *(a5 + 64), v100 = v58, v60 = *(a5 + 80), v61 = *(a5 + 112), v101 = *(a5 + 96), v102 = v61, v62 = *(a5 + 16), v95 = *a5, v96 = v62, v63 = *(a5 + 48), v65 = *a5, v64 = *(a5 + 16), v97 = *(a5 + 32), v98 = v63, v90 = v103, v91 = v57, v92 = *(a5 + 160), v86 = v99, v87 = v60, v88 = v101, v89 = v56, v66 = v119.value.rect.size.height, v67 = v119.value.rect.size.width, v82 = v65, v83 = v64, v75 = v119.value.rect.origin, v106 = *(a5 + 176), v93 = *(a5 + 176), v84 = v97, v85 = v59, DisplayList.ViewUpdater.Model.State.clipRect()(&v94), v115 = v90, v116 = v91, v117 = v92, v118 = v93, v111 = v86, v112 = v87, v113 = v88, v114 = v89, v107 = v82, v108 = v83, v109 = v84, v110 = v85, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v95, v81), outlined destroy of DisplayList.ViewUpdater.Model.State(&v107), v94.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
    {
      v41 = a6;
      v42 = a7;
      v43 = 0;
      origin = 0;
    }

    else
    {
      width = v94.value.rect.size.width;
      height = v94.value.rect.size.height;
      origin = v94.value.rect.origin;
      v43 = v75;
      v78 = vaddq_f64(v78, v75);
      v80 = vaddq_f64(v80, v94.value.rect.origin);
      v41 = v67;
      v42 = v66;
    }
  }

  else
  {
    v41 = a6;
    v42 = a7;
    v43 = 0;
  }

  y = origin.y;
  v69 = v43.y;
  x = origin.x;
  v150.origin.x = origin.x;
  v150.origin.y = origin.y;
  v150.size.width = width;
  v150.size.height = height;
  v70 = CGRectEqualToRect(v150, *&v43.x);
  if (v70)
  {
    if ((v40 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*(a1 + 16) - 15 < 3)
    {
      return 0;
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, width, height);
    if (*(a1 + 16) == 14)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, width, height);
    }

    if ((v40 & 4) != 0)
    {
      goto LABEL_32;
    }
  }

  if (v80.f64[0] != v78.f64[0] || v80.f64[1] != v78.f64[1])
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v80.f64[0], v80.f64[1]);
  }

  v71 = *(a3 + 48);
  v107 = *(a3 + 32);
  v108 = v71;
  v109 = 0uLL;
  v72 = *(a5 + 48);
  v95 = *(a5 + 32);
  v96 = v72;
  v97 = 0uLL;
  if (static CGAffineTransform.== infix(_:_:)())
  {
    if (!v70)
    {
LABEL_32:
      v73 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v95);
    if (!v70)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  v73 = 0;
  if (*(a5 + 168) == *(a3 + 168) && v16 == v13)
  {
    return 1;
  }

LABEL_36:
  v130 = v143;
  v131 = v144;
  *&v132[8] = v140;
  *&v132[24] = v141;
  v120 = v148;
  v121 = v149;
  *&v122[8] = v145;
  *&v82 = v24;
  *v132 = v13;
  *&v132[40] = v142;
  *v122 = v16;
  *&v122[24] = v146;
  *&v122[40] = v147;
  return (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(a1, a3, &v130, a5, &v120, v73) & 1) != 0;
}

void *DisplayList.ViewUpdater.Platform.missingPlatformView()()
{
  v1 = *v0;
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  LODWORD(v7) = -1;
  WORD2(v7) = 768;
  LODWORD(v8) = static RasterizationOptions.Flags.defaultFlags;
  BYTE4(v8) = 3;
  v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 120))(&v7);
  v4 = v3;
  ObjectType = swift_getObjectType();
  CoreViewSetClipsToBounds(v1 & 3, v2, 0, 0);
  v7 = closure #1 in DisplayList.ViewUpdater.Platform.missingPlatformView();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  (*(v4 + 40))(&v7, 0, ObjectType, v4);
  outlined consume of PlatformDrawableContent?(v7, v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  return v2;
}

uint64_t DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(uint64_t a1, _OWORD *a2, double *a3, void *a4, __int128 *a5, char a6)
{
  v8 = a4;
  v9 = a2;
  v10 = *a3;
  v11 = a3[1];
  v12 = a5[1];
  v74 = *a5;
  v75 = v12;
  v76 = a5[2];
  v77 = *(a5 + 6);
  if ((a6 & 1) == 0)
  {
LABEL_27:
    v49 = v9[3];
    *&v67.a = v9[2];
    *&v67.c = v49;
    *&v67.tx = v9[4];
    CGAffineTransformTranslate(&v69, &v67, -v10, -v11);
    v50 = *&v69.c;
    v51 = *&v69.tx;
    v9[2] = *&v69.a;
    v9[3] = v50;
    v9[4] = v51;
    v52 = v8[3];
    *&v67.a = v8[2];
    *&v67.c = v52;
    *&v67.tx = v8[4];
    result = CGAffineTransformTranslate(&v69, &v67, -*&v74, -*(&v74 + 1));
    v54 = *&v69.c;
    v55 = *&v69.tx;
    v8[2] = *&v69.a;
    v8[3] = v54;
    v8[4] = v55;
    return result;
  }

  v60 = v11;
  v61 = v10;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v17 = *(v75 + 16);
  if (!v17)
  {
LABEL_21:
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    if (CGRectIsNull(v81))
    {
      x = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    v36 = *a1;
    type metadata accessor for SDFLayer();
    v37 = swift_dynamicCastClassUnconditional();
    v8 = a4;
    v38 = *(*a4 + 24);
    v39 = a4[14];
    *&v70 = x;
    *(&v70 + 1) = y;
    v73 = *(a5 + 6);
    v40 = a5[2];
    v71 = a5[1];
    v72 = v40;
    v41 = swift_allocObject();
    *(v41 + 24) = v70;
    v42 = v72;
    *(v41 + 40) = v71;
    *(v41 + 16) = v37;
    *(v41 + 56) = v42;
    *(v41 + 72) = v73;
    *(v41 + 80) = x;
    *(v41 + 88) = y;
    *(v41 + 96) = width;
    *(v41 + 104) = height;
    *(v41 + 112) = v38;
    *(v41 + 120) = v39;
    v18 = *(a1 + 8);
    v17 = swift_allocObject();
    *(v17 + 16) = closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)specialized partial apply;
    *(v17 + 24) = v41;
    v7 = *(v18 + 7);
    v6 = v36;
    outlined init with copy of SDFShape(&v74, &v67);
    outlined copy of BackdropGroupID?(v39);
    outlined init with copy of SDFShape(&v70, &v67);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 7) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *(v18 + 7) = v7;
    }

    v11 = v60;
    v10 = v61;
    v45 = v7[2];
    v44 = v7[3];
    if (v45 >= v44 >> 1)
    {
      *(v18 + 7) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v7);
    }

    v67.a = x;
    v67.b = y;
    v46 = a5[2];
    *&v67.c = a5[1];
    *&v67.tx = v46;
    v68 = *(a5 + 6);
    outlined destroy of SDFShape(&v67);
    v47 = *(v18 + 7);
    *(v47 + 16) = v45 + 1;
    v48 = v47 + 16 * v45;
    *(v48 + 32) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v48 + 40) = v17;
    v9 = a2;
    goto LABEL_27;
  }

  v8 = 0;
  v18 = (v75 + 64);
  v63 = *(MEMORY[0x1E695F050] + 24);
  v64 = *(MEMORY[0x1E695F050] + 16);
  v65 = *(MEMORY[0x1E695F050] + 8);
  v66 = *MEMORY[0x1E695F050];
  v56 = *(v75 + 16);
  while (1)
  {
    if (v8 >= *(v75 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(v18 - 4);
    v6 = *(v18 - 3);
    v24 = *(v18 - 2);
    v7 = *(v18 - 1);
    v25 = *v18;
    if (v25 > 2)
    {
      break;
    }

    if (v25 >= 2)
    {
      v26 = v23[2];
      v27 = v23[3];
      v28 = v23[4];
      v29 = v23[5];
      outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 2u);
LABEL_18:
      v22 = v29;
      v21 = v28;
      v20 = v27;
      v19 = v26;
      goto LABEL_5;
    }

    v19 = *(v18 - 4);
    v20 = *(v18 - 3);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
LABEL_5:
    v8 = (v8 + 1);
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v79 = CGRectUnion(v78, *&v19);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
    outlined consume of Path.Storage(v23, v6, v24, v7, v25);
    v18 += 56;
    if (v17 == v8)
    {
      goto LABEL_21;
    }
  }

  if (v25 != 5)
  {
    v20 = v65;
    v19 = v66;
    v22 = v63;
    v21 = v64;
    if (v25 != 6)
    {
      goto LABEL_31;
    }

    goto LABEL_5;
  }

  if (*(v23 + 16))
  {
    if (*(v23 + 16) == 1)
    {
      outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 5u);
      v17 = v56;
      RBPathGetBoundingRect();
    }

    else
    {
      outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 5u);
      v30 = MEMORY[0x193AC3640](v23 + 3);
    }

    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    goto LABEL_5;
  }

  v34 = *(v23 + 3);
  if (v34)
  {
    v35 = v34;
    outlined copy of Path.Storage(v23, v6, v24, v7, 5u);
    outlined copy of Path.Storage(v23, v6, v24, v7, 5u);
    PathBoundingBox = CGPathGetPathBoundingBox(v35);
    v26 = PathBoundingBox.origin.x;
    v27 = PathBoundingBox.origin.y;
    v28 = PathBoundingBox.size.width;
    v29 = PathBoundingBox.size.height;

    outlined consume of Path.Storage(v23, v6, v24, v7, 5u);
    goto LABEL_18;
  }

  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, double a8)
{
  v21 = *(a2 + 48);
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
  *(a1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) = v21;
  outlined init with copy of SDFShape.BackdropObserver?(&v21, v22);
  SDFLayer.backdropObserver.didset(v13);

  v14 = *(a2 + 16);
  v17 = *a2;
  v18 = v14;
  v19 = *(a2 + 32);
  v20 = *(a2 + 48);
  v16 = a8;
  outlined init with copy of SDFShape(a2, v22);
  SDFLayer.update(shape:size:in:backdropGroupID:)(&v17, &v16, a3, a6, a7);
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v19;
  v23 = v20;
  return outlined destroy of SDFShape(v22);
}

uint64_t specialized Array<A>.popColorMultiply(drawable:)(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  memmove(__dst, (v2 + (v3 << 7) - 96), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 7)
  {
    goto LABEL_11;
  }

  v6 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
  v7 = *a2;
  if (![v7 delegate])
  {

    goto LABEL_11;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();

  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  swift_getObjectType();
  v9 = (*(v8 + 32))();
  result = swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
LABEL_11:
    result = 0;
    v12 = 1;
LABEL_12:
    LOBYTE(__dst[0]) = v12;
    return result;
  }

  if (*(v2 + 16))
  {
    specialized Array._customRemoveLast()(&v17);
    v31[4] = v21;
    v31[5] = v22;
    v32[0] = v23[0];
    *(v32 + 12) = *(v23 + 12);
    v31[0] = v17;
    v31[1] = v18;
    v31[2] = v19;
    v31[3] = v20;
    if (_s7SwiftUI14GraphicsFilterOSgWOg(v31) == 1)
    {
      v13[4] = v21;
      v13[5] = v22;
      v14[0] = v23[0];
      *(v14 + 12) = *(v23 + 12);
      v13[0] = v17;
      v13[1] = v18;
      v13[2] = v19;
      v13[3] = v20;
      outlined destroy of HitTestableEvent?(v13, &lazy cache variable for type metadata for GraphicsFilter?);
      specialized Array.remove(at:)(*(*a1 + 16) - 1, &v24);
      v15[4] = v28;
      v15[5] = v29;
      v16[0] = v30[0];
      *(v16 + 12) = *(v30 + 12);
      v15[0] = v24;
      v15[1] = v25;
      v15[2] = v26;
      v15[3] = v27;
      v11 = v15;
    }

    else
    {
      v28 = v21;
      v29 = v22;
      v30[0] = v23[0];
      *(v30 + 12) = *(v23 + 12);
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v11 = &v24;
    }

    outlined destroy of GraphicsFilter(v11);
    v12 = 0;
    result = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t DisplayList.ViewUpdater.Platform.description.getter()
{
  v1 = 0x726568744FLL;
  if ((*v0 & 3) == 0)
  {
    v1 = 16707;
  }

  if ((*v0 & 3) == 1)
  {
    result = 0x74694B4955;
  }

  else
  {
    result = v1;
  }

  v3 = result;
  if ((*v0 & 4) != 0)
  {
    MEMORY[0x193ABEDD0](4277039, 0xE300000000000000);
    return v3;
  }

  return result;
}

void specialized closure #1 in DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(uint64_t *a1, id a2, CGFloat a3)
{
  if ([a2 isGeometryFlipped])
  {
    v11.b = 0.0;
    v11.c = 0.0;
    v11.a = 1.0;
    v10 = xmmword_18DDEEA30;
    *&v11.d = xmmword_18DDEEA30;
    v11.ty = a3;
    if (!CGAffineTransformIsIdentity(&v11))
    {
      GraphicsContext.copyOnWrite()();
      v11.b = 0.0;
      v11.c = 0.0;
      v11.a = 1.0;
      *&v11.d = xmmword_18DDEEA30;
      v11.ty = a3;
      RBDrawingStateConcatCTM();
    }
  }

  v6 = *a1;
  v7 = RBDrawingStateBeginCGContext();
  v8 = v7;
  v9 = *(v6 + 52);
  if (v9)
  {
    CGContextSetBlendMode(v7, v9);
  }

  [a2 renderInContext_];
  RBDrawingStateEndCGContext();
}

unint64_t lazy protocol witness table accessor for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System()
{
  result = lazy protocol witness table cache variable for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System;
  if (!lazy protocol witness table cache variable for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind()
{
  result = lazy protocol witness table cache variable for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind;
  if (!lazy protocol witness table cache variable for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind);
  }

  return result;
}

uint64_t dispatch thunk of static PlatformViewDefinition.setPath(_:shapeView:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t dispatch thunk of static PlatformViewDefinition.setProjectionTransform(_:projectionView:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(v1 + 136);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7);
}

uint64_t getEnumTagSinglePayload for PlatformViewDefinition.ViewKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformViewDefinition.ViewKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding()
{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }

  return result;
}

uint64_t outlined copy of BackdropGroupID?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of SDFShape.BackdropObserver?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for SDFShape.BackdropObserver?, type metadata accessor for SDFShape.BackdropObserver, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SDFShape.BackdropObserver?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Platform.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 34))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 0x13;
  v5 = v3 - 19;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Platform.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 238;
    *(result + 8) = 0;
    if (a3 >= 0xEE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 18;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags()
{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v16;
  *(a1 + 56) = v15;
  *(a1 + 40) = v14;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  return a1;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 91))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Model.Clip(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 1;
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v13 = *(a1 + 32);
  v3 = *(a1 + 88);
  v4 = *(a1 + 89);
  v5 = *(a1 + 90);
  v15 = *(a2 + 32);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = *(a2 + 88);
  v8 = *(a2 + 89);
  v9 = *(a2 + 90);
  if ((specialized static Path.Storage.== infix(_:_:)(v12, v14) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    if ((v7 & 1) == 0)
    {
LABEL_8:
      v10 = 0;
      return v10 & 1;
    }
  }

  else if ((v7 & 1) != 0 || (static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = (v4 ^ v8 | v5 ^ v9) ^ 1;
  return v10 & 1;
}

uint64_t DisplayList.Item.rewriteVibrancyFilterAsBackdrop(_:list:)(uint64_t result, uint64_t *a2)
{
  if (*(result + 84))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(result + 80) == INFINITY;
  }

  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *a2;
    v8 = swift_allocObject();
    *(v8 + 16) = 1065353216;
    *(v8 + 28) = 0;
    *(v8 + 20) = 0;
    *(v8 + 36) = 2143289344;
    *(v8 + 40) = MEMORY[0x1E69E7CC0];
    v9 = v2[2];
    v10 = v2[3];
    v11 = v2[4];
    v27 = 0uLL;
    *&v28 = v9;
    *(&v28 + 1) = v10;
    *&v29 = v11;
    *(&v29 + 1) = v8;
    memset(v30, 0, 28);
    v12 = v4[3];
    v33 = v4[2];
    v34 = v12;
    v35 = v4[4];
    v13 = v4[1];
    v31 = *v4;
    v32 = v13;
    LOBYTE(v36) = 0;
    _s7SwiftUI14GraphicsFilterOWOi5_(&v31);
    v14 = swift_allocObject();
    v15 = v36;
    v14[5] = v35;
    v14[6] = v15;
    v14[7] = v37[0];
    *(v14 + 124) = *(v37 + 12);
    v16 = v32;
    v14[1] = v31;
    v14[2] = v16;
    v17 = v34;
    v14[3] = v33;
    v14[4] = v17;
    v40 = v29;
    *v41 = v30[0];
    *&v41[12] = *(v30 + 12);
    v38 = v27;
    v39 = v28;
    outlined copy of DisplayList.Content.Value(v8);
    outlined init with copy of DisplayList.Item(&v27, v25);
    DisplayList.init(_:)(&v38, v25);
    v18 = v2[4];
    v38 = 0uLL;
    *&v39 = v9;
    *(&v39 + 1) = v10;
    *&v40 = v18;
    *(&v40 + 1) = v14;
    *v41 = 0xA00000000;
    *&v41[8] = *&v25[0];
    *&v41[16] = WORD4(v25[0]) | (HIDWORD(v25[0]) << 32) | 0x40000000;
    *&v41[24] = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v6;
    *(v19 + 28) = v5;
    *(v19 + 32) = 0;
    v25[2] = v40;
    v26[0] = *v41;
    *(v26 + 12) = *&v41[12];
    v25[0] = v38;
    v25[1] = v39;

    outlined init with copy of DisplayList.Item(&v38, &v22);
    DisplayList.init(_:)(v25, &v22);
    outlined consume of DisplayList.Content.Value(v8);
    outlined destroy of DisplayList.Item(&v27);
    outlined destroy of DisplayList.Item(&v38);
    v20 = v22;
    v21 = v23 | (v24 << 32) | 0x40000000;
    result = outlined consume of DisplayList.Item.Value(v2[5], v2[6], v2[7], v2[8]);
    v2[5] = v19;
    v2[6] = 0x700000000;
    v2[7] = v20;
    v2[8] = v21;
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of GraphicsBlendMode(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v8 = (a1 + 112);
  v9 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v10 = *(a2 + 112);
  v11 = v10 & 0xF000000000000007;
  if ((~v9 & 0xF000000000000007) != 0)
  {
    if (v11 != 0xF000000000000007)
    {
      *v8 = v10;

      goto LABEL_8;
    }

    outlined destroy of BackdropGroupID(a1 + 112);
    v10 = *(a2 + 112);
    goto LABEL_6;
  }

  if (v11 == 0xF000000000000007)
  {
LABEL_6:
    *v8 = v10;
    goto LABEL_8;
  }

  *v8 = v10;

LABEL_8:
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v10 = (a1 + 112);
  v9 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v11 = *(a2 + 112);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    if ((~v11 & 0xF000000000000007) != 0)
    {
      *v10 = v11;

      goto LABEL_6;
    }

    outlined destroy of BackdropGroupID(a1 + 112);
  }

  *v10 = v11;
LABEL_6:
  *(a1 + 120) = *(a2 + 120);

  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Model.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Model.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.Model.State.Globals(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for DisplayList.ViewUpdater.Model.State.Globals(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for DisplayList.ViewUpdater.Model.State.Globals(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

NSArray protocol witness for static _DisplayList_ViewUpdater_AsyncLayerProperty.boxValue(_:) in conformance DisplayList.ViewUpdater.Colors()
{
  type metadata accessor for CGColorRef(0);

  return Array._bridgeToObjectiveC()();
}

NSArray protocol witness for static _DisplayList_ViewUpdater_AsyncLayerProperty.boxValue(_:) in conformance DisplayList.ViewUpdater.Locations()
{
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);

  return Array._bridgeToObjectiveC()();
}

NSArray protocol witness for static _DisplayList_ViewUpdater_AsyncLayerProperty.boxValue(_:) in conformance DisplayList.ViewUpdater.Interpolations(void *a1)
{
  if (*a1)
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);

    return Array._bridgeToObjectiveC()();
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    return [v2 init];
  }
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.AsyncLayer(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.AsyncLayer(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.AsyncLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewCache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v8;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);

  v9 = v7;

  return a1;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = v5;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.ViewCache(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    v2 = [v1 string];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v5);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](35, 0xE100000000000000);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7668];
  *(v8 + 16) = xmmword_18DDAB8A0;
  v10 = MEMORY[0x1E69E76D0];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = a3;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v7;
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = v4;
  *(v8 + 176) = v9;
  *(v8 + 184) = v10;
  *(v8 + 152) = v6;
  *(v8 + 216) = v9;
  *(v8 + 224) = v10;
  *(v8 + 192) = v5;
  v11 = String.init(format:_:)();
  MEMORY[0x193ABEDD0](v11);
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE15BackgroundColorO_Ttg5Tm(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != *a1 || (*(a2 + 4) == a1[1] ? (v4 = *(a2 + 8) == a1[2]) : (v4 = 0), v4 ? (v5 = *(a2 + 12) == a1[3]) : (v5 = 0), !v5 || *(a2 + 16) != a1[4]))
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15BackgroundColorO_Tt0g5Tm(a2, a3, a4);
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x100000000) != 0)
  {
    if ((a3 & 0x100000000) == 0)
    {
LABEL_18:
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE21ContentsMultiplyColorO_Tt0g5(a4, a5, a6 | ((HIDWORD(a6) & 1) << 32));
    }
  }

  else
  {
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    v6 = *&a4 == *&a1 && *(&a4 + 1) == *(&a1 + 1);
    v7 = v6 && *&a5 == *&a2;
    v8 = v7 && *(&a5 + 1) == *(&a2 + 1);
    if (!v8 || *&a6 != *&a3)
    {
      goto LABEL_18;
    }
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE0H19ProjectionTransformO_Ttg5(double *a1, double *a2)
{
  if (*a2 != *a1 || a2[1] != a1[1] || a2[2] != a1[2] || a2[3] != a1[3] || a2[4] != a1[4] || a2[5] != a1[5] || a2[6] != a1[6] || a2[7] != a1[7] || a2[8] != a1[8])
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE0H19ProjectionTransformO_Tt0g5(a2);
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6ColorsO_Tt0g5()
{
  v2 = *(v0 + 8);
  v3.super.isa = off_1EE4AA210().super.isa;
  v4 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v9 = *(v6 + 2);
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_14:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 8 * v8) = v4;
    goto LABEL_10;
  }

  v12 = v7;
  if (*(v6 + 3) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v12 & 1) != (v14 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v8 = v13;
  }

  *(v2 + 40) = v6;

  v15 = *(v2 + 40);
  if ((v12 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, v4, MEMORY[0x1E69E7CC0], *(v2 + 40));
  }

  v1 = *(v15 + 56);
  v4 = *(v1 + 8 * v8);
  v6 = v3.super.isa;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8 * v8) = v4;
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
    *(v1 + 8 * v8) = v4;
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[32 * v18];
  *(v19 + 4) = 0x73726F6C6F63;
  *(v19 + 5) = 0xE600000000000000;
  *(v19 + 6) = v6;
  v19[56] = 0;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9LocationsO_Tt0g5()
{
  v2 = *(v0 + 8);
  v3.super.isa = off_1EE4AA238().super.isa;
  v4 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v9 = *(v6 + 2);
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_14:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 8 * v8) = v4;
    goto LABEL_10;
  }

  v12 = v7;
  if (*(v6 + 3) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v12 & 1) != (v14 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v8 = v13;
  }

  *(v2 + 40) = v6;

  v15 = *(v2 + 40);
  if ((v12 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, v4, MEMORY[0x1E69E7CC0], *(v2 + 40));
  }

  v1 = *(v15 + 56);
  v4 = *(v1 + 8 * v8);
  v6 = v3.super.isa;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8 * v8) = v4;
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
    *(v1 + 8 * v8) = v4;
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[32 * v18];
  *(v19 + 4) = 0x6E6F697461636F6CLL;
  *(v19 + 5) = 0xE900000000000073;
  *(v19 + 6) = v6;
  v19[56] = 0;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE14InterpolationsO_Tt0g5(uint64_t a1)
{
  v21 = a1;
  v3 = *(v1 + 8);
  v4.super.isa = off_1EE4AA260(&v21).super.isa;
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_14:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + 8 * v9) = v5;
    goto LABEL_10;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if ((v13 & 1) != (v15 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v9 = v14;
  }

  *(v3 + 40) = v7;

  v16 = *(v3 + 40);
  if ((v13 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, v5, MEMORY[0x1E69E7CC0], *(v3 + 40));
  }

  v2 = *(v16 + 56);
  v5 = *(v2 + 8 * v9);
  v7 = v4.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v9) = v5;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  if (v19 >= v18 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
    *(v2 + 8 * v9) = v5;
  }

  *(v5 + 2) = v19 + 1;
  v20 = &v5[32 * v19];
  strcpy(v20 + 32, "interpolations");
  v20[47] = -18;
  *(v20 + 6) = v7;
  v20[56] = 0;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15LineDashPatternO_Tt0g5(uint64_t a1)
{
  v2 = v1[1];
  v3 = _s7SwiftUI43_DisplayList_ViewUpdater_AsyncLayerPropertyPAASay12CoreGraphics7CGFloatVG5ValueRtzrlE03boxM0ySo8NSObjectCAGFZAA0cD0V0eF0C15LineDashPatternO_Tt0g5(a1);
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v9 = *(v6 + 2);
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_16:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + 8 * v8) = v6;
    goto LABEL_10;
  }

  v12 = v7;
  if (*(v6 + 3) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v12 & 1) != (v14 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v8 = v13;
  }

  *(v2 + 40) = v6;

  v15 = *(v2 + 40);
  if ((v12 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, v4, MEMORY[0x1E69E7CC0], *(v2 + 40));
  }

  v4 = *(v15 + 56);
  v6 = *(v4 + 8 * v8);
  v20 = v3;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 8 * v8) = v6;
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v18 = *(v6 + 2);
  v17 = *(v6 + 3);
  if (v18 >= v17 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
    *(v4 + 8 * v8) = v6;
  }

  *(v6 + 2) = v18 + 1;
  v19 = &v6[32 * v18];
  *(v19 + 4) = 0x68736144656E696CLL;
  *(v19 + 5) = 0xEF6E726574746150;
  *(v19 + 6) = v20;
  v19[56] = 0;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9ShapePathO_Tt0g5()
{
  v1 = v0[1];
  v2 = Path.cgPath.getter();
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 40);
  *(v1 + 40) = 0x8000000000000000;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v8 = *(v5 + 2);
  v9 = (v6 & 1) == 0;
  v10 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_16:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v3 + 8 * v7) = v5;
    goto LABEL_10;
  }

  v11 = v6;
  if (*(v5 + 3) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v10, isUniquelyReferenced_nonNull_native);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if ((v11 & 1) != (v13 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v7 = v12;
  }

  *(v1 + 40) = v5;

  v14 = *(v1 + 40);
  if ((v11 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v7, v3, MEMORY[0x1E69E7CC0], *(v1 + 40));
  }

  v3 = *(v14 + 56);
  v5 = *(v3 + 8 * v7);
  v19 = v2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8 * v7) = v5;
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  if (v17 >= v16 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
    *(v3 + 8 * v7) = v5;
  }

  *(v5 + 2) = v17 + 1;
  v18 = &v5[32 * v17];
  *(v18 + 4) = 1752457584;
  *(v18 + 5) = 0xE400000000000000;
  *(v18 + 6) = v19;
  v18[56] = 0;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15BackgroundColorO_Tt0g5Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = v3[1];
  if (one-time initialization token for cache != -1)
  {
    v25 = a1;
    swift_once();
    a1 = v25;
  }

  v8 = specialized ObjectCache.subscript.getter(a1);
  v9 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + 40);
  *(v7 + 40) = 0x8000000000000000;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v14 = *(v11 + 2);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_18:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *(v9 + 8 * v13) = v11;
    goto LABEL_12;
  }

  v17 = v12;
  if (*(v11 + 3) >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v17 & 1) != (v19 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v13 = v18;
  }

  *(v7 + 40) = v11;

  v20 = *(v7 + 40);
  if ((v17 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, v9, MEMORY[0x1E69E7CC0], *(v7 + 40));
  }

  v9 = *(v20 + 56);
  v11 = *(v9 + 8 * v13);
  v26 = v8;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 8 * v13) = v11;
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v23 = *(v11 + 2);
  v22 = *(v11 + 3);
  if (v23 >= v22 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v11);
    *(v9 + 8 * v13) = v11;
  }

  *(v11 + 2) = v23 + 1;
  v24 = &v11[32 * v23];
  *(v24 + 4) = a2;
  *(v24 + 5) = a3;
  *(v24 + 6) = v26;
  v24[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE21ContentsMultiplyColorO_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  if ((a3 & 0x100000000) != 0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;
    v25 = a3;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v5 = specialized ObjectCache.subscript.getter(v24);
  }

  v6 = v5;
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = *(v9 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_21:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
    goto LABEL_15;
  }

  v15 = v10;
  if (*(v9 + 3) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v17 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v16;
  }

  *(v4 + 40) = v9;

  v18 = *(v4 + 40);
  if ((v15 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, v7, MEMORY[0x1E69E7CC0], *(v4 + 40));
  }

  v7 = *(v18 + 56);
  v9 = *(v7 + 8 * v11);
  v23 = v6;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v11) = v9;
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v21 = *(v9 + 2);
  v20 = *(v9 + 3);
  if (v21 >= v20 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
  }

  *(v9 + 2) = v21 + 1;
  v22 = &v9[32 * v21];
  *(v22 + 4) = 0xD000000000000015;
  *(v22 + 5) = 0x800000018DD74180;
  *(v22 + 6) = v23;
  v22[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(_OWORD *a1)
{
  v3 = *(v1 + 8);
  v4 = a1[1];
  *&v23.a = *a1;
  *&v23.c = v4;
  *&v23.tx = a1[2];
  CATransform3DMakeAffineTransform(&v29, &v23);
  v5 = objc_opt_self();
  v25 = *&v29.m31;
  v26 = *&v29.m33;
  v27 = *&v29.m41;
  v28 = *&v29.m43;
  *&v23.a = *&v29.m11;
  *&v23.c = *&v29.m13;
  *&v23.tx = *&v29.m21;
  v24 = *&v29.m23;
  v6 = [v5 valueWithCATransform3D_];
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23.a = *(v3 + 40);
  a = v23.a;
  *(v3 + 40) = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = *(*&a + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_14:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(v2 + 8 * v11) = v7;
    goto LABEL_10;
  }

  v15 = v10;
  if (*(*&a + 24) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      a = v23.a;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    a = v23.a;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v17 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v16;
  }

  *(v3 + 40) = a;

  v18 = *(v3 + 40);
  if ((v15 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, v7, MEMORY[0x1E69E7CC0], *(v3 + 40));
  }

  v2 = *(v18 + 56);
  v7 = *(v2 + 8 * v11);
  a = COERCE_DOUBLE(v6);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v11) = v7;
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v21 = *(v7 + 2);
  v20 = *(v7 + 3);
  if (v21 >= v20 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v7);
    *(v2 + 8 * v11) = v7;
  }

  *(v7 + 2) = v21 + 1;
  v22 = &v7[32 * v21];
  *(v22 + 4) = 0x726F66736E617274;
  *(v22 + 5) = 0xE90000000000006DLL;
  *(v22 + 6) = a;
  v22[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE13LineDashPhaseO_Tt0g5Tm(uint64_t a1, uint64_t a2, double a3)
{
  v6 = v3[1];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v13 = *(v10 + 2);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    *(v8 + 8 * v12) = v10;
    goto LABEL_10;
  }

  v16 = v11;
  if (*(v10 + 3) >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if ((v16 & 1) != (v18 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v12 = v17;
  }

  *(v6 + 40) = v10;

  v19 = *(v6 + 40);
  if ((v16 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, v8, MEMORY[0x1E69E7CC0], *(v6 + 40));
  }

  v8 = *(v19 + 56);
  v10 = *(v8 + 8 * v12);
  v24 = v7;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 8 * v12) = v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
    *(v8 + 8 * v12) = v10;
  }

  *(v10 + 2) = v22 + 1;
  v23 = &v10[32 * v22];
  *(v23 + 4) = a1;
  *(v23 + 5) = a2;
  *(v23 + 6) = v24;
  v23[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5Tm(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = v6[1];
  v10 = [objc_opt_self() valueWithRect_];
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + 40);
  *(v9 + 40) = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  v16 = *(v13 + 2);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_16:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    *(v11 + 8 * v15) = v13;
    goto LABEL_10;
  }

  v19 = v14;
  if (*(v13 + 3) >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if ((v19 & 1) != (v21 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v15 = v20;
  }

  *(v9 + 40) = v13;

  v22 = *(v9 + 40);
  if ((v19 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, v11, MEMORY[0x1E69E7CC0], *(v9 + 40));
  }

  v11 = *(v22 + 56);
  v13 = *(v11 + 8 * v15);
  v27 = v10;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 8 * v15) = v13;
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v25 = *(v13 + 2);
  v24 = *(v13 + 3);
  if (v25 >= v24 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v13);
    *(v11 + 8 * v15) = v13;
  }

  *(v13 + 2) = v25 + 1;
  v26 = &v13[32 * v25];
  *(v26 + 4) = a1;
  *(v26 + 5) = a2;
  *(v26 + 6) = v27;
  v26[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE0H19ProjectionTransformO_Tt0g5(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(a1 + 8);
  v27 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v28[0] = *a1;
  v28[1] = v4;
  v28[2] = 0;
  v29 = v27;
  v30 = v5;
  v31 = 0;
  v32 = v6;
  v33 = 0;
  v34 = 0;
  v35 = xmmword_18DDAA020;
  v36 = v7;
  v37 = v8;
  v38 = 0;
  v39 = v9;
  v10 = [objc_opt_self() valueWithCATransform3D_];
  v11 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v3 + 40);
  v13 = v28[0];
  *(v3 + 40) = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_14:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *(v2 + 8 * v15) = v11;
    goto LABEL_10;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      v13 = v28[0];
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = v28[0];
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if ((v19 & 1) != (v21 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v15 = v20;
  }

  *(v3 + 40) = v13;

  v22 = *(v3 + 40);
  if ((v19 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, v11, MEMORY[0x1E69E7CC0], *(v3 + 40));
  }

  v2 = *(v22 + 56);
  v11 = *(v2 + 8 * v15);
  v13 = v10;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v15) = v11;
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v25 = *(v11 + 2);
  v24 = *(v11 + 3);
  if (v25 >= v24 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v11);
    *(v2 + 8 * v15) = v11;
  }

  *(v11 + 2) = v25 + 1;
  v26 = &v11[32 * v25];
  *(v26 + 4) = 0x726F66736E617274;
  *(v26 + 5) = 0xE90000000000006DLL;
  *(v26 + 6) = v13;
  v26[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_opt_self() valueWithRect_];
  v22 = [*v4 mask];
  if (!v22)
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
  v11 = *(v8 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (!__OFADD__(v11, v12))
  {
    v14 = v9;
    if (*(v8 + 3) >= v13)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

LABEL_8:
      *(v5 + 40) = v8;

      v17 = *(v5 + 40);
      if ((v14 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v10, v22, MEMORY[0x1E69E7CC0], *(v5 + 40));
      }

      isUniquelyReferenced_nonNull_native = *(v17 + 56);
      v8 = *(isUniquelyReferenced_nonNull_native + 8 * v10);
      v6 = v6;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(isUniquelyReferenced_nonNull_native + 8 * v10) = v8;
      if (v18)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, isUniquelyReferenced_nonNull_native);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if ((v14 & 1) == (v16 & 1))
    {
      v10 = v15;
      goto LABEL_8;
    }

LABEL_19:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_17:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  *(isUniquelyReferenced_nonNull_native + 8 * v10) = v8;
LABEL_11:
  v20 = *(v8 + 2);
  v19 = *(v8 + 3);
  if (v20 >= v19 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v8);
    *(isUniquelyReferenced_nonNull_native + 8 * v10) = v8;
  }

  *(v8 + 2) = v20 + 1;
  v21 = &v8[32 * v20];
  *(v21 + 4) = 0x73646E756F62;
  *(v21 + 5) = 0xE600000000000000;
  *(v21 + 6) = v6;
  v21[56] = 1;
}

id _s7SwiftUI43_DisplayList_ViewUpdater_AsyncLayerPropertyPAASay12CoreGraphics7CGFloatVG5ValueRtzrlE03boxM0ySo8NSObjectCAGFZAA0cD0V0eF0C15LineDashPatternO_Tt0g5(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v2 addObject_];

      --v3;
    }

    while (v3);
  }

  return v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisplayList.ViewUpdater.ViewCache.Key()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 17);
  v6 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}