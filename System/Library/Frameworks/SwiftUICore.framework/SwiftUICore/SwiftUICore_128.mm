void _ShapeStyle_Shape.applyingOpacity(at:to:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    _ShapeStyle_Shape.opacity(at:)(a1);
  }
}

__n128 _ShapeStyle_Shape.init(operation:result:environment:foregroundStyle:bounds:role:substrate:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a6;
  v13 = *a7;
  *(a8 + 107) = 0;
  *a8 = *a1;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = v10;
  *(a8 + 40) = v11;
  *(a8 + 48) = *a3;
  *(a8 + 64) = a4;
  result = *a5;
  v15 = *(a5 + 16);
  *(a8 + 104) = *(a5 + 32);
  *(a8 + 88) = v15;
  *(a8 + 72) = result;
  *(a8 + 105) = v12;
  *(a8 + 106) = v13;
  return result;
}

uint64_t _ShapeStyle_Shape.currentForegroundStyle.getter()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    v1 = EnvironmentValues.currentForegroundStyle.getter();
  }

  return v1;
}

BOOL ShapeStyle.isMultiLevel(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v17[27] = 0;
  *&v13 = 0;
  v12 = 0uLL;
  BYTE8(v13) = 5;
  *&v14 = 0;
  BYTE8(v14) = 5;
  *&v15 = v6;
  *(&v15 + 1) = v5;
  v16 = 0u;
  memset(v17, 0, 24);
  v17[24] = 1;
  *&v17[25] = 768;
  v7 = *(a3 + 32);

  v7(&v12, a2, a3);
  v8 = BYTE8(v14) == 4 && (v14 & 1) != 0;
  v10[4] = v16;
  v11[0] = *v17;
  *(v11 + 12) = *&v17[12];
  v10[0] = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  outlined destroy of _ShapeStyle_Shape(v10);
  return v8;
}

void *_ShapeStyle_Shape.effectiveForegroundStyle.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = EnvironmentValues.currentForegroundStyle.getter();
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      if (one-time initialization token for sharedPrimary != -1)
      {
        swift_once();
      }

      v1 = static HierarchicalShapeStyle.sharedPrimary;
    }
  }

  return v1;
}

uint64_t *ShapeStyle.resolveBackgroundMaterial(in:level:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2;
  if (a2 + 1 < a2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = *result;
  v8 = result[1];
  v30[27] = 0;
  *&v25 = 1;
  *(&v25 + 1) = a2;
  *&v26 = a2 + 1;
  BYTE8(v26) = 1;
  *&v27 = 0;
  BYTE8(v27) = 5;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  v29 = 0u;
  memset(v30, 0, 24);
  v30[24] = 1;
  *&v30[25] = 768;
  v10 = *(a4 + 32);

  v10(&v25, a3, a4);
  if (BYTE8(v27) == 1)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v24 = v11;
  LOBYTE(v22[0]) = 1;
  _ShapeStyle_Pack.subscript.getter(v22, v5, v16);

  v20[3] = v28;
  v20[4] = v29;
  v21[0] = *v30;
  *(v21 + 12) = *&v30[12];
  v20[0] = v25;
  v20[1] = v26;
  v20[2] = v27;
  outlined destroy of _ShapeStyle_Shape(v20);
  v22[4] = v16[4];
  v22[5] = v17;
  v22[6] = v18;
  v23 = v19;
  v22[0] = v16[0];
  v22[1] = v16[1];
  v22[2] = v16[2];
  v22[3] = v16[3];
  if (BYTE5(v17) == 3)
  {
    v13 = *(&v22[0] + 1);
    v12 = *&v22[0];
    outlined copy of Material.ID(*&v22[0], BYTE8(v22[0]));
    result = outlined destroy of _ShapeStyle_Pack.Style(v22);
    v14 = v13 & 0xFFFFFFFF000000FFLL;
  }

  else
  {
    result = outlined destroy of _ShapeStyle_Pack.Style(v22);
    v12 = 0;
    v14 = 255;
  }

  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t *ShapeStyle.resolveGradient(in:level:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = a2;
  if (a2 + 1 < a2)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = *result;
  v9 = result[1];
  v62[27] = 0;
  *&v57 = 0;
  *(&v57 + 1) = a2;
  *&v58 = a2 + 1;
  BYTE8(v58) = 1;
  *&v59 = 0;
  BYTE8(v59) = 5;
  *&v60 = v10;
  *(&v60 + 1) = v9;
  v61 = 0u;
  memset(v62, 0, 24);
  v62[24] = 1;
  *&v62[25] = 768;
  v11 = *(a4 + 32);

  v11(&v57, a3, a4);
  if (BYTE8(v59) == 1)
  {
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v56 = v12;
  LOBYTE(v36) = 0;
  _ShapeStyle_Pack.subscript.getter(&v36, v6, &v42);

  if (v54 == 1)
  {
    v13 = v42;
    v26 = v44;
    v27 = v43;
    v24 = v46;
    v25 = v45;
    v23 = v47;
    v14 = v48;
    v15 = v49;
    v16 = v50;
    v17 = v51;
    v18 = v52 | (v53 << 32);
    v19 = *(*v42 + 112);

    v19(&v28, v20);
    if (v28)
    {
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31 & 1;
      ResolvedGradient.multiplyOpacity(by:)(by);
      outlined consume of _ShapeStyle_Pack.Fill(v13, v27, v26, v25, v24, v23, v14, v15, v16, v17, v18, 1u);
      outlined destroy of _ShapeStyle_Pack.Style(&v42);
      v40 = v61;
      v41[0] = *v62;
      *(v41 + 12) = *&v62[12];
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v60;
      result = outlined destroy of _ShapeStyle_Shape(&v36);
      v21 = v35;
      v22 = v33 | (v34 << 32);
      *a5 = v32;
      *(a5 + 8) = v22;
      *(a5 + 16) = v21;
      return result;
    }

    v40 = v61;
    v41[0] = *v62;
    *(v41 + 12) = *&v62[12];
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v39 = v60;
    outlined destroy of _ShapeStyle_Shape(&v36);
    outlined consume of _ShapeStyle_Pack.Fill(v13, v27, v26, v25, v24, v23, v14, v15, v16, v17, v18, 1u);
    result = outlined destroy of _ShapeStyle_Pack.Style(&v42);
  }

  else
  {
    outlined destroy of _ShapeStyle_Pack.Style(&v42);
    v40 = v61;
    v41[0] = *v62;
    *(v41 + 12) = *&v62[12];
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v39 = v60;
    result = outlined destroy of _ShapeStyle_Shape(&v36);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

SwiftUI::_ShapeStyle_Name_optional __swiftcall _ShapeStyle_Name.init(rawValue:)(SwiftUI::_ShapeStyle_Name_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI__ShapeStyle_Name_unknownDefault)
  {
    value = SwiftUI__ShapeStyle_Name_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

__n128 _ShapeStyle_Shape.operation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 _ShapeStyle_Shape.operation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t _ShapeStyle_Shape.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return outlined copy of _ShapeStyle_Shape.Result(v2, v3);
}

uint64_t _ShapeStyle_Shape.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of _ShapeStyle_Shape.Result(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t _ShapeStyle_Shape.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t _ShapeStyle_Shape.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t _ShapeStyle_Shape.foregroundStyle.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

__n128 _ShapeStyle_Shape.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 _ShapeStyle_Shape.bounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

void type metadata accessor for ColorBox<Color.OpacityColor>()
{
  if (!lazy cache variable for type metadata for ColorBox<Color.OpacityColor>)
  {
    lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>);
    }
  }
}

Swift::Int _ShapeStyle_ShapeType.Operation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Name and conformance _ShapeStyle_Name()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Name and conformance _ShapeStyle_Name;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Name and conformance _ShapeStyle_Name)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Name and conformance _ShapeStyle_Name);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation);
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Shape(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  outlined copy of _ShapeStyle_Shape.Result(v5, v6);
  v7 = *(a1 + 32);
  *(a1 + 32) = v5;
  v8 = *(a1 + 40);
  *(a1 + 40) = v6;
  outlined consume of _ShapeStyle_Shape.Result(v7, v8);
  *(a1 + 48) = *(a2 + 6);

  *(a1 + 56) = *(a2 + 7);

  *(a1 + 64) = *(a2 + 8);

  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Shape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 40);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 40);
  *(a1 + 40) = v4;
  outlined consume of _ShapeStyle_Shape.Result(v5, v6);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Shape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 108))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Shape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Shape.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Shape.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t getEnumTag for _ShapeStyle_Shape.Operation(uint64_t a1)
{
  if (*(a1 + 24) <= 4u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Shape.Operation(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Shape.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _ShapeStyle_Shape.Result(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _ShapeStyle_Shape.Result(v5, v6);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Shape.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of _ShapeStyle_Shape.Result(v4, v5);
  return a1;
}

uint64_t getEnumTag for _ShapeStyle_Shape.Result(uint64_t a1)
{
  if (*(a1 + 8) <= 4u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Shape.Result(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ShapeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ShapeType.Result(unsigned __int8 *a1, unsigned int a2)
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
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - v10;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v53 = (&v48 - v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = a2;
    v52 = v13;
    v16 = 0;
    v48 = a1;
    v49 = v6;
    v19 = *(a1 + 64);
    v18 = a1 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v54 = v6 + 16;
    v55 = (v6 + 32);
    v50 = (v6 + 8);
    while (v22)
    {
      v56 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
      v25 = v52;
LABEL_16:
      v30 = *(*(v48 + 48) + 8 * v24);
      v31 = v57;
      (*(v6 + 16))(v57, *(v48 + 56) + *(v6 + 72) * v24, v5, v14);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
      v33 = v32;
      v34 = *(v32 + 48);
      *v25 = v30;
      (*(v6 + 32))(&v25[v34], v31, v5);
      (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
      v35 = v30;
LABEL_17:
      v36 = v53;
      outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v25, v53);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
      if ((*(*(v33 - 8) + 48))(v36, 1, v33) == 1)
      {
        return;
      }

      v37 = *v36;
      (*v55)(v8, v36 + *(v33 + 48), v5);
      v38 = v51;
      v39 = v8;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*v50)(v39, v5);
        return;
      }

      v6 = v49;
      v43 = *(v38 + 56) + *(v49 + 72) * v40;
      v44 = v57;
      (*(v49 + 16))(v57, v43, v5);
      lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, MEMORY[0x1E69E7BE0]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v6 + 8);
      v46(v44, v5);
      v46(v39, v5);
      v8 = v39;
      v22 = v56;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v23;
    }

    v27 = v26 - 1;
    v25 = v52;
    while (1)
    {
      v28 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
        v33 = v47;
        (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
        v56 = 0;
        v16 = v27;
        goto LABEL_17;
      }

      v29 = *(v18 + 8 * v28);
      ++v16;
      if (v29)
      {
        v56 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v16 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI7SpacingV3KeyV_AE5ValueOTt1g5(unint64_t result, uint64_t a2)
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
    v13 = *(v3 + 56) + 40 * v12;
    v14 = *(v13 + 32);
    v15 = v14 == 255;
    if (v14 == 255)
    {
      return v15;
    }

    v22 = *(v13 + 16);
    v23 = *v13;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v16 & 1) == 0)
    {
      return v15;
    }

    v17 = *(a2 + 56) + 40 * result;
    v18 = *v17;
    if (*(v17 + 32))
    {
      v19 = vceqq_f64(v23, v18);
      v20 = vceqq_f64(v22, *(v17 + 16));
      if (*(v17 + 32) == 1)
      {
        if (v14 != 1)
        {
          return v15;
        }
      }

      else if (v14 != 2)
      {
        return v15;
      }

      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(v19, v20), xmmword_18DDA9F30)) & 0xF) != 0)
      {
        return v15;
      }
    }

    else
    {
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v23.f64[0] == v18.f64[0];
      }

      if (!v21)
      {
        return v15;
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v20 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v21 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(v2 + 48) + 16 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(*(v2 + 56) + 8 * v10);
    outlined copy of AttributedString.AnyAttribute(*v11, v13);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
    v17 = v16;
    outlined consume of AttributedString.AnyAttribute(v12, v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v18, v14);

    if ((v19 & 1) == 0)
    {
      return v15;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v21)
    {
      return 1;
    }

    v9 = *(v20 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v6 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
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

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(unint64_t result, uint64_t a2)
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt1g5(uint64_t result, uint64_t a2)
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
  v29 = result + 64;
  v30 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v28 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(result + 48) + 40 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(result + 56) + 16 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    outlined copy of ResolvedIDs.Key(*v11, v13, v14, v15, *(v11 + 32));
    v20 = v16 > 0xFB;
    if (v16 <= 0xFB)
    {
      v32[0] = v12;
      v32[1] = v13;
      v32[2] = v14;
      v32[3] = v15;
      v33 = v16;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
      v23 = v22;
      outlined destroy of ResolvedIDs.Key(v32);
      if (v23)
      {
        v24 = *(a2 + 56) + 16 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v25 == v18 && v26 == v19;
        result = v30;
        v6 = v31;
        if (v27)
        {
          continue;
        }
      }
    }

    return v20;
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v28)
    {
      return 1;
    }

    v9 = *(v29 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AttributedTextFormatting.Constraints.constrain(_:)@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v55 = a1;
  v36 = a2;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v51 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v36 - v6;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v49 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v36 - v9;
  v47 = type metadata accessor for AttributeContainer();
  v10 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v14 = v3[1];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 16);
  v52 = v14;
  v44 = v17;
  if (v17)
  {
    v18 = v15 + 32;
    v42 = (v10 + 32);
    v41 = (v8 + 8);
    v40 = (v10 + 16);
    v39 = (v5 + 16);
    v38 = (v5 + 8);
    v37 = (v10 + 8);

    v20 = 0;
    v43 = v15;
    v21 = v47;
    while (v20 < *(v15 + 16))
    {
      v53 = v20 + 1;
      outlined init with copy of AnyAttributedTextValueConstraint(v18, v58);
      v22 = v46;
      (*v42)(v46, v55, v21);

      v23 = v52;

      v24 = v48;
      _ss8RangeSetV_6withinAByxGqd___qd_0_tc7ElementQyd__RszSTRd__SlRd_0_5IndexQyd_0_AFRSr0_lufC7SwiftUI24AttributedTextFormattingO11ConstraintsVAGV_SNyANGAMTt2B5(v20, v20);
      v56 = v15;
      v57 = v23;
      lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
      v25 = v50;
      Collection.subscript.getter();
      (*v41)(v24, v49);
      v54 = v18;
      v26 = *v40;
      (*v40)(v13, v22, v21);
      v27 = v16;
      v28 = v45;
      v29 = v51;
      (*v39)(&v13[*(v45 + 24)], v25, v51);
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v31 = v25;
      v15 = v43;
      (*v38)(v31, v29);
      (*v37)(v22, v21);
      v32 = *(v28 + 20);
      *&v13[v32] = v30;

      *&v13[v32] = v27;
      v33 = v59;
      v34 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      AttributedTextValueConstraint.constrainAttribute(in:)(v13, v33, v34);
      outlined destroy of AnyAttributedTextValueConstraint(v58);
      v26(v55, v13, v21);
      v35 = v54;
      v16 = *&v13[v32];

      result = outlined destroy of ConstraintAttributeContainerProxyBase(v13, type metadata accessor for ConstraintAttributeContainerProxyBase);
      v18 = v35 + 40;
      v20 = v53;
      if (v44 == v53)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_7:

    *v36 = v16;
  }

  return result;
}

uint64_t View.attributedTextFormattingDefinition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v10 + 16))(v12, a1, a3);
  AttributeScopeContext.init<A>(_:)(v12, a3, a5, v16);
  v15[0] = v16[0];
  v15[1] = v16[1];
  View.environment<A>(_:_:)(KeyPath, v15, a2, a4);
}

