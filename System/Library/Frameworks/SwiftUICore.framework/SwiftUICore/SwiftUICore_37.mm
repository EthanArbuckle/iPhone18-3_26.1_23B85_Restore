unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int16 a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = a1;
    v8 = HIBYTE(a1);
    v9 = ~v5;
    v10 = *(v2 + 48);
    while (2)
    {
      v12 = (v10 + 2 * result);
      v13 = *v12;
      v14 = v12[1];
      v15 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      switch(v13)
      {
        case 1:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v15 = 0;
          v25 = 1;
          break;
        case 2:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v25 = 0;
          v15 = 0;
          v24 = 1;
          break;
        case 3:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v23 = 1;
          break;
        case 4:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v22 = 1;
          break;
        case 5:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v21 = 1;
          break;
        case 6:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v20 = 1;
          break;
        case 7:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v19 = 1;
          break;
        case 8:
          v16 = 0;
          v17 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v18 = 1;
          break;
        case 9:
          v16 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v17 = 1;
          break;
        case 10:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v15 = 0;
          v16 = 1;
          break;
        case 11:
        case 12:
        case 13:
LABEL_70:
          _diagnoseUnavailableCodeReached()();
          __break(1u);
          JUMPOUT(0x18D222620);
        default:
          break;
      }

      switch(v7)
      {
        case 1:
          if (v8 == v14)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          if (v31)
          {
            return result;
          }

          goto LABEL_7;
        case 2:
          if (v8 == v14)
          {
            v28 = v24;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            return result;
          }

          goto LABEL_7;
        case 3:
          if (v8 == v14)
          {
            v29 = v23;
          }

          else
          {
            v29 = 0;
          }

          if (v29)
          {
            return result;
          }

          goto LABEL_7;
        case 4:
          if (v8 == v14)
          {
            v11 = v22;
          }

          else
          {
            v11 = 0;
          }

          if ((v11 & 1) == 0)
          {
            goto LABEL_7;
          }

          return result;
        case 5:
          if (v8 == v14)
          {
            v32 = v21;
          }

          else
          {
            v32 = 0;
          }

          if (v32)
          {
            return result;
          }

          goto LABEL_7;
        case 6:
          if (v8 == v14)
          {
            v33 = v20;
          }

          else
          {
            v33 = 0;
          }

          if (v33)
          {
            return result;
          }

          goto LABEL_7;
        case 7:
          if (v8 == v14)
          {
            v30 = v19;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            return result;
          }

          goto LABEL_7;
        case 8:
          if (v8 == v14)
          {
            v35 = v18;
          }

          else
          {
            v35 = 0;
          }

          if (v35)
          {
            return result;
          }

          goto LABEL_7;
        case 9:
          if (v8 == v14)
          {
            v27 = v17;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            return result;
          }

          goto LABEL_7;
        case 10:
          if (v8 == v14)
          {
            v34 = v16;
          }

          else
          {
            v34 = 0;
          }

          if (v34)
          {
            return result;
          }

          goto LABEL_7;
        case 11:
        case 12:
        case 13:
          goto LABEL_70;
        default:
          if (v8 == v14)
          {
            v26 = v15;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            return result;
          }

LABEL_7:
          result = (result + 1) & v9;
          if ((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
          {
            continue;
          }

          return result;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey()
{
  result = lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey;
  if (!lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey;
  if (!lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.RatioKey and conformance Font.RatioKey);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, __int16 a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 2 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

double specialized Environment.wrappedValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return *&a1;
  }

  v10[9] = v2;
  v10[10] = v3;

  v6 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  v7 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x74616F6C464743, 0xE700000000000000, v10);
    _os_log_impl(&dword_18D018000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AC4820](v9, -1, -1);
    MEMORY[0x193AC4820](v8, -1, -1);
  }

  EnvironmentValues.init()(v10);
  swift_getAtKeyPath();
  outlined consume of Environment<ButtonSizing>.Content(a1, 0);

  return *&v10[2];
}

uint64_t FloatingPoint.rounded(toMultipleOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[3] = a3;
  v19[4] = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(*(v9 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7038], v11, v13);
  v16 = *(v6 + 16);
  v19[5] = a4;
  v16(a4, v19[2], a2);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v8, a2);
  if (v17)
  {
    dispatch thunk of FloatingPoint.round(_:)();
  }

  else
  {
    dispatch thunk of static FloatingPoint./= infix(_:_:)();
    dispatch thunk of FloatingPoint.round(_:)();
    dispatch thunk of static Numeric.*= infix(_:_:)();
  }

  return (*(v12 + 8))(v15, v11);
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance FontKey(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return (v2 | *a2) == 0;
  }

  else
  {
    return (*(*v2 + 112))() & 1;
  }
}

uint64_t sub_18D22303C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.defaultForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultForegroundColor : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v4, *a2);
  }
}

uint64_t storeEnumTagSinglePayload for GeometryProxy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 52) = v3;
  return result;
}

uint64_t key path setter for EnvironmentValues.lineSpacing : EnvironmentValues(double *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t *, double), void (*a6)(uint64_t, void))
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

uint64_t key path getter for EnvironmentValues.lineSpacing : EnvironmentValues@<X0>(void *a1@<X0>, double (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, double *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    if (result)
    {
      v7 = *(result + 72);
    }

    else
    {
      v7 = 0.0;
    }
  }

  *a4 = v7;
  return result;
}

uint64_t View.lineSpacing(_:)(uint64_t a1, uint64_t a2, double a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a3;
  View.environment<A>(_:_:)(KeyPath, &v8, a1, a2);
}

{
  return View.lineSpacing(_:)(a1, a2, a3);
}

void storeEnumTagSinglePayload for VStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 17) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
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
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 17] & ~v8;

  v18(v19);
}

uint64_t specialized ShapeStyle.primaryStyle(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[27] = 0;
  *&v8 = 0;
  v7 = 1uLL;
  BYTE8(v8) = 5;
  *&v9 = 0;
  BYTE8(v9) = 5;
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v11 = 0u;
  memset(v12, 0, 24);
  v12[24] = 1;
  *&v12[25] = 768;
  v3 = *(*a3 + 80);

  v3(&v7);
  v4 = v9;
  v5 = BYTE8(v9);
  v13[4] = v11;
  v14[0] = *v12;
  *(v14 + 12) = *&v12[12];
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  outlined copy of _ShapeStyle_Shape.Result(v9, BYTE8(v9));
  outlined destroy of _ShapeStyle_Shape(v13);
  if (v5 != 2)
  {
    outlined consume of _ShapeStyle_Shape.Result(v4, v5);
    return 0;
  }

  return v4;
}

uint64_t specialized HierarchicalShapeStyle.apply<A>(_:to:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 24);
  if (a3)
  {
    v6 = a3;
    if (v5 == 3)
    {
      type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v6;
      v8 = *(a2 + 32);
      v9 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v8, v9);
      *(a2 + 32) = v7;
LABEL_6:
      *(a2 + 40) = 2;
      return result;
    }

    specialized OffsetShapeStyle._apply(to:)(a2, a1, v6);
  }

  else
  {
    if (v5 == 3)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v11, v12);
      *(a2 + 32) = a1;
      goto LABEL_6;
    }

    return (*(*a1 + 80))(a2);
  }
}

uint64_t specialized ShapeStyle.fallbackColor(in:level:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13[27] = 0;
  *&v9 = 0;
  v8 = a3;
  BYTE8(v9) = 2;
  *&v10 = 0;
  BYTE8(v10) = 5;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = 0u;
  memset(v13, 0, 24);
  v13[24] = 1;
  *&v13[25] = 768;
  v4 = *(*a4 + 80);

  v4(&v8);
  v5 = v10;
  v6 = BYTE8(v10);
  v14[4] = v12;
  v15[0] = *v13;
  *(v15 + 12) = *&v13[12];
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  outlined copy of _ShapeStyle_Shape.Result(v10, BYTE8(v10));
  outlined destroy of _ShapeStyle_Shape(v14);
  if (v6 != 3)
  {
    outlined consume of _ShapeStyle_Shape.Result(v5, v6);
    return 0;
  }

  return v5;
}

void _ViewList_ID.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *v6;
      v6 += 6;
      v9 = *(*v7 + 120);

      v9(a1);
      Hasher._combine(_:)(v8);

      --v5;
    }

    while (v5);
  }
}

uint64_t ViewDimensions.subscript.getter(uint64_t a1)
{
  v3 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
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
LABEL_7:
    v9[0] = v7;
    v9[1] = v8;
    v5 = (*(*v3 + 144))(a1, v9);

    return v5;
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitVector(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SubviewsCollection(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  *a1 = v4;
  _VariadicView_Children.subscript.getter(*a2, v4);
  return protocol witness for Collection.subscript.read in conformance SubviewsCollection;
}

void protocol witness for Collection.subscript.read in conformance SubviewsCollection(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Subview(*a1);

  free(v1);
}

uint64_t protocol witness for Identifiable.id.getter in conformance Subview@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v3 = *(v1 + 60);
    v4 = *(v1 + 64);
    *a1 = v2;
    *(a1 + 4) = v3;
    *(a1 + 8) = v4;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subview.ID()
{
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for HostPreferencesCombiner(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Subview.ID(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  result = 0;
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);

    v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v4, v3);

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t specialized ForEachState.evictItems(seed:)(uint64_t result)
{
  v3 = *(*v1 + 256);
  if (*(v1 + v3) == result)
  {
    return result;
  }

  v4 = v1;
  if (*(v1 + *(*v1 + 264)) != 1)
  {
    return result;
  }

  v42 = *(*v1 + 264);
  *(v1 + v3) = result;
  v43 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v5 = v1[42];
  v6 = -1 << *(v5 + 32);

  v7 = _HashTable.startBucket.getter();
  v8 = *(v5 + 36);

  v9 = v4[42];
  v46 = 1 << *(v9 + 32);
  v10 = *(v9 + 36);
  v47 = 64;
  v45 = v4;
  while (1)
  {
    if (v8 != v10)
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
      result = __CocoaSet.count.getter();
      v25 = result;
      if (!result)
      {
        goto LABEL_57;
      }

LABEL_33:
      if (v25 < 1)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v27)
        {
          v28 = MEMORY[0x193AC03C0](v26, v6);
        }

        else
        {
          v28 = *(v6 + 8 * v26 + 32);
        }

        AGSubgraphApply();
        AGSubgraphRemoveChild();
        *(v28 + 141) = 256;
        v29 = *(v28 + 24) - 1;
        *(v28 + 24) = v29;
        if (v29)
        {
          goto LABEL_35;
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }

LABEL_47:
        v4 = v45;
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

LABEL_35:
        ++v26;

        if (v25 == v26)
        {
          goto LABEL_57;
        }
      }

      v31 = Strong;
      swift_beginAccess();
      v32 = *(v31 + 336);
      if (*(v32 + 16))
      {
        v33 = v25;
        v34 = *(v28 + 32);
        v35 = *(v28 + 40);

        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
        if (v37)
        {
          v38 = v36;
          v39 = *(v32 + 36);

          swift_beginAccess();
          specialized Dictionary._Variant.remove(at:)(&v49, v38, v39);
          swift_endAccess();

          v25 = v33;
LABEL_46:
          v27 = v6 & 0xC000000000000001;
          goto LABEL_47;
        }

        v25 = v33;
      }

      v41 = specialized _NativeDictionary.filter(_:)(v40, v28, specialized _NativeDictionary.extractDictionary(using:count:));

      *(v31 + 336) = v41;

      goto LABEL_46;
    }

    if (v7 == v46)
    {
      break;
    }

    if (v7 < 0)
    {
      goto LABEL_50;
    }

    v11 = v4[42];
    if (v7 >= 1 << *(v11 + 32))
    {
      goto LABEL_50;
    }

    v12 = v7 >> 6;
    v6 = 1 << v7;
    if ((*(v11 + 8 * (v7 >> 6) + 64) & (1 << v7)) == 0)
    {
      goto LABEL_51;
    }

    if (v10 != *(v11 + 36))
    {
      goto LABEL_52;
    }

    v13 = *(v11 + 56);
    v14 = (*(v11 + 48) + 16 * v7);
    v15 = *(v14 + 1);
    v16 = *(v13 + 8 * v7);
    if ((*(v16 + 142) & 1) == 0)
    {
      if (*(v16 + 141) == 1)
      {
        if (*(v16 + 24) == 1)
        {
          v17 = v14[1];
          v44 = *v14;
          swift_retain_n();

          MEMORY[0x193ABF170](v18);
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v43 = v50;
          v4 = v45;
          swift_beginAccess();

          specialized Set._Variant.insert(_:)(v48, v44 | (v17 << 32), v15);
          swift_endAccess();

          --v47;
          goto LABEL_20;
        }
      }

      else
      {
        --*(v16 + 141);
      }
    }

LABEL_20:
    v19 = v4[42];
    v2 = 1 << *(v19 + 32);
    if (v7 >= v2)
    {
      goto LABEL_53;
    }

    v20 = *(v19 + 64 + 8 * v12);
    if ((v20 & v6) == 0)
    {
      goto LABEL_54;
    }

    if (v10 != *(v19 + 36))
    {
      goto LABEL_55;
    }

    v6 = v20 & (-2 << (v7 & 0x3F));
    if (v6)
    {

      v2 = __clz(__rbit64(v6)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v6 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v19 + 8 * v12 + 72);
      while (v21 < (v2 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v6 += 64;
        ++v21;
        if (v24)
        {

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v7, v8, 0);

          v2 = __clz(__rbit64(v23)) + v6;
          goto LABEL_29;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v7, v8, 0);

LABEL_29:
      v4 = v45;
    }

    v8 = *(v19 + 36);

    v7 = v2;
    if (v47 <= 0)
    {
      goto LABEL_31;
    }
  }

  v47 = 1;
  v2 = v46;
LABEL_31:
  v6 = v43;
  if (v43 >> 62)
  {
    goto LABEL_56;
  }

  v25 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    goto LABEL_33;
  }

LABEL_57:

  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v8, 0);
  *(v4 + v42) = v47 == 0;
  return result;
}

