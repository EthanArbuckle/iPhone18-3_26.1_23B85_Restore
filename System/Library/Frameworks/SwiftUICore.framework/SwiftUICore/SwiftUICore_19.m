void type metadata accessor for Attribute<()>()
{
  if (!lazy cache variable for type metadata for Attribute<()>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<()>);
    }
  }
}

_DWORD *initializeWithCopy for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = ((v9 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v10 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  v21 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v21 + 5) = *(v19 + 5);
  *v21 = v20;
  return a1;
}

_DWORD *storeEnumTagSinglePayload for CountViews(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountViews(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ValueActionDispatcher<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ValueActionDispatcher<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v11 = *a5;
  v12 = a5[1];
  v13 = *(a5 + 16);
  v14 = *(a5 + 5);
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(47);

    v30 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v30);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v14;
    if ((v14 & 2) != 0)
    {
      outlined copy of DynamicPropertyCache.Fields.Layout();
      v17 = v13;
      v18 = v11;
    }

    else
    {
      v31 = v10;
      v16 = *(a7 + 40);
      outlined copy of DynamicPropertyCache.Fields.Layout();
      v17 = v13;
      v18 = v11;
      v19 = v16(a6, a7);
      v10 = v31;
      if ((v19 & 1) == 0)
      {
        if (one-time initialization token for v4 != -1)
        {
          swift_once();
        }

        v20 = static Semantics.v4;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C)
        {
          v21 = dyld_program_sdk_at_least();
        }

        else
        {
          v21 = static Semantics.forced >= v20;
        }

        if (v15)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        v15 |= v22;
      }
    }

    v23 = *(a4 + 16);
    swift_beginAccess();
    v24 = *(v23 + 16);
    (*(a7 + 48))(a6, a7);
    v37[0] = v10;
    v37[1] = EnvironmentalBodyAccessor.init(environment:tracksDependencies:)(v24);
    v38 = v25;
    v39 = v26 & 1;
    v34[0] = v18;
    v34[1] = v12;
    v35 = v17;
    v36 = v15;
    v27 = type metadata accessor for EnvironmentalBodyAccessor();
    WitnessTable = swift_getWitnessTable();
    BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, v37, a4, v34, v27, WitnessTable);
    outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t EnvironmentalBodyAccessor.init(environment:tracksDependencies:)(uint64_t a1)
{
  type metadata accessor for PropertyList.Tracker();
  v2 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = 0;
  *(v2 + 16) = v3;
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for EnvironmentalBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t View.colorScheme(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t EnvironmentValues.sizeCategory.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t one-time initialization function for top()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  static Alignment.top = v0;
  *algn_1ED52CE58 = static VerticalAlignment.top;
  return result;
}

uint64_t assignWithCopy for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithCopy for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2)
{
  v11 = *(a2 + 24);
  if (v11 <= 2)
  {
    v48 = v10;
    v49 = v9;
    v50 = v8;
    v51 = v7;
    v52 = v6;
    v53 = v5;
    v54 = v2;
    v55 = v3;
    v56 = v4;
    v13 = *a2;
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return result;
        }

        v15 = *v2;
        v16 = *(v2 + 2);
        v17 = *(v2 + 3);
        v18 = *(v2 + 4);
        v19 = *(a2 + 56);
        v40 = *(a2 + 48);
        v41 = v19;
        v20 = *(*result + 168);

        v21 = v20(v14, &v40);

        v40 = v15;
        LODWORD(v41) = v16;
        *(&v41 + 1) = v17 * v21;
        v42 = v18;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v22 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v39 = v13;
        if (*(a2 + 40) == 1)
        {
          v22 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v40, &v39, v14);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v22;
        v24 = 1;
      }

      else
      {
        v32 = result;
        if (v13 >= 1)
        {
          v33 = *(a2 + 56);
          v40 = *(a2 + 48);
          v41 = v33;
          v34 = *(*result + 168);
          v35 = result;

          v36 = v34(v13, &v40);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v32 = swift_allocObject();
          *(v32 + 16) = v35;
          *(v32 + 24) = v36;
        }

        v37 = *(a2 + 32);
        v38 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v37, v38);
        *(a2 + 32) = v32;
        v24 = 3;
      }

      *(a2 + 40) = v24;
    }

    else
    {
      v25 = result;
      if (v13 >= 1)
      {
        v26 = *(a2 + 56);
        v40 = *(a2 + 48);
        v41 = v26;
        v27 = *(*result + 168);
        v28 = result;

        v29 = v27(v13, &v40);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v25 = swift_allocObject();
        *(v25 + 16) = v28;
        *(v25 + 24) = v29;
      }

      v30 = *(a2 + 32);
      v31 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v30, v31);
      *(a2 + 32) = v25;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v48 = v9;
    v49 = v8;
    v50 = v7;
    v51 = v6;
    v52 = v5;
    v53 = v4;
    v54 = v2;
    v55 = v3;
    v12 = result;
    v13 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return result;
        }

        v41 = *(a2 + 48);
        v15 = specialized Color.BackgroundColorProvider.resolve(in:)(&v41);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v22;
        v23 = *(*v12 + 168);

        v24 = v23(v14, &v41);

        *&v41 = __PAIR64__(v17, LODWORD(v15));
        DWORD2(v41) = v19;
        *(&v41 + 3) = v21 * v24;
        v42 = 2143289344;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v25 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v40 = v13;
        if (*(a2 + 40) == 1)
        {
          v25 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v14);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v25;
        v27 = 1;
      }

      else
      {
        v34 = result;
        if (v13 >= 1)
        {
          v35 = *(a2 + 56);
          *&v41 = *(a2 + 48);
          *(&v41 + 1) = v35;
          v36 = *(*v12 + 168);

          v37 = v36(v13, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v34 = swift_allocObject();
          *(v34 + 16) = v12;
          *(v34 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v34;
        v27 = 3;
      }

      *(a2 + 40) = v27;
    }

    else
    {
      v28 = result;
      if (v13 >= 1)
      {
        v29 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v29;
        v30 = *(*v12 + 168);

        v31 = v30(v13, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v28 = swift_allocObject();
        *(v28 + 16) = v12;
        *(v28 + 24) = v31;
      }

      v32 = *(a2 + 32);
      v33 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v32, v33);
      *(a2 + 32) = v28;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v6 = *(a2 + 24);
  if (v6 <= 2)
  {
    v43 = v5;
    v44 = v4;
    v45 = v2;
    v46 = v3;
    v8 = result;
    v9 = *a2;
    if (v6)
    {
      if (v6 == 1)
      {
        v10 = *(a2 + 8);
        if (v10 == *(a2 + 16))
        {
          return result;
        }

        v11 = *(a2 + 56);
        v35 = *(a2 + 48);
        v36 = v11;
        v12 = *(*v8 + 168);

        v13 = v12(v10, &v35);

        __asm { FMOV            V0.2S, #-1.0 }

        v35 = _D0;
        LODWORD(v36) = -1082130432;
        *(&v36 + 1) = v13;
        v37 = 2143289344;
        v38 = 0;
        v39 = 1065353216;
        v40 = 0;
        v41 = -1;
        v19 = MEMORY[0x1E69E7CC0];
        v42 = MEMORY[0x1E69E7CC0];
        v34 = v9;
        if (*(a2 + 40) == 1)
        {
          v19 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v20, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v35, &v34, v10);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v19;
        v21 = 1;
      }

      else
      {
        v28 = result;
        if (v9 >= 1)
        {
          v29 = *(a2 + 56);
          v35 = *(a2 + 48);
          v36 = v29;
          v30 = *(*v8 + 168);

          v31 = v30(v9, &v35);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v28 = swift_allocObject();
          *(v28 + 16) = v8;
          *(v28 + 24) = v31;
        }

        v32 = *(a2 + 32);
        v33 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v32, v33);
        *(a2 + 32) = v28;
        v21 = 3;
      }

      *(a2 + 40) = v21;
    }

    else
    {
      v22 = result;
      if (v9 >= 1)
      {
        v23 = *(a2 + 56);
        v35 = *(a2 + 48);
        v36 = v23;
        v24 = *(*v8 + 168);

        v25 = v24(v9, &v35);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v22 = swift_allocObject();
        *(v22 + 16) = v8;
        *(v22 + 24) = v25;
      }

      v26 = *(a2 + 32);
      v27 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v26, v27);
      *(a2 + 32) = v22;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(a2 + 24) > 2u)
  {
    return result;
  }

  v3 = result;
  v4 = *a2;
  if (!*(a2 + 24))
  {
    goto LABEL_6;
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 8) == *(a2 + 16))
    {
      return result;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_6:
    v5 = v3;
    if (v4 >= 1)
    {
      v6 = *(a2 + 56);
      v17 = *(a2 + 48);
      v18 = v6;
      v7 = *(*v3 + 168);

      v8 = v7(v4, &v17);

      type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v8;
    }

    v9 = *(a2 + 32);
    v10 = *(a2 + 40);

    result = outlined consume of _ShapeStyle_Shape.Result(v9, v10);
    *(a2 + 32) = v5;
    *(a2 + 40) = 0;
    return result;
  }

  v11 = result;
  if (v4 >= 1)
  {
    v12 = *(a2 + 56);
    v17 = *(a2 + 48);
    v18 = v12;
    v13 = *(*v3 + 168);

    v14 = v13(v4, &v17);

    type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v14;
  }

  v15 = *(a2 + 32);
  v16 = *(a2 + 40);

  result = outlined consume of _ShapeStyle_Shape.Result(v15, v16);
  *(a2 + 32) = v11;
  *(a2 + 40) = 3;
  return result;
}

{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v56 = v9;
    v57 = v8;
    v58 = v7;
    v59 = v6;
    v60 = v5;
    v61 = v4;
    v62 = v2;
    v63 = v3;
    v12 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v13 = *(a2 + 8);
        if (v13 == *(a2 + 16))
        {
          return result;
        }

        v14 = result;
        v15 = *(a2 + 48);
        v16 = *(a2 + 56);
        v48 = v15;
        v49 = v16;
        v17 = EnvironmentValues.currentForegroundStyle.getter();
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          if (one-time initialization token for sharedPrimary != -1)
          {
            swift_once();
          }

          v18 = static HierarchicalShapeStyle.sharedPrimary;
        }

        v34 = specialized ShapeStyle.fallbackColor(in:level:)(v15, v16, 0, v18);

        if (!v34)
        {
          if (one-time initialization token for primary != -1)
          {
            swift_once();
          }

          v34 = static Color.primary;
        }

        v48 = v15;
        v49 = v16;
        v35 = (*(*v34 + 112))(&v48);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v42 = *(a2 + 56);
        v48 = *(a2 + 48);
        v49 = v42;
        v43 = *(*v14 + 168);

        v44 = v43(v13, &v48);

        v48 = __PAIR64__(v37, LODWORD(v35));
        LODWORD(v49) = v39;
        *(&v49 + 1) = v41 * v44;
        v50 = 2143289344;
        v51 = 0;
        v52 = 1065353216;
        v53 = 0;
        v54 = -1;
        v45 = MEMORY[0x1E69E7CC0];
        v55 = MEMORY[0x1E69E7CC0];
        v47 = v12;
        if (*(a2 + 40) == 1)
        {
          v45 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v46, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v48, &v47, v13);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v45;
        v33 = 1;
      }

      else
      {
        v26 = result;
        if (v12 >= 1)
        {
          v27 = *(a2 + 56);
          v48 = *(a2 + 48);
          v49 = v27;
          v28 = *(*result + 168);
          v29 = result;

          v30 = v28(v12, &v48);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v26 = swift_allocObject();
          *(v26 + 16) = v29;
          *(v26 + 24) = v30;
        }

        v31 = *(a2 + 32);
        v32 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v31, v32);
        *(a2 + 32) = v26;
        v33 = 3;
      }

      *(a2 + 40) = v33;
    }

    else
    {
      v19 = result;
      if (v12 >= 1)
      {
        v20 = *(a2 + 56);
        v48 = *(a2 + 48);
        v49 = v20;
        v21 = *(*result + 168);
        v22 = result;

        v23 = v21(v12, &v48);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v19 = swift_allocObject();
        *(v19 + 16) = v22;
        *(v19 + 24) = v23;
      }

      v24 = *(a2 + 32);
      v25 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v24, v25);
      *(a2 + 32) = v19;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues, serialized(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v4, *a2);
  }
}

uint64_t assignWithCopy for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v14 = *(v9 + 40);
  v15 = (v14 + v12);
  v16 = (v14 + v13);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t static _ValueActionModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v22[1] = a4;
  v23 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v11 = a7(255, a5, a6);
  swift_getWitnessTable();
  v12 = type metadata accessor for ValueActionDispatcher();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  v16 = *a1;
  v38 = *a2;
  v39 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v17 = *(a2 + 44);
  v34 = *(a2 + 28);
  v35 = v17;
  v36 = *(a2 + 60);
  v37 = *(a2 + 76);
  ValueActionDispatcher.init(modifier:phase:)(v16, a1, v11, v22 - v14);
  v25 = v12;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, a9, v24, v12, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v13 + 8))(v15, v12);
  v20 = AGGraphSetFlags();
  v27 = v38;
  v28 = v39;
  v29 = a1;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  return v23(v20, &v27);
}

unint64_t lazy protocol witness table accessor for type ColorView and conformance ColorView()
{
  result = lazy protocol witness table cache variable for type ColorView and conformance ColorView;
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorView and conformance ColorView;
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColorView and conformance ColorView;
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }

  return result;
}

uint64_t View.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a4;
  v36 = a9;
  v37 = a3;
  v35 = a2;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ValueActionModifier2();
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v33 = type metadata accessor for ModifiedContent();
  v34 = *(v33 - 8);
  v20 = MEMORY[0x1EEE9AC00](v33);
  v22 = &v31 - v21;
  (*(v14 + 16))(v16, a1, a6, v20);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  *(v23 + 4) = a7;
  *(v23 + 5) = a8;
  v24 = v32;
  *(v23 + 6) = v37;
  *(v23 + 7) = v24;
  (*(v14 + 32))(v19, v16, a6);
  v25 = &v19[*(v17 + 36)];
  *v25 = partial apply for closure #1 in View.onChange<A>(of:initial:_:);
  v25[1] = v23;
  View.modifier<A>(_:)(v19, a5, v17);
  v26 = *(v31 + 8);

  v26(v19, v17);
  v27 = 0;
  v28 = 0;
  if (v35)
  {

    v27 = v37;
    v28 = v24;
  }

  v40[0] = v27;
  v40[1] = v28;
  v40[2] = 0;
  v40[3] = 0;
  v38 = a7;
  v39 = &protocol witness table for _ValueActionModifier2<A>;
  v29 = v33;
  swift_getWitnessTable();
  View.modifier<A>(_:)(v40, v29, &type metadata for _AppearanceActionModifier);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v27);
  return (*(v34 + 8))(v22, v29);
}

uint64_t sub_18D100F38()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for _ConditionalContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t LocationBox.update()(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v3 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(*(v3 + 176) + 64))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

uint64_t instantiation function for generic protocol witness table for Binding<A>.ScopedLocation(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v50 = a3;
  v51 = a4;
  v45 = a2;
  v49 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v12;
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v14;
  v15 = type metadata accessor for _ValueActionModifier2();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  v23 = *(v11 + 16);
  v40 = a1;
  v37 = v23;
  (v23)(v13, a1, a6, v20);
  v39 = v11;
  v38 = *(v11 + 32);
  v38(v18, v13, a6);
  v24 = &v18[*(v15 + 36)];
  v25 = v51;
  *v24 = v50;
  *(v24 + 1) = v25;
  v46 = v22;
  v42 = a5;
  v26 = v44;
  View.modifier<A>(_:)(v18, a5, v15);
  v27 = *(v16 + 8);

  v27(v18, v15);
  v28 = 0;
  v29 = 0;
  if (v45)
  {
    v37(v13, v40, a6);
    v30 = (*(v39 + 80) + 64) & ~*(v39 + 80);
    v29 = swift_allocObject();
    v31 = v43;
    *(v29 + 2) = v42;
    *(v29 + 3) = a6;
    *(v29 + 4) = v26;
    *(v29 + 5) = v31;
    v32 = v51;
    *(v29 + 6) = v50;
    *(v29 + 7) = v32;
    v38(&v29[v30], v13, a6);

    v28 = partial apply for closure #1 in View.onChange<A>(of:initial:_:);
  }

  v54[0] = v28;
  v54[1] = v29;
  v54[2] = 0;
  v54[3] = 0;
  v52 = v26;
  v53 = &protocol witness table for _ValueActionModifier2<A>;
  v33 = v48;
  swift_getWitnessTable();
  v34 = v46;
  View.modifier<A>(_:)(v54, v33, &type metadata for _AppearanceActionModifier);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v28);
  return (*(v47 + 8))(v34, v33);
}