double key path getter for EnvironmentValues.attributeScopeContext : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v3, v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(*a1, v6);
  }

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.attributeScopeContext : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(a2, v3, v4, v5, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v7, *a2);
  }
}

uint64_t View.attributedTextFormattingDefinition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AttributedTextFormatting.EmptyDefinition();
  WitnessTable = swift_getWitnessTable();

  return View.attributedTextFormattingDefinition<A>(_:)(WitnessTable, a2, v6, a4, WitnessTable);
}

double static AttributedTextFormattingDefinition._makeDefinition(_:)@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AttributedTextFormatting._Inputs();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  AttributedTextFormatting._Inputs.Operation<A>.wrapped.getter(v12, a1);
  (*(v5 + 32))(v11, v7, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v17, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, v8);
  type metadata accessor for AttributedTextFormatting._Outputs.Operation();
  result = *&v17;
  *v16 = v17;
  return result;
}

unint64_t AttributedTextFormatting.Constraints.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(v2);
  a1[1] = result;
  return result;
}

uint64_t AttributedTextFormatting.Constraints.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = static AttributedStringKey.nsAttributedStringKey.getter();
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v10 = *(a2 - 8);
  (*(v10 + 16))(boxed_opaque_existential_1, a1, a2);
  type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAttributedTextValueConstraint>, &type metadata for AnyAttributedTextValueConstraint, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of AnyAttributedTextValueConstraint(v19, v11 + 32);
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)>, type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6F90]);
  type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)();
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18DDA6EB0;
  v15 = (v14 + v13);
  *v15 = v8;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  v16 = v8;
  RangeSet.init(_:)();
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of ConstraintAttributeContainerProxyBase(v15, type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>));
  swift_deallocClassInstance();

  (*(v10 + 8))(a1, a2);
  result = outlined destroy of AnyAttributedTextValueConstraint(v19);
  *a4 = v11;
  a4[1] = v17;
  return result;
}

Swift::Int __swiftcall AttributedTextFormatting.Constraints.Index.distance(to:)(SwiftUI::AttributedTextFormatting::Constraints::Index to)
{
  v2 = __OFSUB__(*to._orderedConstraintsIndex, *v1);
  result = *to._orderedConstraintsIndex - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

SwiftUI::AttributedTextFormatting::Constraints::Index __swiftcall AttributedTextFormatting.Constraints.Index.advanced(by:)(SwiftUI::AttributedTextFormatting::Constraints::Index by)
{
  if (__OFADD__(*v2, by._orderedConstraintsIndex))
  {
    __break(1u);
  }

  else
  {
    *v1 = *v2 + by._orderedConstraintsIndex;
  }

  return by;
}

Swift::Int AttributedTextFormatting.Constraints.Index.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void *protocol witness for Strideable.distance(to:) in conformance AttributedTextFormatting.Constraints.Index@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance AttributedTextFormatting.Constraints.Index@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *protocol witness for static Strideable._step(after:from:by:) in conformance AttributedTextFormatting.Constraints.Index(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance AttributedTextFormatting.Constraints.Index(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

SwiftUI::AttributedTextFormatting::Constraints::Index __swiftcall AttributedTextFormatting.Constraints.index(after:)(SwiftUI::AttributedTextFormatting::Constraints::Index after)
{
  if (__OFADD__(*after._orderedConstraintsIndex, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after._orderedConstraintsIndex + 1;
  }

  return after;
}

unint64_t *AttributedTextFormatting.Constraints.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    return outlined init with copy of AnyAttributedTextValueConstraint(*v2 + 40 * v3 + 32, a2);
  }

  __break(1u);
  return result;
}

uint64_t AttributedTextFormatting.Constraints.subscript.getter(uint64_t a1)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = v1[1];
  if (!*(v12 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *v1;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 16))(v8, *(v12 + 56) + *(v6 + 72) * v14, v5);
  (*(v6 + 32))(v11, v8, v5);
  v18[0] = v13;
  v18[1] = v12;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, MEMORY[0x1E69E6E20]);
  v16 = dispatch thunk of Sequence._copyToContiguousArray()();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t AttributedTextFormatting.Constraints.constraints<A>(for:in:)@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = static AttributedStringKey.nsAttributedStringKey.getter();
  v13 = v12;
  if (*(v11 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
  {
    (*(v7 + 16))(v4, *(v11 + 56) + *(v7 + 72) * v14, v6);

    (*(v7 + 56))(v4, 0, 1, v6);
    (*(v7 + 32))(v9, v4, v6);
  }

  else
  {

    (*(v7 + 56))(v4, 1, 1, v6);
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    RangeSet.init()();
    if ((*(v7 + 48))(v4, 1, v6) != 1)
    {
      outlined destroy of ConstraintAttributeContainerProxyBase(v4, type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?);
    }
  }

  RangeSet.formIntersection(_:)();
  v17[2] = v10;
  v17[3] = v11;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t AttributedTextFormatting.Constraints.append(_:)(uint64_t *a1)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BA8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - v6;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = (&v87 - v23);
  v24 = *a1;
  v25 = a1[1];
  v107 = *(*v1 + 16);

  specialized Array.append<A>(contentsOf:)(v24);
  v26 = 0;
  v28 = v25 + 64;
  v27 = *(v25 + 64);
  v90 = v25;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v88 = (v29 + 63) >> 6;
  v89 = v10 + 16;
  v105 = (v10 + 32);
  v93 = (v5 + 8);
  v97 = v10;
  v91 = (v10 + 8);
  v108 = v7;
  v92 = v25 + 64;
  v102 = v9;
  v106 = v19;
  while (1)
  {
    if (!v31)
    {
      if (v88 <= v26 + 1)
      {
        v34 = v26 + 1;
      }

      else
      {
        v34 = v88;
      }

      v35 = v34 - 1;
      v33 = v96;
      while (1)
      {
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_44;
        }

        if (v32 >= v88)
        {
          type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
          v40 = v83;
          (*(*(v83 - 8) + 56))(v33, 1, 1, v83);
          v99 = 0;
          v100 = v35;
          goto LABEL_16;
        }

        v31 = *(v28 + 8 * v32);
        ++v26;
        if (v31)
        {
          v100 = v32;
          goto LABEL_15;
        }
      }
    }

    v100 = v26;
    v32 = v26;
    v33 = v96;
LABEL_15:
    v99 = (v31 - 1) & v31;
    v36 = __clz(__rbit64(v31)) | (v32 << 6);
    v37 = *(*(v90 + 48) + 8 * v36);
    v38 = v97;
    (*(v97 + 16))(v19, *(v90 + 56) + *(v97 + 72) * v36, v9);
    type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
    v40 = v39;
    v41 = *(v39 + 48);
    *v33 = v37;
    (*(v38 + 32))(&v33[v41], v19, v9);
    (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
    v42 = v37;
LABEL_16:
    v43 = v95;
    outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v33, v95);
    type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
    if ((*(*(v40 - 8) + 48))(v43, 1, v40) == 1)
    {
    }

    v44 = *v43;
    v45 = v43 + *(v40 + 48);
    v104 = *v105;
    v104(v103, v45, v9);
    RangeSet.ranges.getter();
    v46 = lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges, MEMORY[0x1E69E7BA8]);
    v47 = dispatch thunk of Collection.count.getter();
    v98 = v44;
    if (v47)
    {
      break;
    }

    (*v93)(v7, v4);
    v49 = MEMORY[0x1E69E7CC0];
LABEL_27:
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    RangeSet.init()();
    v63 = *(v49 + 16);
    v64 = v102;
    if (v63)
    {
      v65 = (v49 + 32);
      do
      {
        v66 = *v65++;
        v109 = v66;
        RangeSet.init(_:)();
        RangeSet.formUnion(_:)();
        --v63;
      }

      while (v63);
    }

    v104(v101, v12, v64);
    v67 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = *(v67 + 8);
    v69 = v109;
    v70 = v98;
    v71 = specialized __RawDictionaryStorage.find<A>(_:)(v98);
    v73 = v69[2];
    v74 = (v72 & 1) == 0;
    v75 = __OFADD__(v73, v74);
    v76 = v73 + v74;
    if (v75)
    {
      goto LABEL_45;
    }

    v77 = v72;
    if (v69[3] >= v76)
    {
      v7 = v108;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = v70;
        v85 = v71;
        specialized _NativeDictionary.copy()();
        v71 = v85;
        v70 = v84;
        v69 = v109;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, isUniquelyReferenced_nonNull_native);
      type metadata accessor for NSAttributedStringKey(0);
      v69 = v109;
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(v70);
      v7 = v108;
      if ((v77 & 1) != (v78 & 1))
      {
        goto LABEL_48;
      }
    }

    v9 = v102;
    *(v67 + 8) = v69;
    if ((v77 & 1) == 0)
    {
      v79 = v71;
      RangeSet.init()();
      v69[(v79 >> 6) + 8] |= 1 << v79;
      *(v69[6] + 8 * v79) = v70;
      v104((v69[7] + *(v97 + 72) * v79), v19, v9);
      v80 = v69[2];
      v75 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v75)
      {
        goto LABEL_47;
      }

      v69[2] = v81;
      v82 = v70;
    }

    RangeSet.formUnion(_:)();

    (*v91)(v103, v9);
    v28 = v92;
    v31 = v99;
    v26 = v100;
  }

  v48 = v47;
  v110 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
  v49 = v110;
  dispatch thunk of Collection.startIndex.getter();
  if (v48 < 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v50 = v46;
    v51 = dispatch thunk of Collection.subscript.read();
    v54 = *v52;
    v53 = v52[1];
    v51(&v109, 0);
    v55 = v54 + v107;
    if (__OFADD__(v54, v107))
    {
      break;
    }

    v56 = v53 + v107;
    if (__OFADD__(v53, v107))
    {
      goto LABEL_42;
    }

    if (v56 < v55)
    {
      goto LABEL_43;
    }

    v57 = v12;
    v58 = v4;
    v110 = v49;
    v60 = *(v49 + 16);
    v59 = *(v49 + 24);
    if (v60 >= v59 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
      v49 = v110;
    }

    *(v49 + 16) = v60 + 1;
    v61 = v49 + 16 * v60;
    *(v61 + 32) = v55;
    *(v61 + 40) = v56;
    v62 = v108;
    v4 = v58;
    v46 = v50;
    dispatch thunk of Collection.formIndex(after:)();
    --v48;
    v12 = v57;
    v19 = v106;
    if (!v48)
    {
      (*v93)(v62, v4);
      goto LABEL_27;
    }
  }

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
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static AttributedTextFormatting.Constraints.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(*a1, *a2))
  {

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v2, v3);
  }
}