{
  v3 = *(*v1 + 256);
  if (*(v1 + v3) == result)
  {
    return result;
  }

  v4 = v1;
  if (*(v1 + *(*v1 + 264)) != 1)
  {
    return result;
  }

  v38 = *(*v1 + 264);
  *(v1 + v3) = result;
  v39 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v5 = v1[40];

  v6 = _HashTable.startBucket.getter();
  v7 = *(v5 + 36);

  v8 = v4[40];
  v40 = 1 << *(v8 + 32);
  v9 = *(v8 + 36);
  v42 = 64;
  while (1)
  {
    if (v7 != v9)
    {
      __break(1u);
LABEL_49:
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
      result = __CocoaSet.count.getter();
      v23 = result;
      if (!result)
      {
        goto LABEL_56;
      }

LABEL_32:
      if (v23 < 1)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v6 & 0xC000000000000001;
      v41 = v23;
      while (1)
      {
        if (v25)
        {
          v26 = MEMORY[0x193AC03C0](v24, v6);
        }

        else
        {
          v26 = *(v6 + 8 * v24 + 32);
        }

        AGSubgraphApply();
        AGSubgraphRemoveChild();
        *(v26 + 165) = 256;
        v27 = *(v26 + 24) - 1;
        *(v26 + 24) = v27;
        if (v27)
        {
          goto LABEL_35;
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v29 = Strong;
          swift_beginAccess();
          v30 = *(v29 + 320);
          if (!*(v30 + 16))
          {
            goto LABEL_45;
          }

          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26 + 32);
          if ((v32 & 1) == 0)
          {

LABEL_45:

            v37 = specialized _NativeDictionary.filter(_:)(v36, v26, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

            *(v29 + 320) = v37;

            v6 = v39;
            goto LABEL_46;
          }

          v33 = v31;
          v34 = *(v30 + 36);

          swift_beginAccess();
          v35 = v34;
          v6 = v39;
          specialized Dictionary._Variant.remove(at:)(v45, v33, v35);
          swift_endAccess();

          outlined destroy of AnyHashable(v45);
        }

LABEL_46:
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        v23 = v41;
LABEL_35:
        ++v24;

        if (v23 == v24)
        {
          goto LABEL_56;
        }
      }
    }

    if (v6 == v40)
    {
      break;
    }

    if (v6 < 0)
    {
      goto LABEL_49;
    }

    v10 = v4[40];
    if (v6 >= 1 << *(v10 + 32))
    {
      goto LABEL_49;
    }

    v11 = v6 >> 6;
    if ((*(v10 + 8 * (v6 >> 6) + 64) & (1 << v6)) == 0)
    {
      goto LABEL_50;
    }

    if (v9 != *(v10 + 36))
    {
      goto LABEL_51;
    }

    outlined init with copy of AnyHashable(*(v10 + 48) + 40 * v6, v45);
    v12 = *(*(v10 + 56) + 8 * v6);
    if ((*(v12 + 166) & 1) == 0)
    {
      if (*(v12 + 165) == 1)
      {
        v13 = *(v12 + 24);

        if (v13 == 1)
        {

          MEMORY[0x193ABF170](v14);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v39 = v46;
          outlined init with copy of AnyHashable(v45, v43);
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(v44, v43);
          swift_endAccess();
          outlined destroy of AnyHashable(v44);
          --v42;
        }

        goto LABEL_20;
      }

      --*(v12 + 165);
    }

LABEL_20:
    v15 = v4[40];
    v2 = 1 << *(v15 + 32);
    if (v6 >= v2)
    {
      goto LABEL_52;
    }

    v16 = *(v15 + 64 + 8 * v11);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_53;
    }

    if (v9 != *(v15 + 36))
    {
      goto LABEL_54;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {

      outlined destroy of AnyHashable(v45);
      v2 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (v15 + 8 * v11 + 72);
      while (v19 < (v2 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);

          outlined destroy of AnyHashable(v45);
          v2 = __clz(__rbit64(v21)) + v18;
          goto LABEL_5;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);

      outlined destroy of AnyHashable(v45);
    }

LABEL_5:
    v7 = *(v15 + 36);

    v6 = v2;
    if (v42 <= 0)
    {
      goto LABEL_30;
    }
  }

  v42 = 1;
  v2 = v40;
LABEL_30:
  v6 = v39;
  if (v39 >> 62)
  {
    goto LABEL_55;
  }

  v23 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    goto LABEL_32;
  }

LABEL_56:

  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v7, 0);
  *(v4 + v38) = v42 == 0;
  return result;
}

{
  v3 = *(*v1 + 256);
  if (*(v1 + v3) == result)
  {
    return result;
  }

  v4 = v1;
  if (*(v1 + *(*v1 + 264)) != 1)
  {
    return result;
  }

  v39 = *(*v1 + 264);
  *(v1 + v3) = result;
  v40 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v5 = v1[33];

  v6 = _HashTable.startBucket.getter();
  v7 = *(v5 + 36);

  v8 = v4[33];
  v41 = 1 << *(v8 + 32);
  v9 = *(v8 + 36);
  v43 = 64;
  while (1)
  {
    if (v7 != v9)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v6 == v41)
    {
      break;
    }

    if (v6 < 0)
    {
      goto LABEL_48;
    }

    v10 = v4[33];
    if (v6 >= 1 << *(v10 + 32))
    {
      goto LABEL_48;
    }

    v11 = v6 >> 6;
    if ((*(v10 + 8 * (v6 >> 6) + 64) & (1 << v6)) == 0)
    {
      goto LABEL_49;
    }

    if (v9 != *(v10 + 36))
    {
      goto LABEL_50;
    }

    v12 = *(*(v10 + 56) + 8 * v6);
    if ((*(v12 + 134) & 1) == 0)
    {
      if (*(v12 + 133) == 1)
      {
        v13 = *(*(v10 + 48) + 8 * v6);
        v14 = *(v12 + 24);

        if (v14 == 1)
        {

          MEMORY[0x193ABF170](v15);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v46;
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(v44, v13);
          swift_endAccess();
          --v43;
        }

        goto LABEL_20;
      }

      --*(v12 + 133);
    }

LABEL_20:
    v16 = v4[33];
    v2 = 1 << *(v16 + 32);
    if (v6 >= v2)
    {
      goto LABEL_51;
    }

    v17 = *(v16 + 64 + 8 * v11);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_52;
    }

    if (v9 != *(v16 + 36))
    {
      goto LABEL_53;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {

      v2 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (v16 + 8 * v11 + 72);
      while (v20 < (v2 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);

          v2 = __clz(__rbit64(v22)) + v19;
          goto LABEL_5;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);
    }

LABEL_5:
    v7 = *(v16 + 36);

    v6 = v2;
    if (v43 <= 0)
    {
      goto LABEL_30;
    }
  }

  v43 = 1;
  v2 = v41;
LABEL_30:
  v6 = v40;
  if (!(v40 >> 62))
  {
    v24 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_32;
    }

LABEL_55:

    result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v7, 0);
    *(v4 + v39) = v43 == 0;
    return result;
  }

LABEL_54:
  result = __CocoaSet.count.getter();
  v24 = result;
  if (!result)
  {
    goto LABEL_55;
  }

LABEL_32:
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = v6 & 0xC000000000000001;
    v42 = v24;
    do
    {
      if (v26)
      {
        v27 = MEMORY[0x193AC03C0](v25, v6);
      }

      else
      {
        v27 = *(v6 + 8 * v25 + 32);
      }

      AGSubgraphApply();
      AGSubgraphRemoveChild();
      *(v27 + 133) = 256;
      v28 = *(v27 + 24) - 1;
      *(v27 + 24) = v28;
      if (!v28)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v30 = Strong;
          swift_beginAccess();
          v31 = *(v30 + 264);
          if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(*(v27 + 32)), (v33 & 1) != 0))
          {
            v34 = v32;
            v35 = *(v31 + 36);
            swift_beginAccess();
            v36 = v35;
            v6 = v40;
            specialized Dictionary._Variant.remove(at:)(&v45, v34, v36);
            swift_endAccess();
          }

          else
          {

            v38 = specialized _NativeDictionary.filter(_:)(v37, v27, specialized _NativeDictionary.extractDictionary(using:count:));

            *(v30 + 264) = v38;

            v6 = v40;
          }
        }

        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        v24 = v42;
      }

      ++v25;
    }

    while (v24 != v25);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

{
  v4 = *(*v1 + 256);
  if (*(v1 + v4) == result || *(v1 + *(*v1 + 264)) != 1)
  {
    return result;
  }

  v44 = *(*v1 + 264);
  *(v1 + v4) = result;
  v48 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v5 = v1[33];

  v6 = _HashTable.startBucket.getter();
  v7 = *(v5 + 36);

  v8 = v1[33];
  v49 = 1 << *(v8 + 32);
  v9 = *(v8 + 36);
  v51 = v1;
  v50 = 64;
  while (1)
  {
    if (v7 != v9)
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
      result = __CocoaSet.count.getter();
      v26 = result;
      if (!result)
      {
        goto LABEL_57;
      }

LABEL_33:
      if (v26 < 1)
      {
        __break(1u);
        return result;
      }

      v27 = 0;
      v28 = v3 & 0xC000000000000001;
      v46 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v29 = MEMORY[0x193AC03C0](v27, v3);
        }

        else
        {
          v29 = *(v3 + 8 * v27 + 32);
        }

        AGSubgraphApply();
        AGSubgraphRemoveChild();
        *(v29 + 149) = 256;
        v30 = *(v29 + 24) - 1;
        *(v29 + 24) = v30;
        if (v30)
        {
          goto LABEL_35;
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }

LABEL_47:
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

LABEL_35:
        ++v27;

        if (v26 == v27)
        {
          goto LABEL_57;
        }
      }

      v32 = Strong;
      swift_beginAccess();
      v33 = *(v32 + 264);
      if (*(v33 + 16))
      {
        v34 = v26;
        v35 = *(v29 + 40);
        v36 = *(v29 + 48);
        v37 = *(v29 + 32);

        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v35, v36);
        if (v39)
        {
          v40 = v38;
          v41 = *(v33 + 36);

          swift_beginAccess();
          specialized Dictionary._Variant.remove(at:)(v52, v40, v41);
          swift_endAccess();

          v3 = v48;
          v26 = v34;
LABEL_46:
          v28 = v46;
          goto LABEL_47;
        }

        v3 = v48;
        v26 = v34;
      }

      v43 = specialized _NativeDictionary.filter(_:)(v42, v29, specialized _NativeDictionary.extractDictionary(using:count:));

      *(v32 + 264) = v43;

      goto LABEL_46;
    }

    if (v6 == v49)
    {
      break;
    }

    v2 = v51;
    if (v6 < 0)
    {
      goto LABEL_50;
    }

    v10 = v51[33];
    if (v6 >= 1 << *(v10 + 32))
    {
      goto LABEL_50;
    }

    v11 = v6 >> 6;
    if ((*(v10 + 8 * (v6 >> 6) + 64) & (1 << v6)) == 0)
    {
      goto LABEL_51;
    }

    if (v9 != *(v10 + 36))
    {
      goto LABEL_52;
    }

    v12 = *(v10 + 56);
    v13 = *(v10 + 48) + 24 * v6;
    v3 = *(v13 + 8);
    v14 = *(v12 + 8 * v6);
    if ((*(v14 + 150) & 1) == 0)
    {
      if (*(v14 + 149) == 1)
      {
        v47 = *v13;
        v15 = *(v13 + 16);
        v16 = *(v14 + 24);

        if (v16 == 1)
        {
          v45 = v15;

          MEMORY[0x193ABF170](v17);
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v48 = v54;
          v2 = v51;
          swift_beginAccess();

          specialized Set._Variant.insert(_:)(v53, v47, v3, v45);
          swift_endAccess();

          --v50;
        }

        else
        {
          v2 = v51;
        }

        goto LABEL_20;
      }

      --*(v14 + 149);
    }

LABEL_20:
    v18 = *(v2 + 264);
    v2 = 1 << *(v18 + 32);
    if (v6 >= v2)
    {
      goto LABEL_53;
    }

    v19 = *(v18 + 64 + 8 * v11);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_54;
    }

    if (v9 != *(v18 + 36))
    {
      goto LABEL_55;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {

      v2 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v18 + 8 * v11 + 72);
      while (v22 < (v2 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);

          v2 = __clz(__rbit64(v24)) + v21;
          goto LABEL_5;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, 0);
    }

LABEL_5:
    v7 = *(v18 + 36);

    v6 = v2;
    if (v50 <= 0)
    {
      goto LABEL_31;
    }
  }

  v50 = 1;
  v2 = v49;
LABEL_31:
  v3 = v48;
  if (v48 >> 62)
  {
    goto LABEL_56;
  }

  v26 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    goto LABEL_33;
  }

LABEL_57:

  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v7, 0);
  *(v51 + v44) = v50 == 0;
  return result;
}

{
  v2 = *(*v1 + 256);
  if (*(v1 + v2) == result)
  {
    return result;
  }

  v3 = v1;
  if ((*(v1 + *(*v1 + 264)) & 1) == 0)
  {
    return result;
  }

  v41 = *(*v1 + 264);
  *(v1 + v2) = result;
  v44 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v4 = v1[34];

  v5 = _HashTable.startBucket.getter();
  v6 = *(v4 + 36);

  v7 = v3[34];
  v46 = 1 << *(v7 + 32);
  v8 = *(v7 + 36);
  v47 = 64;
  v9 = v6;
  do
  {
    if (v9 != v8)
    {
      goto LABEL_55;
    }

    if (v5 == v46)
    {
      v47 = 1;
      goto LABEL_31;
    }

    if (v5 < 0)
    {
      goto LABEL_56;
    }

    v10 = v3[34];
    if (v5 >= 1 << *(v10 + 32))
    {
      goto LABEL_56;
    }

    v11 = v5 >> 6;
    if ((*(v10 + 8 * (v5 >> 6) + 64) & (1 << v5)) == 0)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v8 != *(v10 + 36))
    {
      goto LABEL_58;
    }

    v12 = *(*(v10 + 56) + 8 * v5);
    if (*(v12 + 134))
    {
      goto LABEL_19;
    }

    if (*(v12 + 133) != 1)
    {
      --*(v12 + 133);
LABEL_19:

      goto LABEL_20;
    }

    v13 = *(*(v10 + 48) + 8 * v5);
    v14 = *(v12 + 24);

    if (v14 == 1)
    {

      MEMORY[0x193ABF170](v15);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v50;
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v48, v13);
      swift_endAccess();
      --v47;
    }

LABEL_20:
    v16 = v3[34];
    v17 = 1 << *(v16 + 32);
    if (v5 >= v17)
    {
      goto LABEL_59;
    }

    v18 = *(v16 + 64 + 8 * v11);
    if ((v18 & (1 << v5)) == 0)
    {
      goto LABEL_60;
    }

    if (v8 != *(v16 + 36))
    {
      goto LABEL_61;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {

      v5 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (v16 + 8 * v11 + 72);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v5, v6, 0);

          v5 = __clz(__rbit64(v23)) + v20;
          goto LABEL_5;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v5, v6, 0);

      v5 = v17;
    }

LABEL_5:
    v6 = v8;
    v9 = v8;
  }

  while (v47 > 0);
  v46 = v5;
  v6 = v8;
LABEL_31:
  v5 = v44;
  v8 = v44 >> 62;
  if (v44 >> 62)
  {
LABEL_63:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    v25 = 0;
    v42 = v8;
    v26 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v43 = v6;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x193AC03C0](v25, v5);
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v25 >= *(v45 + 16))
        {
          goto LABEL_62;
        }

        v28 = *(v5 + 8 * v25 + 32);

        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      AGSubgraphApply();
      AGSubgraphRemoveChild();
      *(v28 + 133) = 256;
      v30 = *(v28 + 24) - 1;
      *(v28 + 24) = v30;
      if (!v30)
      {
        v31 = v26;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v33 = Strong;
          swift_beginAccess();
          v34 = *(v33 + 272);
          if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(*(v28 + 32)), (v36 & 1) != 0))
          {
            v37 = v35;
            v38 = *(v34 + 36);
            swift_beginAccess();
            specialized Dictionary._Variant.remove(at:)(&v49, v37, v38);
            swift_endAccess();
          }

          else
          {

            v40 = specialized _NativeDictionary.filter(_:)(v39, v28, specialized _NativeDictionary.extractDictionary(using:count:));

            *(v33 + 272) = v40;
          }

          v5 = v44;
          v8 = v42;
        }

        v26 = v31;
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        v6 = v43;
      }

      if (v8)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *(v45 + 16);
      }

      ++v25;
    }

    while (v29 != v27);
  }