uint64_t sub_18D101844()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t Binding.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (*(v9 + 16) == *(a1 + 8))
    {
      goto LABEL_8;
    }

    v21 = v3;
    v20 = LocationBox.wasRead.getter();
  }

  else
  {
    v21 = v3;
    v20 = 0;
  }

  type metadata accessor for Binding.ScopedLocation();
  swift_getWitnessTable();
  type metadata accessor for LocationBox();
  v10 = *(a1 + 8);
  v11 = *(*v10 + 96);
  v12 = swift_retain_n();
  v13 = v11(v12);

  v22 = v10;
  v23 = v13 & 1;
  v14 = LocationBox.__allocating_init(_:)(&v22);

  *v21 = v14;
  if (v20)
  {
    LocationBox.wasRead.setter(1);
  }

  v9 = v14;
LABEL_8:
  v15 = LocationBox.update()(v8);

  *(a1 + 8) = v9;
  v16 = type metadata accessor for Binding();
  (*(v6 + 24))(a1 + *(v16 + 32), v8, v5);
  if (v15)
  {
    v17 = LocationBox.wasRead.getter();
  }

  else
  {
    v17 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v17 & 1;
}

uint64_t sub_18D101B54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t LocationBox.wasRead.getter()
{
  v1 = *v0;
  swift_beginAccess();
  LOBYTE(v1) = (*(*(v1 + 176) + 24))(*(v1 + 168));
  swift_endAccess();
  return v1 & 1;
}

uint64_t StoredLocation.update()(uint64_t a1)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v3 = 1;
    *(v1 + 24) = 1;
  }

  else
  {
    AGGraphGetValue();
    v3 = v4 & 1;
  }

  StoredLocationBase.updateValue.getter(a1);
  return v3;
}

uint64_t destroy for _GeometryActionModifier()
{
}

uint64_t static Binding.constant(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConstantLocation();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = *(v6 + 16);
  v17(v8, a1, a2, v14);
  CodableRawRepresentable.init(_:)(v8, a2, v16);
  (v17)(v8, a1, a2);
  swift_getWitnessTable();
  type metadata accessor for LocationBox();
  (*(v10 + 16))(v12, v16, v9);
  v18 = LocationBox.__allocating_init(_:)(v12);
  Binding.init(value:location:)(v8, v18, a3);
  return (*(v10 + 8))(v16, v9);
}

uint64_t instantiation function for generic protocol witness table for ConstantLocation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t LocationBox.deinit()
{
  (*(*(*(*v0 + 168) - 8) + 8))(v0 + *(*v0 + 184));

  return v0;
}

uint64_t LocationBox.__deallocating_deinit()
{
  LocationBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ValueCycleDetector()
{
  v2[4] = MEMORY[0x1E69E5D00] + 64;
  v2[5] = MEMORY[0x1E69E5D00] + 64;
  v2[6] = &unk_18DDB6A98;
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v2[7] = v2;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ValueCycleDetector.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v5 = *(v4 + 64);

  *a2 = v5;
  *(a2 + 4) = -1;
  *(a2 + 8) = 0;
  v6 = type metadata accessor for ValueCycleDetector();
  return Stack3.init()(a1, a2 + *(v6 + 44));
}

uint64_t Stack3.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(TupleTypeMetadata3 + 48);
  v6 = *(TupleTypeMetadata3 + 64);
  v8 = *(*(a1 - 8) + 56);
  v8(a2, 1, 1, a1);
  v8(a2 + v5, 1, 1, a1);

  return (v8)(a2 + v6, 1, 1, a1);
}

uint64_t closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    *(a4 + 12) = result;
  }

  else
  {
    _GraphValue.init(_:)(result, &v13);
    v9 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v9;
    v11[4] = *(a1 + 64);
    v12 = *(a1 + 80);
    v10 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v10;
    return static ViewModifier.makeImplicitRoot(modifier:inputs:body:)(&v13, v11, a2, a3, a4);
  }

  return result;
}

uint64_t static ViewModifier.makeImplicitRoot(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  static _ViewOutputs.multiView<A>(applying:inputs:body:)(&v15, v13, partial apply for closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:), v11, a5);
}

uint64_t sub_18D102540()
{

  return swift_deallocObject();
}

uint64_t static _ViewOutputs.multiView<A>(applying:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v6;
  v8 = *(a2 + 48);
  v30 = *(a2 + 64);
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  *&v24[40] = v28;
  *&v24[56] = v8;
  *&v24[72] = *(a2 + 64);
  *&v24[8] = v27[0];
  v10 = *a1;
  v31 = *(a2 + 80);
  v11 = *(a2 + 80);
  *&v24[24] = v7;
  *&v24[88] = v11;
  *v24 = v10;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v26 = 0uLL;
  v12 = *&v27[0];
  outlined init with copy of _ViewInputs(v27, v23);

  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v12);
  v15 = v14;
  v16 = *(v14 + 8);
  ModifiedRoot = type metadata accessor for MakeModifiedRoot();
  result = v16(v24, ModifiedRoot, &protocol witness table for MakeModifiedRoot<A>, v13, v15);
  v19 = v26;
  if (v26)
  {
    v20 = DWORD2(v26);
    v21 = HIDWORD(*(&v26 + 1));
    v23[4] = *&v24[64];
    v23[5] = *&v24[80];
    v23[6] = v25;
    v23[7] = v26;
    v23[0] = *v24;
    v23[1] = *&v24[16];
    v23[2] = *&v24[32];
    v23[3] = *&v24[48];
    v22 = *(*(ModifiedRoot - 8) + 8);

    result = v22(v23, ModifiedRoot);
    *a5 = v19;
    *(a5 + 8) = v20;
    *(a5 + 12) = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static OptionalEdgeInsets.none.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

uint64_t destroy for Text.Style(uint64_t a1, int *a2)
{
  if (*a1 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));

  if ((*(a1 + 88) - 1) >= 2)
  {
  }

  if ((*(a1 + 104) - 1) >= 2)
  {
  }

  if (*(a1 + 176) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  if (*(a1 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(a1 + 264), *(a1 + 272), *(a1 + 280));
  }

  v4 = a2[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  if (!(*(*(v5 - 8) + 48))(a1 + v4, 2, v5))
  {
    v6 = type metadata accessor for Locale.Language();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a2[23];
  v8 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 1, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = a2[24];
  v11 = type metadata accessor for AttributedString.TextAlignment();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = a2[26];
  v14 = type metadata accessor for AttributedString.LineHeight();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(a1 + v13, 1, v14))
  {
    (*(v15 + 8))(a1 + v13, v14);
  }
}

uint64_t CoreColorPlatformColorGetComponents(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CoreColorClass(a1);
  if (result)
  {

    return [a2 getRed:a3 green:a4 blue:a5 alpha:a6];
  }

  return result;
}

unint64_t specialized Color.Resolved.init(platformColor:)(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v16[0] = 0.0;
  v13 = 0;
  v14 = 0.0;
  if (CoreColorPlatformColorGetComponents(0, a1, v16, &v15, &v14, &v13))
  {
    v1 = v16[0];
    v2 = v15;
    v3 = v14;
    if (v1 <= 0.0)
    {
      v4 = -v1;
    }

    else
    {
      v4 = v16[0];
    }

    if (v4 <= 0.04045)
    {
      v5 = v4 * 0.077399;
    }

    else
    {
      v5 = 1.0;
      if (v4 != 1.0)
      {
        v5 = powf((v4 * 0.94787) + 0.052133, 2.4);
      }
    }

    v7 = v3;
    if (v1 <= 0.0)
    {
      v8 = -v5;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 0.0)
    {
      v9 = -v2;
    }

    else
    {
      v9 = v2;
    }

    if (v9 <= 0.04045)
    {
      v10 = v9 * 0.077399;
    }

    else
    {
      v10 = 1.0;
      if (v9 != 1.0)
      {
        v10 = powf((v9 * 0.94787) + 0.052133, 2.4);
      }
    }

    if (v2 <= 0.0)
    {
      v11 = -v10;
    }

    else
    {
      v11 = v10;
    }

    if (v7 <= 0.0)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if (v12 <= 0.04045)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (v12 != 1.0)
      {
        powf((v12 * 0.94787) + 0.052133, 2.4);
      }
    }

    return LODWORD(v8) | (LODWORD(v11) << 32);
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t type metadata completion function for TypesettingLanguage()
{
  result = type metadata accessor for TypesettingLanguage.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for automatic(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for TypesettingLanguage(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

void *initializeWithCopy for TypesettingLanguage(void *a1, const void *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for Locale.Language();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithTake for TypesettingLanguage(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = type metadata accessor for Locale.Language();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      (*(v6 + 56))(a1, 0, 2, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      v13 = type metadata accessor for Locale.Language();
      (*(*(v13 - 8) + 40))(a1, a2, v13);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  }

  v11 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

  return memcpy(a1, a2, v11);
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)()
{
  if (!lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags))
  {
    type metadata accessor for Locale.Language();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags));
    }
  }
}

char *initializeWithCopy for TypesettingConfiguration(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Locale.Language();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
  }

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[8] = v13[8];
  return a1;
}

uint64_t destroy for TypesettingConfiguration(uint64_t a1)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for Locale.Language();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

uint64_t _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    v8 = a1;
    v9 = a2;
    return (*(v6 + 8))(&type metadata for TypesettingConfigurationKey, &v8, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
  }

  else if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024TypesettingConfigurationI0VG_Tt1g5(a1, a3);
  }

  else
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a3);
  }
}

uint64_t outlined assign with take of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.bridgedEnvironmentResolver.getter()
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
  return v4;
}

uint64_t outlined init with copy of TypesettingConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24TypesettingConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TypesettingLanguage.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, char *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 2;
  }

  *a6 = v11;
  return result;
}

uint64_t sub_18D103968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static TypesettingLanguage.automatic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TypesettingLanguage(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of TypesettingLanguage.Storage(v6, a3, type metadata accessor for TypesettingLanguage);
}

uint64_t TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for TypesettingLanguage(0);
  v8 = __swift_project_value_buffer(v7, static TypesettingLanguage.automatic);
  outlined init with copy of TypesettingConfiguration(v8, a3, type metadata accessor for TypesettingLanguage);
  v9 = a3 + *(type metadata accessor for TypesettingConfiguration() + 20);
  *v9 = 0;
  *(v9 + 8) = 1;
  result = outlined assign with take of TypesettingLanguage(a1, a3);
  *v9 = v5;
  *(v9 + 8) = v6;
  return result;
}

uint64_t sub_18D103C24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D103CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D103D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t String.redactedIfNeeded(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[1])
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v3);
  }

  else
  {
    v8[0] = *a1;
    v8[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v8);
  }

  if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
  {
    v5 = String.count.getter();
    v6._countAndFlagsBits = 3081666804;
    v6._object = 0xA400000000000000;
    return String.init(repeating:count:)(v6, v5)._countAndFlagsBits;
  }

  else
  {
  }

  return a2;
}

unint64_t outlined consume of Gradient.ProviderTag(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.Case?, &type metadata for Text.Case, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t String.caseConvertedIfNeeded(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (!*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>);
    BloomFilter.init(hashValue:)(v11);
    v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v9, v23);
    if (v12)
    {
      v25 = *(v12 + 72);
      v10 = v25;
      if (v25 != 2)
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
        if (v13)
        {
          v14 = *(*v13 + 248);
          v15 = v13;
          v16 = type metadata accessor for Locale();
          (*(*(v16 - 8) + 16))(v8, &v15[v14], v16);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Locale();
          v18 = __swift_project_value_buffer(v17, static LocaleKey.defaultValue);
          (*(*(v17 - 8) + 16))(v8, v18, v17);
        }

        goto LABEL_12;
      }
    }

LABEL_6:

    return a2;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v9, &v25);

  v10 = v25;
  if (v25 == 2)
  {
    goto LABEL_6;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);

LABEL_12:
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  v23 = a2;
  v24 = a3;
  lazy protocol witness table accessor for type String and conformance String();
  if (v10)
  {
    v20 = StringProtocol.lowercased(with:)();
  }

  else
  {
    v20 = StringProtocol.uppercased(with:)();
  }

  a2 = v20;
  outlined destroy of Locale?(v8);
  return a2;
}

void type metadata accessor for AnyAccessibilityPropertiesEntry?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t initializeWithCopy for Text.Style(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = *(a2 + 104);
  if ((v11 - 1) >= 2)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v11;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v12 = *(a2 + 176);
  if (v12 == 1)
  {
    v13 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v13;
    *(a1 + 208) = *(a2 + 208);
    v14 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v14;
    v15 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v15;
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
    v16 = *(a2 + 184);
    *(a1 + 176) = v12;
    *(a1 + 184) = v16;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = *(a2 + 200);
  }

  v17 = *(a2 + 248);
  if (v17 == 1)
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
    *(a1 + 248) = v17;
  }

  v18 = *(a2 + 288);
  if (v18 == 1)
  {
    v19 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v19;
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    if (v18)
    {
      v20 = *(a2 + 264);
      v21 = *(a2 + 272);
      v22 = *(a2 + 280);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 264) = v20;
      *(a1 + 272) = v21;
      *(a1 + 280) = v22;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v23 = *(a2 + 280);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 280) = v23;
    }
  }

  v25 = *(a2 + 296);
  v24 = *(a2 + 304);
  *(a1 + 296) = v25;
  *(a1 + 304) = v24;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  v26 = a3[21];
  __dst = (a1 + v26);
  v54 = a3;
  v27 = (a2 + v26);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v25;

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
  v39 = v54[23];
  *(a1 + v54[22]) = *(a2 + v54[22]);
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

  v44 = v54[24];
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

  v48 = v54[26];
  *(a1 + v54[25]) = *(a2 + v54[25]);
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

  *(a1 + v54[27]) = *(a2 + v54[27]);

  return a1;
}

uint64_t outlined init with copy of Text.Style(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>);
    }
  }
}

uint64_t Text.Style.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0x8000000000000000;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_18DD85550;
  *(a1 + 96) = xmmword_18DD85550;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 258;
  v6 = type metadata accessor for Text.Style(0);
  v7 = v6[21];
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v8 = a1 + v7;
  v9 = __swift_project_value_buffer(v2, static TypesettingLanguage.automatic);
  outlined init with copy of Text.Style(v9, v4, type metadata accessor for TypesettingLanguage);
  outlined init with copy of Text.Style(v9, v8, type metadata accessor for TypesettingLanguage);
  v10 = v8 + *(type metadata accessor for TypesettingConfiguration() + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  outlined assign with take of Text.Style(v4, v8, type metadata accessor for TypesettingLanguage);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v6[22]) = v5;
  v11 = v6[23];
  v12 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v6[24];
  v14 = type metadata accessor for AttributedString.TextAlignment();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  *(a1 + v6[25]) = 2;
  v15 = v6[26];
  v16 = type metadata accessor for AttributedString.LineHeight();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v6[27]) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t outlined init with copy of (key: NSAttributedStringKey, value: Any)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

unint64_t outlined copy of Text.Style.TextStyleColor(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t outlined assign with take of Text.Style(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = v14[9];
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for TextSizeVariant, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = v15[9];
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>);
    }
  }
}