uint64_t AttributedTextFormatting.Constraints.hash(into:)(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  MEMORY[0x193AC11A0](*(*v1 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      outlined init with copy of AnyAttributedTextValueConstraint(v6, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of AnyAttributedTextValueConstraint(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int AttributedTextFormatting.Constraints.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      outlined init with copy of AnyAttributedTextValueConstraint(v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of AnyAttributedTextValueConstraint(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  specialized Dictionary<>.hash(into:)(v7, v1);
  return Hasher._finalize()();
}

void (*protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    outlined init with copy of AnyAttributedTextValueConstraint(*v2 + 40 * v6 + 32, result);
    return protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of AnyAttributedTextValueConstraint(*a1);

  free(v1);
}

void *protocol witness for Collection.subscript.getter in conformance AttributedTextFormatting.Constraints@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = *v2;
  v5 = v4[1];
  if (*(*v2 + 16) < v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v2[1];
  a2[2] = result;
  a2[3] = v6;
  *a2 = v3;
  a2[1] = v5;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedTextFormatting.Constraints@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16);
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance AttributedTextFormatting.Constraints@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.distance(from:to:) in conformance AttributedTextFormatting.Constraints(void *result, void *a2)
{
  v2 = *a2;
  v3 = *result;
  if (*a2 < *result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(*a2, *result))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = (v2 - v3);
  if (v2 != v3)
  {
    for (i = 0; !__OFADD__(i, 1); ++i)
    {
      v5 = v3 + i + 1;
      if (__OFADD__(v3 + i, 1))
      {
        goto LABEL_11;
      }

      if (__OFSUB__(v2, v5))
      {
        goto LABEL_12;
      }

      if (v2 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedTextFormatting.Constraints(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*result >= a2[1])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[1] < *result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[1] < result[1])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedTextFormatting.Constraints()
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.Constraints.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedTextFormatting.Constraints@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedTextFormatting.Constraints()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void protocol witness for static Equatable.== infix(_:_:) in conformance AttributedTextFormatting.Constraints(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(*a1, *a2))
  {

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v2, v3);
  }
}

uint64_t DiscontiguousSlice<>.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  MEMORY[0x193AC0870](&v9);
  v8 = v9;
  DiscontiguousSlice.subranges.getter();
  AttributedTextFormatting.Constraints.constraints<A>(for:in:)(a1);
  (*(v4 + 8))(v6, v3);
}

uint64_t AttributedTextFormatting._Inputs.Operation<A>.wrapped.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, v8);
  (*(v4 + 32))(v6, v10, v3);
  (*(a2 + 40))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t AttributedTextFormatting.TupleDefinition.init(definition:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v50 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v13 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11)
    {
      v16 = 0;
      v17 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v16 != v11)
      {
LABEL_9:
        v22 = v11 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v11;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v30 = type metadata accessor for AttributedTextFormatting.TupleDefinition();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v46 - v33;
  if (v11)
  {
    v47 = v30;
    v48 = &v46;
    v49 = a7;
    v35 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v36 = 32;
    v46 = v35;
    v37 = v50;
    v38 = v11;
    do
    {
      if (v11 == 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(v13 + v36);
      }

      v41 = *v35++;
      v40 = v41;
      v42 = *v37++;
      (*(*(v40 - 8) + 16))(&v29[v39], v42);
      v36 += 16;
      --v38;
    }

    while (v38);
    (*(v27 + 32))(v34, v29, v13);
    (*(v31 + 32))(v49, v34, v47);
    v43 = v46 - 1;
    v44 = v50 - 1;
    do
    {
      result = (*(*(v43[v11] - 8) + 8))(v44[v11]);
      --v11;
    }

    while (v11);
  }

  else
  {
    (*(v27 + 32))(v34, v29, v13, v32);
    return (*(v31 + 32))(a7, v34, v30);
  }

  return result;
}

uint64_t AttributedTextFormatting.AnyDefinition.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t Optional<A>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = a2;
  swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v18 = type metadata accessor for AttributedTextFormatting.EmptyDefinition();
  v19 = type metadata accessor for _ConditionalContent();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  (*(v14 + 16))(v16, v37, a1, v21);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    swift_getWitnessTable();
    v24 = *(*(v18 - 8) + 16);
    v25 = v24();
    v26 = (v24)(v25);
    v27 = v39;
    static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(second:)(v26, v18, v23);
  }

  else
  {
    (*(v6 + 32))(v12, v16, v5);
    v28 = *(v6 + 16);
    v37 = v19;
    v29 = v35;
    v28(v35, v12, v5);
    v30 = *(v6 + 8);
    v30(v12, v5);
    v31 = v36;
    v28(v36, v29, v5);
    v32 = v29;
    v19 = v37;
    v30(v32, v5);
    swift_getWitnessTable();
    v27 = v39;
    static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(first:)(v31, v5, v23);
    v30(v31, v5);
  }

  WitnessTable = swift_getWitnessTable();
  v41 = v27;
  v42 = WitnessTable;
  swift_getWitnessTable();
  (*(v20 + 16))(v40, v23, v19);
  return (*(v20 + 8))(v23, v19);
}

unint64_t static AttributedTextFormatting.EmptyDefinition._makeDefinition(_:)@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t AttributedTextFormatting.EmptyDefinition.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  v5 = *(*(a1 - 8) + 16);
  v5();

  return (v5)(a2);
}

uint64_t static AttributedTextFormatting.AnyDefinition._makeDefinition(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for AttributedTextFormatting.AnyDefinition();
  v4 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  (*(*(v4 - 8) + 16))(&v12, a1, v4);
  v10[0] = v12;
  v10[1] = v13;
  v5 = v14;
  v11 = v14;
  v6 = *(&v13 + 1);
  __swift_project_boxed_opaque_existential_1(v10, *(&v13 + 1));
  AttributedTextFormattingDefinition.constraints.getter(v6, v5, &v9);
  v7 = swift_checkMetadataState();
  *a2 = v9;
  return (*(*(v7 - 8) + 8))(v10, v7);
}

double AttributedTextFormattingDefinition.constraints.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AttributedTextFormatting._Inputs();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(*(a1 - 8) + 16))(v11, v4, a1, v14);
  (*(v9 + 32))(v16, v11, v8);
  (*(a2 + 48))(&v18, v16, a1, a2);
  (*(v13 + 8))(v16, v12);
  result = *&v18;
  *a3 = v18;
  return result;
}

uint64_t AttributedTextFormatting.AnyDefinition.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getWitnessTable();
  v5 = *(a1 - 8);
  v6 = *(v5 + 16);
  v6(v8, v2, a1);
  v6(a2, v8, a1);
  return (*(v5 + 8))(v8, a1);
}

double static _ConditionalContent<>._makeDefinition(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v38 = a1;
  v39 = a6;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ConditionalContent.Storage();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for _ConditionalContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - v23;
  (*(v25 + 16))(&v32 - v23, v38, v22);
  (*(v18 + 32))(v20, v24, v17);
  (*(v14 + 16))(v16, v20, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v34;
    v26 = v35;
    (*(v35 + 32))(v34, v16, a3);
    v28 = AttributedTextFormattingDefinition.constraints.getter(a3, v37, &v40);
    (*(v26 + 8))(v27, a3, v28);
  }

  else
  {
    v29 = v33;
    (*(v33 + 32))(v12, v16, a2);
    v30 = AttributedTextFormattingDefinition.constraints.getter(a2, v36, &v40);
    (*(v29 + 8))(v12, a2, v30);
  }

  (*(v18 + 8))(v20, v17);
  result = *&v40;
  *v39 = v40;
  return result;
}

uint64_t _ConditionalContent<>.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v8;
  v12[1] = v9;
  swift_getWitnessTable();
  v10 = *(v5 + 16);
  v10(v7, v2, a1);
  v10(a2, v7, a1);
  return (*(v5 + 8))(v7, a1);
}

uint64_t static AttributedTextFormatting.TupleDefinition._makeDefinition(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = a2;
  v70 = a7;
  if (a2 == 1)
  {
    v12 = a1;
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11)
    {
      v17 = 0;
      v18 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != v11)
      {
LABEL_9:
        v23 = v11 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    v12 = v14;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v28 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = v11;
  *(&v85 + 1) = a3;
  v86 = a4;
  v87 = a5;
  v88 = a6;
  v82 = a6;
  v32 = v31;
  v33 = type metadata accessor for AttributedTextFormatting.TupleDefinition();
  v68 = &v63;
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v63 - v35;
  v37 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  v65 = &v63;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v63 - v39;
  (*(v41 + 16))(&v63 - v39, v12, v38);
  v66 = v34;
  v42 = *(v34 + 32);
  v67 = v33;
  v42(v36, v40, v33);
  *&v85 = MEMORY[0x1E69E7CC0];
  *(&v85 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v69 = v28;
  v43 = *(v28 + 16);
  v73 = v30;
  v64 = v36;
  v71 = v32;
  v44 = v43(v30, v36, v32);
  if (v11)
  {
    v45 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v46 = (v82 & 0xFFFFFFFFFFFFFFFELL);
    v72 = v11;
    do
    {
      v80 = &v63;
      v81 = v46;
      v82 = v45;
      v56 = *v45;
      v77 = *v46;
      v57 = *(v56 - 8);
      MEMORY[0x1EEE9AC00](v44);
      v60 = &v63 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      v78 = v61;
      v79 = v58;
      if (v11 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v58;
      }

      v74 = *(v57 + 16);
      v74(v60, &v73[v47], v56);
      v75 = type metadata accessor for AttributedTextFormatting._Inputs();
      v76 = &v63;
      v48 = *(v75 - 8);
      MEMORY[0x1EEE9AC00](v75);
      v50 = &v63 - v49;
      v51 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
      v52 = *(v51 - 8);
      v53 = MEMORY[0x1EEE9AC00](v51);
      v55 = &v63 - v54;
      (v74)(&v63 - v54, v60, v56, v53);
      (*(v52 + 32))(v50, v55, v51);
      (*(v77 + 48))(v84, v50, v56);
      (*(v48 + 8))(v50, v75);
      v83[0] = v84[0];
      v83[1] = v84[1];
      AttributedTextFormatting.Constraints.append(_:)(v83);
      (*(v57 + 8))(v60, v56);

      v46 = v81 + 1;
      v45 = (v82 + 8);
      v11 = v72;
    }

    while (v78 != 1);
  }

  (*(v66 + 8))(v64, v67);
  *v70 = v85;
  return (*(v69 + 8))(v73, v71);
}

uint64_t AttributedTextFormatting.TupleDefinition.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v8 = *(v5 + 16);
  v8(v7, v2, a1);
  v8(a2, v7, a1);
  return (*(v5 + 8))(v7, a1);
}

uint64_t AttributedTextFormatting.ValueConstraint.init(for:values:default:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{

  return AttributedTextFormatting.ValueConstraint.init(for:values:default:)(a1, a2, a3);
}

{
  *a3 = a1;
  v5 = *(type metadata accessor for AttributedTextFormatting.ValueConstraint() + 52);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t AttributedTextFormatting.ValueConstraint.constrain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v17[0] = v2;
  v10 = *v2;
  *&v11 = *(a2 + 32);
  *&v12 = *(a2 + 16);
  *(&v12 + 1) = v5;
  *(&v11 + 1) = v4;
  v18 = v12;
  v19 = v11;
  v13 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v13, v9);
  v17[1] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v4) = MEMORY[0x193ABF5D0](v9, v10, v6, WitnessTable);
  result = (*(v7 + 8))(v9, v6);
  if ((v4 & 1) == 0)
  {
    (*(v7 + 16))(v9, v17[0] + *(a2 + 52), v6);
    return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v9, v16, v13);
  }

  return result;
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (static AttributeScope.contains<A>(_:)(a1[3], a1[2], a1[3], a1[4]))
  {

    return AttributeContainer.subscript.getter();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 56);

    return v5(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[3];
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  if (static AttributeScope.contains<A>(_:)(v5, a3[2], v5, a3[4]))
  {
    (*(v12 + 16))(v8, a1, v6);
    AttributeContainer.subscript.setter();
    return (*(v12 + 8))(a1, v6);
  }

  else
  {
    v10 = *(v12 + 8);

    return v10(a1, v6);
  }
}