LABEL_64:

  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v46, v6, 0);
  *(v3 + v41) = v47 == 0;
  return result;
}

uint64_t static PlatformViewChild.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  v1 = *(v0 + 32);
  result = swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      v6 = *(v3 + v5);
      swift_beginAccess();
      LOBYTE(v7) = *(v6 + 169);
      if (v7)
      {
        v8 = 1;
      }

      else if (swift_weakLoadStrong() && (swift_beginAccess(), Strong = swift_weakLoadStrong(), , Strong))
      {
        swift_beginAccess();
        v7 = *(Strong + 169);

        v8 = (v7 >> 1) & 1;
      }

      else
      {
        LOBYTE(v7) = 0;
        v8 = 0;
      }

      swift_beginAccess();
      if (v8 != *(v6 + 40))
      {
        if (v8)
        {
          v10 = *(v6 + 32);
          AGSubgraphApply();

          AGSubgraphRemoveChild();
        }

        else
        {
          AGSubgraphAddChild();
          v11 = *(v6 + 32);
          AGSubgraphApply();
        }

        *(v6 + 40) = v8;
      }

      if (((v7 & 2) != 0) != *(v6 + 41))
      {
        *(v6 + 41) = (v7 & 2) >> 1;
        ViewGraph.isHiddenForReuseDidChange()();
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ViewRendererHost.explicitAlignment(of:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, *(a3 + 16));
}

{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, *(a3 + 16));
}

uint64_t DSLInputs.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11 = *(a1 + 32);
  v4 = v11;
  v12 = v3;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  v6 = v12;
  v7 = DWORD2(v12);
  outlined init with copy of _GraphInputs(v10, &v9);

  result = outlined destroy of _ViewInputs(v10);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

uint64_t DSLGraphInputs.subscript.getter()
{
  v0 = type metadata accessor for GraphInputAdapter();
  WitnessTable = swift_getWitnessTable();
  return _GraphInputs.subscript.getter(v0, v0, WitnessTable);
}

BOOL specialized static ContentTransition.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  v4 = *(a1 + 14);
  v5 = *(a1 + 15);
  v6 = *(a1 + 16);
  v19 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 12);
  v9 = *(a2 + 8);
  v10 = v9 | (v8 << 32);
  v11 = *(a2 + 14);
  v12 = *(a2 + 15);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a1 + 13);
  v16 = *(a2 + 13);
  v24 = *a1;
  v26 = v2;
  v25 = v3;
  v27 = v15;
  v20 = v7;
  v22 = v8;
  v21 = v9;
  v23 = v16;
  outlined copy of ContentTransition.Storage(v24, v3 | (v2 << 32), v15);
  outlined copy of ContentTransition.Storage(v7, v10, v16);
  LOBYTE(v7) = specialized static ContentTransition.Storage.== infix(_:_:)(&v24, &v20);
  outlined consume of ContentTransition.Storage(v20, v21 | (v22 << 32), v23);
  outlined consume of ContentTransition.Storage(v24, v25 | (v26 << 32), v27);
  result = 0;
  if ((v7 & 1) != 0 && ((v4 ^ v11) & 1) == 0 && v5 == v12)
  {
    if (v6)
    {
      if (v13)
      {
        v18 = *(*v6 + 104);

        LOBYTE(v18) = v18(v13);

        if (v18)
        {
          return v19 == v14;
        }
      }
    }

    else if (!v13)
    {
      return v19 == v14;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static ContentTransition.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) | (*(a1 + 12) << 32);
  v4 = *(a1 + 13);
  v5 = *a2;
  v6 = *(a2 + 8) | (*(a2 + 12) << 32);
  v7 = *(a2 + 13);
  if (!*(a1 + 13))
  {
    if (!*(a2 + 13))
    {
      v9 = HIBYTE(*(a1 + 8));
      outlined consume of ContentTransition.Storage(*a1, v3, 0);
      outlined consume of ContentTransition.Storage(v5, v6, 0);
      v14 = v2;
      BYTE2(v15) = BYTE2(v3);
      LOWORD(v15) = v3;
      HIBYTE(v15) = v9;
      v16 = BYTE4(v3);
      v11 = v5;
      BYTE2(v12) = BYTE2(v6);
      LOWORD(v12) = v6;
      HIBYTE(v12) = BYTE3(v6);
      v13 = BYTE4(v6);
      v8 = specialized static ContentTransition.NamedTransition.== infix(_:_:)(&v14, &v11);
      return v8 & 1;
    }

    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v14 = *a1;
      v15 = v3;
      v16 = BYTE4(v3);
      v11 = v5;
      v12 = v6;
      v13 = BYTE4(v6);
      v8 = specialized static ContentTransition.CustomTransition.== infix(_:_:)(&v14, &v11);
      outlined copy of ContentTransition.Storage(v5, v6, 1);
      outlined copy of ContentTransition.Storage(v2, v3, 1);
      outlined consume of ContentTransition.Storage(v2, v3, 1);
      outlined consume of ContentTransition.Storage(v5, v6, 1);
      return v8 & 1;
    }

LABEL_12:
    outlined copy of ContentTransition.Storage(v5, v6, v7);
    outlined consume of ContentTransition.Storage(v2, v3, v4);
    outlined consume of ContentTransition.Storage(v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (v7 != 2)
  {
    goto LABEL_12;
  }

  outlined consume of ContentTransition.Storage(*a1, v3, 2);
  outlined consume of ContentTransition.Storage(v5, v6, 2);
  if (*&v3 == *&v6)
  {
    v8 = (v2 == v5) & (BYTE4(v2) ^ ((v5 & 0x100000000) == 0));
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t specialized static ContentTransition.NamedTransition.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = (*a1 >> 38) & 3;
  if (v8)
  {
    v9 = *(a1 + 8) | (*(a1 + 10) << 16);
    v10 = *(a2 + 4) | (*(a2 + 10) << 16);
    if (v8 == 1)
    {
      v28 = BYTE4(v2) & 1;
      if ((v5 & 0xC000000000) != 0x4000000000)
      {
        return 0;
      }

      v27 = BYTE4(v5) & 1;
      v20 = v2;
      v21 = v28;
      v22 = BYTE5(v2);
      v23 = BYTE6(v2);
      v24 = HIBYTE(v2);
      v25 = v9;
      v26 = BYTE2(v9);
      v13 = v5;
      v14 = BYTE4(v5) & 1;
      v15 = BYTE5(v5);
      v16 = BYTE6(v5);
      v17 = HIBYTE(v5);
      v18 = v10;
      v19 = BYTE2(v10);
      if (!specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(&v20, &v13))
      {
        return 0;
      }

LABEL_28:
      if (v3 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
      {
        return 0;
      }

      if (v4 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v7 == 3 || v4 != v7)
      {
        return 0;
      }

      return 1;
    }

    v12 = *&v9 & 0xFFFFFFLL;
    if (v2 <= 0x8000000001)
    {
      if (v2 ^ 0x8000000000 | v12)
      {
        if ((v5 & 0xC000000000) == 0x8000000000)
        {
          result = 0;
          if (v5 != 0x8000000001)
          {
            return result;
          }

          goto LABEL_27;
        }

        return 0;
      }

      if ((v5 & 0xC000000000) != 0x8000000000)
      {
        return 0;
      }

      result = 0;
      if (v5 == 0x8000000000)
      {
        goto LABEL_27;
      }
    }

    else if (v2 ^ 0x8000000002 | v12)
    {
      if (!(v2 ^ 0x8000000003 | v12))
      {
        if ((v5 & 0xC000000000) == 0x8000000000)
        {
          result = 0;
          if (v5 != 0x8000000003)
          {
            return result;
          }

LABEL_27:
          if (v10)
          {
            return result;
          }

          goto LABEL_28;
        }

        return 0;
      }

      if ((v5 & 0xC000000000) != 0x8000000000)
      {
        return 0;
      }

      result = 0;
      if (v5 == 0x8000000004)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v5 & 0xC000000000) != 0x8000000000)
      {
        return 0;
      }

      result = 0;
      if (v5 == 0x8000000002)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    result = 0;
    if ((v5 & 0xC000000000) == 0 && ((v5 ^ v2) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  return result;
}

void AttributedStringTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28[1] = a1;
  type metadata accessor for TaskPriority?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *a3;
  (*(v18 + 16))(v14, v5 + OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str, v12);
  if (v15)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v16, &v32);

    v19 = v32;
    v20 = v33;
    v22 = v34;
    v21 = v35;
  }

  else
  {
    type metadata accessor for ProxyCodable<Color>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v23);
    v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(v16, v32);
    if (v24)
    {
      v19 = v24[9];
      v20 = v24[10];
      v22 = v24[11];
      v21 = v24[12];
      v32 = v19;
      v33 = v20;
      v34 = v22;
      v35 = v21;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v22 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      v21 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v26);

      outlined destroy of Text.Style(v10, type metadata accessor for TaskPriority?);
      v32 = v19;
      v33 = v20;
      v34 = v22;
      v35 = v21;
    }
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
  v31[0] = v19;
  v31[1] = v20;
  v31[2] = v22;
  v31[3] = v21;
  v27 = NSAttributedString.init(swiftUIAttributedString:in:)(v14, v31);
  v32 = v16;
  v33 = v15;
  v31[0] = v17;
  ResolvedTextContainer.append(_:in:with:)(v27, &v32, v31, v29, v30);
}

uint64_t sub_18D225474()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColorGradientProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for GraphInputAdapter<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Path(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Path and conformance Path();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Path and conformance Path()
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CA0];
    outlined destroy of NamedImage.VectorInfo?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    specialized Dictionary._Variant.removeValue(forKey:)(v7);

    outlined destroy of NamedImage.VectorInfo?(v7, &lazy cache variable for type metadata for Any?, v5 + 8);
  }
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      specialized _NativeDictionary._delete(at:)(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v19 = type metadata accessor for NamedImage.BitmapKey(0);
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    while (1)
    {
      v13 = v12 * v9;
      outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(a2 + 48) + v12 * v9, v6, type metadata accessor for NamedImage.BitmapKey);
      Hasher.init(_seed:)();
      NamedImage.BitmapKey.hash(into:)();
      v14 = Hasher._finalize()();
      outlined destroy of NamedImage.VectorKey(v6, type metadata accessor for NamedImage.BitmapKey);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        break;
      }

      if (v15 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 * a1 != v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (96 * a1 < (96 * v9) || *(a2 + 56) + 96 * a1 >= *(a2 + 56) + 96 * v9 + 96)
      {
        type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == v9)
        {
          goto LABEL_5;
        }

        type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v9;
LABEL_5:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }
}

{
  v19 = type metadata accessor for NamedImage.VectorKey(0);
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    while (1)
    {
      v13 = v12 * v9;
      outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(a2 + 48) + v12 * v9, v6, type metadata accessor for NamedImage.VectorKey);
      Hasher.init(_seed:)();
      NamedImage.VectorKey.hash(into:)();
      v14 = Hasher._finalize()();
      outlined destroy of NamedImage.VectorKey(v6, type metadata accessor for NamedImage.VectorKey);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        break;
      }

      if (v15 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 * a1 != v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (a1 < v9 || *(a2 + 56) + 88 * a1 >= *(a2 + 56) + 88 * v9 + 88)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == v9)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v9;
LABEL_5:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      v11 = v10;
      _CFObject.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v28 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v29 = *(v14 + 56);
    v26 = (v14 - 8);
    v27 = v15;
    do
    {
      v16 = v29 * v10;
      v17 = v13;
      v18 = v14;
      v27(v7, *(a2 + 48) + v29 * v10, v4);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v26)(v7, v4);
      v13 = v17;
      v20 = v19 & v17;
      if (a1 >= v28)
      {
        if (v20 >= v28 && a1 >= v20)
        {
LABEL_15:
          if (v29 * a1 < v16 || *(a2 + 48) + v29 * a1 >= (*(a2 + 48) + v16 + v29))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 * a1 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (a1 < v10 || *(a2 + 56) + 8 * a1 >= *(a2 + 56) + 8 * v10 + 8)
          {
            type metadata accessor for WeakBox<CUICatalog>(0);
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v13 = v17;
          }

          else
          {
            v13 = v17;
            if (a1 != v10)
            {
              type metadata accessor for WeakBox<CUICatalog>(0);
              swift_arrayInitWithTakeBackToFront();
              v13 = v17;
              a1 = v10;
            }
          }
        }
      }

      else if (v20 >= v28 || a1 >= v20)
      {
        goto LABEL_15;
      }

      v10 = (v10 + 1) & v13;
      v14 = v18;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      type metadata accessor for AGSubgraphRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
      v10 = v9;
      _CFObject.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t specialized static Text.ResolvedProperties.Transition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  v4 = *(a1 + 14);
  v5 = *a2;
  v6 = *(a2 + 12);
  v7 = *(a2 + 8);
  v8 = v7 | (v6 << 32);
  v9 = *(a2 + 14);
  v10 = *(a1 + 13);
  v11 = *(a2 + 13);
  v17 = *a1;
  v19 = v2;
  v18 = v3;
  v20 = v10;
  v13 = v5;
  v15 = v6;
  v14 = v7;
  v16 = v11;
  outlined copy of ContentTransition.Storage(v17, v3 | (v2 << 32), v10);
  outlined copy of ContentTransition.Storage(v5, v8, v11);
  LODWORD(v5) = specialized static ContentTransition.Storage.== infix(_:_:)(&v17, &v13);
  outlined consume of ContentTransition.Storage(v13, v14 | (v15 << 32), v16);
  outlined consume of ContentTransition.Storage(v17, v18 | (v19 << 32), v20);
  return v5 & ~(v4 ^ v9) & 1;
}

uint64_t EnvironmentValues.contentTransitionAddsDrawingGroup.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v1, &v8);

    v2 = v8;
    v3 = v9 | (v10 << 32);
    v4 = v11;
    LOBYTE(v5) = v12;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v1);
    if (v6)
    {
      v2 = v6[9];
      v3 = *(v6 + 20) | (*(v6 + 84) << 32);
      v4 = *(v6 + 85);
      v5 = *(v6 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = static ContentTransition.State.defaultValue;
      v3 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v4 = BYTE13(static ContentTransition.State.defaultValue);
      LOBYTE(v5) = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v2, v3, v4);
  }

  outlined consume of ContentTransition.Storage(v2, v3, v4);

  return v5 & 1;
}

uint64_t EnvironmentValues.contentTransitionAddsDrawingGroup.setter(char a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v18);

    v5 = v25;
    v6 = v18;
    v7 = v19 | (v20 << 32);
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v12)
    {
      v6 = v12[9];
      v7 = *(v12 + 20) | (*(v12 + 84) << 32);
      v8 = *(v12 + 85);
      v9 = *(v12 + 86);
      v10 = *(v12 + 87);
      v11 = v12[11];
      v5 = *(v12 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = static ContentTransition.State.defaultValue;
      v7 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v8 = BYTE13(static ContentTransition.State.defaultValue);
      v9 = BYTE14(static ContentTransition.State.defaultValue);
      v10 = HIBYTE(static ContentTransition.State.defaultValue);
      v11 = off_1ED536620;
      v5 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v6, v7, v8);
  }

  v13 = v5 & 0xFFFFFFFE | a1 & 1;
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v6, v7, v8);
  v14 = 0x1000000000000;
  if (!v9)
  {
    v14 = 0;
  }

  v15 = v7 & 0xFFFFFFFFFFLL | (v8 << 40) | v14 | (v10 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v6, v15, v11, v13);

  outlined consume of ContentTransition.Storage(v6, v7, v8);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v3, *v2);
  }

  outlined consume of ContentTransition.Storage(v6, v7, v8);
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