uint64_t _GraphValue.unsafeBitCast<A>(to:)@<X0>(_DWORD *a1@<X8>)
{
  result = Attribute.unsafeBitCast<A>(to:)();
  *a1 = result;
  return result;
}

void type metadata accessor for AtomicBuffer<TrackerData>()
{
  if (!lazy cache variable for type metadata for AtomicBuffer<TrackerData>)
  {
    v0 = type metadata accessor for AtomicBuffer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>);
    }
  }
}

double ContentResponderHelper.init()@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ContentResponderHelper();
  *a2 = 0;
  *(a2 + 1) = 0;
  (*(*(a1 - 8) + 56))(&a2[v4[9]], 1, 1, a1);
  v5 = &a2[v4[10]];
  result = 0.0;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  *&a2[v4[11]] = MEMORY[0x1E69E7CC0];
  v7 = &a2[v4[12]];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  return result;
}

unint64_t _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v7 = *(a1 + 60);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v10 = a2();
    v20 = v7;
    v21 = OffsetAttribute2;
    v22 = v10;
    v23 = a4;
    MEMORY[0x1EEE9AC00](v10);
    v17 = type metadata accessor for ContentResponderPathDataRule();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for Attribute<ContentShapePathData>, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_12, &v16, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
    v13 = v19;
    v20 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v14 = *(v6 + 16);
    if (result != v14)
    {
      if (result >= v14)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v20) = v13;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v15 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v20) = 0;
        return PreferencesOutputs.subscript.setter(v15, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for TypesettingConfiguration()
{
  result = type metadata accessor for TypesettingLanguage.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TypesettingLanguage.Storage()
{
  result = type metadata accessor for Locale.Language();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v58 = AssociatedTypeWitness;
  v55 = swift_getAssociatedTypeWitness();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - v14;
  v15 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v56 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v60 = v16;
  v20 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  if (!a1)
  {
    v40 = 1;
    return (*(v20 + 56))(a7, v40, 1, v60, v27);
  }

  v47 = v26;
  v48 = &v47 - v24;
  v49 = v20;
  v50 = a7;
  v28 = *a3;
  v29 = *a4;
  v30 = (v20 + 48);
  v31 = (v23 + 8);
  v52 = a6 + 40;
  v53 = v25;
  ++v51;
  while (1)
  {
    while (1)
    {
      v32 = a1[7];
      v33 = v28 & ~v32;
      v34 = v32 & v29;
      if (!v33 || v34 == v29)
      {
        break;
      }

      a1 = a1[5];
      if (!a1)
      {
        goto LABEL_17;
      }
    }

    v36 = a1[3];
    if (v36)
    {
      v61 = v29;
      v62 = v28;
      findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)(v36, v57, &v62, &v61, a5, a6, v27);
      if ((*v30)(v19, 1, v60) != 1)
      {
        v41 = v48;
        v20 = v49;
        v42 = *(v49 + 32);
        v43 = v48;
        v44 = v19;
        goto LABEL_23;
      }

      (*v31)(v19, v59);
    }

    v37 = a1[2];
    if (v37 == swift_checkMetadataState())
    {
      a7 = v50;
      closure #2 in closure #1 in PropertyList.subscript.getter(a1, v50);
      v40 = 0;
      goto LABEL_20;
    }

    if (v37 == swift_checkMetadataState())
    {
      break;
    }

LABEL_16:
    a1 = a1[4];
    if (!a1)
    {
LABEL_17:
      v40 = 1;
      a7 = v50;
LABEL_20:
      v20 = v49;
      return (*(v20 + 56))(a7, v40, 1, v60, v27);
    }
  }

  v38 = v54;
  closure #2 in closure #1 in PropertyList.subscript.getter(a1, v54);
  v39 = v53;
  (*(a6 + 40))(v38, a5, a6);
  (*v51)(v38, v55);
  if ((*v30)(v39, 1, v60) == 1)
  {
    (*v31)(v39, v59);
    goto LABEL_16;
  }

  v20 = v49;
  v42 = *(v49 + 32);
  v41 = v47;
  v43 = v47;
  v44 = v39;
LABEL_23:
  v45 = v60;
  v42(v43, v44, v60);
  a7 = v50;
  v42(v50, v41, v45);
  v40 = 0;
  return (*(v20 + 56))(a7, v40, 1, v60, v27);
}

uint64_t closure #1 in PropertyList.valueWithSecondaryLookup<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v18 = a1;
  v19 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = swift_getAssociatedTypeWitness();
  BloomFilter.init(hashValue:)(v13);
  v14 = swift_getAssociatedTypeWitness();
  BloomFilter.init(hashValue:)(v14);
  findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)(v18, v19, &v22, &v21, a3, a4, v12);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(v20, v12, AssociatedTypeWitness);
  }

  (*(v10 + 8))(v12, v9);
  swift_checkMetadataState();
  return (*(AssociatedConformanceWitness + 16))();
}

uint64_t PropertyList.valueWithSecondaryLookup<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a2;
  v7[5] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v8, partial apply for closure #1 in PropertyList.valueWithSecondaryLookup<A>(_:), v7, &type metadata for PropertyList, MEMORY[0x1E69E73E0], AssociatedTypeWitness, MEMORY[0x1E69E7410], v5);
}

uint64_t EnvironmentValues.valueWithSecondaryLookup<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  if (v4[1])
  {

    PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)(v9, a1, a2, a3, a4);
  }

  else
  {

    PropertyList.valueWithSecondaryLookup<A>(_:)(a1, v9, a2, a3);
  }
}

uint64_t _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

Swift::Void __swiftcall AnimatableFrameAttributeVFD.updateValue()()
{
  v1 = v0;
  v24 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v16 = *Value;
  v5 = AGGraphGetValue();
  v7 = v4 | v6;
  v15 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = *AGGraphGetValue();
  v17 = v16;
  v18 = v15;
  *&v19 = v8;
  *(&v19 + 1) = v9;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 & 1;
  }

  v20 = v12;
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(v11);
  if ((*(v1 + 145) & 1) == 0)
  {
    v13 = *(v1 + 72);
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v17, 0, *(v1 + 12), (v1 + 16), v1);
    if (*(v1 + 72))
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      if (*(v1 + 96))
      {
        v14 = 0.0;
      }

      else
      {
        v14 = *(v1 + 88);
      }

      swift_beginAccess();
      ViewGraph.NextUpdate.maxVelocity(_:)(v14);
      swift_endAccess();
    }

    else if (v13)
    {
      *(v1 + 136) = 0;
      *(v1 + 120) = 0u;
      *(v1 + 104) = 0u;
      *(v1 + 144) = 1;
      *(v1 + 88) = 0;
      *(v1 + 96) = 1;
    }
  }

  if ((v20 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    AGGraphSetOutputValue();
  }
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, uint64_t a5)
{
  v214 = *MEMORY[0x1E69E9840];
  *&v196.f64[0] = type metadata accessor for OSSignpostID();
  v192 = *(*&v196.f64[0] - 8);
  MEMORY[0x1EEE9AC00](*&v196.f64[0]);
  v18 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v173 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v173 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v173 - v26;
  MEMORY[0x1EEE9AC00](v28);
  *&v195 = &v173 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v186 = &v173 - v31;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v33)
    {
      v34 = *Value;
    }

    else
    {
      v34 = -INFINITY;
    }
  }

  else
  {
    v34 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_124;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v36 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_123;
  }

  v6 = *(a4 + 4);
  v5 = *(a4 + 5);
  v8 = *(a4 + 2);
  v7 = *(a4 + 3);
  if (v9 == v8 && v10 == v7 && v11 == v6 && v36 == v5)
  {
    goto LABEL_123;
  }

  v194 = v18;
  v191 = v24;
  v175 = v27;
  v181 = v36;
  v180 = a5;
  v183 = a1;
  AGGraphClearUpdate();
  v37 = *(a4 + 1);
  v209 = *a4;
  v210 = v37;
  v38 = *(a4 + 3);
  v211 = *(a4 + 2);
  v212 = v38;
  v182 = a4;
  v213 = *(a4 + 16);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  v39 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v40 = Transaction.effectiveAnimation.getter(v39);
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    if (!a2)
    {

      a1 = v183;
      a4 = v182;
      goto LABEL_122;
    }

    v41 = a2;
  }

  v42 = *(&v212 + 1);
  v43 = v9 - v8;
  v44 = v10 - v7;
  v45 = v11 - v6;
  v46 = v181 - v5;
  v34 = *AGGraphGetValue();
  v178 = v39;
  v176 = a3;
  v177 = v41;
  if (!v42)
  {
    *&v201.f64[0] = &type metadata for ViewFrame;
    type metadata accessor for ViewFrame.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = v205;
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = *(&v205 + 1);
    }

    else
    {
      v76 = 0;
    }

    v179 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v77, v39, v75, v76, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v43, v44, v45, v46, v34);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v79 = CurrentAttribute;
    LODWORD(v193) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v193)
    {
      v80 = 0;
    }

    else
    {
      v80 = CurrentAttribute;
    }

    (*(*v41 + 96))(&v201);
    v81 = v201;
    v82 = *(&v202 + 1);
    v83 = v203;
    *&v200 = NAN;
    v199 = NAN;
    v198 = 1.0;
    v197 = NAN;
    v205 = v201;
    v84 = v202;
    v206 = v202;
    v207 = *&v203;
    LODWORD(v191) = v204;
    LOBYTE(v208) = v204;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v205, &v200, &v199, &v198, &v197);
    v5 = *&v200;
    v6 = v199;
    v7 = v198;
    v8 = v197;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v85 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v174 = v21;
      if (v85 && (v86 = static CustomEventTrace.recorder) != 0)
      {
        v87 = v79 == v193;
        v190 = v83;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v88 = *(v86 + 16);
        LODWORD(v205) = v80;
        BYTE4(v205) = v87;
        *(&v205 + 1) = &type metadata for ViewFrame;
        *&v206 = v5;
        *(&v206 + 1) = v6;
        v207 = v7;
        v208 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v89 = v88;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v81.f64[0], *&v81.f64[1], v84, v82, v190, v191);
      }

      else
      {
        outlined consume of Animation.Function(*&v81.f64[0], *&v81.f64[1], v84, v82, v83, v191);
      }

      v90 = one-time initialization token for animationState;
      v79 = v179;

      if (v90 == -1)
      {
        goto LABEL_55;
      }
    }

    swift_once();
LABEL_55:
    v64 = *(&static Signpost.animationState + 1);
    *&v62 = static Signpost.animationState;
    LOBYTE(v48) = word_1ED5283E8;
    v63 = HIBYTE(word_1ED5283E8);
    v91 = byte_1ED5283EA;
    LOBYTE(a1) = static os_signpost_type_t.begin.getter();
    v205 = __PAIR128__(*&v64, *&v62);
    LOBYTE(v206) = v48;
    BYTE1(v206) = v63;
    BYTE2(v206) = v91;
    v92 = Signpost.isEnabled.getter();
    LODWORD(v61) = v193;
    if ((v92 & 1) == 0)
    {

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v182;
      *(v182 + 7) = v79;
      goto LABEL_120;
    }

    v93 = one-time initialization token for _signpostLog;

    if (v93 != -1)
    {
      goto LABEL_197;
    }

    goto LABEL_57;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v205) = 0;
  v179 = v42;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, v43, v44, v45, v46, v34);
  v47 = AGGraphGetCurrentAttribute();
  LODWORD(a1) = v47;
  LODWORD(v48) = *MEMORY[0x1E698D3F8];
  if (v47 == *MEMORY[0x1E698D3F8])
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  (*(*v41 + 96))(&v201);
  v50 = v201.f64[1];
  v51 = *&v201.f64[0];
  v52 = v202;
  v53 = v203;
  LODWORD(v54) = v204;
  *&v200 = NAN;
  v199 = NAN;
  v198 = 1.0;
  v197 = NAN;
  v205 = v201;
  v206 = v202;
  v55 = *(&v202 + 1);
  v207 = *&v203;
  LOBYTE(v208) = v204;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v205, &v200, &v199, &v198, &v197);
  v5 = *&v200;
  v6 = v199;
  v7 = v198;
  v8 = v197;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_29;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v56 = static CustomEventTrace.recorder) != 0)
    {
      v57 = a1 == v48;
      LODWORD(v194) = v48;
      LODWORD(v193) = v54;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v48 = v53;
      v58 = *(v56 + 16);
      LODWORD(v205) = v49;
      BYTE4(v205) = v57;
      *(&v205 + 1) = &type metadata for ViewFrame;
      *&v206 = v5;
      *(&v206 + 1) = v6;
      v207 = v7;
      v208 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v59 = v58;
      AGGraphAddTraceEvent();
      v60 = v48;
      LODWORD(v48) = v194;
      outlined consume of Animation.Function(v51, *&v50, v52, v55, v60, v193);
    }

    else
    {
      outlined consume of Animation.Function(v51, *&v50, v52, v55, v53, v54);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_192;
    }

LABEL_29:
    v62 = *(&static Signpost.animationState + 1);
    *&v61 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    *&v64 = HIBYTE(word_1ED5283E8);
    v65 = byte_1ED5283EA;
    v66 = static os_signpost_type_t.event.getter();
    v205 = __PAIR128__(*&v62, *&v61);
    LOBYTE(v206) = v63;
    BYTE1(v206) = LOBYTE(v64);
    BYTE2(v206) = v65;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