{
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

BOOL static AttributedTextFormatting.ValueConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v30 - v11;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v30 - v16;
  v18 = a1;
  v37 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  if ((static Set.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v39 = v35;
  v40 = a4;
  v41 = v36;
  v42 = a6;
  v19 = *(type metadata accessor for AttributedTextFormatting.ValueConstraint() + 52);
  v35 = TupleTypeMetadata2;
  v36 = v13;
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v13 + 16);
  v21(v17, v18 + v19, v12);
  v21(&v17[v20], v37 + v19, v12);
  v22 = *(v38 + 48);
  if (v22(v17, 1, AssociatedTypeWitness) == 1)
  {
    if (v22(&v17[v20], 1, AssociatedTypeWitness) == 1)
    {
      (*(v36 + 8))(v17, v12);
      return 1;
    }

    goto LABEL_7;
  }

  v23 = v34;
  v21(v34, v17, v12);
  if (v22(&v17[v20], 1, AssociatedTypeWitness) == 1)
  {
    (*(v38 + 8))(v23, AssociatedTypeWitness);
LABEL_7:
    (*(v33 + 8))(v17, v35);
    return 0;
  }

  v25 = v38;
  v26 = v32;
  (*(v38 + 32))(v32, &v17[v20], AssociatedTypeWitness);
  v27 = v23;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v25 + 8);
  v29(v26, AssociatedTypeWitness);
  v29(v27, AssociatedTypeWitness);
  (*(v36 + 8))(v17, v12);
  return (v28 & 1) != 0;
}

uint64_t AttributedTextFormatting.ValueConstraint.hash(into:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  Set.hash(into:)();
  return Optional<A>.hash(into:)();
}

Swift::Int AttributedTextFormatting.ValueConstraint.hashValue.getter()
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.ValueConstraint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for AttributedTextFormattingDefinition.body.getter in conformance AttributedTextFormatting.ValueConstraint<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();

  return AttributedTextValueConstraint.body.getter(a1, a2);
}

double static AttributedTextValueConstraint._makeDefinition(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for AttributedTextFormatting._Inputs.Operation();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, a1, v15);
  (*(v8 + 32))(v13, v17, a2);
  (*(v8 + 16))(v10, v13, a2);
  AttributedTextFormatting.Constraints.init<A>(_:)(v10, a2, a3, &v20);
  (*(v8 + 8))(v13, a2);
  result = *&v20;
  *a4 = v20;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedTextFormatting.ValueConstraint<A, B>()
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.ValueConstraint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (static AttributeScope.contains<A>(_:)(a2, a1[2], a2, a1[4]))
  {
    v8 = a1[5];
    v9 = a1[3];

    return ConstraintAttributeContainerProxyBase.subscript.getter(a2, v9, a3, v8, a4);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(*(AssociatedTypeWitness - 8) + 56);

    return v12(a4, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t ConstraintAttributeContainerProxyBase.subscript.getter@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, void (*a4)(_BYTE *, _BYTE *, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v157 = a3;
  v156 = a1;
  v155 = a5;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v176 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v147[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v147[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v174 = &v147[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v147[-v14];
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E10]);
  v180 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v147[-v17];
  type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>();
  v168 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v167 = &v147[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v177 = v20;
  v172 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v147[-v21];
  type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>();
  v163 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v147[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v152 = &v147[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v147[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v147[-v31];
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v151 = &v147[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v147[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v161 = &v147[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v147[-v40];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v147[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v147[-v45];
  v170 = a2;
  v171 = a4;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  v48 = v25 + 13;
  v47 = v25[13];
  LODWORD(v159) = *MEMORY[0x1E6968710];
  v154 = v47;
  v47(v43);
  v153 = v25[7];
  v153(v43, 0, 1, v24);
  v160 = v28;
  v49 = *(v28 + 48);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v46, v32);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v43, &v32[v49]);
  v173 = v25;
  v50 = v25[6];
  v51 = v50(v32, 1, v24);
  v169 = v16;
  if (v51 == 1)
  {
    v181 = v48;
    v52 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v43, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v46, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v52);
    if (v50(&v32[v49], 1, v24) == 1)
    {
      outlined destroy of AttributeContainer?(v32, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
      v53 = v182;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v150 = v46;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v32, v181);
  if (v50(&v32[v49], 1, v24) == 1)
  {
    v54 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v43, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v150, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v54);
    (v173[1])(v181, v24);
LABEL_6:
    outlined destroy of ConstraintAttributeContainerProxyBase(v32, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    v53 = v182;
LABEL_7:
    v55 = type metadata accessor for ConstraintAttributeContainerProxyBase();
    AttributedString.AttributeDependencies.insert<A, B>(from:to:)(v170, v156, v170, v156, v171, v157);
    v56 = *(v55 + 24);
    v57 = v53;
    v58 = v178;
    DiscontiguousSlice<>.subscript.getter(v178);
    v59 = v172;
    v60 = v167;
    v61 = v177;
    (v172[2])(v167, v58, v177);
    v62 = v168;
    v63 = *(v168 + 36);
    v64 = lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, MEMORY[0x1E69E6E20]);
    dispatch thunk of Collection.startIndex.getter();
    v164 = v64;
    dispatch thunk of Collection.endIndex.getter();
    (v59[1])(v58, v61);
    v65 = v166;
    outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(v60, v166, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    v66 = *(v163 + 36);
    v67 = v169;
    v68 = *(v169 + 16);
    v69 = v61;
    v70 = v180;
    v163 = v169 + 16;
    v162 = v68;
    (v68)(&v65[v66], v60 + v63, v180);
    outlined destroy of ConstraintAttributeContainerProxyBase(v60, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    v71 = *(v62 + 40);
    v72 = v56;
    v73 = v66;
    v74 = lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index and conformance DiscontiguousSlice<A>.Index, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index, MEMORY[0x1E69E6E10]);
    v161 = v71;
    v160 = v74;
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76 = v179;
    if (v75)
    {
LABEL_14:
      outlined destroy of ConstraintAttributeContainerProxyBase(v65, type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>);
      return AttributeContainer.subscript.getter();
    }

    v173 = v158 + 2;
    v77 = v158 + 1;
    v158 = (v67 + 8);
    v159 = v73;
    v172 += 5;
    v181 = v77;
    v182 = v72;
    while (1)
    {
      (v162)(v76, &v65[v73], v70);
      dispatch thunk of Collection.formIndex(after:)();
      v78 = v57;
      MEMORY[0x193AC0870](&v187, v69);
      v79 = v187;
      DefaultIndices.startIndex.getter();
      if ((v186 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v186 >= *(v79 + 16))
      {
        goto LABEL_29;
      }

      outlined init with copy of AnyAttributedTextValueConstraint(v79 + 40 * v186 + 32, &v185);

      outlined init with take of AnyTrackedValue(&v185, &v188);
      v77 = v183;
      DiscontiguousSlice.subranges.getter();
      v80 = v78;
      v81 = v176;
      v171 = *v173;
      v171(v175, v77, v176);
      MEMORY[0x193AC0870](&v185, v69);

      DefaultIndices.startIndex.getter();
      if ((v187 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      *&v185 = 0;
      *(&v185 + 1) = v187;
      v82 = lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
      v77 = v165;
      v167 = v82;
      RangeSet.init(_:)();
      v83 = v174;
      RangeSet.intersection(_:)();
      v84 = *v181;
      (*v181)(v77, v81);
      v85 = v182;
      MEMORY[0x193AC0870](&v185, v69);
      v187 = v185;
      v86 = lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
      v87 = v178;
      v168 = v86;
      Collection.subscript.getter();

      v88 = v87;
      v89 = v177;
      v169 = *v172;
      (v169)(v80 + v85, v88, v177);
      v90 = v189;
      v91 = v190;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v92 = v91;
      v93 = v176;
      AttributedTextValueConstraint.constrainAttribute(in:)(v80, v90, v92);
      v170 = v84;
      v84(v83, v93);
      v171(v83, v183, v93);
      MEMORY[0x193AC0870](&v185, v89);

      v94 = v180;
      v95 = v179;
      DefaultIndices.startIndex.getter();
      if ((v187 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      *&v185 = 0;
      *(&v185 + 1) = v187;
      v96 = v175;
      RangeSet.init(_:)();
      v97 = v80;
      DiscontiguousSlice.subranges.getter();
      RangeSet.subtract(_:)();
      v98 = v77;
      v77 = v170;
      (v170)(v98, v93);
      DefaultIndices.startIndex.getter();
      (*v158)(v95, v94);
      v184 = v186;
      MEMORY[0x193AC0870](&v185, v89);
      v187 = v185;
      RangeSet.insert<A>(_:within:)();

      v99 = v174;
      RangeSet.subtract(_:)();
      MEMORY[0x193AC0870](&v185, v89);
      v187 = v185;
      v100 = v178;
      Collection.subscript.getter();
      (v77)(v96, v93);
      (v77)(v99, v93);
      v69 = v177;
      (v77)(v183, v93);

      v57 = v97;
      (v169)(v97 + v182, v100, v69);
      __swift_destroy_boxed_opaque_existential_1(&v188);
      v65 = v166;
      v73 = v159;
      v70 = v180;
      v101 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = v179;
      if (v101)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v103 = v152;
  (v173[4])(v152, &v32[v49], v24);
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718]);
  v104 = v181;
  v149 = v32;
  v148 = dispatch thunk of static Equatable.== infix(_:_:)();
  v105 = v173[1];
  v105(v103, v24);
  v106 = v105;
  v107 = MEMORY[0x1E6968718];
  outlined destroy of AttributeContainer?(v43, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
  outlined destroy of AttributeContainer?(v150, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v107);
  v106(v104, v24);
  outlined destroy of AttributeContainer?(v149, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v107);
  v53 = v182;
  if ((v148 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v108 = v161;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  v109 = v164;
  v154(v164, v159, v24);
  v153(v109, 0, 1, v24);
  v110 = *(v160 + 48);
  v111 = v162;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v108, v162);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v109, &v111[v110]);
  if (v50(v111, 1, v24) == 1)
  {
    v112 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v109, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v108, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v112);
    if (v50(&v111[v110], 1, v24) == 1)
    {
      outlined destroy of AttributeContainer?(v111, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v113 = v151;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v111, v151);
  if (v50(&v111[v110], 1, v24) == 1)
  {
    v114 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v164, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v108, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v114);
    (v173[1])(v113, v24);
LABEL_21:
    outlined destroy of ConstraintAttributeContainerProxyBase(v111, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    goto LABEL_22;
  }

  v140 = v173;
  v141 = &v111[v110];
  v142 = v152;
  (v173[4])(v152, v141, v24);
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718]);
  v143 = dispatch thunk of static Equatable.== infix(_:_:)();
  v144 = v140[1];
  v144(v142, v24);
  v145 = v108;
  v146 = MEMORY[0x1E6968718];
  outlined destroy of AttributeContainer?(v164, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
  outlined destroy of AttributeContainer?(v145, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v146);
  v144(v113, v24);
  outlined destroy of AttributeContainer?(v111, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v146);
  if (v143)
  {
    goto LABEL_7;
  }

LABEL_22:
  LOBYTE(v77) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
LABEL_32:
    swift_once();
  }

  v115 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v77))
  {
    v116 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v188 = v183;
    *v116 = 136316674;
    v117 = dispatch thunk of static AttributedStringKey.name.getter();
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v188);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2080;
    v120 = dispatch thunk of static AttributedStringKey.name.getter();
    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v188);

    *(v116 + 14) = v122;
    *(v116 + 22) = 2080;
    v123 = dispatch thunk of static AttributedStringKey.name.getter();
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v188);

    *(v116 + 24) = v125;
    *(v116 + 32) = 2080;
    v126 = dispatch thunk of static AttributedStringKey.name.getter();
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v188);

    *(v116 + 34) = v128;
    *(v116 + 42) = 2080;
    v129 = dispatch thunk of static AttributedStringKey.name.getter();
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v188);

    *(v116 + 44) = v131;
    *(v116 + 52) = 2080;
    v132 = dispatch thunk of static AttributedStringKey.name.getter();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v188);

    *(v116 + 54) = v134;
    *(v116 + 62) = 2080;
    v135 = dispatch thunk of static AttributedStringKey.name.getter();
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v188);

    *(v116 + 64) = v137;
    _os_log_impl(&dword_18D018000, v115, v77, "An AttributedTextValueConstraint for the attribute %s cannot depend on the attribute %s, because %s has 'runBoundaries' set to '.paragraph', but %s does not. This could allow %s to have inconsistent values throughout a range where %s can only have a single value. The constraint will always read 'nil' for the value of %s.", v116, 0x48u);
    v138 = v183;
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v138, -1, -1);
    MEMORY[0x193AC4820](v116, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(v155, 1, 1, AssociatedTypeWitness);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(void *a1, uint64_t a2, uint64_t *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

void AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 8);
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedTextFormatting.AttributeContainerProxy.subscript.setter(*(*a1 + 48), a2, *(v2 + 8));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(void *a1, uint64_t a2, uint64_t *a3))()
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

void AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v9 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 104), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v9, v7, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v9, v7, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 72);
  v9 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 104), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v9, v8, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    (*(v6 + 16))(*(*a1 + 80), v4, v5);
    v9 = *(v8 - 8);
    (*(v9 + 8))(v7, v8);
    (*(v9 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[6];
    v10 = v2[7];
    v12 = *(v11 - 8);
    (*(v12 + 8))(v10, v11);
    (*(v12 + 32))(v10, v4, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for AttributedTextFormatting.AttributeContainerProxy.subscript<A>(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>ABA1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a2;
  v5 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v4, v5, v3);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a4);

  v5 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a2, v6);
  v10 = *(a2 + 32);
  v13[0] = *(a2 + 16);
  v13[1] = v10;
  v11 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  return (*(*(v11 - 8) + 32))(a3, v8, v11);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 - 8);
  (*(v8 + 8))(v3, a3);
  v6 = *(v8 + 32);

  return v6(v3, a1, a3);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x78uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 64) = a4;
  *(v10 + 72) = v4;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v13 = *(a3 + 16);
  *(v10 + 80) = v12;
  v14 = *(a3 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  *(v10 + 24) = v14;
  *(v10 + 40) = a4;
  v15 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  v11[11] = v15;
  v16 = *(v15 - 8);
  v11[12] = v16;
  v17 = *(v16 + 64);
  if (v9)
  {
    v11[13] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[13] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v11[14] = v18;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v18, a3, v18);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

uint64_t key path setter for AttributedTextFormatting.AttributeContainerProxy.subscript<A>(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>ABA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  return specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, v7, v5, v6);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3, a4, a5);

  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x78uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 72) = a5;
  *(v12 + 80) = v5;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 48) = a2;
  v14 = *(a3 + 32);
  *v12 = *(a3 + 16);
  *(v12 + 16) = a4;
  *(v12 + 24) = v14;
  *(v12 + 40) = a5;
  v15 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  v13[11] = v15;
  v16 = *(v15 - 8);
  v13[12] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[13] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[13] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[14] = v18;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v18, a3, v18);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