{

  return specialized GraphHost.intern<A>(_:for:id:)(a1, a2, a3);
}

{

  return specialized GraphHost.intern<A>(_:for:id:)(a1, a2, a3);
}

{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  type metadata accessor for MutableBox<CachedEnvironment>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 120);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      return *(*(v7 + 56) + 4 * v8);
    }
  }

  swift_beginAccess();
  v11 = *(v4 + 24);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v15;
  swift_endAccess();
  return v10;
}

uint64_t closure #1 in static Canvas._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for Canvas();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static View<>._makeViewList(view:inputs:)(unsigned int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[1];
  v16[0] = *a2;
  v16[1] = v7;
  v9 = *a2;
  v8 = a2[1];
  v16[2] = a2[2];
  v15 = *a1;
  v12 = v9;
  v13 = v8;
  v14 = a2[2];
  outlined init with copy of _GraphInputs(v16, v17);
  v10 = static Animatable.makeAnimatable(value:inputs:)(&v15, &v12, a3, a4);
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  outlined destroy of _GraphInputs(v17);
  _GraphValue.init(_:)(v10, &v12);
  return static View.makeViewList(view:inputs:)(&v12, a2, a3);
}

unint64_t lazy protocol witness table accessor for type CanvasSymbols and conformance CanvasSymbols()
{
  result = lazy protocol witness table cache variable for type CanvasSymbols and conformance CanvasSymbols;
  if (!lazy protocol witness table cache variable for type CanvasSymbols and conformance CanvasSymbols)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasSymbols and conformance CanvasSymbols);
  }

  return result;
}

uint64_t initializeWithCopy for CanvasSymbols(uint64_t a1, uint64_t a2)
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
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);

  v6 = v5;

  return a1;
}

uint64_t destroy for CanvasSymbols(uint64_t a1)
{
}

uint64_t _BackgroundStyleModifier.BackgroundInfo.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v51 = a3;
  v54 = a6;
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for _BackgroundStyleModifier();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v48 - v13;
  v50 = type metadata accessor for _AnchoredShapeStyle();
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v48 - v15;
  type metadata accessor for CGPoint(0);
  v49 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = Value[1];
  v20 = AGGraphGetValue();
  *&v56 = v18;
  *(&v56 + 1) = v19;
  v21 = v20[1];
  v57 = *v20;
  v58 = v21;
  v22 = v51;
  _BackgroundStyleModifier.BackgroundInfo.modifier.getter(v14);
  (*(v10 + 32))(v12, v14, a4);
  v23 = AGGraphGetValue();
  _AnchoredShapeStyle.init(style:bounds:)(v12, a4, a5, v16, 0.0, 0.0, *v23, v23[1]);
  _BackgroundStyleModifier.BackgroundInfo.Value.init(frame:style:)(&v56, v16, v54);
  _BackgroundStyleModifier.BackgroundInfo.modifier.getter(v14);
  LODWORD(v12) = v14[*(v53 + 36)];
  result = (*(v52 + 8))(v14);
  if (v12)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v26 = CurrentAttribute;
    v27 = HIDWORD(a1);
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    if (*MEMORY[0x1E698D3F8] != HIDWORD(v22))
    {
      InputValue = AGGraphGetInputValue();
      v33 = *(InputValue + 16);
      v59 = *InputValue;
      v60 = v33;
      LODWORD(v56) = v26;
      *(&v56 + 4) = __PAIR64__(a2, v26);
      HIDWORD(v56) = v27;
      *&v57 = __PAIR64__(v49, v22);
      DWORD2(v57) = HIDWORD(v22);
      v28 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(1, 0, &v56);
      v29 = v34;
      v30 = v35;
      v31 = v36;
    }

    if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
    {
      v28 = 0.0;
    }

    if (!Edge.Set.contains(_:)(SwiftUI_Edge_leading))
    {
      v29 = 0.0;
    }

    v37 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
    if (!Edge.Set.contains(_:)(SwiftUI_Edge_trailing))
    {
      v31 = 0.0;
    }

    KeyPath = swift_getKeyPath();
    LODWORD(v59) = v27;
    *(&v59 + 1) = KeyPath;
    type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v27);
    v55 = KeyPath;
    type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_2(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_2(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    LOBYTE(v56) = 0;
    v39 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    if (v39)
    {
      v40 = v31;
    }

    else
    {
      v40 = v29;
    }

    result = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
    v41 = v54;
    v42 = &v54[*(result + 36) + *(v50 + 36)];
    v43 = v28 + v42[1];
    *v42 = v40 + *v42;
    v42[1] = v43;
    v44 = v41[1] - v28;
    *v41 = *v41 - v40;
    v41[1] = v44;
    v45 = -v30;
    if (!v37)
    {
      v45 = -0.0;
    }

    v46 = v41[2] - (-v31 - v29);
    if (v46 < 0.0)
    {
      v46 = 0.0;
    }

    v47 = v41[3] - (v45 - v28);
    if (v47 < 0.0)
    {
      v47 = 0.0;
    }

    v41[2] = v46;
    v41[3] = v47;
  }

  return result;
}

uint64_t _BackgroundStyleModifier.BackgroundInfo.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _BackgroundStyleModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t _BackgroundStyleModifier.BackgroundInfo.Value.init(frame:style:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  *(a3 + 2) = a1[2];
  v6 = *(type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value() + 36);
  v7 = type metadata accessor for _AnchoredShapeStyle();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t AnchoredResolvedPaint.init(_:bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  (*(*(a2 - 8) + 32))(a5, a1, a2);
  result = a4(0, a2, a3);
  v18 = (a5 + *(result + 36));
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  v18[3] = a9;
  return result;
}

_OWORD *initializeWithCopy for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 55;
  v9 = a1 + v7 + 55;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & v10;
  v12 = (a2 + v8) & v10;
  (*(v5 + 16))(v9 & v10, v12);
  v13 = *(v6 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  return a1;
}

uint64_t destroy for _BackgroundStyleModifier.BackgroundInfo.Value(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8 | 7;
  return (*(v2 + 8))((a1 + v3 + 48) & ~v3);
}

uint64_t _AnchoredShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 36));
  v4 = v3[1];
  *(a1 + 72) = *v3;
  *(a1 + 88) = v4;
  *(a1 + 104) = 0;
  return (*(*(a2 + 24) + 32))();
}

double Path.init(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 6;
  a1(&v6);
  v3 = v8;
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t Path.addRoundedRect(in:cornerRadii:style:transform:)(unsigned __int8 *a1, _OWORD *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v44 = *MEMORY[0x1E69E9840];
  v20 = *a1;
  result = CGRectIsNull(*&a3);
  if ((result & 1) == 0)
  {
    v22 = *v10;
    v24 = (v10 + 8);
    v23 = *(v10 + 8);
    v25 = *(v10 + 32);
    if (v25 == 5)
    {
      v26 = *v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Path.PathBox();
        v26 = swift_allocObject();
        *(v26 + 24) = 0u;
        result = v26 + 24;
        *(v26 + 40) = 0u;
        *(v26 + 56) = 0u;
        *(v26 + 72) = 0u;
        *(v26 + 88) = 0u;
        *(v26 + 104) = 0u;
        v27 = *(v22 + 16);
        *(v26 + 16) = v27;
        if (v27)
        {
          if (v27 == 1)
          {

            *(v26 + 24) = RBPathRetain();
            *(v26 + 32) = v28;
          }

          else
          {
            RBPathStorageInit();
          }
        }

        else
        {
          v32 = *(v22 + 24);
          if (!v32)
          {
            __break(1u);
            return result;
          }

          *result = v32;
          v33 = v32;
        }
      }

      v22 = 0;
      v23 = 0;
      v29 = 0;
      v30 = 0;
      LOBYTE(v25) = 6;
    }

    else
    {
      v29 = *(v10 + 16);
      v30 = *(v10 + 24);
      v36 = v10;
      type metadata accessor for Path.PathBox();
      v26 = swift_allocObject();
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0u;
      *(v26 + 56) = 0u;
      *(v26 + 72) = 0u;
      *(v26 + 88) = 0u;
      *(v26 + 104) = 0u;
      *(v26 + 16) = 2;
      RBPathStorageInit();
      v31 = *(v26 + 16);

      if (v31 != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      v39 = v22;
      v40 = v23;
      v41 = v29;
      v42 = v30;
      v43 = v25;
      Path.append(to:)(v26 + 24);
      v10 = v36;
    }

    outlined consume of Path.Storage(v22, v23, v29, v30, v25);
    *v10 = v26;
    v24[1] = 0;
    v24[2] = 0;
    *v24 = 0;
    *(v10 + 32) = 5;
    if (*(v26 + 16) != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v34 = a2[1];
    v38[0] = *a2;
    v38[1] = v34;
    v38[2] = a2[2];
    *v37 = a3;
    *&v37[1] = a4;
    *&v37[2] = a5;
    *&v37[3] = a6;
    *&v37[4] = a7;
    *&v37[5] = a8;
    if (v20)
    {
      v35 = 11;
    }

    else
    {
      v35 = 10;
    }

    *&v37[6] = a9;
    *&v37[7] = a10;
    MEMORY[0x193AC35E0](v26 + 24, v35, v37, v38);
  }

  return result;
}

uint64_t GraphicsContext.clip(to:style:options:)(double *a1, char a2)
{
  GraphicsContext.copyOnWrite()();
  v5 = *(*v2 + 56);
  v6 = *(*(*v2 + 16) + 32);
  RBShape.setPath(_:style:shapeDistance:)(a1, a2 & 1, v5);

  return RBDrawingStateClipShape2();
}

uint64_t initializeWithCopy for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

unsigned int *storeEnumTagSinglePayload for _AnchoredShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v9 = v8 + 1;
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

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AnchoredShapeStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
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
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

void *ImplicitContainerShape.path(in:)@<X0>(int8x16_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6 = _threadGeometryProxyData();
  if (!v6)
  {
    *&v47.origin.x = a2.n128_u64[0];
    *&v47.size.width = a4.n128_u64[0];
    *&v47.origin.y = a3.n128_u64[0];
    *&v47.size.height = a5.n128_u64[0];
    result = CGRectIsNull(v47);
    if (result)
    {
      v15 = 0uLL;
      v16 = 6;
      v17 = 0uLL;
    }

    else
    {
      v16 = 0;
      v15.i64[0] = a2.n128_u64[0];
      v15.i64[1] = a3.n128_u64[0];
      v17.i64[0] = a4.n128_u64[0];
      v17.i64[1] = a5.n128_u64[0];
    }

    goto LABEL_19;
  }

  v7 = *v6;
  v8 = *(v6 + 4);
  v9 = *(v6 + 8);
  v10 = *(v6 + 16);
  v11 = *(v6 + 20);
  v44[0] = *(v6 + 24);
  *(v44 + 12) = *(v6 + 36);
  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    EnvironmentValues.init()(v45);
    v12 = *(&v45[0] + 1);
    v13 = *&v45[0];
    static Update.end()();
    if (v12)
    {
LABEL_4:

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v13, &v40);

      goto LABEL_9;
    }
  }

  else
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v13 = *InputValue;
    v19 = *(InputValue + 8);

    static Update.end()();
    if (v19)
    {
      goto LABEL_4;
    }
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v13, &v40);
LABEL_9:

  v20 = a3.n128_u64[0];
  v21 = a5.n128_u64[0];
  if (v43)
  {
    v22 = a2.n128_u64[0];
    v23 = a4.n128_u64[0];
    result = CGRectIsNull(*(&v20 - 1));
    v24.i64[0] = a2.n128_u64[0];
    v25.i64[0] = a4.n128_u64[0];
    v24.i64[1] = a3.n128_u64[0];
    v25.i64[1] = a5.n128_u64[0];
    if (result)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    if (result)
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v27 = vdupq_n_s64(v26);
    v15 = vbicq_s8(v24, v27);
    v17 = vbicq_s8(v25, v27);
  }

  else
  {
    v28 = *(&v40 + 1);
    v29 = v41;
    v30 = *v42;
    v31 = *&v42[8];
    v32 = *&v42[24];
    *&v40 = __PAIR64__(v8, v7);
    *(&v40 + 1) = v9;
    v41 = __PAIR64__(v11, v10);
    *v42 = v44[0];
    *&v42[12] = *(v44 + 12);
    v37 = v30;
    v38 = v31;
    v39 = v32;
    result = (*(v28 + 8))(v45, &v40, v29, &v37, a2, a3, a4, a5);
    v15 = v45[0];
    v17 = v45[1];
    v16 = v46;
  }

LABEL_19:
  *a1 = v15;
  a1[1] = v17;
  a1[2].i8[0] = v16;
  return result;
}

double _BackgroundStyleModifier.shape(in:)(int8x16_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a3.n128_u64[0];
  v6 = a2.n128_u64[0];
  a2.n128_u64[0] = 0;
  a3.n128_u64[0] = 0;
  a4.n128_u64[0] = v6;
  a5.n128_u64[0] = v5;
  ImplicitContainerShape.path(in:)(v11, a2, a3, a4, a5);
  v8 = v12;
  v9 = v11[1];
  *a1 = v11[0];
  a1[1] = v9;
  a1[2].i64[0] = v8 | 0x10000;
  a1[4].i64[0] = 0;
  a1[6].i32[2] = 0;
  return 0.0;
}