LABEL_92:
      a4 = v182;
      a3 = v176;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v67 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v48)
    {
      __break(1u);
    }

    else
    {
      v68 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v70 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v70;
      *(a1 + 32) = Counter;
      v71 = AGGraphGetCurrentAttribute();
      if (v71 != v48)
      {
        v72 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v72;
        *(a1 + 72) = v71;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 112) = 0x6D61724677656956;
        *(a1 + 120) = 0xE900000000000065;
        if (LOBYTE(v64))
        {
          LOBYTE(v197) = v66;
          *&v200 = COERCE_DOUBLE(&dword_18D018000);
          v199 = v67;
          *&v205 = v61;
          *(&v205 + 1) = v62;
          LOBYTE(v206) = v63;
          *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v201.f64[1] = 39;
          LOBYTE(v202) = 2;
          v198 = *&a1;
          v73 = v175;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          (*(v192 + 8))(v73, *&v196.f64[0]);
        }

        else
        {
          v103 = LOBYTE(v61);
          if (LOBYTE(v61) == 20)
          {
            v54 = 3;
          }

          else
          {
            v54 = 4;
          }

          v104 = bswap32(LOWORD(v61)) | (4 * HIWORD(LODWORD(v61)));
          v105 = v66;
          v106 = v192 + 16;
          v184 = *(v192 + 16);
          v107 = v184(v191, v175, *&v196.f64[0]);
          v108 = 0;
          LOBYTE(v201.f64[0]) = 1;
          v194 = v54;
          v189 = 16 * v54;
          v185 = v106;
          v190 = (v106 - 8);
          v188 = a1 + 32;
          v187 = v103;
          do
          {
            v193 = &v173;
            MEMORY[0x1EEE9AC00](v107);
            a4 = &v173 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
            v111 = a4 + 8;
            v112 = v194;
            v113 = a4 + 8;
            do
            {
              *(v113 - 1) = 0;
              *v113 = 0;
              v113 += 16;
              --v112;
            }

            while (v112);
            v95 = v188 + 40 * v108;
            v114 = v194;
            while (1)
            {
              v115 = *(a1 + 16);
              if (v108 == v115)
              {
                break;
              }

              if (v108 >= v115)
              {
                goto LABEL_181;
              }

              ++v108;
              outlined init with copy of AnyTrackedValue(v95, &v205);
              v54 = *(&v206 + 1);
              __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
              *(v111 - 1) = CVarArg.kdebugValue(_:)(v104 | v105, v54);
              *v111 = v116 & 1;
              v111 += 16;
              v109 = __swift_destroy_boxed_opaque_existential_1(&v205);
              v95 += 40;
              if (!--v114)
              {
                goto LABEL_75;
              }
            }

            LOBYTE(v201.f64[0]) = 0;
LABEL_75:
            v117 = v187;
            if (v187 == 20)
            {
              v118 = v191;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v118 = v191;
            }

            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v117 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v119 = *v190;
            v54 = *&v196.f64[0];
            (*v190)(v118, *&v196.f64[0]);
            v120 = __swift_project_value_buffer(v54, static OSSignpostID.continuation);
            v107 = v184(v118, v120, v54);
          }

          while ((LOBYTE(v201.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          v121 = v196.f64[0];
          v119(v118, *&v196.f64[0]);
          v119(v175, *&v121);
        }

        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_57:
    v94 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v95 = COERCE_DOUBLE(swift_allocObject());
    *(v95 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v61))
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v96 = AGGraphGetAttributeGraph();
    v97 = AGGraphGetCounter();

    v98 = MEMORY[0x1E69E6870];
    *(v95 + 56) = MEMORY[0x1E69E6810];
    *(v95 + 64) = v98;
    *(v95 + 32) = v97;
    v99 = AGGraphGetCurrentAttribute();
    if (v99 == LODWORD(v61))
    {
      goto LABEL_199;
    }

    v100 = MEMORY[0x1E69E76D0];
    *(v95 + 96) = MEMORY[0x1E69E7668];
    *(v95 + 104) = v100;
    *(v95 + 72) = v99;
    *(v95 + 136) = MEMORY[0x1E69E6158];
    *(v95 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v95 + 112) = 0x6D61724677656956;
    *(v95 + 120) = 0xE900000000000065;
    if (v63)
    {
      LOBYTE(v197) = a1;
      *&v200 = COERCE_DOUBLE(&dword_18D018000);
      v199 = v94;
      *&v205 = v62;
      *(&v205 + 1) = v64;
      LOBYTE(v206) = v48;
      *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v201.f64[1] = 39;
      LOBYTE(v202) = 2;
      v198 = *&v95;
      v101 = v174;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v102 = v179;

      (*(v192 + 8))(v101, *&v196.f64[0]);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v182;
      *(v182 + 7) = v102;
    }

    else
    {
      v122 = LOBYTE(v62);
      v123 = a1;
      a1 = LOBYTE(v62) == 20 ? 3 : 4;
      a4 = (bswap32(LOWORD(v62)) | (4 * HIWORD(LODWORD(v62))));
      v105 = v123;
      v54 = v192 + 16;
      v184 = *(v192 + 16);
      v124 = v184(v194, v174, *&v196.f64[0]);
      v108 = 0;
      LOBYTE(v201.f64[0]) = 1;
      v190 = (16 * a1);
      v185 = v54;
      v191 = (v54 - 8);
      v189 = v95 + 32;
      v187 = v122;
      v188 = a1;
      do
      {
        v193 = &v173;
        MEMORY[0x1EEE9AC00](v124);
        v126 = &v173 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
        v127 = v126 + 8;
        v128 = a1;
        v129 = v126 + 8;
        do
        {
          *(v129 - 1) = 0;
          *v129 = 0;
          v129 += 16;
          --v128;
        }

        while (v128);
        v130 = v189 + 40 * v108;
        while (1)
        {
          v131 = *(v95 + 16);
          if (v108 == v131)
          {
            break;
          }

          if (v108 >= v131)
          {
            goto LABEL_182;
          }

          ++v108;
          outlined init with copy of AnyTrackedValue(v130, &v205);
          v54 = *(&v206 + 1);
          __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
          *(v127 - 1) = CVarArg.kdebugValue(_:)(a4 | v105, v54);
          *v127 = v132 & 1;
          v127 += 16;
          v109 = __swift_destroy_boxed_opaque_existential_1(&v205);
          v130 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v201.f64[0]) = 0;
LABEL_105:
        v133 = v187;
        if (v187 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a1 = v188;
        if (v126[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v126[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v126[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v133 != 20 && v126[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v54 = *v191;
        v134 = v194;
        v135 = *&v196.f64[0];
        (*v191)(v194, *&v196.f64[0]);
        v136 = __swift_project_value_buffer(v135, static OSSignpostID.continuation);
        v124 = v184(v134, v136, v135);
      }

      while ((LOBYTE(v201.f64[0]) & 1) != 0);
      v137 = v179;

      v138 = v196.f64[0];
      (v54)(v194, *&v196.f64[0]);
      (v54)(v174, *&v138);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v182;
      *(v182 + 7) = v137;
    }

LABEL_120:
    a3 = v176;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v178);

    a1 = v183;
LABEL_122:
    v36 = v181;
LABEL_123:
    *(a4 + 2) = v9;
    *(a4 + 3) = v10;
    *(a4 + 4) = v11;
    *(a4 + 5) = v36;
    a4[48] = 0;
LABEL_124:
    v95 = *(a4 + 7);
    if (*&v95 == 0.0)
    {
      return result;
    }

    v139 = *(a1 + 16);
    v205 = *a1;
    v206 = v139;

    LOBYTE(v209) = 0;
    v140 = specialized AnimatorState.update(_:at:environment:)(&v205, a3, v34);
    v109 = AGGraphGetCurrentAttribute();
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (v109 == *MEMORY[0x1E698D3F8])
    {
      v105 = 0;
    }

    else
    {
      v105 = v109;
    }

    v108 = &type metadata instantiation cache for TupleTypeDescription;
    if (v140)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v150 = *(v108 + 616);
    if (*(v150 + 16) >= 0x43uLL)
    {
      if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v209) = v105;
        BYTE4(v209) = v109 == v54;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      v195 = v206;
      *&v209 = v34;
      v196 = v205;
      FrameVelocityFilter.addSample(_:time:)(&v209, *&v205, *(&v205 + 1), *&v206, *(&v206 + 1));

      v151 = v195;
      v152 = v196;
      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v53 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v51 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v49 = static os_signpost_type_t.end.getter();
    v209 = __PAIR128__(v53, v55);
    LOBYTE(v210) = v52;
    BYTE1(v210) = v51;
    BYTE2(v210) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v144 = one-time initialization token for _signpostLog;
    LODWORD(v48) = v185;

    if (v144 != -1)
    {
      swift_once();
    }

    v182 = a4;
    v183 = a1;
    v50 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v54)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    swift_once();
  }

  v145 = AGGraphGetAttributeGraph();
  v48 = AGGraphGetCounter();

  v146 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v146;
  *(a1 + 32) = v48;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v54)
  {
    goto LABEL_189;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v148;
  *(a1 + 72) = v147;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x6D61724677656956;
  *(a1 + 120) = 0xE900000000000065;
  if (v51)
  {
    LOBYTE(v197) = v49;
    *&v200 = COERCE_DOUBLE(&dword_18D018000);
    v199 = v50;
    *&v209 = v55;
    *(&v209 + 1) = v53;
    LOBYTE(v210) = v52;
    *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v201.f64[1] = 37;
    LOBYTE(v202) = 2;
    v198 = *&a1;
    v149 = v186;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v192 + 8))(v149, *&v196.f64[0]);
    goto LABEL_176;
  }

  v153 = v55;
  if (v55 == 20)
  {
    v154 = 3;
  }

  else
  {
    v154 = 4;
  }

  v105 = bswap32(v55) | (4 * WORD1(v55));
  v108 = v49;
  v155 = v192 + 16;
  v187 = *(v192 + 16);
  v156 = v187(v195, v186, *&v196.f64[0]);
  v157 = 0;
  LOBYTE(v201.f64[0]) = 1;
  v194 = v154;
  v190 = (16 * v154);
  v192 = v155;
  v191 = (v155 - 8);
  v189 = a1 + 32;
  v188 = v153;
  do
  {
    v193 = &v173;
    MEMORY[0x1EEE9AC00](v156);
    a4 = &v173 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
    v95 = (a4 + 8);
    v159 = v194;
    v160 = a4 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      --v159;
    }

    while (v159);
    v161 = v189 + 40 * v157;
    v54 = v194;
    while (1)
    {
      v162 = *(a1 + 16);
      if (v157 == v162)
      {
        break;
      }

      if (v157 >= v162)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v171 = v109;
        swift_once();
        v109 = v171;
LABEL_130:
        v141 = *(v108 + 616);
        if (*(v141 + 16) >= 0x43uLL)
        {
          if (*(v141 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v209) = v105;
            BYTE4(v209) = v109 == v54;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v142 = one-time initialization token for animationState;
          v185 = v95;

          if (v142 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v172 = v109;
        swift_once();
        v109 = v172;
        goto LABEL_143;
      }

      ++v157;
      outlined init with copy of AnyTrackedValue(v161, &v209);
      v163 = *(&v210 + 1);
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      *(v95 - 8) = CVarArg.kdebugValue(_:)(v105 | v108, v163);
      *v95 = v164 & 1;
      v95 += 16;
      v109 = __swift_destroy_boxed_opaque_existential_1(&v209);
      v161 += 40;
      if (!--v54)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v201.f64[0]) = 0;
LABEL_161:
    v165 = v188;
    if (v188 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v165 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v166 = *v191;
    v167 = v195;
    v168 = *&v196.f64[0];
    (*v191)(v195, *&v196.f64[0]);
    v169 = __swift_project_value_buffer(v168, static OSSignpostID.continuation);
    v156 = v187(v167, v169, v168);
  }

  while ((LOBYTE(v201.f64[0]) & 1) != 0);

  v170 = v196.f64[0];
  v166(v195, *&v196.f64[0]);
  v166(v186, *&v170);
LABEL_176:

  a1 = v183;
  a4 = v182;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
  v152 = v205;
  v151 = v206;
LABEL_178:
  *a1 = v152;
  *(a1 + 16) = v151;
  *(a1 + 48) = 1;
  return result;
}

SwiftUI::PreferenceValues __swiftcall GraphHost.preferenceValues()()
{
  v1 = v0;
  GraphHost.instantiateIfNeeded()();
  swift_beginAccess();
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    result.entries._rawValue = MEMORY[0x1E69E7CC0];
  }

  v1->entries._rawValue = result.entries._rawValue;
  return result;
}

void onMainThread(do:)(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    v4 = [objc_opt_self() mainRunLoop];
    type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDA6EB0;
    v6 = *MEMORY[0x1E695DA28];
    *(v5 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v7 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_30;
    v9 = _Block_copy(v10);

    [v4 performInModes:isa block:v9];
    _Block_release(v9);
  }
}

void specialized static NSRunLoop.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v4 = CFRunLoopGetCurrent();
  if (!observer.value)
  {
    v5 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, @objc closure #1 in static NSRunLoop.addObserver(_:), 0);
    value = observer.value;
    observer.value = v5;
    v7 = v5;

    if (!v7)
    {
      goto LABEL_18;
    }

    CFRunLoopAddObserver(v4, v7, *MEMORY[0x1E695E8D0]);
  }

  v8 = CFRunLoopCopyCurrentMode(v4);
  if (v8)
  {
    if (observer.value)
    {
      v9 = v8;
      if (CFRunLoopContainsObserver(v4, observer.value, v8))
      {
LABEL_9:

        goto LABEL_10;
      }

      if (observer.value)
      {
        CFRunLoopAddObserver(v4, observer.value, v9);
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (one-time initialization token for observerActions != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  rawValue = observerActions._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  observerActions._rawValue = rawValue;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
    observerActions._rawValue = rawValue;
  }

  v14 = rawValue[2];
  v13 = rawValue[3];
  if (v14 >= v13 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, rawValue);
  }

  rawValue[2] = v14 + 1;
  v15 = &rawValue[2 * v14];
  v15[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v15[5] = v10;
  observerActions._rawValue = rawValue;
  swift_endAccess();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
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

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ()();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t ChildEnvironment.modifier.getter()
{
  type metadata accessor for _EnvironmentKeyTransformModifier();
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t PropertyList.Tracker.value<A>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v23 - v11;
  v13 = *(v4 + 16);

  os_unfair_lock_lock((v13 + 16));
  v14 = *(v13 + 24);
  if (!a1)
  {
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v13 + 56) = 1;
    PropertyList.subscript.getter(a2, a1, a2, a3);
    goto LABEL_9;
  }

  if (v14 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(v13 + 32);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v17 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v15 + 56) + 40 * v16, v23);
    outlined init with take of AnyTrackedValue(v23, v24);
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (v19[1])(AssociatedTypeWitness, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    PropertyList.subscript.getter(a2, a1, a2, a3);
    (*(v10 + 16))(v12, a4, AssociatedTypeWitness);
    v25 = type metadata accessor for TrackedValue();
    v26 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    v21 = swift_getAssociatedTypeWitness();
    (*(*(v21 - 8) + 32))(boxed_opaque_existential_1, v12, v21);
    specialized Dictionary.subscript.setter(v24, a2);
  }

LABEL_9:
  os_unfair_lock_unlock((v13 + 16));
}

uint64_t closure #1 in ChildEnvironment.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - v12;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v54 = v22;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(v24[2]);
  if (!v25)
  {
    v26 = a3;
    v27 = swift_slowAlloc();
    pthread_setspecific(v24[2], v27);
    v59 = type metadata accessor for ObservationCenter();
    *&v58 = v24[3];
    outlined init with take of Any(&v58, v27);

    v25 = v27;
    a3 = v26;
  }

  outlined init with copy of Any(v25, &v58);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v54 + 3) = v23;
    goto LABEL_9;
  }

  v52 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v28 + 3);
  *(v28 + 3) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v18, 1, 1, v5);
  v56 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  (v54)(a3);
  *(StatusReg + 848) = v31;
  v32 = v56;
  outlined init with take of ObservationTracking._AccessList?(v18, v21);
  outlined init with copy of ObservationTracking._AccessList?(v21, v15);
  if ((*(v32 + 48))(v15, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v21);
    v21 = v15;
    goto LABEL_12;
  }

  v18 = *(v32 + 32);
  v33 = v28;
  v28 = v51;
  (v18)(v51, v15, v5);
  (*(v32 + 16))(v55, v28, v5);
  v23 = *(v33 + 3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v33;
  *(v33 + 3) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v23[2];
  v35 = v23[3];
  if (v36 >= v35 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v23);
  }

  v23[2] = v36 + 1;
  v37 = v23 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v36;
  v32 = v56;
  (v18)(v37, v55, v5);
  v38 = v54;
  *(v54 + 3) = v23;
  v39 = v28;
  v28 = v38;
  (*(v32 + 8))(v39, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v21);
  v40 = *(v28 + 3);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v32 + 16);
    v42 = v32 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v56 = *(v28 + 3);

    v48 = v52;
    do
    {
      v43(v8, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v8);
      (*v47)(v8, v5);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v28 + 3) = v53;
}

uint64_t StyleBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v80 = a6;
  v77 = a1;
  v102 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v88 = v12;
  v89 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v69 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v69 - v19;
  v21 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  Value = AGGraphGetValue();
  v27 = v26;
  v28 = *(v21 + 16);
  v81 = v24;
  v28(v24, Value, a4);
  if (a2 & 1) != 0 || (v27)
  {
    v74 = v20;
    v75 = v21;
    v76 = v18;
    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v29 = static Signpost.bodyInvoke;
    v30 = word_1ED539040;
    v31 = HIBYTE(word_1ED539040);
    v32 = byte_1ED539042;
    LODWORD(v91) = static os_signpost_type_t.begin.getter();
    v99 = v29;
    LOBYTE(v100) = v30;
    BYTE1(v100) = v31;
    BYTE2(v100) = v32;
    v33 = Signpost.isEnabled.getter();
    v34 = v80;
    if ((v33 & 1) == 0)
    {
      goto LABEL_38;
    }

    v71 = AssociatedTypeWitness;
    v73 = a4;
    v72 = a7;
    v70 = a5;
    swift_getAssociatedTypeWitness();
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_18DDAB4C0;
    v36 = AGTypeID.description.getter();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v40 = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 64) = v40;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v41 = specialized static Tracing.libraryName(defining:)();
    *(v35 + 96) = v39;
    *(v35 + 104) = v40;
    *(v35 + 72) = v41;
    *(v35 + 80) = v42;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v31)
      {
LABEL_8:
        v98 = v91;
        v96 = _signpostLog;
        v97 = &dword_18D018000;
        v99 = v29;
        LOBYTE(v100) = v30;
        v93 = "%{public}@.body [in %{public}@]";
        v94 = 31;
        v95 = 2;
        v92 = v35;
        v43 = v79;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v89 + 8))(v43, v88);