{
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x60uLL);
  }

  v12 = v11;
  *a1 = v11;
  *(v11 + 48) = a3;
  *(v11 + 56) = v5;
  v13 = *(a3 + 32);
  *v11 = *(a3 + 16);
  *(v11 + 16) = a4;
  *(v11 + 24) = v13;
  *(v11 + 40) = a5;
  v14 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  v12[8] = v14;
  v15 = *(v14 - 8);
  v12[9] = v15;
  v16 = *(v15 + 64);
  if (v10)
  {
    v12[10] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v12[10] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v12[11] = v17;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v17, a3, v17);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v6, v5, a2, a3);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(a1, a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter(v13);
  return AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify;
}

void AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints()
{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }

  return result;
}

uint64_t type metadata accessor for ConstraintAttributeContainerProxyBase()
{
  result = type metadata singleton initialization cache for ConstraintAttributeContainerProxyBase;
  if (!type metadata singleton initialization cache for ConstraintAttributeContainerProxyBase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConstraintAttributeContainerProxyBase.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(v1, v5, type metadata accessor for ConstraintAttributeContainerProxyBase);
  return outlined init with take of ConstraintAttributeContainerProxyBase(v5, a1);
}

uint64_t AttributedTextValueConstraint.constrainAttribute(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = swift_getAssociatedTypeWitness();
  v10[1] = swift_getAssociatedTypeWitness();
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v10 - v7;
  ConstraintAttributeContainerProxyBase.subscript.getter(v10 - v7);
  (*(a3 + 40))(v8, a2, a3);
  outlined destroy of ConstraintAttributeContainerProxyBase(a1, type metadata accessor for ConstraintAttributeContainerProxyBase);
  return outlined init with take of ConstraintAttributeContainerProxyBase(v8, a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConstraintAttributeContainerProxyBase(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(v4, *(v1 + *(a1 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(a1, *(v2 + *(a2 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, *(v2 + *(a2 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static AttributeContainer.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  v9 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt1g5(v7, v8);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  v11 = lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  v12 = lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint();

  return MEMORY[0x1EEE6AA00](a1 + v10, a2 + v10, &type metadata for AttributedTextFormatting.Constraints, v11, v12);
}

uint64_t static AnyAttributedTextValueConstraint.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  LOBYTE(v6) = areEqual<A>(_:_:)(v4, v9, v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6 & 1;
}

Swift::Int AnyAttributedTextValueConstraint.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyAttributedTextValueConstraint()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyAttributedTextValueConstraint()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyAttributedTextValueConstraint(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  LOBYTE(v6) = areEqual<A>(_:_:)(v4, v9, v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6 & 1;
}

uint64_t AttributedTextFormattingDefinition.constrain(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 32))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  AttributedString.init<A, B>(_:including:)();
  AttributedTextFormattingDefinition.constraints.getter(a2, a3, &v12);
  v11 = v12;
  AttributedTextFormatting.Constraints.constrain(_:)(a1);
}

void AttributedTextFormatting.Constraints.constrain(_:)(uint64_t a1)
{
  type metadata accessor for Range<AttributedString.Index>();
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AttributeContainer();
  v25 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AttributedString.Runs.Index();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AttributedString.Runs.Run();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.Runs();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  if (*(v29 + 16))
  {
    v28 = a1;
    AttributedString.runs.getter();
    (*(v12 + 16))(v17, v14, v11);
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    dispatch thunk of Collection.startIndex.getter();
    (*(v12 + 8))(v14, v11);
    ++v34;
    v26 = (v8 + 8);
    v27 = (v8 + 16);
    for (++v25; ; (*v25)(v6, v31))
    {
      v18 = v35;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
      v19 = v36;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v34)(v18, v19);
      if (v20)
      {
        break;
      }

      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v30;
      (*v27)(v10);
      v21(v38, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Runs.Run.attributes.getter();
      v38[0] = v29;
      AttributedTextFormatting.Constraints.constrain(_:)(v6, &v37);

      v23 = v32;
      AttributedString.Runs.Run.range.getter();
      (*v26)(v10, v22);
      lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v24 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v24(v38, 0);
      outlined destroy of ConstraintAttributeContainerProxyBase(v23, type metadata accessor for Range<AttributedString.Index>);
    }

    outlined destroy of ConstraintAttributeContainerProxyBase(v17, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  }
}

uint64_t AttributedTextFormattingDefinition.constrain(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AttributeContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *(v10 + 32);
  v23 = a1;
  v21 = v17;
  (v17)(v12, a1, v9, v14);
  swift_getAssociatedTypeWitness();
  v22 = a3;
  swift_getAssociatedConformanceWitness();
  Dictionary<>.init<A>(_:including:)();
  AttributeContainer.init<A>(_:including:)();
  (*(v10 + 56))(v8, 0, 1, v9);
  v18 = v21;
  v21(v16, v8, v9);
  v19 = v23;
  v18(v23, v16, v9);
  AttributedTextFormattingDefinition.constraints.getter(a2, v22, &v25);
  v24 = v25;
  AttributedTextFormatting.Constraints.constrain(_:)(v19, &v26);
}

uint64_t _ss8RangeSetV_6withinAByxGqd___qd_0_tc7ElementQyd__RszSTRd__SlRd_0_5IndexQyd_0_AFRSr0_lufC7SwiftUI24AttributedTextFormattingO11ConstraintsVAGV_SNyANGAMTt2B5(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  result = RangeSet.init()();
  while (!__OFSUB__(a2, a1))
  {
    if (a1 == a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_9:
      }
    }

    v6 = a1 == a2;
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
    result = RangeSet.insert<A>(_:within:)();
    a1 = v5;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AttributedTextFormatting.Constraints.constrain<A>(_:in:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void (*a3)(_BYTE *, _BYTE *, uint64_t)@<X3>, void *a4@<X8>)
{
  v43 = a4;
  v42 = a3;
  v40 = a2;
  v35 = a1;
  swift_getAssociatedTypeWitness();
  v41 = type metadata accessor for Optional();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v34 - v5;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 32);
  v44 = *v44;
  v22(v17, a1, v14);
  v23 = *(v44 + 16);
  *&v45 = 0;
  *(&v45 + 1) = v23;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  RangeSet.init(_:)();
  v45 = v44;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  (*(v11 + 8))(v13, v10);
  *&v44 = *(v15 + 16);
  v24 = v14;
  (v44)(v21, v17, v14);
  v25 = v36;
  v26 = v8;
  v27 = v8;
  v28 = v37;
  (*(v36 + 16))(&v21[*(v19 + 32)], v26, v37);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  (*(v25 + 8))(v27, v28);
  (*(v15 + 8))(v17, v24);
  v30 = *(v19 + 28);
  *&v21[v30] = v29;
  v31 = v38;
  ConstraintAttributeContainerProxyBase.subscript.getter(v40, v40, v42, v42, v38);
  (*(v39 + 8))(v31, v41);
  (v44)(v35, v21, v24);
  v32 = *&v21[v30];

  result = outlined destroy of ConstraintAttributeContainerProxyBase(v21, type metadata accessor for ConstraintAttributeContainerProxyBase);
  *v43 = v32;
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = *(a2 + 48) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(*(a2 + 56) + 8 * v12);
    outlined copy of AttributedString.AnyAttribute(*v13, v15);

    if (!v16)
    {
LABEL_14:

      return MEMORY[0x193AC11A0](v9);
    }

    v17 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v17;
    v21 = *(a1 + 64);
    v18 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v18;
    if (v15 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    v6 &= v6 - 1;
    String.hash(into:)();

    outlined consume of AttributedString.AnyAttribute(v14, v15);

    specialized Set.hash(into:)(v20, v16);
    swift_bridgeObjectRelease_n();
    result = Hasher._finalize()();
    v9 ^= result;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v45 = a1;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v47 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - v5;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 16;
  v46 = (v4 + 32);
  v42 = v4;
  v43 = a2;
  v44 = (v4 + 8);
  v17 = v9;

  v19 = 0;
  v40 = v11;
  v41 = v17;
  v48 = 0;
  if (v15)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v42;
      v26 = *(*(v43 + 48) + 8 * v24);
      v27 = v47;
      (*(v42 + 16))(v6, *(v43 + 56) + *(v42 + 72) * v24, v47);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
      v29 = v28;
      v30 = *(v28 + 48);
      v17 = v41;
      *v41 = v26;
      (*(v25 + 32))(v17 + v30, v6, v27);
      (*(*(v29 - 8) + 56))(v17, 0, 1, v29);
      v31 = v26;
      v22 = v20;
      v11 = v40;
LABEL_13:
      outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v17, v11);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
      if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
      {
        break;
      }

      v32 = *(v29 + 48);
      v33 = *v11;
      v34 = v22;
      v35 = v47;
      (*v46)(v6, v11 + v32, v47);
      v36 = v45[3];
      v51 = v45[2];
      v52 = v36;
      v53 = *(v45 + 8);
      v37 = v45[1];
      v49 = *v45;
      v50 = v37;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();

      lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>();
      dispatch thunk of Hashable.hash(into:)();
      (*v44)(v6, v35);
      result = Hasher._finalize()();
      v19 = v34;
      v48 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x193AC11A0](v48);
  }

  else
  {
LABEL_5:
    if (v16 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)();
        v29 = v38;
        (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t *a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1, v5);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v7, v9, a2);
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v16 = a3;
  v17 = v7;
  v18 = a4;
  v8 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v9);
  v13 = *(a2 - 8);
  (*(v13 + 8))(v4, a2);
  return (*(v13 + 32))(v4, v11, a2);
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(uint64_t a1, void *a2)
{
  v4 = a2[6];
  v5 = a2[3];
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  (*(v10 + 16))(v16 - v8, a1, v7);
  *&v11 = a2[5];
  *&v12 = a2[2];
  *(&v12 + 1) = v5;
  *(&v11 + 1) = v4;
  v16[0] = v12;
  v16[1] = v11;
  v13 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy();
  return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v9, v14, v13);
}

uint64_t lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, a2, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AttributedTextFormatting.ValueConstraint<A, B>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint()
{
  result = lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint;
  if (!lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint;
  if (!lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint);
  }

  return result;
}

uint64_t type metadata completion function for AttributedTextFormatting.TupleDefinition(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(v4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 8))();
}

uint64_t initializeWithCopy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for AttributedTextFormatting.ValueConstraint()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.ValueConstraint(void *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v6 & 0x100000;
  if (v7 <= 7 && v9 == 0 && ((-9 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = a2 + v7;
    v15 = a1 + v7 + 8;
    v16 = v14 + 8;
    v17 = *(v5 + 48);

    if (v17(v16 & ~v7, 1, v13))
    {
      memcpy((v15 & ~v7), (v16 & ~v7), v8);
    }

    else
    {
      (*(v5 + 16))(v15 & ~v7, v16 & ~v7, v13);
      (*(v5 + 56))(v15 & ~v7, 0, 1, v13);
    }
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for AttributedTextFormatting.ValueConstraint(uint64_t a1)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = a1 + v4 + 8;
  v8 = v3;
  result = (*(v3 + 48))(v5 & ~v4, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(v5 & ~v4, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for AttributedTextFormatting.ValueConstraint(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 8;
  v8 = a2 + v6 + 8;
  v9 = *(v5 + 48);

  if (v9(v8 & ~v6, 1, AssociatedTypeWitness))
  {
    if (*(v5 + 84))
    {
      v10 = *(v5 + 64);
    }

    else
    {
      v10 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v10);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
    (*(v5 + 56))(v7 & ~v6, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

void *assignWithCopy for AttributedTextFormatting.ValueConstraint(void *a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 8;
  v8 = v2 + v6 + 8;
  v9 = *(v5 + 48);
  LODWORD(v2) = v9(v7 & ~v6, 1, AssociatedTypeWitness);
  v10 = v9(v8 & ~v6, 1, AssociatedTypeWitness);
  if (v2)
  {
    if (!v10)
    {
      (*(v5 + 16))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
      (*(v5 + 56))(v7 & ~v6, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v11 = *(v5 + 84);
    v12 = *(v5 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v5 + 24))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
      return a1;
    }

    v14 = *(v5 + 8);
    v13 = v5 + 8;
    v14(v7 & ~v6, AssociatedTypeWitness);
    v11 = *(v13 + 76);
    v12 = *(v13 + 56);
  }

  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = v12 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v15);
  return a1;
}

void *initializeWithTake for AttributedTextFormatting.ValueConstraint(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 8;
  v8 = a2 + v6 + 8;
  if ((*(v5 + 48))(v8 & ~v6, 1, AssociatedTypeWitness))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
    (*(v5 + 56))(v7 & ~v6, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

void *assignWithTake for AttributedTextFormatting.ValueConstraint(void *a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 8;
  v8 = v2 + v6 + 8;
  v9 = *(v5 + 48);
  LODWORD(v2) = v9(v7 & ~v6, 1, AssociatedTypeWitness);
  v10 = v9(v8 & ~v6, 1, AssociatedTypeWitness);
  if (v2)
  {
    if (!v10)
    {
      (*(v5 + 32))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
      (*(v5 + 56))(v7 & ~v6, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v11 = *(v5 + 84);
    v12 = *(v5 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v5 + 40))(v7 & ~v6, v8 & ~v6, AssociatedTypeWitness);
      return a1;
    }

    v14 = *(v5 + 8);
    v13 = v5 + 8;
    v14(v7 & ~v6, AssociatedTypeWitness);
    v11 = *(v13 + 76);
    v12 = *(v13 + 56);
  }

  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = v12 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedTextFormatting.ValueConstraint(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
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

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for AttributedTextFormatting.ValueConstraint(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v10 + 8) & ~v10) + v12;
  if (a3 <= v11)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v11 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v6 = 4;
      if (v11 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v6 = 1;
  if (v11 >= a2)
  {
LABEL_30:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = (&a1[v10 + 8] & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24(v20, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v16 = ~v11 + a2;
  if (v13 >= 4)
  {
    bzero(a1, ((v10 + 8) & ~v10) + v12);
    *a1 = v16;
    v17 = 1;
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_59:
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_59;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_63:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v6)
  {
    a1[v13] = v17;
  }
}

uint64_t type metadata completion function for AttributedTextFormatting.AttributeContainerProxy()
{
  result = type metadata accessor for ConstraintAttributeContainerProxyBase();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttributedTextFormatting.AttributeContainerProxy.Scoped()
{
  result = type metadata accessor for ConstraintAttributeContainerProxyBase();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.AttributeContainerProxy(char *a1, char *a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for AttributeContainer();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
    v8 = *(v6 + 24);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 16);

    v11(&a1[v8], &a2[v8], v10);
  }

  return a1;
}

uint64_t destroy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1)
{
  v2 = type metadata accessor for AttributeContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for ConstraintAttributeContainerProxyBase();

  v4 = *(v3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 16);

  v9(a1 + v6, a2 + v6, v8);
  return a1;
}

uint64_t assignWithCopy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithTake for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA34AttributedTextFormattingDefinitionRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA21AttributeScopeContextVGGAaBHPxAaBHD1__AjA0cM0HPyHCHCTm()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AttributeScopeContext>, &type metadata for AttributeScopeContext, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for AttributedTextFormatting._Inputs.Operation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextFormatting._Inputs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(v5 + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(v3, 0, 0, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithCopy for AttributedTextFormatting._Inputs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  (*(v5 + 56))(a1, 0, 0, v4);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting._Inputs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 32))(a1, a2, v4);
  (*(v5 + 56))(a1, 0, 0, v4);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for ConstraintAttributeContainerProxyBase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributeContainer();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 16);

    v11(&a1[v8], &a2[v8], v10);
  }

  return a1;
}

uint64_t destroy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a2 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t initializeWithCopy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v9 = v8;
  v10 = *(*(v8 - 8) + 16);

  v10(a1 + v7, a2 + v7, v9);
  return a1;
}

uint64_t assignWithCopy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7 = *(a3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t initializeWithTake for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  *(a1 + v7) = *(a2 + v7);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t assignWithTake for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7 = *(a3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

void type metadata completion function for ConstraintAttributeContainerProxyBase()
{
  type metadata accessor for AttributeContainer();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(319, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

unint64_t lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>()
{
  result = lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>;
  if (!lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>);
  }

  return result;
}

void type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>)
  {
    v0 = MEMORY[0x1E69E6E20];
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, v0);
    v1 = type metadata accessor for DefaultIndices();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    }
  }
}

void type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>)
  {
    type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>();
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>);
    }
  }
}

void type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)()
{
  if (!lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?))
  {
    type metadata accessor for AttributeContainer?(255, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    }
  }
}

void type metadata accessor for AttributeContainer?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of AttributeContainer?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AttributeContainer?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?()
{
  if (!lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>?)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)()
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>))
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>));
    }
  }
}

void type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)()
{
  if (!lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>))
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>));
    }
  }
}