uint64_t CanvasSymbols.updateValue()()
{
  v1 = v0;
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  ++v0[28];
  v2 = *v0;
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v15);
  v4 = v16;
  v5 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v13 = v1;
  v14 = &v11;
  ViewList.applySublists(from:list:to:)(&v10, v2, partial apply for closure #1 in CanvasSymbols.updateValue(), v12, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v15);

  specialized _NativeDictionary.filter(_:)(v6, v1);
  v8 = v7;
  swift_bridgeObjectRelease_n();
  *(v1 + 104) = v8;
  v15[0] = v11;
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for [CanvasSymbols.Child], &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH13CanvasSymbols027_F41195D4CD7D6A29110580DFD3R4F891LLV5ChildVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI13o11Symbols027_qrstuv2Q4w4LLV5X4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlQIsgnndzo_Tf1nc_n03_s7i4UI13o11Symbols027_qrstuv2F4w26LLV11updateValueyyFSbAA12_kl5_IDV9n9V3key_AD5X16V5valuet_tXEfU0_AOTf1nnc_n(v9, v6, v4, a2);
      MEMORY[0x193AC4820](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v4 + 56) + 48 * v14;
    if (*(v15 + 16) == *(a4 + 112))
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, v4);
        return;
      }
    }

    else
    {
      v16 = *v15;

      v17 = v16;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v18 = v17;
      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();

      swift_bridgeObjectRelease_n();

      v4 = a3;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in CanvasDisplayList.updateValue()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  result = AGGraphAnyInputsChanged();
  if (result)
  {
    *(v1 + 80) = 0;

    *v2 = 1;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {

    return v50;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  result = static _DictionaryStorage.allocate(capacity:)();
  v7 = a2;
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v43 = a2;
  v40 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v44 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v50 + 48) + 16 * v15;
    v17 = *v16;
    v18 = *(v16 + 4);
    v19 = *(v16 + 8);
    v20 = *(v50 + 56) + 48 * v15;
    v21 = *(v20 + 8);
    v47 = *(v20 + 16);
    v48 = *(v20 + 24);
    v49 = *v20;
    v22 = *(v20 + 32);
    v23 = *(v20 + 40);
    Hasher.init(_seed:)();
    v46 = v17;
    Hasher._combine(_:)(v17);
    v45 = v18;
    Hasher._combine(_:)(v18);
    if (v19)
    {
      Hasher._combine(_:)(1u);
      v42 = *(*v19 + 120);

      v24 = v48;

      swift_retain_n();
      v25 = v49;
      v26 = v49;
      v42(v51);
      v8 = v40;
    }

    else
    {
      Hasher._combine(_:)(0);

      v24 = v48;

      v25 = v49;
      v27 = v49;
    }

    result = Hasher._finalize()();
    v28 = -1 << *(v8 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v28) >> 6;
      v32 = v21;
      while (++v30 != v34 || (v33 & 1) == 0)
      {
        v35 = v30 == v34;
        if (v30 == v34)
        {
          v30 = 0;
        }

        v33 |= v35;
        v36 = *(v11 + 8 * v30);
        if (v36 != -1)
        {
          v31 = __clz(__rbit64(~v36)) + (v30 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v32 = v21;
LABEL_29:
    *(v11 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v37 = *(v8 + 48) + 16 * v31;
    *v37 = v46;
    *(v37 + 4) = v45;
    *(v37 + 8) = v19;
    v38 = *(v8 + 56) + 48 * v31;
    *v38 = v25;
    *(v38 + 8) = v32;
    *(v38 + 16) = v47;
    *(v38 + 24) = v24;
    *(v38 + 32) = v22;
    *(v38 + 40) = v23;
    ++*(v8 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_35;
    }

    v7 = v43;
    v9 = v44;
    if (!v4)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v44 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

{
  v37 = a4;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {

    return v37;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v36 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v33 = a2;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v37 + 48) + 16 * v15;
    v18 = *v16;
    v17 = *(v16 + 4);
    v19 = *(v16 + 8);
    v20 = *(*(v37 + 56) + 8 * v15);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v18);
    v35 = v17;
    Hasher._combine(_:)(v17);
    if (v19)
    {
      Hasher._combine(_:)(1u);
      v21 = *(*v19 + 120);
      swift_retain_n();

      v21(v38);
      a2 = v33;
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v22 = -1 << *(v36 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v22) >> 6;
      v26 = v20;
      while (++v24 != v28 || (v27 & 1) == 0)
      {
        v29 = v24 == v28;
        if (v24 == v28)
        {
          v24 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v24);
        if (v30 != -1)
        {
          v25 = __clz(__rbit64(~v30)) + (v24 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_35;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v26 = v20;
LABEL_29:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v31 = *(v36 + 48) + 16 * v25;
    *v31 = v18;
    *(v31 + 4) = v35;
    *(v31 + 8) = v19;
    *(*(v36 + 56) + 8 * v25) = v26;
    ++*(v36 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_36;
    }

    v9 = v34;
    if (!v4)
    {
      return v36;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v36;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    outlined init with copy of Any(*(v4 + 56) + 32 * v16, v32);
    outlined init with take of Any(v32, v31);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v18 = v17;
    String.hash(into:)();
    v19 = Hasher._finalize()();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    result = outlined init with take of Any(v31, (*(v9 + 56) + 32 * v23));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = (v17 + 40 * v16);
    v35 = v21[1];
    v36 = *v21;
    v34 = *(v21 + 32);
    Hasher.init(_seed:)();
    MEMORY[0x193AC11A0](v19);
    Hasher._combine(_:)(v20);
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 16 * v25;
    *v30 = v19;
    *(v30 + 8) = v20;
    v31 = *(v9 + 56) + 40 * v25;
    *v31 = v36;
    *(v31 + 16) = v35;
    *(v31 + 32) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = a2;
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
    v11 = a1;
  }

  else
  {
    v11 = a1;
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v43 = v11;
  v44 = a2;
  v41 = v4;
  v42 = result;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v45 = (v12 - 1) & v12;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v4 + 48) + 16 * v18;
    v20 = *v19;
    v21 = *(v19 + 4);
    v22 = *(v19 + 8);
    v23 = *(*(v4 + 56) + 8 * v18);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v20);
    v46 = v21;
    Hasher._combine(_:)(v21);
    v24 = *(v22 + 16);
    v47 = v23;
    if (v24)
    {

      v25 = (v22 + 48);
      do
      {
        v26 = *(v25 - 2);
        v27 = *v25;
        v25 += 6;
        v28 = *(*v26 + 120);

        v28(v48);
        Hasher._combine(_:)(v27);

        --v24;
      }

      while (v24);
    }

    else
    {
    }

    result = Hasher._finalize()();
    v10 = v42;
    v29 = -1 << *(v42 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v29) >> 6;
      v11 = v43;
      v9 = v44;
      v34 = v22;
      v33 = v47;
      while (++v31 != v36 || (v35 & 1) == 0)
      {
        v37 = v31 == v36;
        if (v31 == v36)
        {
          v31 = 0;
        }

        v35 |= v37;
        v38 = *(v14 + 8 * v31);
        if (v38 != -1)
        {
          v32 = __clz(__rbit64(~v38)) + (v31 << 6);
          goto LABEL_31;
        }
      }

      goto LABEL_36;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
    v9 = v44;
    v34 = v22;
    v33 = v47;
LABEL_31:
    *(v14 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v39 = *(v42 + 48) + 16 * v32;
    *v39 = v20;
    *(v39 + 4) = v46;
    *(v39 + 8) = v34;
    *(*(v42 + 56) + 8 * v32) = v33;
    ++*(v42 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_37;
    }

    v4 = v41;
    v12 = v45;
    if (!v5)
    {
      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      return v10;
    }

    v17 = v11[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item>, type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    outlined init with copy of AnyHashable(*(v4 + 48) + 40 * v16, v33);
    v17 = *(*(v4 + 56) + 8 * v16);
    v30 = v33[0];
    v31 = v33[1];
    v32 = v34;
    v18 = *(v9 + 40);

    result = AnyHashable._rawHashValue(seed:)(v18);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v9 + 48) + 40 * v22;
    *v27 = v30;
    *(v27 + 16) = v31;
    *(v27 + 32) = v32;
    *(*(v9 + 56) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    MEMORY[0x193AC11A0](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v36 = a4;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {

    return v36;
  }

  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v35 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v32 = a2;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v36 + 48) + 24 * v15;
    v17 = *v16;
    v19 = *(v16 + 8);
    v18 = *(v16 + 16);
    v20 = *(*(v36 + 56) + 8 * v15);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    if (v19)
    {
      Hasher._combine(_:)(1u);
      v33 = *(*v19 + 120);

      v33(v37);
      a2 = v32;
      MEMORY[0x193AC11A0](v18);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v21 = -1 << *(v35 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v21) >> 6;
      v25 = v20;
      while (++v23 != v27 || (v26 & 1) == 0)
      {
        v28 = v23 == v27;
        if (v23 == v27)
        {
          v23 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v23);
        if (v29 != -1)
        {
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_35;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v25 = v20;
LABEL_29:
    *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v30 = *(v35 + 48) + 24 * v24;
    *v30 = v17;
    *(v30 + 8) = v19;
    *(v30 + 16) = v18;
    *(*(v35 + 56) + 8 * v24) = v25;
    ++*(v35 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_36;
    }

    v9 = v34;
    if (!v4)
    {
      return v35;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v35;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<EventID, EventType>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    outlined init with copy of AnyTrackedValue(v17 + 40 * v16, v33);
    outlined init with take of _ViewList_Elements(v33, v32);
    Hasher.init(_seed:)();
    MEMORY[0x193AC11A0](v19);
    MEMORY[0x193AC11A0](v20);
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = outlined init with take of _ViewList_Elements(v32, *(v9 + 56) + 40 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewCache.AnimatorInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v8;
  v37 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
    v39 = v5;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 20 * v16;
    v20 = *v18;
    v19 = *(v18 + 4);
    v22 = *(v18 + 8);
    v21 = *(v18 + 12);
    v23 = *(v18 + 16);
    v24 = *(v18 + 17);
    outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v17 + 56 * v16, v44);
    v40 = v44[0];
    v41 = v44[1];
    v42 = v44[2];
    v43 = v45;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v22);
    Hasher._combine(_:)(v21);
    Hasher._combine(_:)(v23);
    Hasher._combine(_:)(v24);
    result = Hasher._finalize()();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v9 + 48) + 20 * v28;
    *v33 = v20;
    *(v33 + 4) = v19;
    *(v33 + 8) = v22;
    *(v33 + 12) = v21;
    *(v33 + 16) = v23;
    *(v33 + 17) = v24;
    v34 = *(v9 + 56) + 56 * v28;
    *v34 = v40;
    *(v34 + 16) = v41;
    *(v34 + 32) = v42;
    *(v34 + 48) = v43;
    ++*(v9 + 16);
    v5 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v10 = v38;
    v8 = v36;
    if (v39 == 1)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
      v39 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x193AC1170](*(v9 + 40), v17);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of DynamicViewList<AnyView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized DynamicViewList.updateValue()()
{
  v2 = v0;
  v40 = *MEMORY[0x1E69E9840];
  outlined init with copy of DynamicViewList<AnyView>(v0, v37);
  v3 = *AGGraphGetValue();

  v4 = outlined destroy of DynamicViewList<AnyView>(v37);
  v5 = (*(*v3 + 10))(v4);

  v6 = *(v2 + 160);
  if (v6)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 24);
    if (*(v6 + 32) == v5)
    {
      if (!v8)
      {
LABEL_17:
        *(v6 + 24) = -1;

LABEL_21:

        *(v2 + 160) = 0;
        goto LABEL_22;
      }

      if (AGSubgraphIsValid())
      {
        v3 = v6;
LABEL_39:
        v15 = *MEMORY[0x1E698D3F8];
        goto LABEL_40;
      }
    }

    else if (!v8)
    {
      goto LABEL_17;
    }

    v3 = *(v6 + 16);
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v3 = v3;
      AGSubgraphApply();

      AGSubgraphRemoveChild();
      v8 = *(v6 + 24);
    }

    *(v6 + 24) = v8 - 1;
    if (v8 == 1)
    {
      v10 = *(v6 + 64);
      swift_beginAccess();
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v11 + 32;
        while (*(v14 + 8 * v13) != v6)
        {
          if (v12 == ++v13)
          {
            goto LABEL_19;
          }
        }

        swift_beginAccess();
        specialized Array.remove(at:)(v13);
        swift_endAccess();
      }

LABEL_19:
      v3 = *(v6 + 16);
      if (AGSubgraphIsValid())
      {
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
      }
    }

    goto LABEL_21;
  }

  v7 = 0;
LABEL_22:
  v15 = *(v2 + 152);
  swift_beginAccess();
  v16 = v15[2];
  v1 = *(v16 + 16);
  if (!v1)
  {
    goto LABEL_31;
  }

  for (i = 0; i != v1; ++i)
  {
    if (i >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v3 = *(v16 + 8 * i + 32);

    if ((!v6 || v3 != v6) && v3[4] == v5)
    {

      ++*(v3 + 6);

      AGSubgraphAddChild();
      v27 = v3[2];

      AGSubgraphApply();

      *(v2 + 160) = v3;
      goto LABEL_39;
    }
  }

LABEL_31:
  if (AGSubgraphIsValid())
  {
    v18 = AGSubgraphGetGraph();
    v19 = AGSubgraphCreate();

    AGSubgraphAddChild();
    v3 = AGGraphClearUpdate();
    v20 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v1 = specialized closure #1 in DynamicViewList.updateValue()(v2);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v35 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_45;
    }

    v22 = CurrentAttribute;
    v34 = v7;
    v23 = AGMakeUniqueID();
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>.Item, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList.Item);
    v3 = swift_allocObject();
    *(v3 + 12) = v22;
    *(v3 + 13) = v1;
    v3[4] = v5;
    v3[5] = v23;
    *(v3 + 56) = BYTE4(v1) & 1;
    v3[8] = v15;
    *(v3 + 6) = 1;
    v3[2] = v19;
    swift_beginAccess();
    v1 = v15[2];

    v5 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[2] = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v26 = *(v1 + 16);
      v25 = *(v1 + 24);
      v7 = v34;
      if (v26 >= v25 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v1);
      }

      *(v1 + 16) = v26 + 1;
      *(v1 + 8 * v26 + 32) = v3;
      v15[2] = v1;
      swift_endAccess();

      *(v2 + 160) = v3;
      v15 = v35;
LABEL_40:
      v5 = *(v3 + 13);
      v2 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

      Value = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(Value, v36);
      if (AGGraphGetCurrentAttribute() != v15)
      {
        break;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
      v15[2] = v1;
    }

    v29 = AGGraphGetAttributeGraph();

    Counter = AGGraphGetCounter();

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>.WrappedList, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList.WrappedList);
    v38 = v31;
    v39 = lazy protocol witness table accessor for type DynamicViewList<AnyView>.WrappedList and conformance DynamicViewList<A>.WrappedList();
    v32 = swift_allocObject();
    v37[0] = v32;
    *(v32 + 64) = v7;
    *(v32 + 72) = v6 == 0;
    outlined init with take of AnyTrackedValue(v36, v32 + 16);
    *(v32 + 56) = v3;
    *(v32 + 80) = Counter;
    AGGraphSetOutputValue();
  }

  else
  {
    v38 = &type metadata for EmptyViewList;
    v39 = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    AGGraphSetOutputValue();
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

{
  v2 = v0;
  v40 = *MEMORY[0x1E69E9840];
  outlined init with copy of DynamicViewList<DebugReplaceableView>(v0, v37);
  v3 = *AGGraphGetValue();

  v4 = outlined destroy of DynamicViewList<DebugReplaceableView>(v37);
  v5 = (*(*v3 + 10))(v4);

  v6 = *(v2 + 160);
  if (v6)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 24);
    if (*(v6 + 32) == v5)
    {
      if (!v8)
      {
LABEL_17:
        *(v6 + 24) = -1;

LABEL_21:

        *(v2 + 160) = 0;
        goto LABEL_22;
      }

      if (AGSubgraphIsValid())
      {
        v3 = v6;
LABEL_39:
        v15 = *MEMORY[0x1E698D3F8];
        goto LABEL_40;
      }
    }

    else if (!v8)
    {
      goto LABEL_17;
    }

    v3 = *(v6 + 16);
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v3 = v3;
      AGSubgraphApply();

      AGSubgraphRemoveChild();
      v8 = *(v6 + 24);
    }

    *(v6 + 24) = v8 - 1;
    if (v8 == 1)
    {
      v10 = *(v6 + 64);
      swift_beginAccess();
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v11 + 32;
        while (*(v14 + 8 * v13) != v6)
        {
          if (v12 == ++v13)
          {
            goto LABEL_19;
          }
        }

        swift_beginAccess();
        specialized Array.remove(at:)(v13);
        swift_endAccess();
      }

LABEL_19:
      v3 = *(v6 + 16);
      if (AGSubgraphIsValid())
      {
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
      }
    }

    goto LABEL_21;
  }

  v7 = 0;
LABEL_22:
  v15 = *(v2 + 152);
  swift_beginAccess();
  v16 = v15[2];
  v1 = *(v16 + 16);
  if (!v1)
  {
    goto LABEL_31;
  }

  for (i = 0; i != v1; ++i)
  {
    if (i >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v3 = *(v16 + 8 * i + 32);

    if ((!v6 || v3 != v6) && v3[4] == v5)
    {

      ++*(v3 + 6);

      AGSubgraphAddChild();
      v27 = v3[2];

      AGSubgraphApply();

      *(v2 + 160) = v3;
      goto LABEL_39;
    }
  }

LABEL_31:
  if (AGSubgraphIsValid())
  {
    v18 = AGSubgraphGetGraph();
    v19 = AGSubgraphCreate();

    AGSubgraphAddChild();
    v3 = AGGraphClearUpdate();
    v20 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v1 = specialized closure #1 in DynamicViewList.updateValue()(v2);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v35 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_45;
    }

    v22 = CurrentAttribute;
    v34 = v7;
    v23 = AGMakeUniqueID();
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.Item, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList.Item);
    v3 = swift_allocObject();
    *(v3 + 12) = v22;
    *(v3 + 13) = v1;
    v3[4] = v5;
    v3[5] = v23;
    *(v3 + 56) = BYTE4(v1) & 1;
    v3[8] = v15;
    *(v3 + 6) = 1;
    v3[2] = v19;
    swift_beginAccess();
    v1 = v15[2];

    v5 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[2] = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v26 = *(v1 + 16);
      v25 = *(v1 + 24);
      v7 = v34;
      if (v26 >= v25 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v1);
      }

      *(v1 + 16) = v26 + 1;
      *(v1 + 8 * v26 + 32) = v3;
      v15[2] = v1;
      swift_endAccess();

      *(v2 + 160) = v3;
      v15 = v35;
LABEL_40:
      v5 = *(v3 + 13);
      v2 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

      Value = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(Value, v36);
      if (AGGraphGetCurrentAttribute() != v15)
      {
        break;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
      v15[2] = v1;
    }

    v29 = AGGraphGetAttributeGraph();

    Counter = AGGraphGetCounter();

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.WrappedList, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList.WrappedList);
    v38 = v31;
    v39 = lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView>.WrappedList and conformance DynamicViewList<A>.WrappedList();
    v32 = swift_allocObject();
    v37[0] = v32;
    *(v32 + 64) = v7;
    *(v32 + 72) = v6 == 0;
    outlined init with take of AnyTrackedValue(v36, v32 + 16);
    *(v32 + 56) = v3;
    *(v32 + 80) = Counter;
    AGGraphSetOutputValue();
  }

  else
  {
    v38 = &type metadata for EmptyViewList;
    v39 = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    AGGraphSetOutputValue();
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t outlined destroy of DynamicViewList<AnyView>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #2 in CanvasDisplayList.updateValue()@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  type metadata accessor for CanvasDisplayList();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  *&v16[5] = a6;
  *&v16[6] = a7;
  v17 = a2;
  v14 = type metadata accessor for Canvas();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #2 in CanvasDisplayList.updateValue(), v16, v14, MEMORY[0x1E69E7CA8] + 8, a5);
}

unsigned __int8 *EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *result;
  v6 = *v2;
  v5 = *(v2 + 8);
  if (v4 == 3)
  {
    if (v5)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v6, &v10);

      v4 = v10;
      if (v10 != 3)
      {
        goto LABEL_9;
      }

LABEL_7:
      v4 = 2;
      goto LABEL_10;
    }

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(v6);
    if (!result)
    {
      goto LABEL_7;
    }

    v4 = result[72];
    if (v4 == 3)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