LABEL_37:

        a4 = v73;
        a7 = v72;
        v34 = v80;
        AssociatedTypeWitness = v71;
        a5 = v70;
LABEL_38:
        AGGraphClearUpdate();
        v65 = v74;
        closure #1 in StyleBodyAccessor.updateBody(of:changed:)(v78, v77, v81, a4, a5, v34, a7, v74);
        AGGraphSetUpdate();
        v66 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v66);
        *&v99 = a4;
        *(&v99 + 1) = a5;
        v100 = v34;
        v101 = a7;
        *(&v69 - 2) = type metadata accessor for StyleBodyAccessor();
        *(&v69 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v65, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v69 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v67);
        (*(v76 + 8))(v65, AssociatedTypeWitness);
        v21 = v75;
        return (*(v21 + 8))(v81, a4);
      }
    }

    else
    {
      swift_once();
      if (v31)
      {
        goto LABEL_8;
      }
    }

    if (v29 == 20)
    {
      v44 = 3;
    }

    else
    {
      v44 = 4;
    }

    v45 = bswap32(v29) | (4 * WORD1(v29));
    v46 = v91;
    v47 = v89 + 16;
    v82 = *(v89 + 16);
    v48 = v82(v90, v79, v88);
    v49 = 0;
    LOBYTE(v93) = 1;
    v89 = v47;
    v86 = 16 * *(&v29 + 1);
    v87 = (v47 - 8);
    v85 = v35 + 32;
    v84 = v29;
    v83 = *(&v29 + 1);
    do
    {
      v91 = &v69;
      MEMORY[0x1EEE9AC00](v48);
      v51 = &v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v51 + 8;
      v53 = v44;
      v54 = v51 + 8;
      do
      {
        *(v54 - 1) = 0;
        *v54 = 0;
        v54 += 16;
        --v53;
      }

      while (v53);
      v55 = v85 + 40 * v49;
      while (1)
      {
        v56 = *(v35 + 16);
        if (v49 == v56)
        {
          break;
        }

        if (v49 >= v56)
        {
          __break(1u);
        }

        ++v49;
        outlined init with copy of AnyTrackedValue(v55, &v99);
        v57 = v101;
        __swift_project_boxed_opaque_existential_1(&v99, v101);
        *(v52 - 1) = CVarArg.kdebugValue(_:)(v45 | v46, v57);
        *v52 = v58 & 1;
        v52 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v99);
        v55 += 40;
        if (!--v44)
        {
          goto LABEL_22;
        }
      }

      LOBYTE(v93) = 0;
LABEL_22:
      v59 = v84;
      if (v84 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v51[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v51[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v51[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v59 != 20 && v51[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v60 = v88;
      v61 = *v87;
      v62 = v90;
      (*v87)(v90, v88);
      v63 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
      v48 = v82(v62, v63, v60);
      v44 = v83;
    }

    while ((v93 & 1) != 0);
    v64 = v88;
    v61(v90, v88);
    v61(v79, v64);
    goto LABEL_37;
  }

  return (*(v21 + 8))(v81, a4);
}

uint64_t static ViewInputFlagModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[1] = *a1;
  type metadata accessor for ViewInputFlagModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ViewInputFlagModifier._makeInputs(modifier:inputs:), a3, v8);
  return (*(*(a4 + 8) + 8))(v8, a2, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for StyleContextInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void type metadata accessor for StyleContextTypeBox<NoStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextTypeBox<NoStyleContext>)
  {
    v0 = type metadata accessor for StyleContextTypeBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextTypeBox<NoStyleContext>);
    }
  }
}

uint64_t closure #1 in StyleBodyAccessor.updateBody(of:changed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a1;
  v25 = a4;
  v29 = a3;
  v27 = a2;
  v31 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v24 - v11;
  v26 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v26);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v17 + 16))(v20, Value, a5);
  (*(v14 + 16))(v16, v27, v13);
  (*(a7 + 72))(v16, a5, a7);
  (*(a6 + 40))(v25, a6);
  v22 = AssociatedTypeWitness;
  swift_dynamicCast();
  (*(a7 + 88))(v12, a5, a7);
  (*(v17 + 8))(v20, a5);
  return (*(v30 + 8))(v12, v22);
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 1;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a2;
  v10 = *a1;
  swift_retain_n();
  a5(a2, v10, &v12);

  if (a2[1])
  {
    a6(v9, *a2);
  }
}

void *assignWithCopy for _EnvironmentKeyWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t Text.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  v7 = String.init<A>(_:)();
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t one-time initialization function for accessibilityEnabled()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.accessibilityEnabled = result;
  return result;
}

uint64_t static _EnvironmentKeyTransformModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for ChildEnvironment();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  LODWORD(a1) = *a1;
  v13 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v13) = *(v13 + 16);
  (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
  ChildEnvironment.init(modifier:environment:oldValue:oldKeyPath:)(a1, v13, v8, 0, v12);
  v19 = v9;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v18, v9, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  (*(v10 + 8))(v12, v9);
  return _GraphInputs.environment.setter(v17[3]);
}

uint64_t ChildEnvironment.init(modifier:environment:oldValue:oldKeyPath:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ChildEnvironment();
  v9 = *(v8 + 32);
  v10 = type metadata accessor for Optional();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 36)] = a4;
  return result;
}

uint64_t static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v13 = v11;
    (*(a6 + 32))(&v13, a2, a3, a4, a5, a6);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v13 = v11;
    return (*(a6 + 32))(&v13, a2, a3, a4, a5, a6);
  }
}

uint64_t VStack.init(alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return _VariadicView.Tree.init(_:content:)(v5, partial apply for closure #1 in VStack.init(alignment:spacing:content:), &type metadata for _VStackLayout, a4);
}

uint64_t closure #1 in VStack.init(alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v13)(v12, a3);
}

void type metadata accessor for GesturePhase<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10, char a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v16 = a1;
  v17 = 0.0;
  if (a1 > 0.0)
  {
    v18 = a1;
  }

  else
  {
    v18 = 0.0;
  }

  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = v18;
  }

  v46 = a2 & 1;
  v20 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v17 = v19;
    }

    if (v17 < a3)
    {
      v17 = a3;
    }

    v20 = v17;
  }

  v45 = a4 & 1;
  v21 = a5;
  if ((a6 & 1) == 0)
  {
    v22 = a5;
    v23 = v20;
    if (a4)
    {
      v23 = 0.0;
    }

    if (v23 >= a5)
    {
      v22 = v23;
    }

    v21 = v22;
  }

  v44 = a6 & 1;
  v24 = a7;
  v25 = 0.0;
  if (a7 > 0.0)
  {
    v26 = a7;
  }

  else
  {
    v26 = 0.0;
  }

  if (a8)
  {
    v27 = a7;
  }

  else
  {
    v27 = v26;
  }

  v43 = a8 & 1;
  v28 = a10;
  if ((a11 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v25 = v27;
    }

    if (v25 < a10)
    {
      v25 = a10;
    }

    v28 = v25;
  }

  v29 = a12;
  if ((a13 & 1) == 0)
  {
    v30 = a12;
    v31 = v28;
    if (a11)
    {
      v31 = 0.0;
    }

    if (v31 >= a12)
    {
      v30 = v31;
    }

    v29 = v30;
  }

  if (a2)
  {
    v16 = 0.0;
  }

  if (a4 & 1) != 0 && (a6)
  {
    goto LABEL_41;
  }

  v33 = (a4 & 1) != 0 ? a5 : a3;
  if (v16 > v33)
  {
    goto LABEL_46;
  }

  v40 = a3;
  if (a4)
  {
    v40 = 0.0;
  }

  if ((a6 & 1) != 0 || v40 <= a5)
  {
LABEL_41:
    v32 = v16 == INFINITY;
  }

  else
  {
LABEL_46:
    v32 = 1;
  }

  v42 = v32;
  if (a8)
  {
    v24 = 0.0;
  }

  if (a11 & 1) != 0 && (a13)
  {
    goto LABEL_51;
  }

  v35 = (a11 & 1) != 0 ? a12 : a10;
  if (v24 > v35)
  {
    goto LABEL_56;
  }

  v41 = a10;
  if (a11)
  {
    v41 = 0.0;
  }

  if ((a13 & 1) != 0 || v41 <= a12)
  {
LABEL_51:
    v34 = v24 == INFINITY;
  }

  else
  {
LABEL_56:
    v34 = 1;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v36 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
    v39 = a14;
    v38 = a15;
    if (!result)
    {
      goto LABEL_69;
    }
  }

  else
  {
    result = static Semantics.forced >= v36;
    v39 = a14;
    v38 = a15;
    if (!result)
    {
      goto LABEL_69;
    }
  }

  if (v42 || v34)
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
  }

LABEL_69:
  *a9 = v19;
  *(a9 + 8) = v46;
  *(a9 + 16) = v20;
  *(a9 + 24) = v45;
  *(a9 + 32) = v21;
  *(a9 + 40) = v44;
  *(a9 + 48) = v27;
  *(a9 + 56) = v43;
  *(a9 + 64) = v28;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = v29;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = v39;
  *(a9 + 104) = v38;
  return result;
}

double specialized Image.init(systemName:)(uint64_t a1, uint64_t a2, __n128 a3)
{

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;
  *(v5 + 36) = 1;
  *(v5 + 40) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  result = -0.0;
  *(v5 + 72) = xmmword_18DD85510;
  *(v5 + 88) = 0;
  return result;
}

uint64_t outlined destroy of Text.ResolvedString(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v19 = a20;
  v21 = -INFINITY;
  if ((a2 & 1) == 0)
  {
    v21 = *&a1;
  }

  v59 = *&a5;
  v60 = *&a3;
  if (a4)
  {
    v23 = v21;
  }

  else
  {
    v23 = *&a3;
  }

  if (a6)
  {
    v25 = v23;
  }

  else
  {
    v25 = *&a5;
  }

  if (v21 > v23 || v23 > v25)
  {
    goto LABEL_24;
  }

  v27 = *&a7;
  if (a8)
  {
    v27 = -INFINITY;
  }

  v28 = a17;
  if (a18)
  {
    v28 = v27;
  }

  v29 = a19;
  if (a20)
  {
    v29 = v28;
  }

  if (v27 > v28 || v28 > v29)
  {
LABEL_24:
    v57 = a7;
    v58 = a8;
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v31 = static Log.runtimeIssuesLog;
    os_log(_:dso:log:_:_:)();

    v19 = a20;
    a8 = v58;
    a7 = v57;
  }

  v32 = 0.0;
  if (*&a1 > 0.0)
  {
    v33 = *&a1;
  }

  else
  {
    v33 = 0.0;
  }

  if (a2)
  {
    v34 = *&a1;
  }

  else
  {
    v34 = v33;
  }

  v80 = a2 & 1;
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v32 = v34;
    }

    if (v32 < *&a3)
    {
      v32 = *&a3;
    }

    v60 = v32;
  }

  v79 = a4 & 1;
  if ((a6 & 1) == 0)
  {
    v35 = v60;
    if (a4)
    {
      v35 = 0.0;
    }

    if (v35 < *&a5)
    {
      v35 = *&a5;
    }

    v59 = v35;
  }

  v78 = a6 & 1;
  v36 = *&a7;
  v37 = 0.0;
  if (*&a7 > 0.0)
  {
    v38 = *&a7;
  }

  else
  {
    v38 = 0.0;
  }

  if (a8)
  {
    v39 = *&a7;
  }

  else
  {
    v39 = v38;
  }

  v77 = a8 & 1;
  v40 = a17;
  if ((a18 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v37 = v39;
    }

    if (v37 < a17)
    {
      v37 = a17;
    }

    v40 = v37;
  }

  v76 = a18 & 1;
  v41 = a19;
  if ((v19 & 1) == 0)
  {
    v42 = a19;
    v43 = v40;
    if (a18)
    {
      v43 = 0.0;
    }

    if (v43 >= a19)
    {
      v42 = v43;
    }

    v41 = v42;
  }

  v75 = v19 & 1;
  v44 = 0.0;
  if ((a2 & 1) == 0)
  {
    v44 = *&a1;
  }

  if (a4 & 1) != 0 && (a6)
  {
    goto LABEL_67;
  }

  v46 = (a4 & 1) != 0 ? *&a5 : *&a3;
  if (v44 > v46)
  {
    goto LABEL_72;
  }

  v55 = 0.0;
  if ((a4 & 1) == 0)
  {
    v55 = *&a3;
  }

  if ((a6 & 1) != 0 || v55 <= *&a5)
  {
LABEL_67:
    v45 = v44 == INFINITY;
  }

  else
  {
LABEL_72:
    v45 = 1;
  }

  if (a8)
  {
    v36 = 0.0;
  }

  if (a18 & 1) != 0 && (v19)
  {
    goto LABEL_77;
  }

  v49 = (a18 & 1) != 0 ? a19 : a17;
  if (v36 > v49)
  {
    goto LABEL_82;
  }

  v56 = a17;
  if (a18)
  {
    v56 = 0.0;
  }

  if ((v19 & 1) != 0 || v56 <= a19)
  {
LABEL_77:
    v47 = v34;
    v48 = v36 == INFINITY;
  }

  else
  {
LABEL_82:
    v47 = v34;
    v48 = 1;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v50 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v52 = a21;
    v51 = a22;
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_95;
    }
  }

  else
  {
    v53 = static Semantics.forced >= v50;
    v52 = a21;
    v51 = a22;
    if (!v53)
    {
      goto LABEL_95;
    }
  }

  if (v45 || v48)
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

LABEL_95:
  v61 = v47;
  v62 = v80;
  v63 = v60;
  v64 = v79;
  v65 = v59;
  v66 = v78;
  v67 = v39;
  v68 = v77;
  v69 = v40;
  v70 = v76;
  v71 = v41;
  v72 = v75;
  v73 = v52;
  v74 = v51;
  return View.modifier<A>(_:)(&v61, a23, &type metadata for _FlexFrameLayout);
}

uint64_t View.ignoresSafeArea(_:edges:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  return View.modifier<A>(_:)(&v4, a3, &type metadata for _SafeAreaRegionsIgnoringLayout);
}

double GeometryProxy.size.getter()
{
  specialized static Update.begin()();
  v0 = 0.0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    v0 = *AGGraphGetInputValue();
  }

  static Update.end()();
  return v0;
}