uint64_t outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>()
{
  result = lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>;
  if (!lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, a2, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.ItemData and conformance GlassContainer.ItemData()
{
  result = lazy protocol witness table cache variable for type GlassContainer.ItemData and conformance GlassContainer.ItemData;
  if (!lazy protocol witness table cache variable for type GlassContainer.ItemData and conformance GlassContainer.ItemData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.ItemData and conformance GlassContainer.ItemData);
  }

  return result;
}

uint64_t EnvironmentValues.attributeScopeContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v2, a1);
}

uint64_t AttributeScopeContext.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  v8 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v10);

  result = outlined destroy of TaskPriority?(v4);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

void _s10Foundation14AttributeScopeP7SwiftUIE4keysAA16AttributedStringVADE4KeysVvgZAA0B6ScopesOADE0D12UIAttributesV_Tt0g5(uint64_t *a1@<X8>)
{
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  if (one-time initialization token for scopeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);
  v6 = off_1ED5247F0;
  if (!*(off_1ED5247F0 + 2) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) == 0))
  {
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
LABEL_8:
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
    static AttributeScope.attributeKeys.getter();
    _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCAA14AttributeScopePAAE09attributeF0QrvpZQOyAA0I6ScopesOADE0D12UIAttributesV_Qo__Tt1g5(v4, &v12);
    v9 = v12;
    os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_1ED5247F0;
    off_1ED5247F0 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v5, isUniquelyReferenced_nonNull_native);
    off_1ED5247F0 = v12;
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
    goto LABEL_9;
  }

  v9 = *(v6[7] + 8 * v7);

  os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a1 = v9;
}

uint64_t EnvironmentValues.attributeScopeContext.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *v2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v2, v3, v4, v5, v6);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v7, *v2);
  }
}

double AttributeScopeContext.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AttributedTextFormattingDefinition.constraints.getter(a2, a3, &v13);
  v12 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AttributeScopeContext.init<A>(scope:constraints:)(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *v14;
  v11 = v14[1];
  *a4 = v14[0];
  a4[1] = v11;
  return result;
}

void (*EnvironmentValues.attributeScopeContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
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
  *(v4 + 48) = v1;
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 56) = v8;
  v9 = *v1;
  *(v5 + 64) = *v1;
  v10 = *(v1 + 8);
  *(v5 + 72) = v10;
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v9, v5);
  }

  else
  {
    v11 = v8;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>();
    BloomFilter.init(hashValue:)(v12);
    v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(v9, v23);
    if (v13)
    {
      v14 = v13[12];
      v15 = *(v13 + 5);
      *v5 = v13[9];
      *(v5 + 8) = v15;
      *(v5 + 24) = v14;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v18 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      v19 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v11, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v21);

      outlined destroy of TaskPriority?(v11);
      *v5 = v16;
      *(v5 + 8) = v17;
      *(v5 + 16) = v18;
      *(v5 + 24) = v19;
    }
  }

  return EnvironmentValues.attributeScopeContext.modify;
}

void EnvironmentValues.attributeScopeContext.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];

  v8 = v3[9];
  v9 = v3[6];
  if (a2)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v3[8], *v3[6]);
    }

    v10 = v3[7];
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v3[8], *v3[6]);
    }

    v10 = v3[7];
  }

  free(v10);

  free(v3);
}

uint64_t AttributeScopeContext.constraints.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 AttributeScopeContext.constraints.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AttributeScopeContext.scope.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttributeScopeContext.init<A>(scope:constraints:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  *a4 = *a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v12);

  return outlined destroy of TaskPriority?(v10);
}

uint64_t specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)()
{
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), 0, 0);
}

{
  v4 = v0;
  _s10Foundation14AttributeScopeP7SwiftUIE4keysAA16AttributedStringVADE4KeysVvgZAA0B6ScopesOADE0D12UIAttributesV_Tt0g5(&v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in AttributeScopeContext.init<A>(scope:constraints:), 0, 0);
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)()
{
  v4 = v0;
  static AttributeScope.keys.getter(v0[2], v0[3], &v3);

  v1 = v0[1];

  return v1();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static AttributeScope.typingAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = &v12 - v8;
  static AttributeScope.attributeKeys.getter();
  type metadata accessor for NSAttributedStringKey(0);
  v13 = a1;
  v14 = a2;
  swift_getOpaqueTypeConformance2();
  v10 = Sequence.compactMap<A>(_:)();
  result = (*(v7 + 8))(v9, OpaqueTypeMetadata2);
  *a3 = v10;
  return result;
}

uint64_t closure #1 in static AttributeScope.typingAttributes.getter@<X0>(uint64_t *a1@<X8>)
{
  if (dispatch thunk of static AttributedStringKey.inheritedByAddedText.getter())
  {
    result = static AttributedStringKey.nsAttributedStringKey.getter();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV12defaultValue0G0QzvgZAA0C6ValuesVAAE02__E22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLV_Tt0g5@<X0>(void *a1@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  v8 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v10);

  result = outlined destroy of TaskPriority?(v4);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>);
    }
  }
}

uint64_t specialized static AttributeScopeContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (a1[2] == a2[2])
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *a2;
    v6 = a2[1];

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(v3, v5))
    {
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v4, v6);
      v2 = v7;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t initializeWithCopy for AttributeScopeContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for AttributeScopeContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

_OWORD *assignWithTake for AttributeScopeContext(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t lazy protocol witness table accessor for type [NSAttributedStringKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A])
  {
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for [NSAttributedStringKey], type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A]);
  }

  return result;
}

void type metadata accessor for TaskPriority?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(a1, v7, v6, v4, v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0);
    }
  }
}

uint64_t partial apply for closure #1 in OffsetShapeStyle._apply(to:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + *(type metadata accessor for OffsetShapeStyle() + 36));
  *a2 = a1;
  a2[1] = v6;
}

void type metadata accessor for OffsetShapeStyle<AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>)
  {
    v0 = type metadata accessor for OffsetShapeStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>);
    }
  }
}

double Shape.sizeThatFits(_:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t Shape.layoutDirectionBehavior.getter@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  if (result)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

Swift::Int ShapeRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ShapeRole and conformance ShapeRole()
{
  result = lazy protocol witness table cache variable for type ShapeRole and conformance ShapeRole;
  if (!lazy protocol witness table cache variable for type ShapeRole and conformance ShapeRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeRole and conformance ShapeRole);
  }

  return result;
}

uint64_t _StrokedShape.style.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v5 = v3[1];
  v4 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v4;
  a2[3] = v6;
  a2[4] = v7;
}