LABEL_10:
  result = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAC022MaxAllowedDynamicRangeG0V_Tt0B5(v6, v5, &v9);
  if (v9 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v9;
  }

  if (v9 == 3)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

LABEL_17:
  *a2 = v8;
  return result;
}

uint64_t CanvasDisplayList.symbols.getter()
{
  if (*(v0 + 28) == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for [CanvasSymbols.Child], &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
}

void *_s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAC022MaxAllowedDynamicRangeG0V_Tt0B5@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v9 = a1;
  v10 = a2;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    v9 = a1;
    v10 = a2;
    return (*(v6 + 8))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &v9, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
  }

  else if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV022MaxAllowedDynamicRangeI0VG_Tt1g5(a1, a3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(a1);
    if (result)
    {
      v8 = *(result + 72);
    }

    else
    {
      v8 = 3;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in CanvasDisplayList.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 4);
  v4 = v1[5];
  v5 = v1[6];
  v6 = type metadata accessor for Canvas();
  return (*(a1 + *(v6 + 36)))(v3, v4, v5);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 3;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV019AllowedDynamicRangeV033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV019AllowedDynamicRangeV033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV019AllowedDynamicRangeV033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>);
    }
  }
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA03AnyD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[20] = *MEMORY[0x1E69E9840];
  v9 = a1;
  outlined init with copy of _ViewListInputs(a2, v10);
  v5 = AGSubgraphGetCurrent();
  if (!v5)
  {
    __break(1u);
  }

  v10[17] = v5;
  type metadata accessor for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>(0, &lazy cache variable for type metadata for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>, type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>]);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v10[18] = v6;
  v10[19] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ViewList();
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
  lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>, &lazy cache variable for type metadata for DynamicViewList<AnyView>, type metadata accessor for DynamicViewList);
  v7 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of DynamicViewList<AnyView>(&v9, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

void type metadata accessor for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for MutableBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized closure #1 in DynamicViewList.updateValue()(unsigned int *a1)
{
  outlined init with copy of _ViewListInputs((a1 + 2), v14);
  v2 = v15;
  swift_beginAccess();
  v3 = v2[3];
  v17[1] = v2[2];
  v17[2] = v3;
  v4 = v2[5];
  v17[3] = v2[4];
  v17[4] = v4;
  v17[0] = v2[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v2 + 1, 0x50uLL);
  v15 = v5;
  outlined init with copy of CachedEnvironment(v17, v11);

  v16 = 0;
  outlined init with copy of DynamicViewList<AnyView>(a1, v11);
  v6 = *AGGraphGetValue();

  outlined destroy of DynamicViewList<AnyView>(v11);
  (*(*v6 + 96))(v12, *a1, v14);

  v7 = _ViewListOutputs.makeAttribute(inputs:)(v14);
  outlined destroy of _ViewListInputs(v14);
  v8 = v12[7];
  LOBYTE(v5) = v13;
  outlined destroy of _ViewListOutputs(v12);
  v9 = 0x100000000;
  if (v5 & 1 | (v8 != 1))
  {
    v9 = 0;
  }

  return v9 | v7;
}

{
  outlined init with copy of _ViewListInputs((a1 + 2), v14);
  v2 = v15;
  swift_beginAccess();
  v3 = v2[3];
  v17[1] = v2[2];
  v17[2] = v3;
  v4 = v2[5];
  v17[3] = v2[4];
  v17[4] = v4;
  v17[0] = v2[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v2 + 1, 0x50uLL);
  v15 = v5;
  outlined init with copy of CachedEnvironment(v17, v11);

  v16 = 0;
  outlined init with copy of DynamicViewList<DebugReplaceableView>(a1, v11);
  v6 = *AGGraphGetValue();

  outlined destroy of DynamicViewList<DebugReplaceableView>(v11);
  (*(*v6 + 96))(v12, *a1, v14);

  v7 = _ViewListOutputs.makeAttribute(inputs:)(v14);
  outlined destroy of _ViewListInputs(v14);
  v8 = v12[7];
  LOBYTE(v5) = v13;
  outlined destroy of _ViewListOutputs(v12);
  v9 = 0x100000000;
  if (v5 & 1 | (v8 != 1))
  {
    v9 = 0;
  }

  return v9 | v7;
}

uint64_t AnyViewStorage.makeChildViewList(view:inputs:)(int a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *v2;
  v6 = outlined init with copy of _ViewListInputs(a2, v27);
  v7 = *(v4 + 128);
  if (v27[37])
  {
    AGTypeGetSignature();
    v6 = specialized _GraphInputs.pushScope<A>(id:)(v24[0], v24[1], v25);
  }

  v8 = *(v5 + 136);
  LODWORD(v24[0]) = a1;
  MEMORY[0x1EEE9AC00](v6);
  v20 = v7;
  v21 = type metadata accessor for AnyViewChild();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Attribute();
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];
  v13 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v19, v21, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v12);
  v14 = v26;
  MEMORY[0x1EEE9AC00](v13);
  WitnessTable = v7;
  v23 = v14;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2 + v15, partial apply for closure #1 in Attribute.setValue(_:), &v20, v7, v10, MEMORY[0x1E69E6370], v11, v16);
  _GraphValue.init(_:)(v14, v24);
  v17 = LODWORD(v24[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v26 = v17;
  (*(v8 + 32))(&v26, v27, v7, v8);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v17, v7, v8);
  return outlined destroy of _ViewListInputs(v27);
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized ViewTransform.forEach(inverted:_:)(a1, a2, a3, partial apply for closure #1 in ViewTransform.containingScrollGeometry.getter);
}

{

  return specialized ViewTransform.forEach(inverted:_:)(a1, a2, a3, partial apply for closure #1 in ViewTransform.nearestScrollGeometry.getter);
}

void ViewTransform.Item.apply(to:allowUnclipped:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 112);
  v10 = v9 >> 5;
  if (v9 >> 5 > 2)
  {
    if (v10 - 3 >= 2)
    {
      v18 = *(v2 + 55);
      v19 = *(v2 + 53);
      v20 = *(v2 + 49);
      v21 = *(v2 + 56);
      v22 = *(v2 + 72);
      v23 = *(v2 + 88);
      v24 = *(v2 + 104);
      if (v9 & 1) != 0 || (a2)
      {
        LOBYTE(v37.a) = 0;
        *a1 = v3;
        *(a1 + 16) = v5;
        *(a1 + 24) = v4;
        v25 = v20 | ((v19 | (v18 << 16)) << 32);
        *(a1 + 32) = v7;
        *(a1 + 40) = v6;
        *(a1 + 48) = v8;
        *(a1 + 49) = v20;
        *(a1 + 55) = BYTE6(v25);
        *(a1 + 53) = WORD2(v25);
        *(a1 + 56) = v21;
        *(a1 + 72) = v22;
        *(a1 + 88) = v23;
        *(a1 + 104) = v24;
        *(a1 + 112) = 0;
      }
    }
  }

  else if (v10)
  {
    if (v10 == 1 && ((b = *(v2 + 8), c = *(v2 + 16), d = *(v2 + 24), v3.f64[1] == 0.0) && v5 == 0.0 || v3.f64[0] == 0.0 && v4 == 0.0))
    {
      if ((*(a1 + 112) & 1) == 0)
      {
        v14 = *a1;
        v34 = *a1;
        size = *(a1 + 64);
        v32 = *(a1 + 80);
        v33 = *(a1 + 96);
        if (*(v2 + 48))
        {
          *&v37.a = *v2;
          v37.c = v5;
          v37.d = v4;
          v37.tx = v7;
          v37.ty = v6;
          CGAffineTransformInvert(&v36, &v37);
          v14 = v34;
          v3.f64[0] = v36.a;
          b = v36.b;
          c = v36.c;
          d = v36.d;
          tx = v36.tx;
          ty = v36.ty;
        }

        else
        {
          tx = *(v2 + 32);
          ty = *(v2 + 40);
        }

        v31 = v3.f64[0];
        y = v14.y;
        v37.a = v3.f64[0];
        v37.b = b;
        v37.c = c;
        v37.d = d;
        v37.tx = tx;
        v37.ty = ty;
        v29 = CGPointApplyAffineTransform(v14, &v37);
        v37.a = v31;
        v37.b = b;
        v37.c = c;
        v37.d = d;
        v37.tx = tx;
        v37.ty = ty;
        v30 = CGSizeApplyAffineTransform(size, &v37);
        *a1 = v29;
        *(a1 + 64) = v30;
        *(a1 + 80) = vaddq_f64(v32, vsubq_f64(v29, v34));
        *(a1 + 96) = vaddq_f64(v33, vsubq_f64(v30, size));
        *(a1 + 112) = 0;
      }
    }

    else
    {
      LOBYTE(v37.a) = 1;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 1;
    }
  }

  else if ((*(a1 + 112) & 1) == 0)
  {
    LOBYTE(v37.a) = 0;
    v26 = vaddq_f64(*a1, v3);
    v27 = vaddq_f64(vsubq_f64(v26, *a1), *(a1 + 80));
    *a1 = v26;
    *(a1 + 80) = v27;
    *(a1 + 112) = 0;
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {

    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v6);
    if (v7)
    {
      v4 = *(v7 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t Canvas.ChildEnvironment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  EnvironmentFetch.environment.getter(a1);
  v2 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, 0, 255);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v2, *a1);
  }
}

uint64_t EnvironmentFetch.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t Canvas.init(opaque:colorMode:rendersAsynchronously:renderer:symbols:)@<X0>(char a1@<W0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for Canvas();
  v15 = v14[10];
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v16 = a7 + v15;
  v17 = static RasterizationOptions.Flags.defaultFlags;
  *v16 = -1;
  *(v16 + 4) = 768;
  *(v16 + 8) = v17;
  *(v16 + 12) = 3;
  *(a7 + v14[11]) = 0;
  v18 = v17 & 0xFFFFFFF8;
  v19 = v17 | 3;
  if ((a1 & 1) == 0)
  {
    v19 = v18 + 1;
  }

  *(v16 + 4) = v13;
  v20 = v19 & 0xFFFFFFFB;
  if (a3)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  *(v16 + 8) = v20 | v21;
  result = a6();
  v23 = (a7 + v14[9]);
  *v23 = a4;
  v23[1] = a5;
  return result;
}

char *RBDrawingLayer.init(options:)(int *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[2];
  LOBYTE(a1) = *(a1 + 12);
  v7 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  *(v8 + 64) = 5;
  *(v8 + 72) = 3;
  *&v1[v7] = v8;
  *(v8 + 80) = 0;
  v9 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
  *v9 = v4;
  *(v9 + 2) = v5;
  *(v9 + 2) = v6;
  v9[12] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = (*&v10[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8] >> 1) & 1;
  v12 = v10;
  [v12 setOpaque_];
  PlatformDrawableOptions.update(rbLayer:)();

  return v12;
}

void type metadata accessor for AtomicBuffer<RBDrawingLayer.State>()
{
  if (!lazy cache variable for type metadata for AtomicBuffer<RBDrawingLayer.State>)
  {
    v0 = type metadata accessor for AtomicBuffer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBuffer<RBDrawingLayer.State>);
    }
  }
}