unint64_t instantiation function for generic protocol witness table for GeometryReaderLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for GeometryReader<A>.Child(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>();
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
  *(v18 + 16) = partial apply for closure #2 in static Layout.makeStaticView(root:inputs:properties:list:);
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
  v39 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v21);
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
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

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout()
{
  result = lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout;
  if (!lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout;
  if (!lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryReader<A>.Child()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

double static GeometryReader._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 64);
  *&v52[16] = *(a2 + 48);
  *v53 = v8;
  v9 = *(a2 + 32);
  v51 = *(a2 + 16);
  *v52 = v9;
  *&v53[16] = *(a2 + 80);
  v50 = *a2;
  v10 = *&v53[8];
  v11 = DWORD1(v9);
  swift_beginAccess();
  v12 = *(v51 + 16);
  *&v36 = __PAIR64__(*&v53[8], v7);
  v26 = *v53;
  *(&v36 + 1) = __PAIR64__(*&v52[28], *v53);
  LODWORD(v37) = v12;
  *(&v37 + 4) = *&v53[12];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>();
  v33[2] = type metadata accessor for _VariadicView.Tree();
  v28 = a4;
  v34 = type metadata accessor for GeometryReader.Child();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v33, v34, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v27 = v11;
  v48 = v50;
  v49 = v51;
  v16 = *v52;
  v15 = *&v52[4];
  v46 = *&v52[8];
  v47 = *&v52[24];
  v17 = *&v53[4];
  v30 = *&v53[12];
  if ((v11 & 0x20) != 0)
  {
    v15 = v11 | 2;
    outlined init with copy of _ViewInputs(&v50, &v36);
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v20 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
    swift_endAccess();
    v22 = *MEMORY[0x1E698D3F8];
    *&v36 = __PAIR64__(v10, v21);
    DWORD2(v36) = v22;
    HIDWORD(v36) = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    *&v36 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v26);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v16 |= 0x18u;
  }

  else
  {
    OffsetAttribute2 = *&v53[8];
    v19 = *v53;
    outlined init with copy of _ViewInputs(&v50, &v36);
  }

  v36 = v48;
  v37 = v49;
  v38 = v16;
  v39 = v15;
  v40 = v46;
  v41 = v47;
  v42 = v19;
  v43 = v17;
  v44 = OffsetAttribute2;
  v45 = v30;
  v23 = closure #1 in static GeometryReader._makeView(view:inputs:)(&v36, v31, a3, v28, &v31);
  if ((v27 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v23);
    MEMORY[0x1EEE9AC00](v24);
    AGGraphMutateAttribute();
  }

  HIDWORD(v32) = *MEMORY[0x1E698D3F8];
  if ((LOBYTE(v32) & 0x80) == 0)
  {
    LODWORD(v32) |= 0x80u;
  }

  v36 = v48;
  v37 = v49;
  v38 = v16;
  v39 = v15;
  v40 = v46;
  v41 = v47;
  v42 = v19;
  v43 = v17;
  v44 = OffsetAttribute2;
  v45 = v30;
  outlined destroy of _ViewInputs(&v36);
  *a5 = v31;
  result = v32;
  a5[1] = v32;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t closure #1 in static GeometryReader._makeView(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v37 = a1[2];
  v38 = v9;
  v39 = a1[4];
  v40 = *(a1 + 20);
  v10 = a1[1];
  v35 = *a1;
  v36 = v10;
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>();
  v12 = v11;
  type metadata accessor for _VariadicView.Tree();
  _GraphValue.init(_:)(a2, &v18);
  v13 = v18;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  v32 = v40;
  v15 = v37;
  LODWORD(v27) = 0;
  v17 = v13;
  v31[0] = v35;
  v31[1] = v36;
  v31[3] = v38;
  v31[4] = v39;
  v31[2] = v27;
  v21 = v27;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v19 = v35;
  v20 = v36;
  outlined init with copy of _ViewInputs(&v35, v33);
  outlined init with copy of _ViewInputs(v31, v33);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v17, &v19, v12, a3, &protocol witness table for _LayoutRoot<A>, a4);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  outlined destroy of _ViewInputs(v33);
  LODWORD(v27) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v25);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v8;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v9 = *(a2 + 16);
  v43 = *a2;
  v44 = v9;
  outlined init with copy of _ViewInputs(a2, &v50);
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v11 = dyld_program_sdk_at_least();
  }

  else
  {
    v11 = static Semantics.forced >= v10;
  }

  v12 = *a2;
  v13 = *(a2 + 36);
  DWORD1(v45) = v13 & 0xFFFFFFF3;
  v49 = v12;
  v14 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v14);
  outlined destroy of PropertyList(&v49);
  v15 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v15, v50);
  if (v16)
  {
    if ((*(v16 + 72) & 1) == 0)
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
      if ((v13 & 0x800) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v20 = v11;
  v21 = a4;
  v22 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v15, v50);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v24);

  a1 = v22;
  a4 = v21;
  v11 = v20;
  if ((v13 & 0x800) == 0)
  {
LABEL_11:
    DWORD1(v45) = v13 & 0xFFFFFFF3;
  }

LABEL_12:
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
  a3(v38, v17, &v50);
  v41[2] = v52;
  v41[3] = v53;
  v41[4] = v54;
  v42 = v55;
  v41[0] = v50;
  v41[1] = v51;
  outlined destroy of _ViewInputs(v41);
  outlined init with copy of _ViewListOutputs.Views(v38, v36);
  if (v37)
  {
    v18 = v36[0];
    if (*(&v36[0] + 1))
    {
      LODWORD(v50) = v36[0];
      *(&v50 + 1) = *(&v36[0] + 1);
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
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v50, v18, a4);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v29);
    if ((v13 & 0x800) != 0)
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      v50 = v43;
      v51 = v44;
      v25 = *(a2 + 48);
      v32 = *(a2 + 32);
      v33 = v25;
      v34 = *(a2 + 64);
      v35 = *(a2 + 80);
      v26 = *(a2 + 16);
      v30 = *a2;
      v31 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v30);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v50, v27, a4);
    }

    else
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      if (v11)
      {
        v19 = 2;
      }

      else
      {
        v19 = 65794;
      }

      v50 = v43;
      v51 = v44;
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5(a1, &v50, v19, v29, a4);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  outlined destroy of _ViewListOutputs(v38);
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v30 = v43;
  v31 = v44;
  return outlined destroy of _ViewInputs(&v30);
}

{
  v56 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v7 = *(a2 + 16);
  v47[0] = *a2;
  v47[1] = v7;
  v48 = *(a2 + 32);
  outlined init with copy of _GraphInputs(v47, &v50);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9AnyLayoutV_Tt1B5(&v25, v47);
  outlined destroy of _GraphInputs(v47);
  v8 = WORD2(v48);
  v49 = *&v47[0];
  v9 = *(a2 + 48);
  v43 = *(a2 + 32);
  v44 = v9;
  v45 = *(a2 + 64);
  v46 = *(a2 + 80);
  v10 = *(a2 + 16);
  v41 = *a2;
  v42 = v10;
  v11 = DWORD1(v48) & 0xFFFFFFF3;
  DWORD1(v43) = DWORD1(v48) & 0xFFFFFFF3;
  LODWORD(v39[0]) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(a2, &v50);
  type metadata accessor for Axis?();
  lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties();
  v12 = Attribute.init<A>(body:value:flags:update:)();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v41, v12);
  outlined destroy of PropertyList(&v49);
  v13 = v41;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v13, v50);
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
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v13, v50);
  if (v19)
  {
    v20 = *(v19 + 72) | 0x4000;
  }

  else
  {
    v20 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v41, v20);

  if ((v8 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v43) = v11;
  }

LABEL_5:
  v37[2] = v43;
  v37[3] = v44;
  v37[4] = v45;
  v38 = v46;
  v37[0] = v41;
  v37[1] = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v50 = v41;
  v51 = v42;
  v15 = outlined init with copy of _ViewInputs(v37, v39);
  a3(v36, v15, &v50);
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v54;
  v40 = v55;
  v39[0] = v50;
  v39[1] = v51;
  outlined destroy of _ViewInputs(v39);
  outlined init with copy of _ViewListOutputs.Views(v36, v34);
  if (v35)
  {
    v16 = v34[0];
    if (*(&v34[0] + 1))
    {
      LODWORD(v50) = v34[0];
      *(&v50 + 1) = *(&v34[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v16 = Attribute.init<A>(body:value:flags:update:)();
    }

    v17 = v25;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    outlined init with copy of _ViewInputs(&v50, &v28);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5(v17, &v50, v16, a4);

    outlined destroy of _ViewInputs(&v50);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v34, v27);
    v18 = v25;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    if ((v8 & 0x800) != 0)
    {
      v21 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v21;
      v32 = *(a2 + 64);
      v33 = *(a2 + 80);
      v22 = *(a2 + 16);
      v28 = *a2;
      v29 = v22;
      outlined init with copy of _ViewInputs(&v50, v26);
      v23 = _ViewListOutputs.makeAttribute(viewInputs:)(&v28);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5(v18, &v50, v23, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v50, &v28);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA03AnyC0V_Tt4B5(v18, &v50, 2, v27, a4);
    }

    outlined destroy of _ViewInputs(&v50);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  outlined destroy of _ViewListOutputs(v36);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  return outlined destroy of _ViewInputs(&v28);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GeometryReaderLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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

void type metadata accessor for _LayoutRoot<GeometryReaderLayout>()
{
  if (!lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>)
  {
    lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout();
    v0 = type metadata accessor for _LayoutRoot();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>);
    }
  }
}

uint64_t GeometryReader.Child.updateValue()(char *a1)
{
  v121 = *MEMORY[0x1E69E9840];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>();
  v4 = v3;
  v5 = *(a1 + 2);
  v6 = type metadata accessor for _VariadicView.Tree();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v85 - v8);
  v103 = type metadata accessor for ObservationTracking._AccessList();
  v111 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v85 - v14);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v98 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = (&v85 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  v110 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v85 - v30;
  LODWORD(v102) = *(v1 + 24) + 1;
  *(v1 + 24) = v102;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == v32)
  {
    __break(1u);
  }

  else
  {
    v105 = v22;
    v96 = v15;
    v87 = v4;
    v88 = v9;
    v90 = v7;
    v107 = v6;
    v33 = v1;
    v34 = *(v1 + 20);
    v89 = a1;
    v95 = *(a1 + 3);
    LODWORD(v92) = v32 == v34;
    v108 = v5;
    v35 = AGCreateWeakAttribute();
    v36 = v35;
    v94 = HIDWORD(v35);
    v37 = AGCreateWeakAttribute();
    v38 = v37;
    v93 = HIDWORD(v37);
    v39 = AGCreateWeakAttribute();
    v40 = v39;
    v91 = HIDWORD(v39);
    v22 = AGCreateWeakAttribute();
    v41 = AGCreateWeakAttribute();
    v42 = v41;
    v43 = HIDWORD(v41);
    a1 = v108;
    v44 = AGCreateWeakAttribute();
    v92 = &v85;
    v113[0] = v36;
    v113[1] = v94;
    v113[2] = v38;
    v113[3] = v93;
    v113[4] = v40;
    v113[5] = v91;
    v114 = v22;
    v115 = v42;
    v116 = v43;
    v117 = v44;
    v118 = v102;
    MEMORY[0x1EEE9AC00](v44);
    v9 = &v85 - 6;
    v45 = v95;
    *(&v85 - 4) = a1;
    *(&v85 - 3) = v45;
    *(&v85 - 2) = v33;
    *(&v85 - 1) = v113;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v46 = static ObservationCenter._current;
  swift_beginAccess();
  v47 = pthread_getspecific(v46[2]);
  v48 = v111;
  v49 = v104;
  v50 = v103;
  if (!v47)
  {
    v51 = swift_slowAlloc();
    pthread_setspecific(v46[2], v51);
    v120 = type metadata accessor for ObservationCenter();
    *&v119 = v46[3];
    outlined init with take of Any(&v119, v51);

    v47 = v51;
  }

  outlined init with copy of Any(v47, &v119);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v52 = v112;
  v53 = AGGraphGetCurrentAttribute();
  v54 = v96;
  if (v53 == v32)
  {
    __break(1u);
LABEL_20:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v52 + 24) = v49;
    goto LABEL_9;
  }

  LODWORD(v94) = v53;
  swift_beginAccess();
  v95 = *(v52 + 24);
  *(v52 + 24) = MEMORY[0x1E69E7CC0];
  v55 = (*(v48 + 56))(v49, 1, 1, v50);
  MEMORY[0x1EEE9AC00](v55);
  *(&v85 - 4) = a1;
  *(&v85 - 3) = partial apply for closure #1 in GeometryReader.Child.updateValue();
  *(&v85 - 2) = v9;
  v56 = type metadata accessor for Error();
  v22 = a1;
  v57 = v97;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v49, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v85 - 6), v98, v56, v22, MEMORY[0x1E69E7288], &v112);
  v102 = 0;
  v58 = *(v110 + 32);
  v59 = v106;
  v58(v106, v57, v22);
  v60 = v105;
  outlined init with take of ObservationTracking._AccessList?(v49, v105);
  v61 = v99;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v60, v99, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v48 + 48))(v61, 1, v50) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v60);
    v62 = v61;
    goto LABEL_12;
  }

  v104 = v58;
  v32 = v54;
  v54 = *(v48 + 32);
  v54(v32, v61, v50);
  (*(v48 + 16))(v100, v32, v50);
  v49 = *(v52 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + 24) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v65 = v49[2];
  v64 = v49[3];
  if (v65 >= v64 >> 1)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1, v49);
  }

  v49[2] = v65 + 1;
  v66 = v49 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v65;
  v48 = v111;
  v54(v66, v100, v50);
  *(v52 + 24) = v49;
  (*(v48 + 8))(v32, v50);
  v62 = v105;
  v59 = v106;
  v58 = v104;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v62);
  v58(v109, v59, v22);
  v67 = *(v52 + 24);
  v68 = *(v67 + 2);
  if (v68)
  {
    v70 = *(v48 + 16);
    v69 = v48 + 16;
    v111 = v70;
    v71 = &v67[(*(v69 + 64) + 32) & ~*(v69 + 64)];
    v72 = *(v69 + 56);
    v73 = (v69 - 8);
    v106 = v67;

    v74 = v94;
    v75 = v86;
    do
    {
      (v111)(v75, v71, v50);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v74, v75);
      (*v73)(v75, v50);
      v71 += v72;
      --v68;
    }

    while (v68);

    v22 = v108;
  }

  *(v52 + 24) = v95;

  v77 = v109;
  v76 = v110;
  v78 = v101;
  v79 = (*(v110 + 16))(v101, v109, v22);
  v80 = v88;
  v81 = _VariadicView.Tree.init(root:content:)(v79, v78, v87, v22, v88);
  MEMORY[0x1EEE9AC00](v81);
  *(&v85 - 2) = v89;
  *(&v85 - 1) = swift_getWitnessTable();
  v82 = v107;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, partial apply for closure #1 in StatefulRule.value.setter, (&v85 - 4), v107, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v83);
  (*(v90 + 8))(v80, v82);
  return (*(v76 + 8))(v77, v22);
}

uint64_t partial apply for closure #1 in GeometryReader.Child.updateValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[5];
  v8 = v1[2];
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for GeometryReader();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in GeometryReader.Child.updateValue(), &v7, v5, v8, a1);
}

uint64_t partial apply for closure #1 in closure #1 in GeometryReader.Child.updateValue()(uint64_t (**a1)(_OWORD *))
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = *(v2 + 32);
  v7 = *(v2 + 48);
  return v3(v6);
}

double protocol witness for LayoutEngine.sizeThatFits(_:) in conformance LayoutComputer.DefaultEngine(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 8))
  {
    return 10.0;
  }

  return result;
}

uint64_t _VariadicView.Tree.init(root:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for _VariadicView.Tree();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 44);

  return v9(v10, a2, a4);
}

double ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  v24 = *(a7 + 24);
  v23 = *(a7 + 32);
  v22 = *(a7 + 40);
  type metadata accessor for PropertyList.Tracker();
  v17 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 24) = 0;
  *(v18 + 32) = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 40) = v19;
  *(v18 + 48) = v20;
  *(v18 + 56) = 0;
  *(v17 + 16) = v18;
  *(a8 + 64) = v17;
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = a3;
  *(a8 + 12) = v13;
  *(a8 + 13) = v14;
  *(a8 + 14) = a6;
  result = *a7;
  *(a8 + 16) = *a7;
  *(a8 + 24) = v15;
  *(a8 + 32) = v16;
  *(a8 + 40) = v24;
  *(a8 + 48) = v23;
  *(a8 + 56) = v22;
  return result;
}

uint64_t _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for EffectAnimator.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