__n128 _StrokedShape.style.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = *(a1 + 32);
  return result;
}

uint64_t _StrokedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _StrokedShape.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*_StrokedShape.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _StrokedShape.animatableData.getter(a2, v16);
  return _StrokedShape.animatableData.modify;
}

void _StrokedShape.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _StrokedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _StrokedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _StrokedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _StrokedShape.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _StrokedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _StrokedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _StrokedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Shape.stroke(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  v11 = a3 + *(type metadata accessor for _StrokedShape() + 36);
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v12;
  *(v11 + 32) = *(a1 + 32);
}

uint64_t Shape.stroke(lineWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *v4 = a3;
  v4[1] = 0;
  v4[2] = 0x4024000000000000;
  v4[3] = MEMORY[0x1E69E7CC0];
  v4[4] = 0;
  return Shape.stroke(style:)(v4, a1, a2);
}

uint64_t specialized _StrokedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v22 - v9;
  (*(v11 + 16))(v22 - v9, a1, AssociatedTypeWitness, v8);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v22[0] = AssociatedTypeWitness;
  v22[1] = v13;
  v22[2] = AssociatedConformanceWitness;
  v22[3] = v15;
  v16 = (a1 + *(type metadata accessor for AnimatablePair() + 52));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  result = (*(v6 + 32))(v10, v5, v6);
  v21 = (v2 + *(a2 + 36));
  *v21 = v17;
  v21[2] = v18;
  v21[4] = v19;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _StrokedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
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
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 32) = *(v11 + 32);
  }

  return v3;
}

uint64_t initializeWithTake for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithTake for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);
  return a1;
}

uint64_t makeHiddenView(allowedKeys:inputs:body:)(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = v4;
  v6 = *(a2 + 48);
  v45 = *(a2 + 64);
  v7 = *(a2 + 16);
  v42[0] = *a2;
  v42[1] = v7;
  v38 = v43;
  v39 = v6;
  v40 = *(a2 + 64);
  v8 = *a1;
  v46 = *(a2 + 80);
  v41 = *(a2 + 80);
  v36 = v42[0];
  v37 = v5;
  if ((v8 & 0x10) != 0)
  {
    outlined init with copy of _ViewInputs(v42, v34);
    if ((v8 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = v39;
    *&v32[0] = v39;
    v10 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);
    outlined init with copy of _ViewInputs(v42, v34);

    v11 = *(v9 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
        goto LABEL_25;
      }

      if (*(v9 + 16 * v10 + 32) == &type metadata for DisplayList.Key)
      {
        specialized Array.remove(at:)(v10);
      }
    }

    if ((v8 & 4) != 0)
    {
LABEL_12:
      if ((v8 & 8) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  v12 = v39;
  *&v34[0] = v39;
  v13 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

  v14 = *(v12 + 16);
  if (v13 == v14)
  {
    goto LABEL_12;
  }

  if (v13 >= v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v12 + 16 * v13 + 32) != &type metadata for ViewRespondersKey)
  {
    goto LABEL_12;
  }

  specialized Array.remove(at:)(v13);
  if ((v8 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v39;
  *&v34[0] = v39;
  v16 = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);

  v17 = *(v15 + 16);
  if (v16 == v17)
  {
    goto LABEL_18;
  }

  if (v16 >= v17)
  {
LABEL_26:
    __break(1u);
  }

  if (*(v15 + 16 * v16 + 32) == &type metadata for HostPreferencesKey)
  {
    specialized Array.remove(at:)(v16);
  }

LABEL_18:
  LODWORD(v34[0]) = DWORD2(v44);
  *(&v34[0] + 1) = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)();
  DWORD2(v39) = Attribute.init<A>(body:value:flags:update:)();
  v18 = *&v42[0];
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(*&v42[0]))
  {
    *&v34[0] = v8;
    (*(v19 + 8))(&v36, v34);
  }

  if ((v8 & 1) == 0)
  {
    v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v18);
    if (v20)
    {
      (*(v21 + 8))(&v36, v20, v21);
    }
  }

  v30[2] = v38;
  v30[3] = v39;
  v30[4] = v40;
  v31 = v41;
  v30[0] = v36;
  v30[1] = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v24 = v36;
  v25 = v37;
  v22 = outlined init with copy of _ViewInputs(v30, v34);
  a3(v22, &v24);
  v32[2] = v26;
  v32[3] = v27;
  v32[4] = v28;
  v33 = v29;
  v32[0] = v24;
  v32[1] = v25;
  outlined destroy of _ViewInputs(v32);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  return outlined destroy of _ViewInputs(v34);
}

void (*_ViewInputs.requestedHiddenRepresentation.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedHiddenRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedHiddenRepresentation.modify(uint64_t *a1))()
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedHiddenRepresentation.modify;
}

uint64_t key path setter for _ViewInputs.requestedHiddenRepresentation : _ViewInputs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v7 = *a1;
  v8 = a1[1];

  a5(a2, v7, v8, &v10);
}

uint64_t _ViewInputs.requestedHiddenRepresentation.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t *))
{

  a3(v3, a1, a2, &v8);
}

void (*_ViewInputs.hiddenAccessibilityProvider.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.hiddenAccessibilityProvider.modify;
}

uint64_t (*_GraphInputs.hiddenAccessibilityProvider.modify(uint64_t *a1))()
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
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.hiddenAccessibilityProvider.modify;
}

void _ViewInputs.requestedHiddenRepresentation.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *))
{
  v5 = *a1;
  v7 = **a1;
  v6 = (*a1)[1];

  if (a2)
  {
    v8 = v5 + 2;
  }

  else
  {
    v8 = v5 + 3;
  }

  a3(v5[4], v7, v6, v8);

  free(v5);
}

uint64_t value.getter in HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *AGGraphGetValue();

  if ((v2 & 0x10) != 0)
  {
    if ((v2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = PreferenceKeys.remove(_:)(&type metadata for DisplayList.Key);
    if ((v2 & 4) != 0)
    {
LABEL_3:
      if ((v2 & 8) != 0)
      {
        return result;
      }

      return PreferenceKeys.remove(_:)(&type metadata for HostPreferencesKey);
    }
  }

  result = PreferenceKeys.remove(_:)(&type metadata for ViewRespondersKey);
  if ((v2 & 8) != 0)
  {
    return result;
  }

  return PreferenceKeys.remove(_:)(&type metadata for HostPreferencesKey);
}

unint64_t lazy protocol witness table accessor for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)()
{
  result = lazy protocol witness table cache variable for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:);
  if (!lazy protocol witness table cache variable for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden()
{
  result = lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden;
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden;
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden;
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden;
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }

  return result;
}

uint64_t keypath_getTm_2@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t LocationBox.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  return (*(*(*(v3 + 168) - 8) + 16))(a1, v1 + v4);
}

uint64_t property wrapper backing initializer of LocationBox.cache@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AtomicBuffer<LocationProjectionCache>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v3;
  *a2 = result;
  return result;
}

SwiftUI::LocationProjectionCache __swiftcall LocationProjectionCache.init()()
{
  v1 = v0;
  result.cache._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1->cache._rawValue = result.cache._rawValue;
  return result;
}

uint64_t (*LocationBox.wasRead.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = LocationBox.wasRead.getter() & 1;
  return LocationBox.wasRead.modify;
}

uint64_t LocationBox.__ivar_destroyer()
{
  (*(*(*(*v0 + 168) - 8) + 8))(v0 + *(*v0 + 184));
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance LocationBox<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = LocationBox.wasRead.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t ProjectedLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v6 + 48))(v7, v6, v10);
  (*(a3[5] + 40))(v12, a1, a3[3]);
  (*(v6 + 56))(v12, a2, v7, v6);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance ProjectedLocation<A, B>(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = ProjectedLocation.wasRead.getter(a2) & 1;
  return protocol witness for Location.wasRead.modify in conformance ProjectedLocation<A, B>;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance FunctionalLocation<A>(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  return protocol witness for Location.wasRead.modify in conformance FunctionalLocation<A>;
}

uint64_t ZipLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v21 - v17;
  (*(*(a6 - 8) + 16))(&v21 - v17, a1, a6, v16);
  v19 = *(TupleTypeMetadata2 + 48);
  (*(*(a7 - 8) + 16))(&v18[v19], a2, a7);
  (*(*a4 + 128))(v18, a3);
  (*(*a5 + 128))(&v18[v19], a3);
  return (*(v15 + 8))(v18, TupleTypeMetadata2);
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance ZipLocation<A, B>(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = ZipLocation.wasRead.getter(*v2, v2[1]) & 1;
  return protocol witness for Location.wasRead.modify in conformance ZipLocation<A, B>;
}

uint64_t protocol witness for Location.get() in conformance ZipLocation<A, B>@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = a1 + *(swift_getTupleTypeMetadata2() + 48);

  return ZipLocation.get()(a1, v5, v4, v3);
}

uint64_t protocol witness for Location.set(_:transaction:) in conformance ZipLocation<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *v3;
  v10 = v3[1];
  v11 = a1 + *(TupleTypeMetadata2 + 48);

  return ZipLocation.set(_:transaction:)(a1, v11, a2, v9, v10, v6, v7);
}

uint64_t FlattenedCollectionLocation.wasRead.getter()
{
  v0 = FlattenedCollectionLocation.primaryLocation.getter();
  v1 = (*(*v0 + 96))(v0);

  return v1 & 1;
}

uint64_t key path getter for FlattenedCollectionLocation.wasRead : <A, B>FlattenedCollectionLocation<A, B>@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for FlattenedCollectionLocation();
  result = FlattenedCollectionLocation.wasRead.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path setter for FlattenedCollectionLocation.wasRead : <A, B>FlattenedCollectionLocation<A, B>(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for FlattenedCollectionLocation();
  return FlattenedCollectionLocation.wasRead.setter(v1);
}

uint64_t FlattenedCollectionLocation.wasRead.setter(uint64_t a1)
{
  v2 = FlattenedCollectionLocation.primaryLocation.getter();
  (*(*v2 + 104))(a1);
}

uint64_t (*FlattenedCollectionLocation.wasRead.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = FlattenedCollectionLocation.primaryLocation.getter();
  v5 = (*(*v4 + 96))(v4);

  *(a1 + 16) = v5 & 1;
  return FlattenedCollectionLocation.wasRead.modify;
}

uint64_t FlattenedCollectionLocation.wasRead.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = FlattenedCollectionLocation.primaryLocation.getter();
  (*(*v2 + 104))(v1);
}

uint64_t FlattenedCollectionLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, v3, v6, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v18)
    {
      break;
    }

    v15 = *(*v18 + 128);

    v15(a1, a2);
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t FlattenedCollectionLocation.update()(uint64_t a1)
{
  v2 = FlattenedCollectionLocation.primaryLocation.getter();
  LOBYTE(a1) = (*(*v2 + 144))(a1);

  return a1 & 1;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance FlattenedCollectionLocation<A, B>(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = FlattenedCollectionLocation.wasRead.modify(v4, a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

CGPoint __swiftcall UnitPoint.in(_:)(__C::CGRect a1)
{
  v3 = a1.size.width * v1 + a1.origin.x;
  v4 = a1.size.height * v2 + a1.origin.y;
  result.y = v4;
  result.x = v3;
  return result;
}

float64x2_t UnitPoint.animatableData.setter(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  result = vmulq_f64(a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v2 = result;
  return result;
}

CGPoint __swiftcall UnitPoint.in(_:)(CGSize a1)
{
  v3 = a1.width * v1;
  v4 = a1.height * v2;
  result.y = v4;
  result.x = v3;
  return result;
}

uint64_t UnitPoint.hash(into:)(double a1, double a2)
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

Swift::Int UnitPoint.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x193AC11E0](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

double UnitPoint.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double (*UnitPoint.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

double UnitPoint.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

float64x2_t (*UnitPoint.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  return UnitPoint.animatableData.modify;
}

float64x2_t UnitPoint.animatableData.modify(uint64_t a1)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  **(a1 + 16) = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.getter in conformance UnitPoint@<Q0>(float64x2_t *a1@<X8>)
{
  result = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *a1 = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance UnitPoint(float64x2_t *a1)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v1 = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance UnitPoint(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  return protocol witness for Animatable.animatableData.modify in conformance UnitPoint;
}

uint64_t UnitPoint.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void protocol witness for Decodable.init(from:) in conformance UnitPoint(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized UnitPoint.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

double *UnitPoint.encode(to:)(double *result, double a2, double a3)
{
  v4 = result;
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = fabs(a2);
  if (v6 >= 65536.0)
  {
    v7 = 9;
  }

  else
  {
    v7 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v7);
  if (v6 >= 65536.0)
  {
    v9 = *(v4 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v4 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
      }

      else
      {
        *(v4 + 1) = result;
        *(*v4 + v9) = v5;
      }

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v4 + 1);
  result = (v8 + 4);
  if (__OFADD__(v8, 4))
  {
    __break(1u);
    goto LABEL_25;
  }

  *&v5 = v5;
  if (*(v4 + 2) < result)
  {
    goto LABEL_28;
  }

  *(v4 + 1) = result;
  *(*v4 + v8) = LODWORD(v5);
LABEL_12:
  while (a3 != 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 65536.0)
    {
      v10 = 17;
    }

    else
    {
      v10 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v5 >= 65536.0)
    {
      v13 = *(v4 + 1);
      result = (v13 + 8);
      if (!__OFADD__(v13, 8))
      {
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = a3;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v13) = a3;
        }

        return result;
      }
    }

    else
    {
      v11 = *(v4 + 1);
      result = (v11 + 4);
      if (!__OFADD__(v11, 4))
      {
        v12 = a3;
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v11) = v12;
        }

        return result;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v5);
  }

  return result;
}

double specialized UnitPoint.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t key path setter for _PreferenceTransformModifier.transform : <A>_PreferenceTransformModifier<A>(uint64_t *a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> (@out ());
  a2[1] = v8;
  return result;
}

uint64_t _PreferenceTransformModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceTransform<A>(uint64_t a1, uint64_t a2)
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
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph4RulePAAE14_updateDefaultyySvFZySPy5ValueQzGXEfU_TA_0, &v16[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for HostPreferencesTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HostPreferencesTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized PreferenceTransform.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0x726F66736E617254;
}

uint64_t specialized HostPreferencesTransform.description.getter()
{
  _StringGuts.grow(_:)(17);

  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0x6E61725474736F48;
}

uint64_t Projection.composed<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ComposedProjection.init(_:_:)(v14, v10, a2, a3, a4);
}

uint64_t ComposedProjection.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedProjection();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ComposedProjection.get(base:)(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v4 + 32))(a1, v5, v4, v8);
  (*(a2[5] + 32))(v10, a2[3]);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t ComposedProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v6 + 32))(a1, v7, v6, v10);
  (*(a3[5] + 40))(v12, a2, a3[3]);
  (*(v6 + 40))(a1, v12, v7, v6);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t static ComposedProjection.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ComposedProjection();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