id PlatformDrawableOptions.update(rbLayer:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[2];
  v5 = *(v0 + 12);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  LODWORD(v9) = v1;
  BYTE4(v9) = v2;
  BYTE5(v9) = v3;
  LODWORD(v10) = v4;
  BYTE4(v10) = v5;
  [v6 setColorMode_];
  [v6 setRendersAsynchronously_];
  [v6 setMaxDrawableCount_];
  [v6 setAllowsDisplayCompositing_];
  [v6 setAllowsPackedDrawable_];
  [v6 setPromotesFramebuffer_];
  LODWORD(v7) = dword_18DDEDA20[v3];

  return [v6 setDisplayHeadroomLimit_];
}

uint64_t protocol witness for ColorProvider.apply(color:to:) in conformance Color.AccentColorProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v6[0] = *(a2 + 48);
  v6[1] = v3;

  v4 = specialized Color.AccentColorProvider.baseColor(in:)(v6);

  Color._apply(to:)(a2, v4);
}

double _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for _DefaultForegroundStyleModifier();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  MaterialView.ChildEnvironment.environment.getter(&v19);
  _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter(type metadata accessor for _DefaultForegroundStyleModifier, v9);
  v15 = a1;
  v16 = a2;
  v17 = &v19;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter, v14, MEMORY[0x1E69E73E0], &type metadata for AnyShapeStyle, v10, &v18);
  (*(v7 + 8))(v9, v6);
  v12 = v18;
  v11 = v19;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(&v19, v12);

  if (*(&v19 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v11, v19);
  }

  result = *&v19;
  *a3 = v19;
  return result;
}

uint64_t closure #1 in _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v11);

  v8 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v11, v10, 0, a2, a3);

  *a4 = v8;
  return result;
}

uint64_t sub_18D22A434()
{
  type metadata accessor for SubviewsRoot();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t Group.init<A, B>(elementsOf:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  type metadata accessor for GroupElementsOfContent();
  swift_getWitnessTable();
  Group<A>.init(content:)(a8);

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in Group.init<A, B>(elementsOf:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a1;
  v32 = a2;
  v33 = a8;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v19 = type metadata accessor for GroupElementsOfContent();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v30 - v25;
  (*(v12 + 16))(v14, v31, a4, v24);

  GroupElementsOfContent.init(subviews:content:)(v14, v32, a3, a4, a5, a6, v30, v22);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v19, WitnessTable);
  v28 = *(v20 + 8);
  v28(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)(v26, v19, WitnessTable);
  return v28(v26, v19);
}

uint64_t GroupElementsOfContent.init(subviews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(a1, a4);
    v21 = v27;
    v20 = v28;
    v31 = v27;
    v32 = v28;
    v22 = v26;
    v29 = v25;
    v30 = v26;
    *a8 = v25;
    a8[1] = v22;
    a8[2] = v21;
    a8[3] = v20;
    *&v25 = a4;
    *(&v25 + 1) = a5;
    *&v26 = a6;
    *(&v26 + 1) = a7;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    outlined destroy of SubviewsCollection?(&v25);
    (*(v16 + 32))(a8, a1, a4);
    *&v29 = a4;
    *(&v29 + 1) = a5;
    *&v30 = a6;
    *(&v30 + 1) = a7;
  }

  type metadata accessor for GroupElementsOfContent.Storage();
  swift_storeEnumTagMultiPayload();
  *&v29 = a4;
  *(&v29 + 1) = a5;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  result = type metadata accessor for GroupElementsOfContent();
  v24 = (a8 + *(result + 52));
  *v24 = a2;
  v24[1] = a3;
  return result;
}

uint64_t outlined destroy of SubviewsCollection?(uint64_t a1)
{
  type metadata accessor for SubviewsCollection?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for GroupElementsOfContent(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v5 = 64;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
    v11 = 1;
  }

  else
  {
    v12 = *(a2 + 24);
    *(a1 + 24) = v12;
    (**(v12 - 8))(a1, a2);
    v13 = *(a2 + 5);
    v14 = *(a2 + 6);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = *(a2 + 7);
    v15 = v13;

    v11 = 0;
  }

  *(a1 + v5) = v11;
  v16 = (&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  v17 = v16[1];
  v19 = ((v5 + 8 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v18;
  v19[1] = v17;

  return a1;
}

uint64_t GroupElementsOfContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = *(a1 + 40);
  v59 = *(a1 + 16);
  v5 = *(&v59 + 1);
  v6 = v59;
  v55 = type metadata accessor for SubviewsRoot();
  v7 = type metadata accessor for _VariadicView.Tree();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - v10;
  v51 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = *(a1 + 32);
  v62 = v59;
  v53 = v19;
  *&v63 = v19;
  *(&v63 + 1) = v4;
  v56 = v4;
  v20 = type metadata accessor for GroupElementsOfContent.Storage();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v45 - v22);
  v54 = type metadata accessor for _ConditionalContent();
  v52 = *(v54 - 8);
  v24 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v45 - v25;
  (*(v21 + 16))(v23, v2, v20, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v49;
    (*(v50 + 32))();
    v27 = (v2 + *(a1 + 52));
    v28 = v27[1];
    *&v62 = *v27;
    *(&v62 + 1) = v28;
    MEMORY[0x1EEE9AC00](v28);
    v29 = v53;
    *&v30 = v53;
    v31 = v56;
    *(&v30 + 1) = v56;
    *(&v45 - 2) = v30;
    *(&v45 - 3) = v59;
    *(&v45 - 2) = v26;

    v32 = v45;
    _VariadicView.Tree.init(_:content:)(&v62, partial apply for closure #1 in GroupElementsOfContent.body.getter, v55, v45);
    WitnessTable = swift_getWitnessTable();
    v71 = v29;
    v33 = swift_getWitnessTable();
    v34 = v47;
    static ViewBuilder.buildExpression<A>(_:)(v32, v7, v33);
    v35 = *(v48 + 8);
    v35(v32, v7);
    static ViewBuilder.buildExpression<A>(_:)(v34, v7, v33);
    v35(v34, v7);
    static ViewBuilder.buildEither<A, B>(second:)(v32, v7, v58);
    v35(v32, v7);
    (*(v50 + 8))(v49, v51);
  }

  else
  {
    v36 = v23[1];
    v62 = *v23;
    v63 = v36;
    v37 = v23[3];
    v64 = v23[2];
    v65 = v37;
    (*(v2 + *(a1 + 52)))(&v62);
    outlined destroy of SubviewsCollection(&v62);
    v31 = v56;
    static ViewBuilder.buildExpression<A>(_:)(v15, v5, v56);
    v38 = *(v46 + 8);
    v38(v15, v5);
    static ViewBuilder.buildExpression<A>(_:)(v18, v5, v31);
    v38(v18, v5);
    v39 = swift_getWitnessTable();
    v29 = v53;
    v60 = v39;
    v61 = v53;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v15, v5, v58);
    v38(v15, v5);
  }

  v68 = swift_getWitnessTable();
  v69 = v29;
  v40 = swift_getWitnessTable();
  v66 = v31;
  v67 = v40;
  v41 = v54;
  v42 = swift_getWitnessTable();
  v43 = v58;
  static ViewBuilder.buildExpression<A>(_:)(v58, v41, v42);
  return (*(v52 + 8))(v43, v41);
}

uint64_t initializeWithCopy for GroupElementsOfContent.Storage(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v4 = 64;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v13 = *(a2 + 5);
    v14 = *(a2 + 6);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = *(a2 + 7);
    v15 = v13;

    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

uint64_t closure #1 in GroupElementsOfContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v7, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v6 + 8))(v9, a2);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)(v9, a3);
}

uint64_t static _VariadicView_ViewRoot._makeViewList(root:inputs:body:)(int *a1, __int128 *a2, void (*a3)(__int128 *__return_ptr), uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  a3(&v41);
  v8 = a2[1];
  v44 = *a2;
  v45 = v8;
  v9 = a2[2];
  v33 = *MEMORY[0x1E698D3F8];
  v46 = v9;
  v34 = MEMORY[0x1E69E7CD0];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  swift_weakInit();
  v38 = 0;
  v39 = 0;
  v40 = -1;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v31 = 0;
  v32 = 0;
  outlined init with copy of _GraphInputs(&v44, &v25);
  v10 = _ViewListOutputs.makeAttribute(inputs:)(&v28);
  outlined destroy of _ViewListInputs(&v28);
  outlined destroy of _ViewListOutputs(&v41);
  static DynamicPropertyCache.fields(of:)(a5, &v28);
  v11 = v28;
  v12 = v29;
  v13 = DWORD1(v29);
  outlined init with copy of _ViewListInputs(a2, &v28);
  v21 = v13;
  v22 = v7;
  v23 = v7;
  v41 = v11;
  v42 = v12;
  v43 = v13;
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(&v24, &v25, &v23, v10, &v28, &v41);
  v14 = v24;
  v15 = v26;
  v20 = v25;
  v16 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v41) = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v41, &v28, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v16 & 1) == 0)
  {
    v25 = v20;
    v26 = v15;
    v24 = v22;
    v41 = v11;
    v42 = v12;
    v43 = v21;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v24, &v41, a5);
  }

  outlined destroy of _ViewListInputs(&v28);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t SubviewsRoot.body(children:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  outlined init with copy of _VariadicView_Children(v14, v17);
  a2(v17);
  outlined destroy of SubviewsCollection(v17);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a5);
  v15 = *(v8 + 8);
  v15(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v13, a4, a5);
  return (v15)(v13, a4);
}

uint64_t static Subview._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a1, v4);
  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MergeTraits and conformance MergeTraits();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA7SubviewV_Tt2B5(v4, a2);
  return outlined destroy of _ViewListInputs(v4);
}

unint64_t lazy protocol witness table accessor for type MergeTraits and conformance MergeTraits()
{
  result = lazy protocol witness table cache variable for type MergeTraits and conformance MergeTraits;
  if (!lazy protocol witness table cache variable for type MergeTraits and conformance MergeTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergeTraits and conformance MergeTraits);
  }

  return result;
}

uint64_t MergeTraits.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v13 = v3;
  result = AGGraphGetValue();
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = *result + 32;

    do
    {
      outlined init with copy of AnyTrackedValue(v6, v10);
      v7 = v11;
      v8 = v12;
      v9 = __swift_project_boxed_opaque_existential_1(v10, v11);
      ViewTraitCollection.setErasedValue<A>(trait:)(v9, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      --v5;
    }

    while (v5);

    v3 = v13;
  }

  *a2 = v3;
  return result;
}

uint64_t ViewTraitCollection.setErasedValue<A>(trait:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v36 = v3;
  v37 = &v33 - v8;
  v9 = 0;
  v10 = 0;
  v11 = *v3;
  v12 = (*v3 + 32);
  v13 = *(*v3 + 16);
  v15 = (v14 + 8);
  while (v13 != v10)
  {
    if (v10 >= v11[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v10;
    outlined init with copy of AnyTrackedValue(v12 + v9 * 8, v40);
    v16 = v11;
    v17 = v41;
    v18 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v19 = (*(v18 + 8))(v17, v18);
    v20 = (*(a3 + 8))(v39, a3);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v9 += 5;
    v21 = v19 == v20;
    v11 = v16;
    if (v21)
    {
      v22 = MEMORY[0x1E69E7CA0];
      (*(a3 + 16))(v40, MEMORY[0x1E69E7CA0] + 8, v39, a3);
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v36;
      *v36 = v16;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        v11 = result;
        *v24 = result;
      }

      if (v10 - 1 >= v11[2])
      {
        __break(1u);
      }

      else
      {
        v25 = v11[v9 + 2];
        v26 = v11[v9 + 3];
        __swift_mutable_project_boxed_opaque_existential_1(&v11[v9 - 1], v25);
        result = (*(v26 + 24))(v40, v22 + 8, v25, v26);
        *v24 = v11;
      }

      return result;
    }
  }

  v10 = v35;
  v12 = *(v35 + 16);
  v12(v37, v38, v39, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v36;
  *v36 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

LABEL_15:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  *v15 = v11;
LABEL_11:
  v29 = v11[2];
  v28 = v11[3];
  if (v29 >= v28 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
    *v15 = v11;
  }

  v30 = v34;
  v31 = v37;
  v32 = v39;
  (v12)(v34, v37, v39);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v30, v15, v32, a3);
  result = (*(v10 + 8))(v31, v32);
  *v15 = v11;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyViewTrait>, &lazy cache variable for type metadata for AnyViewTrait, &protocol descriptor for AnyViewTrait);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_SublistTransform_Item>, &lazy cache variable for type metadata for _ViewList_SublistTransform_Item, &protocol descriptor for _ViewList_SublistTransform_Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, CGColorRef>.Item>, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item, type metadata accessor for CGColorRef);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphMutation>, &lazy cache variable for type metadata for GraphMutation, &protocol descriptor for GraphMutation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, NSObject>.Item>, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item, type metadata accessor for NSObject);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<MaterialBackdropProxy.Observer>, &type metadata for MaterialBackdropProxy.Observer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t static Subview._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v4;
  v43[4] = *(a1 + 64);
  v44 = *(a1 + 80);
  v5 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v5;
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v7 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v7;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v8 = *(a1 + 16);
  v31 = *a1;
  v32 = v8;
  v9 = v33;
  LODWORD(v33) = 0;
  v37 = v31;
  v38 = v8;
  v42 = v36;
  v40 = v7;
  v41 = v35;
  v39 = v33;
  outlined init with copy of _ViewInputs(v43, v29);
  outlined init with copy of _ViewInputs(&v37, v29);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v21 = v37;
  v22 = v38;
  v11 = v39;
  LODWORD(v23) = 0;
  LODWORD(v13[0]) = OffsetAttribute2;
  v27[0] = v37;
  v27[1] = v38;
  v28 = v42;
  v27[3] = v40;
  v27[4] = v41;
  v27[2] = v23;
  v17 = v23;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v15 = v37;
  v16 = v38;
  outlined init with copy of _ViewInputs(&v37, v29);
  outlined init with copy of _ViewInputs(v27, v29);
  static _ViewList_View._makeView(view:inputs:)(v13, &v15, a2);
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30 = v20;
  v29[0] = v15;
  v29[1] = v16;
  outlined destroy of _ViewInputs(v29);
  LODWORD(v23) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v21);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewInputs(&v37);
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v15 = v21;
    v16 = v22;
    outlined destroy of _ViewInputs(&v15);
    LODWORD(v33) = v9;
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v31);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined destroy of _ViewInputs(&v37);
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v15 = v21;
    v16 = v22;
    outlined destroy of _ViewInputs(&v15);
    LODWORD(v33) = v9;
  }

  v13[2] = v33;
  v13[3] = v34;
  v13[4] = v35;
  v14 = v36;
  v13[0] = v31;
  v13[1] = v32;
  return outlined destroy of _ViewInputs(v13);
}

void type metadata accessor for SubviewsCollection?()
{
  if (!lazy cache variable for type metadata for SubviewsCollection?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubviewsCollection?);
    }
  }
}

uint64_t destroy for GroupElementsOfContent(id *a1, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a2 + 16) - 8) + 64);
  }

  v4 = *(a1 + v3);
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a1;
  }

  else if (v6 == 2)
  {
    v7 = *a1;
  }

  else if (v6 == 3)
  {
    v7 = *a1 | (*(a1 + 2) << 16);
  }

  else
  {
    v7 = *a1;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t ViewTraitCollection.AnyTrait.subscript.setter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0, AssociatedTypeWitness);

  return swift_dynamicCast();
}