double static StaticIf<>._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a3;
  v38 = a4;
  v39 = a9;
  v75 = *MEMORY[0x1E69E9840];
  v15 = a2[1];
  v16 = a2[3];
  v70 = a2[2];
  v71 = v16;
  v72 = a2[4];
  v17 = a2[1];
  v68 = *a2;
  v69 = v17;
  v62 = v68;
  v63 = v15;
  v36 = a11;
  v35 = *a1;
  v73 = *(a2 + 20);
  v64 = v70;
  v18 = *(a8 + 8);
  outlined init with copy of _GraphInputs(&v68, &v56);
  v19 = v18(&v62, a5, a8);
  v74[0] = v62;
  v74[1] = v63;
  v74[2] = v64;
  outlined destroy of _GraphInputs(v74);
  v20 = a6;
  v21 = a7;
  v22 = type metadata accessor for StaticIf();
  if (v19)
  {
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v22);
    v42 = v35;
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeView(view:inputs:), v20, &v41);
    v23 = v41;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v53 = v71;
    v54 = v72;
    v55 = v73;
    v50 = v68;
    v51 = v69;
    v52 = v70;
    v25 = v70;
    LODWORD(v52) = 0;
    v40 = v23;
    v56 = v68;
    v57 = v69;
    v61 = v73;
    v59 = v71;
    v60 = v72;
    v58 = v52;
    v46 = v52;
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v44 = v68;
    v45 = v69;
    v26 = *(a10 + 24);
    outlined init with copy of _ViewInputs(&v68, &v62);
    outlined init with copy of _ViewInputs(&v56, &v62);
    v26(v43, &v40, &v44, v37, v38, v20, a10);
    v64 = v46;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    v62 = v44;
    v63 = v45;
    outlined destroy of _ViewInputs(&v62);
    LODWORD(v52) = v25;
    if (ShouldRecordTree)
    {
LABEL_9:
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v43, &v50);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v22);
    v27 = v36;
    v42 = v35;
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a7, &v41);
    v28 = v41;
    v29 = AGSubgraphShouldRecordTree();
    if (v29)
    {
      AGSubgraphBeginTreeElement();
    }

    v53 = v71;
    v54 = v72;
    v55 = v73;
    v50 = v68;
    v51 = v69;
    v52 = v70;
    v30 = v70;
    LODWORD(v52) = 0;
    v40 = v28;
    v56 = v68;
    v57 = v69;
    v61 = v73;
    v59 = v71;
    v60 = v72;
    v58 = v52;
    v46 = v52;
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v44 = v68;
    v45 = v69;
    v31 = *(v27 + 24);
    outlined init with copy of _ViewInputs(&v68, &v62);
    outlined init with copy of _ViewInputs(&v56, &v62);
    v31(v43, &v40, &v44, v37, v38, v21, v27);
    v64 = v46;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    v62 = v44;
    v63 = v45;
    outlined destroy of _ViewInputs(&v62);
    LODWORD(v52) = v30;
    if (v29)
    {
      goto LABEL_9;
    }
  }

  v46 = v52;
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v44 = v50;
  v45 = v51;
  outlined destroy of _ViewInputs(&v44);
  result = *&v43[1];
  v33 = v39;
  *v39 = *v43;
  v33[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ChameleonColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t closure #1 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5 + 1;
  if (__OFADD__(a5, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = type metadata accessor for ConditionalTypeDescriptor();
    return ConditionalTypeDescriptor.project(at:baseIndex:_:)(v10, v7, a6, a7, v11);
  }

  return result;
}

uint64_t _GraphInputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PropertyList.subscript.getter(a1, *v3, a2, *(a3 + 8));
}

{
  return PropertyList.subscript.getter(a1, *v3, a2, *(a3 + 8));
}

uint64_t static View.makeDebuggableView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v35[2] = a2[2];
  v35[3] = v10;
  v35[4] = a2[4];
  v36 = *(a2 + 20);
  v11 = a2[1];
  v35[0] = *a2;
  v35[1] = v11;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v13 = a2[3];
  v27 = a2[2];
  v28 = v13;
  v29 = a2[4];
  v30 = *(a2 + 20);
  v14 = a2[1];
  v25 = *a2;
  v26 = v14;
  v15 = v27;
  LODWORD(v27) = 0;
  v18 = v9;
  v31[0] = v25;
  v31[1] = v14;
  v32 = v30;
  v31[3] = v13;
  v31[4] = v29;
  v31[2] = v27;
  v21 = v27;
  v22 = v13;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v14;
  v16 = *(a4 + 24);
  outlined init with copy of _ViewInputs(v35, v33);
  outlined init with copy of _ViewInputs(v31, v33);
  v16(&v18, &v19, a3, a4);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  outlined destroy of _ViewInputs(v33);
  LODWORD(v27) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v25);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

uint64_t _ViewInputs.animatedPosition()(uint64_t (*a1)(__int128 *))
{
  v6 = *v1;
  v3 = *(v1 + 2);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10[0] = *(v1 + 56);
  *(v10 + 12) = *(v1 + 68);
  v7 = v3;
  swift_beginAccess();
  v4 = a1(&v6);
  swift_endAccess();
  return v4;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaRegionsIgnoringLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _AppearanceActionModifier.MergedCallbacks.updateValue()()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 16);

  v3 = *AGGraphGetValue();

  if (v2 != v3 >> 1)
  {

LABEL_4:
    v4 = *AGGraphGetValue() >> 1;
    type metadata accessor for _AppearanceActionModifier.MergedBox();
    v1 = swift_allocObject();
    *(v1 + 20) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 16) = v4;
    *(v0 + 8) = v1;
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v9 = Value[2];
  v8 = Value[3];
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  *(v1 + 32) = *Value;
  *(v1 + 40) = v7;
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
  swift_retain_n();
  AGGraphSetOutputValue();
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AnimationBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 160) - 8) + 8))(v0 + *(*v0 + 176));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for _OverlayShapeModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 2;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -2)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 2;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

Swift::Void __swiftcall AppearanceEffect.updateValue()()
{
  if (*(v0 + 48) == *MEMORY[0x1E698D3F8])
  {
    *(v0 + 48) = AGGraphGetCurrentAttribute();
  }

  v1 = *(v0 + 44);
  if (v1 != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    AppearanceEffect.disappeared()();
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*Value);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
  outlined consume of _AppearanceActionModifier?(v7, v8, v9);
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  if ((*(v0 + 41) & 1) == 0)
  {

    AppearanceEffect.appeared()();
  }
}

Swift::Void __swiftcall AppearanceEffect.appeared()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 8);
    if (v1 >= 2)
    {
      v2 = *(v0 + 16);
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      *(v3 + 24) = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v4 + 24) = v3;
      v11[0] = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);

      static Update.enqueueAction(reason:_:)(v11, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v4);
    }

    *(v0 + 40) = 1;
    v5 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v6 = *(v5 + 169);

    if (v6)
    {
      if (one-time initialization token for v6 != -1)
      {
        swift_once();
      }

      v7 = static Semantics.v6;
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

      else if (static Semantics.forced < v7)
      {
        return;
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v8 = AGCreateWeakAttribute();
        v10 = 17;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        static Update.enqueueAction(reason:_:)(&v10, partial apply for closure #2 in AppearanceEffect.appeared(), v9);
      }
    }
  }
}

uint64_t outlined consume of _AppearanceActionModifier?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(result);

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
  }

  return result;
}

uint64_t type metadata completion function for PlatformViewResponderBase()
{
  result = type metadata accessor for ContentResponderHelper();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EnvironmentValues.defaultForegroundColor.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  v4 = v2[1];
  if (!v4)
  {
    v7 = a2(v3);
    if (!v7)
    {
      return 0;
    }

    v6 = *(v7 + 72);

    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v8 = specialized ShapeStyle.fallbackColor(in:level:)(v3, v4, 0, v6);

    return v8;
  }

  v6 = a1(v3);

  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

void CoreViewRepresentableFeatureBuffer.append<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for CoreViewRepresentableFeatureBuffer._VTable();

  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v6, a2, a3);
}

uint64_t _ViewInputs.layoutDirection.getter()
{
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyViewInputs<A>(elt:inputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 8))(a2, &v12, a4, a5, v10);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 112))(&v10, a1, &v9, a3, a4);
}

unint64_t PreferencesInputs.contains<A>(_:includeHostPreferences:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  result = PreferenceKeys._index(of:)(a3);
  v10 = *(v8 + 16);
  if (result == v10)
  {
    goto LABEL_16;
  }

  if (result >= v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v8 + 16 * result + 32) != a3)
  {
LABEL_16:
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    if (((*(a4 + 40))(a3, a4) & 1) == 0)
    {
      return 0;
    }

    result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
    v11 = *(v8 + 16);
    if (result == v11)
    {
      return 0;
    }

    if (result < v11)
    {
      return *(v8 + 16 * result + 32) == &type metadata for HostPreferencesKey;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  return 1;
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(outputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 128))(&v10, a1, &v9, a3, a4);
}

uint64_t _ViewInputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

uint64_t getEnumTagSinglePayload for _ViewInputs(uint64_t a1, int a2)
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

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyViewOutputs<A>(elt:outputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 24))(a2, &v12, a4, a5, v10);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyBridgedInputs<A>(elt:inputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 16))(a2, &v12, a4, a5, v10);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyBridgedInputs<A>(inputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 120))(&v10, a1, &v9, a3, a4);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyWrappedOutputs<A>(outputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 136))(&v10, a1, &v9, a3, a4);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyWrappedOutputs<A>(elt:outputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 32))(a2, &v12, a4, a5, v10);
}

uint64_t EnvironmentValues.preferenceBridge.setter()
{
  v5 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  v1 = *v0;
  outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v4, v3);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(v0, v3);

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v3);
  if (v0[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016PreferenceBridgeK033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Ttg5(v1, *v0);
  }

  return outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v4);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnabledKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.isEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA07EnabledK033_09CE35833F3876FE3A3A46977D61FC64LLVG_Ttg5(v4, *a2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnabledKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnabledKey>>);
    }
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance BothFeatures<A, B>(_OWORD *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return static ViewInputFlag.evaluate(inputs:)(a1, a2, WitnessTable);
}

uint64_t static ViewInputFlag.evaluate(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = a1[1];
  v18[1] = *a1;
  v18[2] = v14;
  v18[3] = a1[2];
  v15 = swift_checkMetadataState();
  _GraphInputs.subscript.getter(v15, v15, v6);
  (*(a3 + 48))(a2, a3);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v16(v13, AssociatedTypeWitness);
  return a2 & 1;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance BothFeatures<A, B>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = static Feature.defaultValue.getter(a1, WitnessTable);
  *a2 = result & 1;
  return result;
}

uint64_t instantiation function for generic protocol witness table for BothFeatures<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t static BothFeatures.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 16))())
  {
    return (*(a4 + 16))(a2, a4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static ViewInputFlag.value.getter in conformance BothFeatures<A, B>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getWitnessTable();
  *a1 = 1;
  return result;
}

uint64_t specialized static StyleContextWriter._makeInputs(modifier:inputs:)(uint64_t *a1)
{
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v2, v6[0]) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AnyStyleContextType.pushing<A>(_:)(v6);
  v3 = v6[0];
  v4 = v6[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(a1, v3, v4);
}

uint64_t static StyleableView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v103 = *(a2 + 32);
  v104 = v9;
  v11 = *(a2 + 48);
  v105 = *(a2 + 64);
  v12 = *(a2 + 16);
  v102[0] = *a2;
  v102[1] = v12;
  v98 = v103;
  v99 = v11;
  v100 = *(a2 + 64);
  v13 = *a1;
  v106 = *(a2 + 80);
  v101 = *(a2 + 80);
  v96 = v102[0];
  v97 = v10;
  v107[1] = v10;
  v108 = v103;
  v107[0] = v102[0];
  v14 = *&v102[0];
  outlined init with copy of _ViewInputs(v102, &v90);
  outlined init with copy of _GraphInputs(v107, &v90);
  v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v14);
  v109 = v14;
  v110 = *(a2 + 8);
  v111 = *(a2 + 24);
  v112 = *(a2 + 40);
  outlined destroy of _GraphInputs(&v109);
  if (!v15 || v15 != a3)
  {
    _GraphInputs.setCurrentStyleableView<A>(_:)(a3, a3);
    if ((*(a4 + 56))(a3, a4) & 1) != 0 && (v23 = WORD2(v108), (BYTE4(v108) & 0x20) != 0) && (v41 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v99), (v23 & 0x2000) == 0) && (v41)
    {
      v42 = v96;
      BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
      v43 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v42, v90);
      v60 = a5;
      if (v43)
      {
        v58 = *(v43 + 72);
      }

      else
      {
        v58 = 0;
      }

      v44 = AGMakeUniqueID();
      v45 = v44;
      v57 = v44;
      _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v96, v45);
      v46 = DWORD2(v105);
      v47 = HIDWORD(v104);
      v48 = v105;

      v59 = &v57;
      *&v90 = __PAIR64__(v48, v13);
      *(&v90 + 1) = __PAIR64__(v47, v46);
      *&v91 = __PAIR64__(v58, v57);
      MEMORY[0x1EEE9AC00](v49);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v54[2] = AssociatedTypeWitness;
      ScrapeableResolvedRepresentation = type metadata accessor for MakeScrapeableResolvedRepresentation();
      WitnessTable = swift_getWitnessTable();
      v50 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v90, partial apply for closure #1 in Attribute.init<A>(_:), v54, ScrapeableResolvedRepresentation, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
      v52 = v84;
      AGGraphSetFlags();
      _GraphValue.init(_:)(v52, &v62);
      v53 = v62;
      v92 = v98;
      v93 = v99;
      v94 = v100;
      v95 = v101;
      v90 = v96;
      v91 = v97;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v74 = v92;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v72 = v90;
      v73 = v91;
      v83 = v95;
      v29 = v92;
      LODWORD(v74) = 0;
      LODWORD(v64[0]) = v53;
      v78 = v90;
      v79 = v91;
      v81 = v93;
      v82 = v94;
      v80 = v74;
      v68 = v74;
      v69 = v93;
      v70 = v94;
      v71 = v95;
      v66 = v90;
      v67 = v91;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = *(AssociatedConformanceWitness + 24);
      outlined init with copy of _ViewInputs(&v90, &v84);
      outlined init with copy of _ViewInputs(&v78, &v84);
      a5 = v60;
    }

    else
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      LODWORD(v90) = v13;
      ResolvedRepresentation = type metadata accessor for MakeResolvedRepresentation();
      v26 = swift_getWitnessTable();
      _GraphValue.init<A>(_:)(&v90, AssociatedTypeWitness, ResolvedRepresentation, v26, &v62);
      v27 = v62;
      v92 = v98;
      v93 = v99;
      v94 = v100;
      v95 = v101;
      v90 = v96;
      v91 = v97;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v74 = v92;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v72 = v90;
      v73 = v91;
      v83 = v95;
      v29 = v92;
      LODWORD(v74) = 0;
      LODWORD(v64[0]) = v27;
      v78 = v90;
      v79 = v91;
      v81 = v93;
      v82 = v94;
      v80 = v74;
      v68 = v74;
      v69 = v93;
      v70 = v94;
      v71 = v95;
      v66 = v90;
      v67 = v91;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = *(AssociatedConformanceWitness + 24);
      outlined init with copy of _ViewInputs(&v90, &v84);
      outlined init with copy of _ViewInputs(&v78, &v84);
    }

    v31(v64, &v66, AssociatedTypeWitness, AssociatedConformanceWitness);
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v89 = v71;
    v84 = v66;
    v85 = v67;
    outlined destroy of _ViewInputs(&v84);
    LODWORD(v74) = v29;
    if (!ShouldRecordTree)
    {
      goto LABEL_18;
    }

    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v72);
    goto LABEL_17;
  }

  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for StyleInput();
  _ViewInputs.popLast<A, B>(_:)(v16, &protocol witness table for StyleInput<A>, &v62);
  v17 = v63;
  if (!v63)
  {
    v60 = a5;
    LODWORD(v90) = v13;
    v32 = swift_getAssociatedTypeWitness();
    v33 = type metadata accessor for ModifiedContent();
    DefaultRepresentation = type metadata accessor for MakeDefaultRepresentation();
    v35 = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(&v90, v33, DefaultRepresentation, v35, v61);
    v36 = v61[0];
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v90 = v96;
    v91 = v97;
    v37 = AGSubgraphShouldRecordTree();
    if (v37)
    {
      AGSubgraphBeginTreeElement();
    }

    v59 = v33;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v72 = v90;
    v73 = v91;
    v83 = v95;
    v38 = v92;
    LODWORD(v74) = 0;
    LODWORD(v64[0]) = v36;
    v78 = v90;
    v79 = v91;
    v81 = v93;
    v82 = v94;
    v80 = v74;
    v68 = v74;
    v69 = v93;
    v70 = v94;
    v71 = v95;
    v66 = v90;
    v67 = v91;
    outlined init with copy of _ViewInputs(&v90, &v84);
    outlined init with copy of _ViewInputs(&v78, &v84);
    v39 = *(a4 + 8);
    v40 = swift_getAssociatedConformanceWitness();
    static ModifiedContent<>._makeView(view:inputs:)(v64, &v66, a3, v32, v39, *(*(v40 + 8) + 8), v60);
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v89 = v71;
    v84 = v66;
    v85 = v67;
    outlined destroy of _ViewInputs(&v84);
    LODWORD(v74) = v38;
    if (!v37)
    {
      goto LABEL_18;
    }

    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v60, &v72);