Swift::Int ComposedProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  ComposedProjection.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ComposedProjection<A, B>()
{
  Hasher.init(_seed:)();
  ComposedProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t WritableKeyPath.set(base:newValue:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

uint64_t instantiation function for generic protocol witness table for ComposedProjection<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 3);
          v13[2] = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 3) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for (ScrapeableContent, Int)();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized Sequence.compactMap<A>(_:)(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t ScrapeableContent.Item.init(_:ids:_:position:size:transform:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = Value[1];
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = v11[1];
  v14 = AGGraphGetValue();
  v16 = *v14;
  v15 = *(v14 + 8);
  v17 = *(v14 + 32) - (v9 - *(v14 + 16));
  v18 = *(v14 + 40) - (v10 - *(v14 + 24));
  *a4 = v6;
  *(a4 + 4) = v7;
  *(a4 + 8) = v5;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v16;
  *(a4 + 40) = v15;
  *(a4 + 48) = v9;
  *(a4 + 56) = v10;
  *(a4 + 64) = v17;
  *(a4 + 72) = v18;
}

uint64_t ScrapeableID.init()@<X0>(_DWORD *a1@<X8>)
{
  result = AGMakeUniqueID();
  *a1 = result;
  return result;
}

uint64_t _ViewInputs.isScrapeable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFDFFF | v2;
  return result;
}

Swift::Int ScrapeableID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t (*_ViewInputs.isScrapeable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(v1 + 36);
  *(a1 + 8) = v3;
  if ((v3 & 0x20) != 0)
  {
    v5 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(v1 + 48));
    v4 = (v3 & 0x2000) == 0;
    if ((v5 & 1) == 0)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 12) = v4;
  return _ViewInputs.isScrapeable.modify;
}

uint64_t _ViewInputs.isScrapeable.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x2000;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFDFFF;
  return result;
}

uint64_t key path setter for _ViewInputs.scrapeableParentID : _ViewInputs(int *a1, uint64_t *a2)
{
  v3 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(a2, v3);
}

uint64_t (*_ViewInputs.scrapeableParentID.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v3, v7);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return _ViewInputs.scrapeableParentID.modify;
}

uint64_t _ViewListInputs.isScrapeable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t (*_ViewListInputs.isScrapeable.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x2020) == 32;
  return _ViewListInputs.isScrapeable.modify;
}

uint64_t _ViewListInputs.scrapeableParentID.setter(int *a1)
{
  v2 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v1, v2);
}

uint64_t (*_ViewListInputs.scrapeableParentID.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v3, v7);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return _ViewListInputs.scrapeableParentID.modify;
}

uint64_t _ViewInputs.scrapeableParentID.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v2, v1);
}

unint64_t *static ScrapeableAttachmentViewModifier.Attachment.scrapeContent(from:)@<X0>(uint64_t a1@<X8>)
{
  AGGraphGetAttributeInfo();
  v3 = v2;
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ScrapeableContent.Content?);
  result = AGGraphGetValue();
  v5 = *result;
  if ((~*result & 0xF000000000000007) != 0)
  {
    type metadata accessor for CGPoint(0);
    v21 = *(v3 + 16);
    outlined copy of ScrapeableContent.Content?(v5);
    outlined copy of ScrapeableContent.Content(v5);
    Value = AGGraphGetValue();
    v10 = *Value;
    v6 = Value[1];
    v11 = AGGraphGetValue();
    v12 = *v11;
    v13 = v11[1];
    v14 = AGGraphGetValue();
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = *(v14 + 32);
    v19 = *(v14 + 40);

    result = outlined consume of ScrapeableContent.Content?(v5);
    v7 = v20 - (v10 - v17);
    *a1 = v21;
    *(a1 + 8) = v5;
    v8 = v19 - (v6 - v18);
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = v10;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 1;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  return result;
}

unint64_t ScrapeableContent.Item.content.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of ScrapeableContent.Content(v2);
}

unint64_t ScrapeableContent.Item.content.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of ScrapeableContent.Content(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

uint64_t ScrapeableContent.Item.transform.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  v3 = *(v1 + 64);
  *(a1 + 16) = *(v1 + 48);
  *(a1 + 32) = v3;
}

__n128 ScrapeableContent.Item.transform.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];

  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[3] = result;
  v1[4] = v6;
  return result;
}

float64x2_t ScrapeableContent.Item.init(_:ids:_:position:size:transform:)@<Q0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, _OWORD *a4@<X3>, float64x2_t *a5@<X4>, uint64_t a6@<X8>, float64x2_t a7@<Q0>, double a8@<D1>)
{
  v8 = *a1;
  v9 = *a3;
  *a6 = *a2;
  *(a6 + 4) = v9;
  *(a6 + 8) = v8;
  v10 = *a5;
  v11 = a5[1];
  *(a6 + 16) = *a4;
  *(a6 + 32) = v10;
  *(a6 + 48) = a7.f64[0];
  *(a6 + 56) = a8;
  a7.f64[1] = a8;
  result = vsubq_f64(a5[2], vsubq_f64(a7, v11));
  *(a6 + 64) = result;
  return result;
}

uint64_t ScrapeableContent.Node.item.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of ScrapeableContent.Item(v8, &v7);
}

uint64_t ScrapeableContent.Node.deinit()
{
  outlined consume of ScrapeableContent.Content(*(v0 + 24));

  return v0;
}

uint64_t ScrapeableContent.Node.__deallocating_deinit()
{
  outlined consume of ScrapeableContent.Content(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t ScrapeableContent.nodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ScrapeableContent.children.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

BOOL ScrapeableContent.isEmpty.getter()
{
  v1 = v0[1];
  if (*v0 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  return *(v1 + 16) == 0;
}

uint64_t ScrapeableContent.Content.Button.description.getter()
{
  MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button()
{
  MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x7463757274736564;
  }

  if (*v0)
  {
    v1 = 0x7972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScrapeableContent.Content.Button.Role.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ScrapeableContent.Content.Button.Role.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScrapeableContent.Content.Button.Role.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.CancelCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.PrimaryCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.NormalCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v3);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.CodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v3);
  v35 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();
      v19 = v29;
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();
      v19 = v32;
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v33;
      v20 = v34;
    }

    goto LABEL_8;
  }

  if (v17)
  {
    v37 = 1;
    lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();
    v19 = v26;
    v18 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v27;
    v20 = v28;
LABEL_8:
    (*(v21 + 8))(v19, v20);
    return (*(v14 + 8))(v16, v18);
  }

  v36 = 0;
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();
  v18 = v35;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v24 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v18);
}

Swift::Int ScrapeableContent.Content.Button.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrapeableContent.Content.Button.Role.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys, &unk_1F0087A90, MEMORY[0x1E69E6F48]);
  v38 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v34 - v5;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.CancelCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys, &unk_1F0087A70, v3);
  v39 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v7;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.PrimaryCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys, &unk_1F0087A50, v3);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - v9;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.NormalCodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys, &unk_1F0087A30, v3);
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ScrapeableContent.Content.Button.Role.CodingKeys>, lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys, &unk_1F0087A10, v3);
  v15 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys();
  v19 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v46 = v11;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v48 = v24;
    v49 = v24 + 32;
    v50 = 0;
    v51 = v25;
    v26 = specialized Collection<>.popFirst()();
    v27 = v17;
    if (v26 == 4 || v50 != v51 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v30 = &type metadata for ScrapeableContent.Content.Button.Role;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v45 + 8))(v17, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = v26;
      if (v26 > 1u)
      {
        v32 = v40;
        v33 = v45;
        if (v26 == 2)
        {
          v53 = 2;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v22 + 8))(v21, v39);
        }

        else
        {
          v53 = 3;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v23, v38);
        }

        (*(v33 + 8))(v27, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v26)
        {
          v53 = 1;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v36 + 8))(v20, v37);
        }

        else
        {
          v53 = 0;
          lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v34 + 8))(v13, v46);
        }

        (*(v45 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v32 = v40;
      }

      *v32 = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t AGSubgraphRef.Map.addItem(_:for:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  v6 = a1[3];
  v27[2] = a1[2];
  v27[3] = v6;
  v27[4] = a1[4];
  v7 = a1[1];
  v27[0] = *a1;
  v27[1] = v7;
  type metadata accessor for ScrapeableContent.Node();
  v8 = swift_allocObject();
  *(v8 + 96) = MEMORY[0x1E69E7CC0];
  *(v8 + 104) = 0;
  v9 = a1[3];
  *(v8 + 48) = a1[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = a1[4];
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  outlined init with copy of ScrapeableContent.Item(v27, &v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  v12 = v26;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v12 = v26;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *v3 = v12;
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v25 = v13;
  specialized _NativeDictionary.copy()();
  v13 = v25;
  v12 = v26;
  *v3 = v26;
  if ((v19 & 1) == 0)
  {
LABEL_7:
    v21 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, MEMORY[0x1E69E7CC0], v12);
    v22 = a2;
    v13 = v21;
  }

LABEL_8:
  v23 = (v12[7] + 8 * v13);
  MEMORY[0x193ABF170]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t AGSubgraphRef.Map.content(for:updated:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = specialized Set._Variant.insert(_:)(&v28, a1);
  if ((result & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (*(a3 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) != 0))
  {
    v28 = *(*(a3 + 56) + 8 * v10);
  }

  else
  {
    v28 = v9;
  }

  v27 = v9;
  result = AGSubgraphGetChildCount();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = result;
  v13 = a1;

  v26 = specialized Sequence.compactMap<A>(_:)(0, v12, v13, a3, a2);
  if (v26[2])
  {
    specialized MutableCollection<>.sort(by:)(&v26);
    v14 = v26;
    v15 = v26[2];
    if (v15)
    {
      v25 = v9;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v16 = 4;
      do
      {
        v24 = *&v14[v16];
        v17 = *(v25 + 2);
        v18 = *(v25 + 3);

        if (v17 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        }

        *(v25 + 2) = v17 + 1;
        *&v25[16 * v17 + 32] = v24;
        v16 += 3;
        --v15;
      }

      while (v15);

      v27 = v25;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  specialized static AGSubgraphRef.Map.resolveParents(nodes:children:)(&v28, &v27);
  result = v28;
  if (v28 >> 62)
  {
LABEL_23:
    v22 = result;
    v23 = __CocoaSet.count.getter();
    result = v22;
    v19 = v27;
    if (v23)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v19 = v27;
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    *a4 = result;
    a4[1] = v19;
    return result;
  }

LABEL_19:
  if (*(v19 + 2) != 1)
  {
    goto LABEL_24;
  }

  if (*(v19 + 2))
  {
    v20 = *(v19 + 4);
    v21 = *(v19 + 5);

    *a4 = v20;
    a4[1] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}