__n128 AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *(a2 + 8);
  v13 = *a3;
  v29 = a3[1];
  v30 = *a2;
  v14 = *(a3 + 16);
  v32 = *a5;
  v31 = *(a5 + 8);
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 64) = 0;
  v15 = a7 + 64;
  *(a7 + 88) = 1;
  *(a7 + 96) = 0;
  *(a7 + 104) = 0;
  *(a7 + 112) = 0;
  *(a7 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v34);
  v16 = v34[7];
  *(a7 + 224) = v34[6];
  *(a7 + 240) = v16;
  *(a7 + 256) = v34[8];
  *(a7 + 272) = v35;
  v17 = v34[3];
  *(a7 + 160) = v34[2];
  *(a7 + 176) = v17;
  v18 = v34[5];
  *(a7 + 192) = v34[4];
  *(a7 + 208) = v18;
  v19 = v34[1];
  *(a7 + 128) = v34[0];
  *(a7 + 144) = v19;

  *a7 = v9;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;

  *(a7 + 24) = v30;
  *(a7 + 32) = v12;
  *(a7 + 40) = v13;
  *(a7 + 48) = v29;
  *(a7 + 56) = v14;
  outlined assign with take of AccessibilityValueStorage?(a4, v15);
  *(a7 + 112) = v32;
  *(a7 + 120) = v31;
  v20 = *(a7 + 240);
  v36[6] = *(a7 + 224);
  v36[7] = v20;
  v36[8] = *(a7 + 256);
  v37 = *(a7 + 272);
  v21 = *(a7 + 176);
  v36[2] = *(a7 + 160);
  v36[3] = v21;
  v22 = *(a7 + 208);
  v36[4] = *(a7 + 192);
  v36[5] = v22;
  v23 = *(a7 + 144);
  v36[0] = *(a7 + 128);
  v36[1] = v23;
  _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(v36, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
  v24 = *(a6 + 112);
  *(a7 + 224) = *(a6 + 96);
  *(a7 + 240) = v24;
  *(a7 + 256) = *(a6 + 128);
  *(a7 + 272) = *(a6 + 144);
  v25 = *(a6 + 48);
  *(a7 + 160) = *(a6 + 32);
  *(a7 + 176) = v25;
  v26 = *(a6 + 80);
  *(a7 + 192) = *(a6 + 64);
  *(a7 + 208) = v26;
  result = *a6;
  v28 = *(a6 + 16);
  *(a7 + 128) = *a6;
  *(a7 + 144) = v28;
  *(a7 + 280) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ContainerValues.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContainerValueViewTraitKey();
  WitnessTable = swift_getWitnessTable();
  return ViewTraitCollection.subscript.getter(v2, WitnessTable, a1);
}

uint64_t specialized ContainerValues.subscript.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v10 - v4;
  (*(v6 + 16))(&v10 - v4, a1, v3);
  v7 = type metadata accessor for ContainerValueViewTraitKey();
  WitnessTable = swift_getWitnessTable();
  return ViewTraitCollection.subscript.setter(v5, v7, v7, WitnessTable);
}

uint64_t SubviewsCollection.endIndex.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4;
}

void type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>()
{
  if (!lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<SubviewsCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<SubviewsCollection> and conformance <> Slice<A>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<SubviewsCollection> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t destroy for SubviewsCollectionSlice(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
}

uint64_t type metadata completion function for EnumeratedViews()
{
  result = type metadata accessor for MappedViews();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation()
{
  result = lazy protocol witness table cache variable for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation;
  if (!lazy protocol witness table cache variable for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation);
  }

  return result;
}

uint64_t initializeWithCopy for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;

  return a1;
}

uint64_t LayoutSubview.dimensions(in:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 2);
  v12 = *v5;
  v13 = v6;
  v8 = a1;
  v9 = a2 & 1;
  v10 = a3;
  v11 = a4 & 1;
  return LayoutProxy.dimensions(in:)(&v8, a5);
}

uint64_t _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v5, v10);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(v2, v8);
}

uint64_t sub_18D22CE48()
{

  return swift_deallocObject();
}

uint64_t MappedViews.ElementView.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v57 - v12;
  type metadata accessor for ObservationTracking._AccessList?();
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v63 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - v19;
  v20 = *(*(a1 + 24) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v57 - v25;
  v26 = v2[1];
  v27 = *(v2 + 6);
  v71 = *(a1 + 16);
  v72 = v28;
  v67 = v28;
  v73 = *(a1 + 32);
  v74 = *v2;
  v75 = v26;
  v76 = v2[2];
  v77 = v27;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  if (!v30)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(v29[2], v31);
    v79 = type metadata accessor for ObservationCenter();
    *&v78 = v29[3];
    outlined init with take of Any(&v78, v31);

    v30 = v31;
  }

  outlined init with copy of Any(v30, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v69;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v32 + 24) = v29;
    goto LABEL_9;
  }

  v59 = CurrentAttribute;
  v61 = a2;
  swift_beginAccess();
  v60 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v34 = (*(v6 + 56))(v17, 1, 1, v5);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v67;
  *(&v57 - 4) = v67;
  *(&v57 - 3) = partial apply for closure #1 in MappedViews.ElementView.value.getter;
  *(&v57 - 2) = &v70;
  v36 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v57 - 6), v62, v36, v35, MEMORY[0x1E69E7288], &v69);
  v62 = v8;
  v20 = *(v20 + 32);
  (v20)(v68, v23, v35);
  v37 = v17;
  v38 = v66;
  outlined init with take of ObservationTracking._AccessList?(v37, v66);
  v39 = v63;
  outlined init with copy of ObservationTracking._AccessList?(v38, v63);
  if ((*(v6 + 48))(v39, 1, v5) == 1)
  {
    v40 = v35;
    v41 = v39;
    v8 = v5;
    outlined destroy of ObservationTracking._AccessList?(v38);
    v42 = v41;
    a2 = v61;
    goto LABEL_12;
  }

  v43 = v65;
  v63 = *(v6 + 32);
  (v63)(v65, v39, v5);
  v8 = v5;
  (*(v6 + 16))(v64, v43, v5);
  v29 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v29;
  a2 = v61;
  v58 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v46 = v29[2];
  v45 = v29[3];
  if (v46 >= v45 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v29);
  }

  v29[2] = v46 + 1;
  v47 = v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46;
  v6 = v58;
  (v63)(v47, v64, v8);
  *(v32 + 24) = v29;
  (*(v6 + 8))(v65, v8);
  v40 = v67;
  v42 = v66;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  (v20)(a2, v68, v40);
  v48 = *(v32 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v51 = *(v6 + 16);
    v50 = v6 + 16;
    v68 = v51;
    v52 = v48 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v67 = v48;

    v54 = v59;
    v55 = v62;
    do
    {
      (v68)(v55, v52, v8);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v54, v55);
      (*(v50 - 8))(v55, v8);
      v52 += v53;
      --v49;
    }

    while (v49);
  }

  *(v32 + 24) = v60;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialRangeUpTo<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialRangeThrough<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_3(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_5(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnchorValueBox<UnitRect>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_6(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_7(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t get_witness_table_5ValueQyd__Rsz7SwiftUI20KeyframeTrackContentRd__AcDRd_0_AAQyd_0_ABRSr_0_lAC06MergeddeF0Vyxqd__qd_0_GAcDHPyHCTm(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  a2(255, v5);
  return swift_getWitnessTable();
}

double static _Glass.regular.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDCAA00;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = a9;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v23[0] = a14;
  v23[1] = a10;
  v35 = a15;
  v31 = a7;
  v32 = type metadata accessor for KeyframeAnimator();
  v33 = a13;
  v34 = &protocol witness table for KeyframeAnimator<A, B, C>;
  v18 = type metadata accessor for CustomModifier();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v23 - v20;
  closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(v24, v25, v26, v27, v28, v29, v31, a8, v23 - v20, a10, a11, a12, a13, a14, a15, a16);
  View.modifier<A>(_:)(v21, a7, v18);
  return (*(v19 + 8))(v21, v18);
}

uint64_t closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v65 = a7;
  v71 = a5;
  v72 = a6;
  v69 = a3;
  v70 = a4;
  v63 = a2;
  v61 = a1;
  v73 = a9;
  v68 = a14;
  v58 = a16;
  v17 = *(a10 - 8);
  v64 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v19;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v24;
  v75 = v25;
  v76 = a12;
  v77 = a11;
  v78 = v26;
  v79 = a15;
  v27 = type metadata accessor for KeyframeAnimator();
  v28 = *(v27 - 8);
  v66 = v27;
  v67 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v60 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v62 = &v55 - v32;
  v33 = *(v21 + 16);
  v34 = a8;
  v74 = a8;
  v33(v24, v61, a8, v31);
  v35 = *(v17 + 16);
  v55 = a10;
  v35(v19, v63, a10);
  v36 = swift_allocObject();
  v37 = v65;
  v36[2] = v65;
  v36[3] = v34;
  v36[4] = a10;
  v36[5] = a11;
  v56 = a12;
  v38 = v64;
  v36[6] = a12;
  v36[7] = v38;
  v39 = v68;
  v36[8] = v68;
  v36[9] = a15;
  v40 = v58;
  v41 = v69;
  v42 = v70;
  v36[10] = v58;
  v36[11] = v41;
  v36[12] = v42;
  v43 = swift_allocObject();
  v44 = v74;
  v43[2] = v37;
  v43[3] = v44;
  v45 = v55;
  v43[4] = v55;
  v43[5] = a11;
  v43[6] = a12;
  v43[7] = v38;
  v43[8] = v39;
  v43[9] = a15;
  v46 = v39;
  v47 = v71;
  v48 = v72;
  v43[10] = v40;
  v43[11] = v47;
  v43[12] = v48;

  v49 = v60;
  KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)(v59, v57, partial apply for closure #1 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:), v36, partial apply for closure #2 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:), v43, v74, v56, v60, a11, v45, v40, a15, v46);
  v50 = v62;
  v51 = v49;
  v52 = v66;
  static ViewBuilder.buildExpression<A>(_:)(v49, v66, &protocol witness table for KeyframeAnimator<A, B, C>);
  v53 = *(v67 + 8);
  v53(v51, v52);
  static ViewBuilder.buildExpression<A>(_:)(v50, v52, &protocol witness table for KeyframeAnimator<A, B, C>);
  return (v53)(v50, v52);
}

uint64_t sub_18D22E224()
{

  return swift_deallocObject();
}

uint64_t KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = a8;
  v30 = a1;
  v31 = a5;
  v32 = a6;
  v33 = a3;
  v34 = a4;
  v35 = a14;
  v17 = *(a11 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9, v18);
  v36[0] = a7;
  v36[1] = v29;
  v36[2] = a10;
  v36[3] = a12;
  v36[4] = a13;
  v23 = type metadata accessor for KeyframeAnimator();
  v24 = (a9 + v23[15]);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = (a9 + v23[17]);
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  (*(v17 + 16))(v20, a2, a11);
  AnyEquatable.init<A>(_:)(v20, a11, v36);
  (*(v17 + 8))(a2, a11);
  result = (*(v22 + 8))(v30, a7);
  *(a9 + v23[16]) = v36[0];
  return result;
}

uint64_t initializeWithCopy for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 += 23;
  v12 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  outlined copy of _SymbolEffect.Trigger(v11);
  *v10 = v11;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  v13[1] = v14;

  return a1;
}

uint64_t outlined copy of _SymbolEffect.Trigger(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t destroy for KeyframeAnimator(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  outlined consume of _SymbolEffect.Trigger(*((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t outlined consume of _SymbolEffect.Trigger(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomModifier<A, B>(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

uint64_t static CustomModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v57 = *(a2 + 32);
  v58 = v15;
  v17 = *(a2 + 48);
  v59 = *(a2 + 64);
  v18 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v18;
  v52 = v57;
  v53 = v17;
  v54 = *(a2 + 64);
  v19 = *a1;
  v60 = *(a2 + 80);
  v55 = *(a2 + 80);
  v50 = v56[0];
  v51 = v16;
  v20 = type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewInputs(v56, &v61);
  _ViewInputs.pushModifierBody<A>(_:body:)(v20, a3, a4);
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v27[1] = v19;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  *&v62 = a7;
  *(&v62 + 1) = a8;
  type metadata accessor for CustomModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v27);
  v21 = v27[0];
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v40 = v61;
  v41 = v62;
  v23 = v63;
  LODWORD(v42) = 0;
  LODWORD(v32[0]) = v21;
  v46[0] = v61;
  v46[1] = v62;
  v47 = v66;
  v46[3] = v64;
  v46[4] = v65;
  v46[2] = v42;
  v36 = v42;
  v37 = v64;
  v38 = v65;
  v39 = v66;
  v34 = v61;
  v35 = v62;
  v24 = *(a8 + 24);
  outlined init with copy of _ViewInputs(&v61, v48);
  outlined init with copy of _ViewInputs(v46, v48);
  v24(v32, &v34, a6, a8);
  v48[2] = v36;
  v48[3] = v37;
  v48[4] = v38;
  v49 = v39;
  v48[0] = v34;
  v48[1] = v35;
  outlined destroy of _ViewInputs(v48);
  LODWORD(v42) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v40);
    AGSubgraphEndTreeElement();
  }

  v32[2] = v52;
  v32[3] = v53;
  v32[4] = v54;
  v33 = v55;
  v32[0] = v50;
  v32[1] = v51;
  outlined destroy of _ViewInputs(v32);
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  return outlined destroy of _ViewInputs(&v34);
}

{
  v67 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v57 = *(a2 + 32);
  v58 = v15;
  v17 = *(a2 + 48);
  v59 = *(a2 + 64);
  v18 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v18;
  v52 = v57;
  v53 = v17;
  v54 = *(a2 + 64);
  v19 = *a1;
  v60 = *(a2 + 80);
  v55 = *(a2 + 80);
  v50 = v56[0];
  v51 = v16;
  v20 = type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewInputs(v56, &v61);
  _ViewInputs.pushModifierBody<A>(_:body:)(v20, a3, a4);
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v27[1] = v19;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  *&v62 = a7;
  *(&v62 + 1) = a8;
  type metadata accessor for CustomModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v27);
  v21 = v27[0];
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v40 = v61;
  v41 = v62;
  v23 = v63;
  LODWORD(v42) = 0;
  LODWORD(v32[0]) = v21;
  v46[0] = v61;
  v46[1] = v62;
  v47 = v66;
  v46[3] = v64;
  v46[4] = v65;
  v46[2] = v42;
  v36 = v42;
  v37 = v64;
  v38 = v65;
  v39 = v66;
  v34 = v61;
  v35 = v62;
  v24 = *(a8 + 24);
  outlined init with copy of _ViewInputs(&v61, v48);
  outlined init with copy of _ViewInputs(v46, v48);
  v24(v32, &v34, a6, a8);
  v48[2] = v36;
  v48[3] = v37;
  v48[4] = v38;
  v49 = v39;
  v48[0] = v34;
  v48[1] = v35;
  outlined destroy of _ViewInputs(v48);
  LODWORD(v42) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v40);
    AGSubgraphEndTreeElement();
  }

  v32[2] = v52;
  v32[3] = v53;
  v32[4] = v54;
  v33 = v55;
  v32[0] = v50;
  v32[1] = v51;
  outlined destroy of _ViewInputs(v32);
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  return outlined destroy of _ViewInputs(&v34);
}