LABEL_17:
    AGSubgraphEndTreeElement();
LABEL_18:
    v64[2] = v74;
    v64[3] = v75;
    v64[4] = v76;
    v65 = v77;
    v64[0] = v72;
    v64[1] = v73;
    outlined destroy of _ViewInputs(v64);
    v68 = v98;
    v69 = v99;
    v70 = v100;
    v71 = v101;
    v66 = v96;
    v67 = v97;
    v22 = &v66;
    return outlined destroy of _ViewInputs(v22);
  }

  v18 = v62;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v20 = result;
    LODWORD(v66) = v13;
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v83 = v101;
    v78 = v96;
    v79 = v97;
    v74 = v98;
    v75 = v99;
    v76 = v100;
    v77 = v101;
    v72 = v96;
    v73 = v97;
    v21 = *(result + 8);
    outlined init with copy of _ViewInputs(&v78, &v90);
    v21(&v66, v18, v17, &v72, a3, a4, v17, v20);
    v86 = v74;
    v87 = v75;
    v88 = v76;
    v89 = v77;
    v84 = v72;
    v85 = v73;
    outlined destroy of _ViewInputs(&v84);
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v90 = v96;
    v91 = v97;
    v22 = &v90;
    return outlined destroy of _ViewInputs(v22);
  }

  __break(1u);
  return result;
}

uint64_t static StyleModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v4;
  v6 = *(a2 + 48);
  v35 = *(a2 + 64);
  v7 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v7;
  v28 = v33;
  v29 = v6;
  v30 = *(a2 + 64);
  v8 = *a1;
  v36 = *(a2 + 80);
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v5;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for StyleOverrideInput();
  outlined init with copy of _ViewInputs(v32, v24);
  _ViewInputs.subscript.getter(v9, v9, &protocol witness table for StyleOverrideInput<A>);
  v10 = *(&v22[0] + 1);
  if (*(&v22[0] + 1))
  {
    v8 = v22[0];
  }

  else
  {
    v10 = type metadata accessor for StyleModifierType();
  }

  LODWORD(v24[0]) = v8;
  *(&v24[0] + 1) = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for StyleInput();
  _ViewInputs.append<A, B>(_:to:)(v24, v11, v11, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &protocol witness table for AnyStyleModifier);
  v20[2] = v28;
  v20[3] = v29;
  v20[4] = v30;
  v21 = v31;
  v20[0] = v26;
  v20[1] = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v14 = v26;
  v15 = v27;
  v12 = outlined init with copy of _ViewInputs(v20, v24);
  a3(v12, &v14);
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v23 = v19;
  v22[0] = v14;
  v22[1] = v15;
  outlined destroy of _ViewInputs(v22);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v25 = v31;
  v24[0] = v26;
  v24[1] = v27;
  return outlined destroy of _ViewInputs(v24);
}

uint64_t static StyleModifierType.makeView<A>(view:modifier:inputs:)@<X0>(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v85 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a4[3];
  v75 = a4[2];
  v76 = v14;
  v77 = a4[4];
  v78 = *(a4 + 20);
  v15 = a4[1];
  v73 = *a4;
  v74 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static DynamicPropertyCache.fields(of:)(AssociatedTypeWitness, &v79);
  v17 = v79;
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v67 = v73;
  v68 = v74;
  v28 = DWORD1(v80);
  v29 = v13;
  LODWORD(v53) = v13;
  v61 = v79;
  v32 = *(&v79 + 1);
  v33 = v80;
  LOBYTE(v62) = v80;
  DWORD1(v62) = DWORD1(v80);
  outlined init with copy of _ViewInputs(&v73, &v79);
  v30 = a6;
  static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(v59, &v79, &v53, a2, a3, &v67, &v61, a5, a6, a7);
  v18 = v59[0];
  v27 = v79;
  v31 = v80;
  v19 = swift_getAssociatedTypeWitness();
  v81 = v69;
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v79 = v67;
  v80 = v68;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v55 = v81;
  v56 = v82;
  v57 = v83;
  v58 = v84;
  v53 = v79;
  v54 = v80;
  v60 = v84;
  v21 = v81;
  LODWORD(v55) = 0;
  LODWORD(v41) = v18;
  v59[0] = v79;
  v59[1] = v80;
  v59[3] = v82;
  v59[4] = v83;
  v59[2] = v55;
  v49 = v55;
  v50 = v82;
  v51 = v83;
  v52 = v84;
  v47 = v79;
  v48 = v80;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v79, &v61);
  outlined init with copy of _ViewInputs(v59, &v61);
  v23(v36, &v41, &v47, v19, AssociatedConformanceWitness);
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v61 = v47;
  v62 = v48;
  outlined destroy of _ViewInputs(&v61);
  LODWORD(v55) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v36, &v53);
    AGSubgraphEndTreeElement();
  }

  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v47 = v53;
  v48 = v54;
  outlined destroy of _ViewInputs(&v47);
  v24 = v36[0];
  v25 = v36[1];
  if (v31)
  {
    v43 = v69;
    v44 = v70;
    v45 = v71;
    v46 = v72;
    v41 = v67;
    v42 = v68;
    outlined destroy of _ViewInputs(&v41);
  }

  else
  {
    v40 = v27;
    v35 = v29;
    v37[0] = v17;
    v37[1] = v32;
    v38 = v33;
    v39 = v28;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v35, v37, v30);
    v43 = v69;
    v44 = v70;
    v45 = v71;
    v46 = v72;
    v41 = v67;
    v42 = v68;
    outlined destroy of _ViewInputs(&v41);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a8 = v24;
  a8[1] = v25;
  return result;
}

uint64_t _ViewList_ID.Canonical.init(id:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {

    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t static TraitTransformerModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t initializeWithCopy for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 48) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

BOOL static InvertedViewInputPredicate.evaluate(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return ((*(a3 + 8))(v5) & 1) == 0;
}

uint64_t static EnvironmentModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9[0] = v2;
  v9[1] = v4;
  updated = type metadata accessor for UpdateEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, closure #1 in Attribute.init<A>(_:)partial apply, v10, updated, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return _GraphInputs.environment.setter(v8);
}

uint64_t static StyleContextTypeBox.pushing<A>(_:)()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleStyleContext();
  return type metadata accessor for StyleContextTypeBox();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v6, v11);
  if (!v7 || (result = (*(a3 + 8))(*(v7 + 72), *(v7 + 80), a2, a3), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<StyleContextInput>, &type metadata for StyleContextInput, &protocol witness table for StyleContextInput, type metadata accessor for TypedElement);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for StyleContextInput, 0, v9);
  }

  return result;
}

uint64_t _GraphInputs.pushStyleContext<A>(_:)()
{
  v1 = v0;
  v2 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v2, v6[0]) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AnyStyleContextType.pushing<A>(_:)(v6);
  v3 = v6[0];
  v4 = v6[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(v1, v3, v4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateEnvironment<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for UpdateEnvironment<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnyStyleContextType.pushing<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 8) + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for GestureLabelModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t assignWithTake for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t default argument 0 of Rule.withObservation<A>(observationCenter:do:)()
{
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v0 = static ObservationCenter._current;
  swift_beginAccess();
  v1 = pthread_getspecific(v0[2]);
  if (!v1)
  {
    v2 = swift_slowAlloc();
    pthread_setspecific(v0[2], v2);
    v5 = type metadata accessor for ObservationCenter();
    *&v4 = v0[3];
    outlined init with take of Any(&v4, v2);

    v1 = v2;
  }

  outlined init with copy of Any(v1, &v4);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  return v6;
}

uint64_t Rule.withObservation<A>(observationCenter:do:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v81 = a8;
  v76 = a7;
  v74 = a2;
  v75 = a3;
  v71 = a9;
  v82[4] = *MEMORY[0x1E69E9840];
  v14 = type metadata accessor for ObservationTracking._AccessList();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v64[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v64[-v19];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v64[-v27];
  v28 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v73 = &v64[-v33];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_16;
  }

  v78 = v28;
  v65 = CurrentAttribute;
  v66 = a4;
  v80 = a6;
  swift_beginAccess();
  v35 = *(a1 + 24);
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v36 = (*(v79 + 56))(v25, 1, 1, v14);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v74;
  v37 = v75;
  *&v64[-32] = a5;
  *&v64[-24] = v38;
  *&v64[-16] = v37;
  v39 = type metadata accessor for Error();
  v40 = v77;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, v76, &v64[-48], v21, v39, a5, MEMORY[0x1E69E7288], v82);
  if (v40)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v25, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    *(a1 + 24) = v35;
  }

  v75 = 0;
  v76 = v35;
  v42 = *(v78 + 32);
  v77 = a5;
  v78 += 32;
  v43 = a5;
  a5 = v42;
  (v42)(v73, v31, v43);
  v44 = MEMORY[0x1E69E81D0];
  v45 = MEMORY[0x1E69E6720];
  v46 = v72;
  _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v25, v72, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v47 = v68;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v46, v68, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v44, v45);
  v48 = v79;
  if ((*(v79 + 48))(v47, 1, v14) != 1)
  {
    a4 = *(v48 + 32);
    v51 = v70;
    a4(v70, v47, v14);
    v28 = v48;
    (*(v48 + 16))(v69, v51, v14);
    v31 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_7:
      v54 = v31[2];
      v53 = v31[3];
      if (v54 >= v53 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v31);
      }

      v31[2] = v54 + 1;
      v55 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v54;
      v48 = v28;
      a4(v55, v69, v14);
      *(a1 + 24) = v31;
      (*(v28 + 8))(v70, v14);
      v50 = v71;
      v49 = v72;
      goto LABEL_10;
    }

LABEL_16:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(a1 + 24) = v31;
    goto LABEL_7;
  }

  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v49 = v47;
  v50 = v71;
LABEL_10:
  v56 = v76;
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v49, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  (a5)(v50, v73, v77);
  v57 = *(a1 + 24);
  v58 = *(v57 + 16);
  if (v58)
  {
    v60 = *(v48 + 16);
    v59 = v48 + 16;
    v78 = v60;
    v79 = a10;
    v61 = v57 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v77 = *(v59 + 56);
    v62 = v67;
    v74 = v57;

    v63 = v65;
    do
    {
      (v78)(v62, v61, v14);
      swift_getAssociatedTypeWitness();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v63, v62);
      (*(v59 - 8))(v62, v14);
      v61 += v77;
      --v58;
    }

    while (v58);

    v56 = v76;
  }

  *(a1 + 24) = v56;
}

uint64_t closure #1 in ObservationCenter._withObservation<A>(do:)partial apply(uint64_t a1, void *a2)
{
  return _s7SwiftUI17ObservationCenterC05_withC02dox5value_0C00C8TrackingV11_AccessListVSg06accessJ0txyKXE_tKlFxSpyALGKXEfU_TA_0(a1, a2);
}

{
  return partial apply for closure #1 in ObservationCenter._withObservation<A>(do:)(a1, a2);
}

uint64_t protocol witness for ViewList.count(style:) in conformance BaseViewList(unint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  if (v2)
  {
    v6 = result;
    result *= v2 >> 1;
    if ((v6 * (v2 >> 1)) >> 64 != result >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _VariadicView_Children.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _VariadicView_Children.subscript.getter(a1, v3, v25);
  static Update.end()();
  _MovableLockUnlock(v6);
  outlined init with copy of _VariadicView_Children.Element?(v25, &v18);
  if (*(&v19 + 1))
  {
    v7 = v23;
    *(a2 + 64) = v22;
    *(a2 + 80) = v7;
    *(a2 + 96) = v24;
    v8 = v19;
    *a2 = v18;
    *(a2 + 16) = v8;
    v9 = v21;
    *(a2 + 32) = v20;
    *(a2 + 48) = v9;
    return outlined destroy of _VariadicView_Children.Element?(v25);
  }

  outlined destroy of _VariadicView_Children.Element?(&v18);
  v10 = static os_log_type_t.fault.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static Log.internalErrorsLog;
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_18DDA6EB0;
  v14 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = a1;
  v15 = v11;
  os_log(_:dso:log:_:_:)();

  *(a2 + 24) = &type metadata for EmptyViewListElements;
  *(a2 + 32) = &protocol witness table for EmptyViewListElements;
  v16 = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = 0;
  if (a1 > 0x7FFFFFFF)
  {
    __break(1u);
  }

  else if (a1 >= 0xFFFFFFFF80000000)
  {
    *(a2 + 56) = 0;
    *(a2 + 60) = ~a1;
    *(a2 + 64) = v16;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = v16;
    return outlined destroy of _VariadicView_Children.Element?(v25);
  }

  __break(1u);

  result = _MovableLockUnlock(v12);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for _OverlayPreferenceModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for _VariadicView_Children(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v5;

  return a1;
}

uint64_t closure #1 in _VariadicView_Children.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2[7];
  v9[0] = a2[6];
  v9[1] = v5;
  v10 = a1;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v14 = v9;
  v15 = 1;
  v12 = a2;
  v13 = a3;

  ViewList.applySublists(from:list:transform:to:)(&v10, 0x100000000, &v14, partial apply for closure #1 in closure #1 in closure #1 in _VariadicView_Children.subscript.getter, v11, v6, v7);
}

uint64_t ViewList.applySublists(from:list:transform:to:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v11[0] = BYTE4(a2) & 1;
  v17 = 2;
  v15 = v7;
  v16 = v8;
  v12 = a4;
  v13 = a5;
  v9 = *(a7 + 64);
  v14 = BYTE4(a2) & 1;
  return v9(a1, &v17, a2 | ((BYTE4(a2) & 1) << 32), &v15, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v11, a6) & 1;
}

BOOL closure #1 in closure #1 in closure #1 in _VariadicView_Children.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v18);
    v8 = a1[3];
    v9 = *(a2 + 40);
    v10 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements(v18, v19);

    v11 = v9;

    v12 = _ViewList_SublistSubgraphStorage.retain()();
    outlined destroy of _ViewList_SubgraphElements(v18);

    *&v20 = v12;
    *(&v20 + 1) = v10;
    *&v21 = v8;
    *(&v21 + 1) = v4;
    *&v22 = v3;
    *(&v22 + 1) = v11;
    outlined destroy of _VariadicView_Children.Element?(a3);
    v13 = a1[10];
    v14 = v20;
    *(a3 + 32) = v19[2];
    *(a3 + 48) = v14;
    v15 = v22;
    *(a3 + 64) = v21;
    *(a3 + 80) = v15;
    v16 = v19[1];
    *a3 = v19[0];
    *(a3 + 16) = v16;
    *(a3 + 96) = v13;
  }

  return v4 >= v3;
}

uint64_t initializeWithCopy for _ViewList_View(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;

  v7 = v6;
  return a1;
}

void destroy for _ViewList_View(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v2 = *(a1 + 88);
}

uint64_t outlined destroy of _VariadicView_Children.Element?(uint64_t a1)
{
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for _VariadicView_Children.Element?, &type metadata for _VariadicView_Children.Element, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _VariadicView_Children.Element?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for _VariadicView_Children.Element?, &type metadata for _VariadicView_Children.Element, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}