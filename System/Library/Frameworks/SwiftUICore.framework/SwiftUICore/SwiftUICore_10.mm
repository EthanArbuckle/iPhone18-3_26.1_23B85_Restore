uint64_t closure #1 in ConcentricLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  if (*(a1 + 32))
  {
    v17 = *(a1 + 32);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = static LayoutComputer.defaultValue;
  }

  v18 = *&a2 - (a7 + a9);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  if ((a3 & 1) == 0)
  {
    *&a2 = v18;
  }

  v19 = *&a4 - (a6 + a8);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if ((a5 & 1) == 0)
  {
    *&a4 = v19;
  }

  v20 = one-time initialization token for lockAssertionsAreEnabled;

  if (v20 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_20;
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
LABEL_20:
    v22 = a2;
    v23 = a3 & 1;
    v24 = a4;
    v25 = a5 & 1;
    (*(*v17 + 120))(&v22);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for ViewTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t ViewTransform.coordinateSpaceTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  result = outlined init with copy of CoordinateSpace(a1, &v11);
  if (v16 != 2)
  {
    goto LABEL_7;
  }

  if (!(v14 | v15 | v11 | v13 | v12))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  if (v11 == 1 && (v14 | v15 | v13 | v12) == 0)
  {
    *a2 = -1;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_7:
    result = outlined destroy of CoordinateSpace(&v11);
    if (v5)
    {
      v8 = *(v5 + 16);

      closure #2 in ViewTransform.coordinateSpaceTag(_:)(v9, a1, &v11);
      v10 = v5;
      if (v11)
      {
LABEL_11:
        *a2 = *(v10 + 72);
        *(a2 + 8) = 0;
      }

      else
      {
        while (v8)
        {
          v10 = v8;
          v8 = *(v8 + 16);
          closure #2 in ViewTransform.coordinateSpaceTag(_:)(v10, a1, &v11);
          if (v11 == 1)
          {
            goto LABEL_11;
          }
        }

        *a2 = 0;
        *(a2 + 8) = 1;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 1;
    }
  }

  return result;
}

void type metadata accessor for (String, String)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t ViewTransform.appendSizedSpace(name:size:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  outlined init with copy of AnyHashable(a1, v26);
  v26[40] = 0;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = (v3 + 32);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  *&v22 = *v3;
  *(&v22 + 1) = v8;
  *v23 = *(v3 + 16);
  *&v23[16] = v10;
  *&v23[24] = v11;

  ViewTransform.coordinateSpaceTag(_:)(v26, &v24);

  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v26, &v22);
  type metadata accessor for CoordinateSpaceNode();
  v12 = swift_allocObject();
  v13 = v12;
  v14 = *v23;
  *(v12 + 24) = v22;
  *(v12 + 40) = v14;
  *(v12 + 49) = *&v23[9];
  *(v12 + 16) = v8;
  if (v8)
  {
    v15 = *(v8 + 72);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v18 = v24;
    outlined destroy of CoordinateSpace(v26);
    goto LABEL_9;
  }

  v17 = 1;
LABEL_8:
  *(v12 + 72) = v17;
  v4[1] = v12;
  outlined destroy of CoordinateSpace(v26);
  v18 = *(v13 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  result = swift_allocObject();
  *(result + 32) = v10;
  *(result + 40) = v11;
  *(result + 48) = v18;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 16) = v7;
  if (v7)
  {
    v20 = *(v7 + 24);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v21 = 1;
LABEL_14:
  *(result + 24) = v21;
  *v4 = result;
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t RootTransform.value.getter@<X0>(_OWORD *a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 208);

    ObjectType = swift_getObjectType();
    v5 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for RootTransformProvider);
    (*(v3 + 16))(v19, v5, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  outlined init with copy of RootTransformProvider?(v19, v16);
  v6 = v17;
  if (v17)
  {
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 8))(v15, v6, v7);
    outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v19, type metadata accessor for RootTransformProvider?);
    v13 = v15[1];
    v14 = v15[0];
    v12 = v15[2];
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v10 = v12;
    v9 = v13;
    v11 = v14;
  }

  else
  {
    outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v19, type metadata accessor for RootTransformProvider?);
    result = outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v16, type metadata accessor for RootTransformProvider?);
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

void type metadata accessor for RootTransformProvider?()
{
  if (!lazy cache variable for type metadata for RootTransformProvider?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for RootTransformProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RootTransformProvider?);
    }
  }
}

uint64_t outlined init with copy of RootTransformProvider?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootTransformProvider?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Element<ProjectionTransformElement>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement()
{
  result = lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement;
  if (!lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement;
  if (!lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SizedSpaceElement(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Element()
{
  result = swift_checkMetadataState();
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

uint64_t _SafeAreaInsetsModifier.Insets.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = *(AGGraphGetValue() + 8);
  v6 = v5;
  if (v5 == 1)
  {
    if (v4 == *MEMORY[0x1E698D3F8])
    {
      v6 = 0;
    }

    else
    {
      Value = AGGraphGetValue();
      v9 = *Value;
      v8 = Value[1];
      v10 = Value[2];
      v6 = swift_allocObject();
      v6[2] = v9;
      v6[3] = v8;
      v6[4] = v10;

      v5 = 1;
    }
  }

  outlined copy of SafeAreaInsets.OptionalValue?(v5);
  v11 = *AGGraphGetValue();
  *a1 = v3;
  a1[1] = v11;
  a1[2] = v6;
}

uint64_t sub_18D09BE8C()
{

  return swift_deallocObject();
}

void *initializeBufferWithCopyOfBuffer for SafeAreaInsets(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t UnaryPositionAwareLayoutEngine.childPlacement(at:placementContext:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  (*(v10 + 16))(v7, v3);
  v11 = (v3 + *(a3 + 40));
  v12 = *(v11 + 2);
  v19 = *v11;
  v20 = v12;
  v16 = *a2;
  v17 = *(a2 + 2);
  v18 = v9;
  v14 = a3 + 16;
  v13 = *(a3 + 16);
  (*(*(v14 + 8) + 48))(&v19, &v16, v13);
  return (*(*(v13 - 8) + 8))(v7, v13);
}

uint64_t LayoutEngineBox.childPlacement(at:placementContext:)(_OWORD *a1, __int128 *a2)
{
  v3 = *v2;
  v4 = *(a2 + 6);
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = v4;
  return (*(*(v3 + 184) + 80))(v10, &v7, *(v3 + 176));
}

void _SafeAreaRegionsIgnoringLayout.placement(of:in:)(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v10 != *MEMORY[0x1E698D3F8])
  {
    InputValue = AGGraphGetInputValue();
    v16 = *(InputValue + 16);
    v31 = *InputValue;
    v32 = v16;
    v34 = v4;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v9;
    v39 = v8;
    v40 = v10;
    v11 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(a2, 0, &v34);
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v11 = 0.0;
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_leading))
  {
    v12 = 0.0;
  }

  v20 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  v21 = 0.0 - v13;
  v22 = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  v34 = v4;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v9;
  v39 = v8;
  v40 = v10;
  _PositionAwarePlacementContext.proposedSize.getter(&v31);
  v23 = *&v31;
  v24 = BYTE8(v31);
  v25 = v33;
  if (v20)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0.0;
  }

  if ((BYTE8(v31) & 1) == 0)
  {
    v27 = 0.0 - v14;
    if (!v22)
    {
      v27 = 0.0;
    }

    v23 = *&v31 - (0.0 - v12 + v27);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }
  }

  v28 = v32;
  if ((v33 & 1) == 0)
  {
    v29 = v32 - (0.0 - v11 + v26);
    v28 = 0.0;
    if (v29 >= 0.0)
    {
      v28 = v29;
    }
  }

  *a3 = v23;
  *(a3 + 8) = v24;
  *(a3 + 16) = v28;
  *(a3 + 24) = v25;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = -v12;
  *(a3 + 56) = -v11;
}

uint64_t outlined init with copy of AnyElement?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for AnyElement?, type metadata accessor for AnyElement, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for CoordinateSpace(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t closure #2 in ViewTransform.coordinateSpaceTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  outlined init with copy of CoordinateSpace(a1 + 24, v6);
  LOBYTE(a2) = specialized static CoordinateSpace.== infix(_:_:)(v6, a2);
  result = outlined destroy of CoordinateSpace(v6);
  *a3 = a2 & 1;
  return result;
}

uint64_t specialized static CoordinateSpace.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of CoordinateSpace(a1, v13);
  outlined init with copy of CoordinateSpace(a2, v15);
  if (!v14)
  {
    outlined init with copy of CoordinateSpace(v13, v11);
    if (!v16)
    {
      v9[0] = v11[0];
      v9[1] = v11[1];
      v10 = v12;
      v7[0] = *v15;
      v7[1] = *&v15[16];
      v8 = *&v15[32];
      v3 = MEMORY[0x193AC01F0](v9, v7);
      outlined destroy of AnyHashable(v7);
      outlined destroy of AnyHashable(v9);
      goto LABEL_13;
    }

    outlined destroy of AnyHashable(v11);
    goto LABEL_16;
  }

  if (v14 != 1)
  {
    if (v13[3] | v13[4] | v13[0] | v13[2] | v13[1])
    {
      if (v16 != 2)
      {
        goto LABEL_16;
      }

      if (*v15 != 1)
      {
        goto LABEL_16;
      }

      v4 = vorrq_s8(*&v15[8], *&v15[24]);
      if (vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_16;
      }

      v5 = vorrq_s8(*&v15[8], *&v15[24]);
      if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v15)
      {
        goto LABEL_16;
      }
    }

    outlined destroy of CoordinateSpace(v13);
    v3 = 1;
    return v3 & 1;
  }

  outlined init with copy of CoordinateSpace(v13, v11);
  if (v16 != 1)
  {
LABEL_16:
    _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v13, &lazy cache variable for type metadata for (CoordinateSpace, CoordinateSpace));
    v3 = 0;
    return v3 & 1;
  }

  v3 = *&v11[0] == *v15;
LABEL_13:
  outlined destroy of CoordinateSpace(v13);
  return v3 & 1;
}

void type metadata accessor for _ContiguousArrayStorage<CGPoint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static EnvironmentFetch.== infix(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  return MEMORY[0x193AC0030](a2, a4) & 1;
}

uint64_t type metadata completion function for SpacerLayoutComputer.Engine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

float64x2_t *specialized UnaryPositionAwareChildGeometry.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = HIDWORD(a3);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = CurrentAttribute;
  v5 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v11 = *Value;
  v12 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
LABEL_12:
    v35 = v12;
    v37 = v11;
    swift_once();
    v12 = v35;
    v11 = v37;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v33 = v12;
  v36 = v11;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v12 = v33;
  v11 = v36;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v39 = v11;
    *rect = v12;
    LODWORD(v42) = v4;
    HIDWORD(v42) = v4;
    v43 = a1;
    v44 = HIDWORD(a2);
    v45 = __PAIR64__(HIDWORD(a1), a2);
    v46 = v6;
    (*(*v5 + 160))(&v47, &v39, &v42);

    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = *AGGraphGetValue();
    v24 = *AGGraphGetValue();
    v42 = v15;
    LOBYTE(v43) = v16;
    v45 = v17;
    LOBYTE(v46) = v18;
    LayoutProxy.dimensions(in:)(&v42, &v39);
    v25 = v39;
    v26 = *rect;
    v27 = v41;
    v28 = v21 - v19 * *rect;
    v29 = *&rect[8];
    v30 = v22 - v20 * *&rect[8];
    *a4 = v28;
    *(a4 + 8) = v30;
    *(a4 + 16) = v25;
    *(a4 + 32) = v26;
    *(a4 + 40) = v29;
    *(a4 + 56) = v27;
    v38 = v30;
    if (v24 == 1)
    {
      v34 = v23 - CGRectGetMaxX(*&v28);
      *a4 = v34;
    }

    else
    {
      v34 = v28;
    }

    type metadata accessor for CGPoint(0);
    result = AGGraphGetValue();
    v32.f64[0] = v34;
    v32.f64[1] = v38;
    *a4 = vaddq_f64(v32, *result);
  }

  return result;
}

uint64_t specialized UnaryPositionAwareLayoutComputer.updateValue()()
{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 8);
    *&v8 = *Value;
    BYTE8(v8) = v7;
    HIDWORD(v8) = v3;
    v9 = v3;
    v10 = v5;
    v11 = v3;
    v12 = v4;
    v13 = v2;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v17 = 1;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v25 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&v8);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    v6[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    return specialized StatefulRule<>.update<A>(to:)(v6);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = Value[1];
    v8[0] = *Value;
    v8[1] = v7;
    v9 = v3;
    v10 = v3;
    v11 = v5;
    v12 = v3;
    v13 = v4;
    v14 = v2;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v18 = 1;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v22 = 1;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v26 = 1;
    return specialized StatefulRule<>.update<A>(to:)(v8);
  }

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(to:)(_OWORD *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 185);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v25[0] = v15;
    *(v25 + 9) = *(a1 + 185);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA024_SafeAreaRegionsIgnoringC0VG_Tt1B5(v24, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v20[9] = v2;
  v21[0] = a1[10];
  *(v21 + 9) = *(a1 + 169);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v22[9] = v14;
    v23[0] = a1[10];
    *(v23 + 9) = *(a1 + 169);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA16RoundedRectangleVGG_Tt1B5(v22, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<Circle, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Circle, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Circle, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Circle, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 185);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v25[0] = v15;
    *(v25 + 9) = *(a1 + 185);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm(v24, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<Ellipse, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Ellipse, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Ellipse, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Ellipse, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<Capsule, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Capsule, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Capsule, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Capsule, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 185);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>();
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v25[0] = v15;
    *(v25 + 9) = *(a1 + 185);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm(v24, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v22[11] = v2;
  v23[0] = a1[12];
  *(v23 + 9) = *(a1 + 201);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>();
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v24[11] = v15;
    v25[0] = a1[12];
    *(v25 + 9) = *(a1 + 201);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA22UnevenRoundedRectangleV6_InsetVGG_Tt1B5(v24, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<ImplicitContainerShape, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<ImplicitContainerShape, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<ImplicitContainerShape, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[9];
  v20[8] = a1[8];
  v21[0] = v2;
  *(v21 + 9) = *(a1 + 153);
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v6 = a1[3];
  v20[2] = a1[2];
  v20[3] = v6;
  v19[4] = v20;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<_ShapeView<ContainerRelativeShape, ForegroundStyle>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v22[0] = v8;
      *(&v22[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = a1[9];
    v22[8] = a1[8];
    v23[0] = v14;
    *(v23 + 9) = *(a1 + 153);
    v15 = a1[5];
    v22[4] = a1[4];
    v22[5] = v15;
    v16 = a1[7];
    v22[6] = a1[6];
    v22[7] = v16;
    v17 = a1[1];
    v22[0] = *a1;
    v22[1] = v17;
    v18 = a1[3];
    v22[2] = a1[2];
    v22[3] = v18;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm(v22, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<ContainerRelativeShape, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<ContainerRelativeShape, ForegroundStyle>>>, v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 185);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>();
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v25[0] = v15;
    *(v25 + 9) = *(a1 + 185);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm(v24, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA024_SafeAreaRegionsIgnoringC0VG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>();
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 220) = v7;
    *(v4 + 224) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>();
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 201) = *(a1 + 185);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = result;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AnimatablePair<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CGFloat(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t static ViewGraphFeatureBuffer._VTable.needsUpdate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 48))(a2, v4) & 1;
}

Swift::Bool __swiftcall GraphHost.updatePreferences()()
{
  v1 = v0;
  swift_beginAccess();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *WeakValue;
    PreferenceValues.seed.getter(&v8);
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  v4 = *(v1 + 140);
  result = v3 == -1 || v4 == -1 || v3 != v4;
  *(v1 + 140) = v3;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t closure #1 in PairPreferenceCombiner.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t static Update.enqueueAction(reason:_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  specialized static Update.begin()();
  v16 = v5;

  Update.Action.init(reason:thunk:)(&v16, a2, a3, v17);
  v6 = v17[0];
  v8 = v18;
  v7 = v19;
  v9 = v20;
  v10 = one-time initialization token for actions;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static Update.actions;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[32 * v13];
  v14[32] = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = v7;
  *(v14 + 14) = v9;
  static Update.actions = v11;

  static Update.end()();

  return v9;
}

uint64_t Update.Action.init(reason:thunk:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  swift_beginAccess();
  v5 = (static Update.Action.nextActionID >> 1) + 1;

  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  swift_endAccess();
  *(a4 + 24) = v5;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    v6 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17729;
      v7 = *(v6 + 16);
      type metadata accessor for (UInt32, UInt32?)();

      v8 = v7;
      AGGraphAddTraceEvent();
    }
  }
}

void *_setThreadTransactionData()
{
  result = _perThreadTransactionData();
  *result = v1;
  return result;
}

uint64_t type metadata completion function for SeedValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance DisplayList.Key@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = word_1ED53ABE8;
  v3 = dword_1ED53ABEC;
  *a1 = static DisplayList.Key.defaultValue;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  return a1;
}

uint64_t PairPreferenceCombiner.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, Value, AssociatedTypeWitness);
  v12[2] = a2;
  v12[3] = a3;
  v13 = v6;
  v14 = v8;
  return (*(a3 + 24))(a4, partial apply for closure #1 in PairPreferenceCombiner.value.getter, v12, a2, a3);
}

uint64_t getEnumTagSinglePayload for SimultaneousGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
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
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void type metadata accessor for TimelineSchedule?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CustomAttributeWriter(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ScrollStateRequest?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI16TimelineSchedule_pSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for TimelineSchedule?(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CustomAttributeWriter(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *storeEnumTagSinglePayload for SimultaneousGesture(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t type metadata completion function for AnimatableAttributeHelper()
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

uint64_t HostPreferencesWriter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PreferenceValues.Value();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (*MEMORY[0x1E698D3F8] == *(v2 + 8))
  {
    v13 = *(v2 + 13) ^ 1;
    v14 = 1;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = *AGGraphGetValue();
    v13 = v16 & 1;

    v14 = 0;
  }

  v43 = v15;
  v44 = v13;
  *(v2 + 13) = v14;
  v17 = *(v2 + 12);
  Value = AGGraphGetValue();
  if ((v19 & 1) == 0)
  {
    goto LABEL_5;
  }

  v42 = *Value;
  v27 = v42;
  v39 = v3;
  v28 = PreferenceKeys._index(of:)(v3);
  v29 = *(v27 + 16);
  if (v28 == v29)
  {
    if (!v17)
    {
LABEL_12:
      if (v13)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    *(v2 + 12) = 0;
LABEL_22:
    v42 = v15;
    AGGraphSetOutputValue();
  }

  if (v28 >= v29)
  {
    __break(1u);
  }

  v30 = *(v27 + 16 * v28 + 32);
  v3 = v39;
  if (v17 != (v30 == v39))
  {
    v13 = 1;
    v44 = 1;
    *(v2 + 12) = v30 == v39;
    if (v30 == v3)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_5:
  if (!v17)
  {
    goto LABEL_12;
  }

  v39 = v3;
LABEL_7:
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v2 + 16);
  v34 = *(v2 + 20);
  v35 = v21;
  v22 = AGGraphGetValue();
  v24 = v23;
  v25 = *(AssociatedTypeWitness - 8);
  (*(v25 + 16))(v12, v22, AssociatedTypeWitness);
  v12[v20] = v24 & 1;
  v26 = *(v40 + 16);
  v26(v9, v12, TupleTypeMetadata2);
  LODWORD(v20) = v9[*(TupleTypeMetadata2 + 48)];
  (*(v25 + 8))(v9, AssociatedTypeWitness);
  if (v20 == 1)
  {
    *(v2 + 16) = ++v35;
    v44 = 1;
LABEL_19:
    v31 = merge32(_:_:)(v34, v35);
    v26(v9, v12, TupleTypeMetadata2);
    LODWORD(v42) = v31;
    v32 = v36;
    PreferenceValues.Value.init(value:seed:)(v9, &v42, AssociatedTypeWitness, v36);
    specialized PreferenceValues.subscript.setter(v32, v39, v39, v41);
    (*(v37 + 8))(v32, v38);
    (*(v40 + 8))(v12, TupleTypeMetadata2);
    v15 = v43;
    goto LABEL_22;
  }

  if (v13)
  {
    goto LABEL_19;
  }

  (*(v40 + 8))(v12, TupleTypeMetadata2);
  v15 = v43;
LABEL_21:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }
}

double EnvironmentValues.backgroundMaterial.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*v1);
    if (v5)
    {
      v7 = v5[9];
      v6 = v5[10];
      *a1 = v7;
      a1[1] = v6;

      outlined copy of Material?(v7, v6);
    }

    else
    {
      result = 0.0;
      *a1 = xmmword_18DDA6AB0;
    }
  }

  return result;
}

void type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>()
{
  if (!lazy cache variable for type metadata for UnsafeMutableBufferPointer<StackLayout.Child>)
  {
    v0 = type metadata accessor for UnsafeMutableBufferPointer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnsafeMutableBufferPointer<StackLayout.Child>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>;
  if (!lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>)
  {
    type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>);
  }

  return result;
}

void type metadata accessor for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator()
{
  if (!lazy cache variable for type metadata for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator)
  {
    type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>();
    lazy protocol witness table accessor for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>();
    lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
    v0 = type metadata accessor for Zip2Sequence.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator);
    }
  }
}

uint64_t outlined destroy of Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(uint64_t a1)
{
  type metadata accessor for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, CGFloat a8, CGFloat a9, double a10, CGFloat a11)
{
  v13 = a5;
  v14 = a11;
  v15 = a10;
  v18 = &v160;
  v20 = NAN;
  if (a2)
  {
    *&a1 = NAN;
  }

  *&v152 = a10;
  *(&v152 + 1) = a11;
  if ((a4 & 1) == 0)
  {
    v20 = *&a3;
  }

  *&v153 = a1;
  *(&v153 + 1) = v20;
  v21 = StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(&v152, a5);
  LOBYTE(v152) = v22 & 1;
  LOBYTE(v148) = v23 & 1;
  StackLayout.UnmanagedImplementation.placeChildren(in:)(v21, v22 & 1, v24, v23 & 1, v13, a6, a7);
  v25 = *(v13 + 97);
  v130 = v15;
  v132 = a9;
  *rect = a8;
  if ((*(v13 + 17) & 1) == 0)
  {
LABEL_42:
    v72 = a8;
    v73 = a9;
    v74 = v15;
    v75 = v14;
    if (v25)
    {
      MaxX = CGRectGetMaxX(*&v72);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v72);
    }

    v77 = MaxX;
    v78 = *(v13 + 95);
    v79 = *(v13 + 80);
    v164 = *(v13 + 64);
    *v165 = v79;
    *(v18 + 95) = v78;
    v80 = *(v13 + 16);
    v160 = *v13;
    v161 = v80;
    v81 = *(v13 + 48);
    v162 = *(v13 + 32);
    v163 = v81;
    v82 = *v165;
    v131 = *&v165[8];
    LOBYTE(v13) = v165[17];
    v129 = a6 + 120 * a7;
    if (a6)
    {
      v83 = a6 + 120 * a7;
    }

    else
    {
      v83 = 0;
    }

    v127 = v165[16];
    v138 = v165[16];
    if (a6)
    {
      result = outlined init with copy of StackLayout.Header(&v160, &v152);
      if (a7)
      {
        v121 = v83;
        v123 = v13;
        v125 = v82;
        v35 = 0;
        v31 = a6;
        v32 = &v139;
        v84 = (v131 + 40);
        a6 += 120;
        while (1)
        {
          v92 = *v31;
          v93 = *(v31 + 16);
          v94 = *(v31 + 48);
          v154 = *(v31 + 32);
          v155 = v94;
          v153 = v93;
          v95 = *(v31 + 64);
          v96 = *(v31 + 80);
          v97 = *(v31 + 96);
          v159 = *(v31 + 112);
          v157 = v96;
          v158 = v97;
          v156 = v95;
          v152 = v92;
          v98 = *(v131 + 16);
          if (v35 == v98)
          {
            break;
          }

          if (v127)
          {
            if (v35 >= v98)
            {
              goto LABEL_103;
            }

            v99 = *v84;
          }

          else
          {
            if (v35 >= v98)
            {
              goto LABEL_105;
            }

            v99 = v35;
          }

          if (v35 >= v98)
          {
            goto LABEL_97;
          }

          v100 = *&v156;
          v101 = *(&v155 + 1);
          v102 = *(v31 + 88);
          v135 = *(v31 + 72);
          v136 = v102;
          v137 = *(v31 + 104);
          outlined init with copy of StackLayout.Child(&v152, &v148);
          outlined init with copy of StackLayout.Child(&v152, &v148);
          v173.origin.x = a8;
          v173.origin.y = a9;
          v173.size.width = v15;
          v173.size.height = v14;
          MinY = CGRectGetMinY(v173);
          if (v25)
          {
            v104 = v77 - *(&v154 + 1);
            v77 = v104 - *(&v157 + 1);
            if ((COERCE_UNSIGNED_INT64(v104 - *(&v157 + 1)) & 0xFFFFFFFFFFFFFLL) == 0 || (~COERCE__INT64(v104 - *(&v157 + 1)) & 0x7FF0000000000000) != 0)
            {
              v101 = v104 - *(&v157 + 1);
            }
          }

          else
          {
            if ((COERCE_UNSIGNED_INT64(v77 + *(&v154 + 1)) & 0xFFFFFFFFFFFFFLL) == 0 || (~COERCE__INT64(v77 + *(&v154 + 1)) & 0x7FF0000000000000) != 0)
            {
              v101 = v77 + *(&v154 + 1);
            }

            v77 = v77 + *(&v154 + 1) + *(&v157 + 1);
          }

          v107 = v100 + MinY;
          *&v148 = v101;
          *(&v148 + 1) = v107;
          v149 = v135;
          v150 = v136;
          v151 = v137;
          result = _threadLayoutData();
          if (!result)
          {
            goto LABEL_107;
          }

          v108 = result;
          if (*result)
          {
            goto LABEL_99;
          }

          v13 = *(result + 8);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v108 + 8) = v13;
          if (result)
          {
            if (v99 < 0)
            {
              goto LABEL_84;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
            v13 = result;
            *(v108 + 8) = result;
            if (v99 < 0)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }
          }

          if (*(v13 + 16) <= v99)
          {
            goto LABEL_101;
          }

          v109 = v13 + (v99 << 6);
          v112 = *(v109 + 32);
          v110 = v109 + 32;
          v111 = v112;
          v113 = *v110;
          v114 = *(v110 + 16);
          v115 = *(v110 + 48);
          v146 = *(v110 + 32);
          v147 = v115;
          v144 = v113;
          v145 = v114;
          outlined destroy of ViewGeometry(&v144);
          if ((~v112 & 0x7FF0000000000000) == 0 && (v111 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            ++*(v108 + 16);
          }

          v116 = v148;
          v117 = v149;
          v118 = v151;
          *(v110 + 32) = v150;
          *(v110 + 48) = v118;
          *v110 = v116;
          *(v110 + 16) = v117;
          if (v25 == *(v108 + 56))
          {
            outlined init with copy of ViewGeometry(&v148, &rect[1]);
            outlined destroy of StackLayout.Child(&v152);
            v139 = v101;
            v140 = v107;
            v141 = v135;
            v142 = v136;
            v143 = v137;
            result = outlined destroy of ViewGeometry(&v139);
          }

          else
          {
            v85 = *(v108 + 24);
            v86 = *(v108 + 32);
            v88 = *(v108 + 40);
            v87 = *(v108 + 48);
            outlined init with copy of ViewGeometry(&v148, &rect[1]);
            v171.origin.x = v85;
            v171.origin.y = v86;
            v171.size.width = v88;
            v15 = v130;
            v171.size.height = v87;
            v89 = CGRectGetMaxX(v171);
            v172.origin.x = *v110;
            v172.origin.y = *(v110 + 8);
            v172.size.width = *(v110 + 32);
            v172.size.height = *(v110 + 40);
            v90 = CGRectGetMaxX(v172);
            outlined destroy of StackLayout.Child(&v152);
            v139 = v101;
            v140 = v107;
            v141 = v135;
            v142 = v136;
            v143 = v137;
            result = outlined destroy of ViewGeometry(&v139);
            v91 = v89 - (v90 - v85);
            a9 = v132;
            a8 = *rect;
            *v110 = v91;
          }

          v84 += 3;
          a6 += 120;
          v31 += 120;
          ++v35;
          if (v31 == v129)
          {
            a6 = v129;
            break;
          }
        }

        LOBYTE(v13) = v123;
        v82 = v125;
        v83 = v121;
        goto LABEL_94;
      }
    }

    else
    {
      outlined init with copy of StackLayout.Header(&v160, &v152);
    }

    v35 = 0;
LABEL_94:
    *&v152 = a6;
    *(&v152 + 1) = v83;
    LODWORD(v153) = v82;
    *(&v153 + 1) = v131;
    v119 = v138;
LABEL_95:
    LOBYTE(v154) = v119;
    BYTE1(v154) = v13;
    *(&v154 + 1) = v35;
    LOBYTE(v155) = 1;
    return outlined destroy of Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(&v152);
  }

  v166.origin.x = a8;
  v166.origin.y = a9;
  v166.size.width = v15;
  v166.size.height = v14;
  v26 = CGRectGetMinY(v166);
  v27 = *(v13 + 95);
  v28 = *(v13 + 80);
  v164 = *(v13 + 64);
  *v165 = v28;
  *&v165[15] = v27;
  v29 = *(v13 + 16);
  v160 = *v13;
  v161 = v29;
  v30 = *(v13 + 48);
  v162 = *(v13 + 32);
  v163 = v30;
  LODWORD(v31) = *v165;
  v131 = *&v165[8];
  LOBYTE(v13) = BYTE2(v27);
  v128 = a6 + 120 * a7;
  if (a6)
  {
    v32 = (a6 + 120 * a7);
  }

  else
  {
    v32 = 0;
  }

  v126 = BYTE1(v27);
  LOBYTE(v135) = BYTE1(v27);
  result = &v160;
  v34 = &v152;
  if (!a6)
  {
LABEL_85:
    outlined init with copy of StackLayout.Header(result, v34);
LABEL_86:
    v35 = 0;
LABEL_91:
    *&v152 = a6;
    *(&v152 + 1) = v32;
    LODWORD(v153) = v31;
    *(&v153 + 1) = v131;
    v119 = v135;
    goto LABEL_95;
  }

  result = outlined init with copy of StackLayout.Header(&v160, &v152);
  if (!a7)
  {
    goto LABEL_86;
  }

  v120 = v13;
  v122 = v31;
  v35 = 0;
  v36 = a6;
  v18 = (v131 + 40);
  a6 += 120;
  while (1)
  {
    v48 = *v36;
    v49 = *(v36 + 16);
    v50 = *(v36 + 48);
    v154 = *(v36 + 32);
    v155 = v50;
    v153 = v49;
    v51 = *(v36 + 64);
    v52 = *(v36 + 80);
    v53 = *(v36 + 96);
    v159 = *(v36 + 112);
    v157 = v52;
    v158 = v53;
    v156 = v51;
    v152 = v48;
    v54 = *(v131 + 16);
    if (v35 == v54)
    {
      goto LABEL_90;
    }

    if (v126)
    {
      if (v35 >= v54)
      {
        goto LABEL_102;
      }

      v55 = *v18;
    }

    else
    {
      if (v35 >= v54)
      {
        goto LABEL_104;
      }

      v55 = v35;
    }

    if (v35 >= v54)
    {
      break;
    }

    v56 = *(v36 + 88);
    *&rect[1] = *(v36 + 72);
    *&rect[3] = v56;
    v134 = *(v36 + 104);
    v57 = *(&v155 + 1);
    v58 = v26 + *(&v154 + 1);
    v59 = (COERCE_UNSIGNED_INT64(v26 + *(&v154 + 1)) & 0xFFFFFFFFFFFFFLL) != 0 && (~COERCE__INT64(v26 + *(&v154 + 1)) & 0x7FF0000000000000) == 0;
    a8 = *&v158;
    if (v59)
    {
      v47 = *&v156;
    }

    else
    {
      v47 = v58;
    }

    if (v25)
    {
      v60 = *(&v157 + 1);
      outlined init with copy of StackLayout.Child(&v152, &v148);
      outlined init with copy of StackLayout.Child(&v152, &v148);
      v169.origin.x = v57;
      v169.origin.y = v47;
      v169.size.width = v60;
      a9 = v132;
      v169.size.height = a8;
      v57 = v15 - CGRectGetMaxX(v169);
    }

    else
    {
      outlined init with copy of StackLayout.Child(&v152, &v148);
      outlined init with copy of StackLayout.Child(&v152, &v148);
    }

    *&v170.origin.x = rect[0];
    v170.origin.y = a9;
    v170.size.width = v15;
    v170.size.height = v14;
    v61 = v57 + CGRectGetMinX(v170);
    *&v148 = v61;
    *(&v148 + 1) = v47;
    v149 = *&rect[1];
    v150 = *&rect[3];
    v151 = v134;
    result = _threadLayoutData();
    if (!result)
    {
      goto LABEL_106;
    }

    a7 = result;
    if (*result)
    {
      goto LABEL_98;
    }

    v13 = *(result + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 8) = v13;
    if (result)
    {
      if (v55 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = result;
      *(a7 + 8) = result;
      if (v55 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    if (*(v13 + 16) <= v55)
    {
      goto LABEL_100;
    }

    v62 = v13 + (v55 << 6);
    v65 = *(v62 + 32);
    v63 = v62 + 32;
    v64 = v65;
    v66 = *v63;
    v67 = *(v63 + 16);
    v68 = *(v63 + 48);
    v146 = *(v63 + 32);
    v147 = v68;
    v144 = v66;
    v145 = v67;
    outlined destroy of ViewGeometry(&v144);
    if ((~v65 & 0x7FF0000000000000) == 0 && (v64 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      ++*(a7 + 16);
    }

    v69 = v148;
    v70 = v149;
    v71 = v151;
    *(v63 + 32) = v150;
    *(v63 + 48) = v71;
    *v63 = v69;
    *(v63 + 16) = v70;
    if (v25 == *(a7 + 56))
    {
      outlined init with copy of ViewGeometry(&v148, &v139);
      outlined destroy of StackLayout.Child(&v152);
    }

    else
    {
      v37 = *(a7 + 24);
      v38 = *(a7 + 32);
      v124 = v47;
      v39 = a8;
      v40 = v14;
      v42 = *(a7 + 40);
      v41 = *(a7 + 48);
      outlined init with copy of ViewGeometry(&v148, &v139);
      v167.origin.x = v37;
      v167.origin.y = v38;
      v167.size.width = v42;
      v15 = v130;
      v167.size.height = v41;
      v43 = CGRectGetMaxX(v167);
      v168.origin.x = *v63;
      v168.origin.y = *(v63 + 8);
      v168.size.width = *(v63 + 32);
      v168.size.height = *(v63 + 40);
      v44 = CGRectGetMaxX(v168);
      outlined destroy of StackLayout.Child(&v152);
      v45 = v44 - v37;
      a9 = v132;
      v46 = v43 - v45;
      v14 = v40;
      a8 = v39;
      v47 = v124;
      *v63 = v46;
    }

    v26 = v58 + a8;
    v139 = v61;
    v140 = v47;
    v141 = *&rect[1];
    v142 = *&rect[3];
    v143 = v134;
    result = outlined destroy of ViewGeometry(&v139);
    v18 += 3;
    a6 += 120;
    v36 += 120;
    ++v35;
    if (v36 == v128)
    {
      a6 = v128;
LABEL_90:
      LODWORD(v31) = v122;
      LOBYTE(v13) = v120;
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for StackLayout.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);

  return a1;
}

uint64_t LayoutEngineBox.childGeometries(at:origin:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*(v2 + 184) + 56))(v5, *(v2 + 176));
}

BOOL specialized static ViewSize.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = a1[2];
  v6 = a1[3];
  v8 = (~*&v6 & 0x7FF0000000000000) == 0;
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v8 = 0;
  }

  v9 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 1;
  }

  v10 = (~v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v11 = a2[3];
  v12 = 0.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0 || (*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v9)
    {
      v12 = a2[2];
    }

    if (v12 != v7 || !v9)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    return !v10;
  }

  return v11 == v6 && v10;
}

void *_setThreadLayoutData()
{
  result = _perThreadLayoutData();
  *result = v1;
  return result;
}

uint64_t destroy for _StackLayoutCache()
{
}

void ViewSize.proposal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = (~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v4)
  {
    v2 = 0;
  }

  v5 = (~v3 & 0x7FF0000000000000) == 0 && (v3 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
}

uint64_t StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v21 = *a1;
  v3 = v21;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  ViewSize.proposal.getter(&v20);
  v7 = v20;
  v8 = *(a2 + 17);
  *&v19[1] = v3;
  *&v19[2] = v4;
  v19[3] = v5;
  v19[4] = v6;
  ViewSize.proposal.getter(&v16);
  v9 = &v17;
  v10 = &v18;
  if (*(a2 + 17))
  {
    v10 = &v16;
  }

  v11 = *v10;
  if (!*(a2 + 17))
  {
    v9 = v19;
  }

  v12 = *v9;
  if (*(a2 + 17))
  {
    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == 1)
  {
    return *&v14;
  }

  else
  {
    return v7;
  }
}

uint64_t StackLayout.UnmanagedImplementation.placeChildren(in:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = result;
  if (*(a5 + 40))
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a2 & 1) != 0 || *(a5 + 32) != *&result)
  {
    goto LABEL_10;
  }

  if (*(a5 + 56))
  {
    if (a4)
    {
      return result;
    }

LABEL_10:
    if (!a7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    goto LABEL_10;
  }

  if (*(a5 + 48) != *&a3 && a7 != 0)
  {
LABEL_11:
    if (*(a5 + 17))
    {
      v10 = result;
    }

    else
    {
      v10 = a3;
    }

    if (*(a5 + 17))
    {
      v11 = a2;
    }

    else
    {
      v11 = a4;
    }

    v12 = a2 & 1;
    v13 = a4 & 1;
    *&result = COERCE_DOUBLE(specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(result, a2 & 1, a3, a4 & 1, a5, a6, a7, v10, v11 & 1));
    if (*(a5 + 98) == 1)
    {
      *&result = COERCE_DOUBLE(StackLayout.UnmanagedImplementation.resizeAnyChildrenWithTrailingOverflow(in:)(v9, v12, a3, v13, a5, a6, a7));
    }

    *(a5 + 32) = v9;
    *(a5 + 40) = v12;
    *(a5 + 48) = *&a3;
    *(a5 + 56) = v13;
  }

  return result;
}

uint64_t LayoutProxy.dimensions(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
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

  v9 = *InputValue;
  v10 = InputValue[1];
  v11 = one-time initialization token for lockAssertionsAreEnabled;

  if (v11 != -1)
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
    v17 = v4;
    v18 = v5;
    v19 = v6;
    v20 = v7;
    result = (*(*v9 + 120))(&v17);
    v15 = v4;
    if (v5)
    {
      v15 = NAN;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    if (v7)
    {
      v16 = NAN;
    }

    else
    {
      v16 = v6;
    }

    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
  }

  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance _VStackLayout(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a10 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  }

  result = StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(a1, a2 & 1, a3, a4 & 1, a10, (v19 + 32), *(v19 + 2), a5, a6, a7, a8);
  *(a10 + 104) = v19;
  return result;
}

uint64_t ViewLayoutEngine.childGeometries(at:origin:)(double *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v41 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(*(v4 + *(a2 + 40) + 8) + 16);
  v14 = (v4 + *(a2 + 52));
  v15 = v14[1];
  v25 = *v14;
  v26 = v15;
  v37 = *&v9;
  v38 = v10;
  v39 = *&v11;
  v40 = v12;
  if (specialized static ViewSize.== infix(_:_:)(&v25, &v37) && a3 == 0.0 && a4 == 0.0 && *(*(v4 + *(a2 + 56)) + 16) == v13)
  {
  }

  *&v25 = v9;
  *(&v25 + 1) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  ViewSize.proposal.getter(&v37);
  v17 = v37;
  v18 = LOBYTE(v38);
  v19 = v39;
  v20 = *(v5 + *(a2 + 44));
  v21 = LOBYTE(v40);
  v29[0] = 0;
  v31 = 0;
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  v25 = static ViewGeometry.invalidValue;
  v26 = *&qword_1ED53A0F8;
  v27 = xmmword_1ED53A108;
  v28 = unk_1ED53A118;
  outlined init with copy of ViewGeometry(&v25, &v37);
  v22 = _sSa9repeating5countSayxGx_SitcfC7SwiftUI12ViewGeometryV_Tt1B5Tf4gn_n(&v25, v13);
  outlined destroy of ViewGeometry(&v25);
  v30 = v22;
  v32 = a3;
  v33 = a4;
  v34 = v9;
  v35 = v10;
  v36 = v20;
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  LOBYTE(v37) = v18;
  closure #1 in ViewLayoutEngine.childGeometries(at:origin:)(v29, v5, v17, v18, v19, v21, v13, v23, a3, a4, v9, v10, v9, v10, v11, v12, v24);
  return v30;
}

__int128 *_sSa9repeating5countSayxGx_SitcfC7SwiftUI12ViewGeometryV_Tt1B5Tf4gn_n(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    *(v4 + 64) = v2[2];
    *(v4 + 80) = v6;
    *(v4 + 32) = v8;
    *(v4 + 48) = v7;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = (v4 + 96);
      do
      {
        outlined init with copy of ViewGeometry(v2, v14);
        v11 = *v2;
        v12 = v2[1];
        v13 = v2[3];
        v10[2] = v2[2];
        v10[3] = v13;
        *v10 = v11;
        v10[1] = v12;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of ViewGeometry(v2, v14);
    return v5;
  }

  return result;
}

uint64_t closure #1 in ViewLayoutEngine.childGeometries(at:origin:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BOOL4 a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v67 = a6;
  v69 = *&a5;
  v66 = a4;
  v68 = *&a3;
  v64 = a17;
  v27 = type metadata accessor for ViewLayoutEngine();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62[-v29];
  v63 = a8;
  v31 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = _threadLayoutData();
  _setThreadLayoutData();
  v35 = *(v31 + 16);
  v81 = a2;
  v35(v34, a2, a8);
  (*(v28 + 16))(v30, a2, v27);
  v36 = &v30[*(v27 + 40)];
  LODWORD(a2) = *v36;
  v37 = *(v36 + 1);
  LOBYTE(v36) = v30[*(v27 + 44)];
  LOBYTE(v70[0]) = 0;
  LOBYTE(v77[0]) = v36;
  v38 = *(v28 + 8);

  v38(v30, v27);
  LODWORD(v71) = a2;
  *(&v71 + 1) = v37;
  LOBYTE(v72) = v70[0];
  BYTE1(v72) = v77[0];
  v39 = *(v64 + 64);
  LOBYTE(v75) = v66 & 1;
  v80[0] = v67;
  v40 = v63;
  v39(*&v68, a9, a10, a11, a12);

  (*(v31 + 8))(v34, v40);
  result = _setThreadLayoutData();
  if (*(a1 + 16) != a7)
  {
    if (a7 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    if (a7)
    {
      v42 = 0;
      v43 = a15;
      if ((~*&a15 & 0x7FF0000000000000) == 0 && (*&a15 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v43 = 0.0;
      }

      v69 = v43;
      v44 = a16;
      if ((~*&a16 & 0x7FF0000000000000) == 0 && (*&a16 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v44 = 0.0;
      }

      v68 = v44;
      v45 = 32;
      v67 = (~*&a15 & 0x7FF0000000000000) == 0 && (*&a15 & 0xFFFFFFFFFFFFFLL) != 0;
      v46 = (~*&a16 & 0x7FF0000000000000) == 0 && (*&a16 & 0xFFFFFFFFFFFFFLL) != 0;
      while (1)
      {
        v47 = *(a1 + 8);
        if (v42 >= *(v47 + 16))
        {
          break;
        }

        v48 = *(v47 + v45);
        v49 = ~v48 & 0x7FF0000000000000;
        v50 = v48 & 0xFFFFFFFFFFFFFLL;
        if (v49)
        {
          v51 = 1;
        }

        else
        {
          v51 = v50 == 0;
        }

        if (!v51)
        {
          v52 = (v81 + *(v27 + 40));
          v53 = *(v52 + 1);
          if (v42 >= *(v53 + 16))
          {
            goto LABEL_19;
          }

          v75 = *v52;
          v76 = *(v53 + 8 * v42 + 32);
          *&v71 = v69;
          BYTE8(v71) = v67;
          *&v72 = v68;
          BYTE8(v72) = v46;
          LayoutProxy.dimensions(in:)(&v71, v77);
          v54 = v77[0];
          v55 = v77[1];
          v56 = *(a1 + 24);
          v57 = *(a1 + 32);
          v58 = *(a1 + 40);
          v59 = *(a1 + 48);
          v82.origin.x = v56;
          v82.origin.y = v57;
          v82.size.width = v58;
          v82.size.height = v59;
          v60 = v56 + CGRectGetWidth(v82) * 0.5;
          v83.origin.x = v56;
          v83.origin.y = v57;
          v83.size.width = v58;
          v83.size.height = v59;
          Height = CGRectGetHeight(v83);
          *&v72 = v54;
          *(&v72 + 1) = v55;
          *&v71 = v60 - 0.5 * v78.f64[0];
          *(&v71 + 1) = v57 + Height * 0.5 - vmuld_lane_f64(0.5, v78, 1);
          v74 = v79;
          v73 = v78;
          v70[0] = v71;
          v70[1] = v72;
          v70[2] = v78;
          v70[3] = v79;
          v80[0] = 0;
          PlacementData.setGeometry(_:at:layoutDirection:)(v70, v42, v80);
          result = outlined destroy of ViewGeometry(&v71);
        }

        ++v42;
        v45 += 64;
        if (a7 == v42)
        {
          return result;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  return result;
}

BOOL specialized static _SafeAreaInsetsModifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != 1)
  {
    v8 = v2;
    if (v3 != 1)
    {
      v7 = v3;
      outlined copy of SafeAreaInsets.OptionalValue?(v2);
      outlined copy of SafeAreaInsets.OptionalValue?(v3);
      outlined copy of SafeAreaInsets.OptionalValue?(v2);
      v6 = specialized static SafeAreaInsets.OptionalValue.== infix(_:_:)(&v8, &v7);

      outlined consume of SafeAreaInsets.OptionalValue?(v2);
      return (v6 & 1) != 0;
    }

    outlined copy of SafeAreaInsets.OptionalValue?(v2);
    outlined copy of SafeAreaInsets.OptionalValue?(1);
    outlined copy of SafeAreaInsets.OptionalValue?(v2);

    goto LABEL_8;
  }

  outlined copy of SafeAreaInsets.OptionalValue?(1);
  if (v3 != 1)
  {
    outlined copy of SafeAreaInsets.OptionalValue?(v3);
LABEL_8:
    outlined consume of SafeAreaInsets.OptionalValue?(v2);
    outlined consume of SafeAreaInsets.OptionalValue?(v3);
    return 0;
  }

  v4 = 1;
  outlined copy of SafeAreaInsets.OptionalValue?(1);
  outlined consume of SafeAreaInsets.OptionalValue?(1);
  return v4;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(uint64_t a1, uint64_t a2)
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

  v3 = 0;
  do
  {
    v4 = a1 + v3;
    v5 = a2 + v3;
    if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 40), *(v5 + 40)), vceqq_f64(*(v4 + 56), *(v5 + 56))))) & 1) == 0)
    {
      return 0;
    }

    if (*(v4 + 136))
    {
      if ((*(v5 + 136) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v5 + 136))
      {
        return 0;
      }

      v6 = 0;
      if (*(v4 + 72) != *(v5 + 72))
      {
        return v6;
      }

      if (*(v4 + 80) != *(v5 + 80))
      {
        return v6;
      }

      v6 = 0;
      if (*(v4 + 88) != *(v5 + 88) || *(v4 + 96) != *(v5 + 96) || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v4 + 104), *(v5 + 104)), vceqq_f64(*(v4 + 120), *(v5 + 120))), xmmword_18DDA9F30)) & 0xF) != 0)
      {
        return v6;
      }
    }

    v3 += 112;
    --v2;
  }

  while (v2);
  return 1;
}

void GraphHost.setNeedsUpdate(mayDeferUpdate:values:)(char a1)
{
  swift_beginAccess();
  *(v1 + 168) &= a1 & 1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = one-time initialization token for enabledCategories;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x48uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 103) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 20039;
        type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGGraphRef), type metadata accessor for AGGraphRef);
        AGGraphAddTraceEvent();
      }
    }

    AGGraphSetNeedsUpdate();
  }
}

uint64_t closure #1 in GraphHost.init(data:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 192))();
    v3 = v2;

    if (v1)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(_ViewInputs.base.modify, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t type metadata completion function for FontBox()
{
  result = swift_checkMetadataState();
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

uint64_t protocol witness for ViewGraphOwner.valuesNeedingUpdate.setter in conformance ViewGraphHost(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t outlined copy of SafeAreaInsets.OptionalValue?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double CGRect.inset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  if (!CGRectIsNull(v21))
  {
    v22.origin.x = v11;
    v22.origin.y = a6;
    v22.size.width = a7;
    v22.size.height = a8;
    v23 = CGRectStandardize(v22);
    if (a2 == a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = a2;
    }

    v11 = v16 + v23.origin.x;
    v17 = v23.origin.y + a1;
    v18 = v23.size.width - (a2 + a4);
    v19 = v23.size.height - (a1 + a3);
    v24.origin.x = v16 + v23.origin.x;
    v24.origin.y = v23.origin.y + a1;
    v24.size.width = v18;
    v24.size.height = v19;
    if (CGRectGetWidth(v24) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v25.origin.x = v11;
    v25.origin.y = v17;
    v25.size.width = v18;
    v25.size.height = v19;
    if (CGRectGetHeight(v25) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v11;
}

void type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for KeyPath();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Axis?(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Attribute<_ShapeStyle_Pack>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_3(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(255, a2, a3, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Element.forEach(inverted:stop:_:)(char a1, _BYTE *a2, uint64_t (*a3)(float64x2_t *, _BYTE *), uint64_t a4)
{
  v9 = v4->f64[0];
  if ((a1 & 1) != 0 || (v10 = v4[2].f64[1], v4[2].f64[0] == 0.0) && v10 == 0.0 || (v13.f64[0] = v4[2].f64[0], v13.f64[1] = v10, v14 = 0, result = a3(&v13, a2), (*a2 & 1) == 0))
  {
    result = (*(*(*&v9 + 136) + 16))(a1 & 1, a2, a3, a4, *(*&v9 + 128));
    if (*a2 & 1) == 0 && (a1)
    {
      v12 = v4[2];
      if (v12.f64[0] != 0.0 || v12.f64[1] != 0.0)
      {
        v13 = vnegq_f64(v12);
        v14 = 0;
        return a3(&v13, a2);
      }
    }
  }

  return result;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance SizedSpaceElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  v4 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;
  v8 = 0x80;
  return a3(&v6);
}

uint64_t specialized closure #1 in ViewTransform.convert(_:_:)(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(_OWORD *))
{
  v7 = *result;
  v8 = *(result + 16);
  v9 = *(result + 32);
  v10 = *(result + 48);
  v11 = *(result + 64);
  v12 = *(result + 80);
  v13 = *(result + 96);
  v14 = *(result + 112);
  if ((v14 >> 5) - 3 > 1)
  {
    goto LABEL_14;
  }

  v20 = *(result + 96);
  v21 = *(result + 80);
  v22 = *(result + 64);
  v23 = *(result + 48);
  v24 = *(result + 32);
  v25 = *(result + 16);
  v26 = *result;
  result = swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = *(a3 + 32);
  if (v18 <= 1)
  {
    v7 = v26;
    if (*(a3 + 32))
    {
      v9 = v24;
      v8 = v25;
      v11 = v22;
      v10 = v23;
      v13 = v20;
      v12 = v21;
      if (v26 == v17)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

LABEL_7:
    v9 = v24;
    v8 = v25;
    v11 = v22;
    v10 = v23;
    v13 = v20;
    v12 = v21;
    if (v7 == v17)
    {
      goto LABEL_10;
    }

LABEL_14:
    if (*a4 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  v7 = v26;
  if (v18 == 2)
  {
    goto LABEL_7;
  }

  v9 = v24;
  v8 = v25;
  v11 = v22;
  v10 = v23;
  v13 = v20;
  v12 = v21;
  if (v18 == 3)
  {
    v19 = v26;
    goto LABEL_11;
  }

  v19 = v26;
  if (v26 == *(a3 + 24))
  {
LABEL_10:
    *a2 = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (v19 != v17)
  {
    goto LABEL_14;
  }

LABEL_12:
  *a4 = 1;
LABEL_15:
  v27[0] = v7;
  v27[1] = v8;
  v27[2] = v9;
  v27[3] = v10;
  v27[4] = v11;
  v27[5] = v12;
  v27[6] = v13;
  v28 = v14;
  return a5(v27);
}

void specialized MutableCollection<>._applyTransform(item:)(uint64_t a1)
{
  v2 = *(a1 + 112) >> 5;
  if (v2 <= 2)
  {
    v3 = *a1;
    if (v2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      if (v2 == 1)
      {
        if (*(a1 + 48))
        {
          *&v34.a = *a1;
          *&v34.c = v4;
          *&v34.tx = v5;
          CGAffineTransformInvert(&v33, &v34);
          v3 = *&v33.a;
          v4 = *&v33.c;
          v5 = *&v33.tx;
        }

        v7 = *v1;
        v8 = *(*v1 + 2);
        if (v8)
        {
          v30 = v5;
          v31 = v4;
          v32 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v9 = 0;
            v10 = v7 + 40;
            v11 = v32;
            while (v9 < *(v7 + 2))
            {
              ++v9;
              v40 = *(v10 - 8);
              *&v34.a = v11;
              *&v34.c = v31;
              *&v34.tx = v30;
              v12 = CGPointApplyAffineTransform(v40, &v34);
              v11 = v32;
              *(v10 - 8) = v12;
              v10 += 16;
              if (v8 == v9)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_34:
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_14:
            if (v8 <= *(v7 + 2))
            {
              break;
            }

            __break(1u);
LABEL_36:
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          if (v8 > 0xB && ((v13 = 16 * (v8 - 1), v14 = &v7[v13 + 40], v15 = &v7[v13 + 32], v14 >= (v7 + 40)) ? (v16 = v15 >= (v7 + 32)) : (v16 = 0), v16 ? (v17 = (v8 - 1) >> 60 == 0) : (v17 = 0), v17))
          {
            v18 = v8 & 0x1FFFFFFFFFFFFFFCLL;
            v25 = (v7 + 64);
            v26 = v8 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v27 = *v25;
              v28 = v25[1];
              v29 = vaddq_f64(v25[-1], v32);
              v25[-2] = vaddq_f64(v25[-2], v32);
              v25[-1] = v29;
              *v25 = vaddq_f64(v27, v32);
              v25[1] = vaddq_f64(v28, v32);
              v25 += 4;
              v26 -= 4;
            }

            while (v26);
            if (v8 == v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v8 - v18;
          v20 = &v7[16 * v18 + 32];
          do
          {
            *v20 = vaddq_f64(*v20, v32);
            ++v20;
            --v19;
          }

          while (v19);
LABEL_26:
          *v1 = v7;
        }
      }

      else
      {
        v22 = *(a1 + 49);
        v21 = a1 + 49;
        v23 = *(v21 + 23);
        v24 = *(v21 + 4);
        *&v34.a = v3;
        *&v34.c = v4;
        *&v34.tx = v5;
        v35 = v6;
        v36 = v22;
        v37 = v24;
        v38 = *(v21 + 6);
        v39 = *(v21 + 7);
        specialized MutableCollection<>._apply(_:inverse:)(&v34, v23 & 1);
      }
    }

    else
    {
      v7 = *v1;
      v8 = *(*v1 + 2);
      if (v8)
      {
        v32 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_14;
      }
    }
  }
}

{
  v2 = *(a1 + 112) >> 5;
  if (v2 <= 2)
  {
    v3 = *a1;
    if (!v2)
    {
      v10 = v1[1];
      if (!v10)
      {
        return;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *v1;
      if (v10 > 0xB && ((v12 = v10 - 1, v13 = &v11[v12].f64[1], v14 = &v11[v12], v13 >= &v11->f64[1]) ? (v15 = v14 >= v11) : (v15 = 0), v15 ? (v16 = (v10 - 1) >> 60 == 0) : (v16 = 0), v16))
      {
        v17 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        v24 = v11 + 2;
        v25 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v26 = *v24;
          v27 = v24[1];
          v28 = vaddq_f64(v24[-1], v3);
          v24[-2] = vaddq_f64(v24[-2], v3);
          v24[-1] = v28;
          *v24 = vaddq_f64(v26, v3);
          v24[1] = vaddq_f64(v27, v3);
          v24 += 4;
          v25 -= 4;
        }

        while (v25);
        if (v10 == v17)
        {
          return;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v10 - v17;
      v19 = &v11[v17];
      do
      {
        *v19 = vaddq_f64(*v19, v3);
        ++v19;
        --v18;
      }

      while (v18);
      return;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    if (v2 != 1)
    {
      v21 = *(a1 + 49);
      v20 = a1 + 49;
      v22 = *(v20 + 23);
      v23 = *(v20 + 4);
      *&v33.a = v3;
      *&v33.c = v4;
      *&v33.tx = v5;
      v34 = v6;
      v35 = v21;
      v36 = v23;
      v37 = *(v20 + 6);
      v38 = *(v20 + 7);
      specialized MutableCollection<>._apply(_:inverse:)(&v33, v22 & 1);
      return;
    }

    if (*(a1 + 48))
    {
      *&v33.a = *a1;
      *&v33.c = v4;
      *&v33.tx = v5;
      CGAffineTransformInvert(&v32, &v33);
      v3 = *&v32.a;
      v4 = *&v32.c;
      v5 = *&v32.tx;
    }

    v7 = v1[1];
    if (v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = &(*v1)->f64[1];
        v30 = v4;
        v31 = v3;
        v29 = v5;
        do
        {
          v39 = *(v8 - 8);
          *&v33.a = v3;
          *&v33.c = v4;
          *&v33.tx = v5;
          v9 = CGPointApplyAffineTransform(v39, &v33);
          v5 = v29;
          v4 = v30;
          v3 = v31;
          *(v8 - 8) = v9;
          v8 += 16;
          v7 = (v7 - 1);
        }

        while (v7);
        return;
      }

LABEL_32:
      __break(1u);
    }
  }
}

uint64_t specialized ViewTransform.convert(_:_:)(uint64_t result, float64x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 16);
  v9 = a2[2];
  v39[1] = a2[1];
  v40 = v9;
  v39[0] = *a2;
  v10 = *&v39[0];
  v41[0] = *&v39[0];
  if (*&v39[0] || v40.f64[0] != 0.0 || v40.f64[1] != 0.0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    *(v12 + 32) = v8;
    if (v8 == 4)
    {
      if (v6 != -1)
      {
        if (v7 != -1)
        {
          if (v6)
          {
            if (v7)
            {
              v37 = 0;
              v13 = a2[1];
              v38[0] = *a2;
              v38[1] = v13;
              v38[2] = a2[2];
              v35 = v7;
              v36 = v6;
              v14 = v12;
              ViewTransform.spaceBeforeSpace(_:_:)(&v36, &v35);
              v12 = v14;
              v10 = v41[0];
            }

            else
            {
              *(v12 + 24) = 0;
              *(v12 + 32) = 1;
              v37 = 0;
            }

LABEL_25:
            MEMORY[0x1EEE9AC00](v12);
            v33[10] = a3;
            v33[11] = a4;
            MEMORY[0x1EEE9AC00](v15);
            v33[2] = v39;
            v33[3] = v18;
            v33[4] = &v37;
            v33[5] = closure #1 in CGRect.convertAndClipToScrollView(to:transform:)partial apply;
            v33[6] = v19;
            if (!v10)
            {
            }

            LOBYTE(v36) = 0;
            if (v17)
            {
              v20 = v40.f64[0] == 0.0;
              if (v40.f64[1] != 0.0)
              {
                v20 = 0;
              }

              if (((v16 | v20) & 1) == 0)
              {
                *a3 = vsubq_f64(*a3, v40);
              }

              outlined init with copy of ViewTransform(v39, v38);
              outlined init with copy of AnyElement?(v41, v38);
              do
              {
                v21 = v10;
                v10 = *(v10 + 16);
                (*(*v21 + 104))(1, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33);
              }

              while ((v36 & 1) == 0 && v10);
              goto LABEL_52;
            }

            v22 = *(v10 + 24);
            if ((v22 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (!(v22 >> 60))
            {
              v34 = v40;
              v23 = v39;
              v24 = v38;
              if ((8 * v22) >= 1025)
              {
LABEL_57:
                outlined init with copy of ViewTransform(v23, v24);
                outlined init with copy of AnyElement?(v41, v38);
                isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
                if ((isStackAllocationSafe & 1) == 0)
                {
                  v32 = swift_slowAlloc();
                  closure #3 in ViewTransform.forEach(inverted:_:)(v32, v22, v10, v22, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33);
                  MEMORY[0x193AC4820](v32, -1, -1);
                  v30 = v34;
                  if (v36)
                  {
LABEL_52:
                    outlined destroy of AnyElement?(v41);
                    outlined destroy of ViewTransform(v39);
                  }

LABEL_48:
                  if ((v30.n128_f64[0] != 0.0 || v30.n128_f64[1] != 0.0) && v37 == 1)
                  {
                    *a3 = vaddq_f64(v30, *a3);
                  }

                  goto LABEL_52;
                }
              }

              else
              {
                outlined init with copy of ViewTransform(v39, v38);
                isStackAllocationSafe = outlined init with copy of AnyElement?(v41, v38);
              }

              v26.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v28 = v33 - v27;
              *(v33 - v27) = v10;
              v29 = *(v10 + 16);
              v30 = v34;
              if (v29)
              {
                v31 = v28 + 8;
                do
                {
                  *v31++ = v29;
                  v29 = *(v29 + 16);
                }

                while (v29);
              }

              v10 = 0;
              while (v22 != v10)
              {
                if (__OFADD__(v10, 1))
                {
                  __break(1u);
                  goto LABEL_57;
                }

                v23 = (*(**&v28[8 * (v22 - (v10 + 1))] + 104))(0, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33, v26, v30);
                v30 = v34;
                ++v10;
                if (v36 == 1)
                {
                  goto LABEL_52;
                }
              }

              goto LABEL_48;
            }

            __break(1u);
          }

          *(v12 + 16) = v7;
          *(v12 + 24) = 0;
          v6 = v7;
          *(v12 + 32) = 0;
LABEL_23:
          if (v6)
          {
            goto LABEL_24;
          }
        }

        *(v12 + 24) = 0;
        *(v12 + 32) = 3;
        v37 = 0;
LABEL_20:
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_24:
        v37 = 1;
        goto LABEL_25;
      }

      *(v12 + 16) = v7;
      *(v12 + 24) = 0;
      *(v12 + 32) = 2;
      if (v7 == -1)
      {
      }
    }

    else
    {
      v37 = 0;
      if (v8 > 1)
      {
        if (v8 != 2)
        {
          goto LABEL_20;
        }

        if (v6 == -1)
        {
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_23;
        }

        if (v6 != -1)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = 1;
    goto LABEL_25;
  }

  return result;
}

uint64_t specialized CGRect.init(cornerPoints:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 + 1 >= v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 + 2 >= v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 + 3 < v4)
  {
    return swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CGPoint>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>);
    }
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  result = specialized Sequence._copySequenceContents(initializing:)(&v83, &v5[128 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  v14 = *(v5 + 2);
  v15 = __OFADD__(v14, result);
  v16 = v14 + result;
  if (!v15)
  {
    *(v5 + 2) = v16;
LABEL_12:
    if (result != v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    v13 = &v62;
    v2 = *(v5 + 2);
    if (!v84)
    {
      goto LABEL_39;
    }

    v3 = v84 - 1;
    if (__OFSUB__(v84, 1))
    {
      __break(1u);
    }

    else if ((v3 & 0x8000000000000000) == 0)
    {
      if (v3 < *(v83 + 16))
      {
        v17 = (v83 + (v3 << 7));
        v18 = v17[2];
        v19 = v17[3];
        v20 = v17[5];
        v71 = v17[4];
        v72 = v20;
        v69 = v18;
        v70 = v19;
        v21 = v17[6];
        v22 = v17[7];
        v23 = v17[8];
        *(v75 + 12) = *(v17 + 140);
        v74 = v22;
        v75[0] = v23;
        v73 = v21;
        memmove(&__dst, v17 + 2, 0x7CuLL);
        _ViewInputs.base.modify(&__dst, v24);
        outlined init with copy of GraphicsFilter(&v69, &v62);
        goto LABEL_21;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  __break(1u);
  do
  {
    while (1)
    {
      v25 = *(v5 + 3);
      v26 = v25 >> 1;
      if ((v25 >> 1) < v2 + 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1, v5);
        v26 = *(v5 + 3) >> 1;
      }

      v28 = v81;
      v59 = v80;
      v27 = v80;
      v60 = v81;
      v61[0] = v82[0];
      v29 = v82[0];
      *(v61 + 12) = *(v82 + 12);
      v31 = v77;
      __src = __dst;
      v30 = __dst;
      v56 = v77;
      v33 = v79;
      v57 = v78;
      v32 = v78;
      v58 = v79;
      *(v13 + 108) = *(v82 + 12);
      v67 = v28;
      v68[0] = v29;
      v65 = v33;
      v66 = v27;
      v63 = v31;
      v64 = v32;
      v62 = v30;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v62) != 1 && v2 < v26)
      {
        break;
      }

LABEL_25:
      *(v5 + 2) = v2;
      v73 = v80;
      v74 = v81;
      v75[0] = v82[0];
      v13 = &v62;
      *(v75 + 12) = *(v82 + 12);
      v69 = __dst;
      v70 = v77;
      v71 = v78;
      v72 = v79;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v69) == 1)
      {
        goto LABEL_22;
      }
    }

    v13 = v83;
    v34 = &v5[128 * v2 + 32];
    while (1)
    {
      v51[4] = v80;
      v51[5] = v81;
      v52[0] = v82[0];
      *(v52 + 12) = *(v82 + 12);
      v51[0] = __dst;
      v51[1] = v77;
      v51[2] = v78;
      v51[3] = v79;
      v53[2] = v57;
      v53[3] = v58;
      v53[0] = __src;
      v53[1] = v56;
      *(v54 + 12) = *(v61 + 12);
      v53[5] = v60;
      v54[0] = v61[0];
      v53[4] = v59;
      outlined init with copy of GraphicsFilter(v53, &v44);
      outlined destroy of HitTestableEvent?(v51, &lazy cache variable for type metadata for GraphicsFilter?);
      memmove(v34, &__src, 0x7CuLL);
      if (v3)
      {
        break;
      }

      _s7SwiftUI14GraphicsFilterOSgWOi0_(&v44);
      v80 = v48;
      v81 = v49;
      v82[0] = v50[0];
      *(v82 + 12) = *(v50 + 12);
      __dst = v44;
      v77 = v45;
      v78 = v46;
      v79 = v47;
LABEL_34:
      ++v2;
      v59 = v80;
      v60 = v81;
      v61[0] = v82[0];
      *(v61 + 12) = *(v82 + 12);
      __src = __dst;
      v56 = v77;
      v57 = v78;
      v58 = v79;
      *(v68 + 12) = *(v82 + 12);
      v67 = v81;
      v68[0] = v82[0];
      v65 = v79;
      v66 = v80;
      v63 = v77;
      v64 = v78;
      v62 = __dst;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v62) != 1)
      {
        v34 += 128;
        if (v2 < v26)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (--v3 < *(v13 + 2))
    {
      v35 = &v13[8 * v3 + 2];
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[3];
      v46 = v35[2];
      v47 = v38;
      v44 = v36;
      v45 = v37;
      v39 = v35[4];
      v40 = v35[5];
      v41 = v35[6];
      *(v50 + 12) = *(v35 + 108);
      v49 = v40;
      v50[0] = v41;
      v48 = v39;
      memmove(&__dst, v35, 0x7CuLL);
      _ViewInputs.base.modify(&__dst, v42);
      outlined init with copy of GraphicsFilter(&v44, &v43);
      goto LABEL_34;
    }

    __break(1u);
LABEL_39:
    _s7SwiftUI14GraphicsFilterOSgWOi0_(&__dst);
    v3 = 0;
LABEL_21:
    v73 = v80;
    v74 = v81;
    v75[0] = v82[0];
    *(v13 + 236) = *(v82 + 12);
    v69 = __dst;
    v70 = v77;
    v71 = v78;
    v72 = v79;
  }

  while (_s7SwiftUI14GraphicsFilterOSgWOg(&v69) != 1);
LABEL_22:
  v66 = v80;
  v67 = v81;
  v68[0] = v82[0];
  *(v13 + 108) = *(v82 + 12);
  v62 = __dst;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  outlined destroy of HitTestableEvent?(&v62, &lazy cache variable for type metadata for GraphicsFilter?);
LABEL_13:

  *v1 = v5;
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ObservationTracking();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + (v7 << 7) + 32), (v6 + 32), v2 << 7);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 40 * v7 + 32), (v6 + 32), 40 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 112 * v7 + 32), (v6 + 32), 112 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 36 * v7 + 32), (v6 + 32), 36 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined destroy of AnyElement?(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for AnyElement?, type metadata accessor for AnyElement, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<Path>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _PositionAwarePlacementContext.proposedSize.getter(uint64_t a1@<X8>)
{
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v2)
    {
      goto LABEL_7;
    }

LABEL_9:
    InputValue = AGGraphGetInputValue();
    v9 = InputValue[1];
    v14 = *InputValue;
    v15 = v9;
    ViewSize.proposal.getter(&v10);
    v6 = v10;
    v4 = v11;
    v7 = v12;
    v5 = v13;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = AGGraphGetInputValue();
  v4 = 0;
  v5 = 0;
  v6 = *v3;
  v7 = v3[1];
LABEL_10:
  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance CodableDisplayGamut.CodingKind@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double one-time initialization function for postUpdateActions()
{
  *&result = 135444;
  static Signpost.postUpdateActions = xmmword_18DDB55B0;
  word_1ED530E00 = 0;
  byte_1ED530E02 = 3;
  return result;
}

uint64_t initializeWithCopy for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *result = *a2;
    *(result + 40) = 1;
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 0;
  }

  return result;
}

uint64_t destroy for NamedCoordinateSpace(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

double ViewTransform.containingSizedCoordinateSpace(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  outlined init with copy of CoordinateSpace.Name(a1, &v16);
  if (v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v20 = v17;
    v21 = v18;
  }

  *v22 = v16;
  *&v22[8] = v20;
  *&v22[24] = v21;
  v23 = v10;
  v16 = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = v9;
  ViewTransform.coordinateSpaceTag(_:)(v22, &v20);
  if (BYTE8(v20))
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    v16 = static CoordinateSpace.ID.worldReference;
    LOBYTE(v19) = 1;
    v11 = specialized static CoordinateSpace.== infix(_:_:)(v22, &v16);
    outlined destroy of CoordinateSpace(&v16);
    outlined destroy of CoordinateSpace(v22);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -3;
    }
  }

  else
  {
    v12 = v20;
    outlined destroy of CoordinateSpace(v22);
  }

  memset(v22, 0, 32);
  v22[32] = 1;
  v16 = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = v9;
  specialized ViewTransform.forEach(inverted:_:)(0, &v16, v22, v12);
  v13 = v22[32];
  result = *v22;
  v15 = *&v22[16];
  *a2 = *v22;
  *(a2 + 16) = v15;
  *(a2 + 32) = v13;
  return result;
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a4;
  v4 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 32);
    v20 = 0;
    if (result)
    {
      if ((v6.f64[0] != 0.0 || v6.f64[1] != 0.0) && (*(a3 + 32) & 1) == 0)
      {
        *a3 = vsubq_f64(*a3, v6);
        *(a3 + 32) = 0;
      }

      v7 = v4;
      do
      {
        v8 = v7;
        v7 = *(v7 + 16);
        (*(*v8 + 104))(1, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21);
      }

      while ((v20 & 1) == 0 && v7);
    }

    v9 = *(v4 + 24);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = v6;
      if (!(v9 >> 60))
      {

        if ((8 * v9) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v18 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v18, v9, v4, v9, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21);
            MEMORY[0x193AC4820](v18, -1, -1);
            v17 = v19;
            if (v20)
            {
            }

LABEL_22:
            if ((v17.n128_f64[0] != 0.0 || v17.n128_f64[1] != 0.0) && (*(a3 + 32) & 1) == 0)
            {
              *a3 = vaddq_f64(v17, *a3);
              *(a3 + 32) = 0;
            }
          }
        }

        v11.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v13 = &v19 - v12;
        *(v19.n128_u64 - v12) = v4;
        v14 = *(v4 + 16);
        if (v14)
        {
          v15 = v13 + 8;
          do
          {
            *v15++ = v14;
            v14 = *(v14 + 16);
          }

          while (v14);
        }

        v16 = 0;
        v17 = v19;
        while (v9 != v16)
        {
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v13[8 * (v9 - (v16 + 1))] + 104))(0, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21, v11, v17);
          v17 = v19;
          ++v16;
          if (v20 == 1)
          {
          }
        }

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v29 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 32);
    v26 = 0;
    if (result)
    {
      if ((v7.f64[0] != 0.0 || v7.f64[1] != 0.0) && (*(a3 + 112) & 1) == 0)
      {
        v25 = 0;
        v8 = vsubq_f64(*a3, v7);
        v9 = vaddq_f64(vsubq_f64(v8, *a3), *(a3 + 80));
        *a3 = v8;
        *(a3 + 80) = v9;
        *(a3 + 112) = 0;
      }

      v10 = v4;
      do
      {
        v11 = v10;
        v10 = *(v10 + 16);
        (*(*v11 + 104))(1, &v26, a4, v27);
      }

      while ((v26 & 1) == 0 && v10);
    }

    v12 = *(v4 + 24);
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v24 = v7;
      if (!(v12 >> 60))
      {

        if ((8 * v12) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v23 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v23, v12, v4, v12, &v26, a4, v27);
            MEMORY[0x193AC4820](v23, -1, -1);
            v20 = v24;
            if (v26)
            {
            }

LABEL_22:
            if ((v20.n128_f64[0] != 0.0 || v20.n128_f64[1] != 0.0) && (*(a3 + 112) & 1) == 0)
            {
              v25 = 0;
              v21 = *a3;
              v22 = vaddq_f64(v20, *a3);
              *a3 = v22;
              *(a3 + 80) = vaddq_f64(vsubq_f64(v22, v21), *(a3 + 80));
              *(a3 + 112) = 0;
            }
          }
        }

        v14.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v16 = &v24 - v15;
        *(v24.n128_u64 - v15) = v4;
        v17 = *(v4 + 16);
        if (v17)
        {
          v18 = v16 + 8;
          do
          {
            *v18++ = v17;
            v17 = *(v17 + 16);
          }

          while (v17);
        }

        v19 = 0;
        v20 = v24;
        while (v12 != v19)
        {
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v16[8 * (v12 - (v19 + 1))] + 104))(0, &v26, a4, v27, v14, v20);
          v20 = v24;
          ++v19;
          if (v26 == 1)
          {
          }
        }

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #1 in ViewTransform.containingSizedCoordinateSpace(name:)(uint64_t a1, double a2, double a3, double a4, int64x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + 112) >> 5;
  if (v16 > 2)
  {
    if (v16 != 3 && v16 == 4 && *&v14.f64[0] == a8)
    {
      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = v14.f64[1];
      *(a7 + 24) = v15;
      *(a7 + 32) = 0;
    }
  }

  else if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_11;
    }

    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    a5.i64[0] = *(a1 + 16);
    v20 = v14.f64[0] == 0.0;
    if (*v17.i64 != 0.0)
    {
      v20 = 0;
    }

    v21 = v15 == 0.0 && v14.f64[1] == 0.0;
    if (v21 || v20)
    {
      if ((*(a7 + 32) & 1) == 0)
      {
        v33 = v13;
        v34 = v12;
        v35 = v11;
        v36 = v10;
        v37 = v8;
        v38 = v9;
        v25 = *(a7 + 16);
        v24 = *(a7 + 24);
        v27 = *a7;
        v26 = *(a7 + 8);
        if (v19)
        {
          *&v32.a = v14;
          v32.c = v15;
          *&v32.d = v17;
          v32.ty = v18;
          CGAffineTransformInvert(&v31, &v32);
          v30 = *&v31.c;
          v29 = *&v31.tx;
          v14 = *&v31.a;
        }

        else
        {
          v30 = vzip1q_s64(a5, v17);
          *&v29 = vdupq_laneq_s64(v17, 1).u64[0];
          *(&v29 + 1) = v18;
        }

        *&v32.a = v14;
        *&v32.c = v30;
        *&v32.tx = v29;
        v39.origin.x = v27;
        v39.origin.y = v26;
        v39.size.width = v25;
        v39.size.height = v24;
        *a7 = CGRectApplyAffineTransform(v39, &v32);
        *(a7 + 32) = 0;
      }
    }

    else
    {
LABEL_11:
      *a7 = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 1;
    }
  }

  else if ((*(a7 + 32) & 1) == 0)
  {
    *a7 = vaddq_f64(*a7, v14);
    *(a7 + 32) = 0;
  }
}

uint64_t CGRect.convert(to:transform:)(uint64_t a1, __int128 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  v25[0] = *a2;
  v25[1] = v10;
  v25[2] = a2[2];
  v11 = *v5;
  v12 = v5[1];
  v14 = v5[2];
  v13 = v5[3];
  v15 = *v5;
  *&v10 = v12;
  v16 = v14;
  v17 = v13;
  result = CGRectIsNull(*(&v10 - 8));
  if (result)
  {
    goto LABEL_5;
  }

  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v13;
  result = CGRectIsInfinite(v26);
  if (result)
  {
    goto LABEL_5;
  }

  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = v11 + v14;
  *(inited + 56) = v12;
  *(inited + 64) = v11 + v14;
  *(inited + 72) = v12 + v13;
  *(inited + 80) = v11;
  *(inited + 88) = v12 + v13;
  v24 = inited;
  specialized ApplyViewTransform.convert(to:transform:)(a1, v25, a3, a4, a5);
  result = v24;
  if (*(v24 + 16) >= 4uLL)
  {
    result = specialized CGRect.init(cornerPoints:)(v24, v24 + 32, 0, 9uLL);
    v11 = v20;
    v12 = v21;
    v14 = v22;
    v13 = v23;
LABEL_5:
    *v5 = v11;
    v5[1] = v12;
    v5[2] = v14;
    v5[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized ViewTransform.convert(_:_:)(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *result;
  v9 = *(result + 8);
  v10 = *(result + 16);
  v11 = a2[1];
  v24 = *a2;
  v12 = a2[2];
  v25 = v11;
  v26 = v12;
  if (v24 || *&v26 != 0.0 || *(&v26 + 1) != 0.0)
  {
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;
    *(v14 + 32) = v10;
    if (v10 == 4)
    {
      if (v8 != -1)
      {
        if (v9 != -1)
        {
          if (v8)
          {
            if (v9)
            {
              v23 = 0;
              v16 = a2[1];
              v20 = *a2;
              v21 = v16;
              v22 = a2[2];
              v18[0] = v8;
              v19 = v9;
              v17 = ViewTransform.spaceBeforeSpace(_:_:)(v18, &v19) ^ 1;
            }

            else
            {
              *(v14 + 24) = 0;
              v17 = 1;
              *(v14 + 32) = 1;
              v23 = 0;
            }

            goto LABEL_25;
          }

          *(v14 + 16) = v9;
          *(v14 + 24) = 0;
          v8 = v9;
          *(v14 + 32) = 0;
LABEL_23:
          if (v8)
          {
            goto LABEL_24;
          }
        }

        *(v14 + 24) = 0;
        *(v14 + 32) = 3;
        v23 = 0;
        goto LABEL_20;
      }

      *(v14 + 16) = v9;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      if (v9 == -1)
      {
      }
    }

    else
    {
      v23 = 0;
      if (v10 > 1)
      {
        if (v10 != 2)
        {
LABEL_20:
          if (!v8)
          {
LABEL_24:
            v17 = 0;
            v23 = 1;
            goto LABEL_25;
          }

          v17 = 0;
LABEL_25:
          v20 = v24;
          v21 = v25;
          v22 = v26;
          outlined init with copy of ViewTransform(&v24, v18);
          return specialized ViewTransform.forEach(inverted:_:)(v17 & 1, &v20, &v24, v15, &v23, a3, a4, a5);
        }

        if (v8 == -1)
        {
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v8 != -1)
        {
          v17 = 1;
          goto LABEL_25;
        }
      }
    }

    v17 = 1;
    v23 = 1;
    goto LABEL_25;
  }

  return result;
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = &v36;
  v9 = *a2;
  if (*a2)
  {
    v12 = *(a2 + 32);
    v29 = 0;
    if (a1)
    {
      if (v12.f64[0] == 0.0 && v12.f64[1] == 0.0)
      {
      }

      else
      {
        v38[0] = vnegq_f64(v12);
        v39 = 0;
        v22 = *a5;

        if (v22 == 1)
        {
          specialized MutableCollection<>._applyTransform(item:)(v38);
        }
      }

      v23 = v9;
      do
      {
        v24 = v23;
        v23 = *(v23 + 16);
        (*(*v24 + 104))(1, &v29, a8, v30);
      }

      while ((v29 & 1) == 0 && v23);
      goto LABEL_26;
    }

    v13 = *(v9 + 24);
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v12;
      if (!(v13 >> 60))
      {

        if ((8 * v13) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v26 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v26, v13, v9, v13, &v29, a8, v30);
            MEMORY[0x193AC4820](v26, -1, -1);
            v21 = v28;
            if (v29)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_17:
            if (v21.n128_f64[0] != 0.0 || v21.n128_f64[1] != 0.0)
            {
              v38[0] = v21;
              v39 = 0;
              if (*a5 == 1)
              {
                specialized MutableCollection<>._applyTransform(item:)(v38);
              }
            }

            goto LABEL_26;
          }
        }

        v27[1] = v27;
        v15.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v17 = v27 - v16;
        *(v27 - v16) = v9;
        v18 = *(v9 + 16);
        if (v18)
        {
          v19 = v17 + 8;
          do
          {
            *v19++ = v18;
            v18 = *(v18 + 16);
          }

          while (v18);
        }

        v20 = 0;
        v21 = v28;
        while (v13 != v20)
        {
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v17[8 * (v13 - (v20 + 1))] + 104))(0, &v29, a8, v30, v15, v21);
          v21 = v28;
          ++v20;
          if (v29 == 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_17;
      }
    }

    __break(1u);
  }

LABEL_27:
  outlined destroy of ViewTransform(a3);
}

uint64_t GeometryProxy.placementContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
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
    result = AGWeakAttributeGetAttribute();
    v3 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8] || (v4 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v5 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v6 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v7 = result, result = AGWeakAttributeGetAttribute(), result == v3))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      *(a1 + 28) = 1;
    }

    else
    {
      v8 = result;
      result = AGWeakAttributeGetAttribute();
      *a1 = v4 | (v4 << 32);
      *(a1 + 8) = v5 | (v6 << 32);
      *(a1 + 16) = v7 | (v8 << 32);
      *(a1 + 24) = result;
      *(a1 + 28) = 0;
    }
  }

  return result;
}

double specialized GeometryProxy.frame<A>(in:)(uint64_t a1)
{
  specialized static Update.begin()();
  v3 = 0;
  v4 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
  }

  static Update.end()();
  outlined init with copy of CoordinateSpace.Name(a1, v19);
  if (v19[40])
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v21 = *&v19[8];
    v22 = *&v19[24];
  }

  v23 = *v19;
  v24 = v21;
  v25 = v22;
  v26 = v6;
  specialized static Update.begin()();
  v21 = 0uLL;
  *&v22 = v3;
  *(&v22 + 1) = v4;
  v7 = *(v1 + 16);
  *v19 = *v1;
  *&v19[16] = v7;
  *&v19[32] = *(v1 + 32);
  v20 = *(v1 + 48);
  v8 = GeometryProxy.placementContext.getter(&v18);
  MEMORY[0x1EEE9AC00](v8);
  v16[2] = &v21;
  v16[3] = &v23;
  v17 = v9;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v16, v11, v12, v13, v10 | (v9 << 32));
  v14 = *&v21;
  static Update.end()();
  outlined destroy of CoordinateSpace(&v23);
  return v14;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x100000000) != 0)
  {
    return ((a6 & 0x100000000uLL) >> 32);
  }

  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v10 = a6;
  result = a1(&v11, v9);
  if (!v6)
  {
    return ((a6 & 0x100000000uLL) >> 32);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in GeometryProxy.rect(_:in:)(uint64_t a1)
{
  return closure #1 in GeometryProxy.rect(_:in:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized ViewTransformable.convert(from:to:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(v1 + 24));
}

uint64_t specialized ViewTransformable.convert(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  InputValue = AGGraphGetInputValue();
  v7 = *InputValue;
  v8 = *(InputValue + 8);
  v9 = *(InputValue + 16);
  v10 = *(InputValue + 24);
  v11 = *(InputValue + 32);
  v12 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v13 = AGGraphGetInputValue();
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v11 - (*v13 - v9);
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v12 - (v15 - v10);
  CGRect.convert(to:transform:)(a5, &v18);
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

_BYTE *CornerConfigurationShape_v1.resolvedRadii(size:)(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v18);
  result = _s7SwiftUI26CornerMaskingConfigurationVSgWOg(v18);
  if (result != 1)
  {
    v14 = v18[10];
    v15 = v18[11];
    v16 = v18[12];
    v17 = v18[13];
    v10 = v18[6];
    v11 = v18[7];
    v12 = v18[8];
    v13 = v18[9];
    v6 = v18[2];
    v7 = v18[3];
    v8 = v18[4];
    v9 = v18[5];
    v4 = v18[0];
    v5 = v18[1];
    v3 = 0;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v3);
    v3 = 2;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v3);
    v3 = 3;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v3);
    v3 = 1;
    return closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v3);
  }

  return result;
}

double protocol witness for static AnyContainerShapeType.corners(in:shape:context:) in conformance ContainerCornerShapeType<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  static ContainerCornerShapeType.corners(in:shape:context:)(a1, a2, *(a3 + 16), *(a3 + 24), v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t static ContainerCornerShapeType.corners(in:shape:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v8 = *WeakValue;
      a2 = WeakValue[1];
    }

    else
    {
      v8 = 0;
      a2 = 0;
    }
  }

  result = AGGraphGetWeakValue();
  v16 = 0.0;
  if (!result)
  {
    goto LABEL_8;
  }

  (*(v10 + 16))(v12, result, a3);
  (*(a4 + 16))(&v26, v8, a2, 0, a3, a4);
  if (_s7SwiftUI30RoundedRectangularShapeCornersVSgWOg(&v26) == 1)
  {
    result = (*(v10 + 8))(v12, a3);
LABEL_8:
    v18 = 1;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    goto LABEL_30;
  }

  v22 = v28;
  if (v29)
  {
    v22 = 0.0;
  }

  if (v27)
  {
    v16 = v22;
  }

  else
  {
    v16 = v26;
  }

  v23 = v32;
  if (v33)
  {
    v23 = 0.0;
  }

  if (v31)
  {
    v21 = v23;
  }

  else
  {
    v21 = v30;
  }

  v24 = v40;
  if (v41)
  {
    v24 = 0.0;
  }

  if (v39)
  {
    v20 = v24;
  }

  else
  {
    v20 = v38;
  }

  v17.n128_f64[0] = v34;
  v25 = v36;
  if (v37)
  {
    v25 = 0.0;
  }

  if (v35)
  {
    v19 = v25;
  }

  else
  {
    v19 = v34;
  }

  result = (*(v10 + 8))(v12, a3, v17);
  v18 = 0;
LABEL_30:
  *a5 = v16;
  *(a5 + 8) = v19;
  *(a5 + 16) = v20;
  *(a5 + 24) = v21;
  *(a5 + 32) = v18;
  return result;
}

__n128 UnevenRoundedRectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *&v15 = *v1;
  BYTE8(v15) = 0;
  v16 = v15;
  *&v17 = 0;
  BYTE8(v17) = 0;
  v18.n128_u64[0] = 0;
  v18.n128_u64[1] = v5;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v5;
  v20 = 0uLL;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = 0;
  *&v22 = v3;
  BYTE8(v22) = 0;
  v23 = v3;
  *&v24 = 0;
  BYTE8(v24) = 0;
  *&v25 = 0;
  *(&v25 + 1) = v4;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = v4;
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  *(&v28 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v15);
  v6 = v26;
  v7 = v28;
  *(a1 + 192) = v27;
  *(a1 + 208) = v7;
  v8 = v22;
  v9 = v24;
  v10 = v25;
  *(a1 + 128) = v23;
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 176) = v6;
  v11 = v20;
  v12 = v21;
  *(a1 + 64) = v19;
  *(a1 + 80) = v11;
  *(a1 + 224) = v29;
  *(a1 + 96) = v12;
  *(a1 + 112) = v8;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  result = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

uint64_t _s7SwiftUI26CornerMaskingConfigurationVSgWOg(uint64_t a1)
{
  if (*(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void one-time initialization function for thick()
{
  dword_1ED52B27C = 0;
  static Material.thick = 3;
  byte_1ED52B278 = 3;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static Material.thick.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for thick != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.thick;
  v3 = dword_1ED52B27C;
  *a1 = static Material.thick;
  v4 = byte_1ED52B278;
  *(a1 + 8) = byte_1ED52B278;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017VibrantColorStyleF033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(*a1) || (type metadata accessor for VibrantColorStyle.Type?(), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>();
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

uint64_t EnvironmentValues.isVibrantColorStyleEnabled.setter(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = &type metadata for SystemVibrantColorStyle;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    v4 = &protocol witness table for SystemVibrantColorStyle;
  }

  else
  {
    v4 = 0;
  }

  v5 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017VibrantColorStyleF033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt2g5(v2, v3, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017VibrantColorStyleK033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Ttg5(v5, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, void *a7@<X6>, double *a8@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 12);
  v14 = *a3;
  v15 = *a4;
  v69 = *a5;
  v16 = *(a5 + 8);
  v17 = *a6;
  v18 = *a7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_25;
  }

  v67 = v11;
  v68 = v12;
  v66 = v13;
  v65 = v17;
  v70 = a8;
  v20 = *(v8 + 208);
  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for ViewGraphRenderDelegate();
  v23 = *(v20 + 16);
  v23(&v76, v22, v22, ObjectType, v20);
  v24 = v76;
  if (*&v76 == 0.0)
  {
LABEL_24:
    result = swift_unknownObjectRelease();
    a8 = v70;
LABEL_25:
    *a8 = INFINITY;
    return result;
  }

  v64 = v77;
  v25 = type metadata accessor for DisplayList.ViewRenderer();
  v26 = (v23)(&v76, v25, v25, ObjectType, v20);
  v27 = v76;
  if (*&v76 == 0.0)
  {
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  if ((a2 & 1) == 0)
  {
    v80 = 0.0;
    v81 = 0;
    a2 = swift_getObjectType();
    (*(*&v64 + 16))(&v80, a2);
    v74 = v80;
    if (one-time initialization token for enabledCategories == -1)
    {
LABEL_27:
      v36 = v68;
      v37 = v67;
      if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
      {
        v69 = *&v18;
        if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
          LOBYTE(v76) = 1;
          v77 = v14;
          type metadata accessor for (Bool, Double)();
          AGGraphAddTraceEvent();
        }

        v38 = (*(*&v64 + 8))(a2, COERCE_DOUBLE(*&v64));
        v39 = MEMORY[0x1EEE9AC00](v38);
        v54 = v27;
        v55 = v40;
        v56 = v37;
        LOWORD(v57) = v36;
        HIDWORD(v57) = v66;
        v58 = v14;
        v59 = v15;
        v60 = v65;
        v61 = v69;
        v62 = &v74;
        (*(*&v64 + 24))(&v76, 0, partial apply for closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:), v39);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v41 = *&v76;
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_44:
    swift_once();
    goto LABEL_27;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = swift_once();
  }

  v28 = v65;
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
    LOBYTE(v76) = 0;
    v77 = v14;
    type metadata accessor for (Bool, Double)();
    v26 = AGGraphAddTraceEvent();
  }

  if ((*(v27 + 96) & 1) == 0 && *(v27 + 10))
  {
    v29 = *(v27 + 11);
    v30 = swift_getObjectType();
    v76 = v67;
    LOWORD(v77) = v68;
    HIDWORD(v77) = v66;
    v73 = v14;
    v74 = v69;
    v75 = v16;
    v71 = v18;
    v72 = v28;
    v31 = *(v29 + 32);
    swift_unknownObjectRetain();
    v31(&v80, &v76, &v73, &v74, &v72, &v71, v30, v29);
    v26 = swift_unknownObjectRelease();
    if ((v81 & 1) == 0)
    {
      v48 = v80;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15 >= v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = v15;
      }

      v50 = v49 - v14;
      swift_beginAccess();
      v51 = *(v27 + 4);

      if (v51 > v50)
      {
        v52 = v51;
      }

      else
      {
        v52 = v50;
      }

      v41 = v14 + v52;
      goto LABEL_36;
    }

    v28 = v65;
  }

  v74 = v15;
  MEMORY[0x1EEE9AC00](v26);
  v53[2] = &v74;
  v53[3] = v24;
  v32 = v64;
  v54 = *&v64;
  v55 = v14;
  LOBYTE(v56) = 1;
  v57 = v27;
  v58 = *&v67;
  LOWORD(v59) = v68;
  HIDWORD(v59) = v66;
  v60 = v15;
  v61 = v28;
  v62 = v18;
  if (![objc_opt_self() isMainThread])
  {
    *&v42 = COERCE_DOUBLE(swift_allocObject());
    *(v42 + 16) = partial apply for closure #1 in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:);
    *(v42 + 24) = v53;
    v43 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    *&v76 = COERCE_DOUBLE(partial apply for thunk for @callee_guaranteed () -> ());
    v77 = *&v42;
    v78 = v43;
    v79 = CurrentAttribute;
    v45 = one-time initialization token for _lock;

    if (v45 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

  v80 = 0.0;
  v81 = 0;
  v33 = swift_getObjectType();
  (*(*&v64 + 16))(&v80, v33, COERCE_DOUBLE(*&v64));
  v73 = v80;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    v69 = COERCE_DOUBLE(&v63);
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
      LOBYTE(v76) = 1;
      v77 = v14;
      type metadata accessor for (Bool, Double)();
      AGGraphAddTraceEvent();
    }

    v34 = (*(*&v32 + 8))(v33, COERCE_DOUBLE(*&v32));
    v35 = MEMORY[0x1EEE9AC00](v34);
    (*(*&v32 + 24))(&v76, 1, closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)partial apply, v35);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v74 = *&v76;

    result = swift_unknownObjectRelease();
    goto LABEL_35;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_34:
  _MovableLockSyncMain(static Update._lock, &v76, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
  swift_unknownObjectRelease();
  v46 = v78;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  swift_unknownObjectRelease();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

LABEL_35:
  v41 = v74;
LABEL_36:
  *v70 = v41;
  return result;
}

uint64_t destroy for DisplayList.ViewUpdater.Model.State(uint64_t a1)
{
  outlined consume of GraphicsBlendMode(*(a1 + 16), *(a1 + 24));

  if ((~*(a1 + 112) & 0xF000000000000007) != 0)
  {
  }
}

uint64_t CoreViewSubviewsCount(uint64_t result, void *a2)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  v2 = [a2 sublayers];

  return [v2 count];
}

uint64_t DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)(void *a1)
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  v6 = *v1 & 3;
  result = CoreViewSubviewsCount(v6, v4);
  if (v5 < result)
  {
    v8 = result;
    v9 = a1[1];
    v72 = a1;
    v73 = v3;
    v74 = v4;
    v75 = v9;
    v76 = v5;
    while (1)
    {
      if (v5 >= v8)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      --v8;
      LOBYTE(v111[0]) = v6;
      v10 = CoreViewSubviewAtIndex(v6, v4, v8, v111);
      v11 = v3;
      if (LOBYTE(v111[0]) == v6)
      {
        if (*(v9 + 16))
        {
          goto LABEL_7;
        }

LABEL_3:
        result = swift_unknownObjectRelease();
        if (v5 == v8)
        {
          return result;
        }
      }

      else
      {
        if (one-time initialization token for caLayer != -1)
        {
          v3 = v10;
          swift_once();
          v10 = v3;
          LOBYTE(v3) = v73;
        }

        v11 = static DisplayList.ViewUpdater.Platform.caLayer;
        if (!*(v9 + 16))
        {
          goto LABEL_3;
        }

LABEL_7:
        v84 = v10;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }

        v14 = *a1;
        if (!*(*a1 + 16))
        {
          goto LABEL_35;
        }

        v79 = v11;
        v15 = (*(v9 + 56) + 20 * v12);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = *(v15 + 16);
        v21 = *(v15 + 17);
        v77 = v15[1];
        v78 = *v15;
        if (v21)
        {
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        v83 = v20;
        v80 = v22;
        v81 = v18 | (v19 << 32);
        v82 = v16 | (v17 << 32);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v22 | v20);
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }

        v25 = *(v14 + 56) + (v23 << 7);
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *(v25 + 16);
        v111[0] = *v25;
        v111[1] = v28;
        v111[2] = v27;
        v111[3] = v26;
        v29 = *(v25 + 64);
        v30 = *(v25 + 80);
        v31 = *(v25 + 112);
        v111[6] = *(v25 + 96);
        v111[7] = v31;
        v111[4] = v29;
        v111[5] = v30;
        v32 = *(v25 + 16);
        v104 = *v25;
        v105 = v32;
        v33 = *(v25 + 32);
        v34 = *(v25 + 48);
        v35 = *(v25 + 96);
        v109 = *(v25 + 80);
        v110 = v35;
        v36 = *(v25 + 64);
        v107 = v34;
        v108 = v36;
        v106 = v33;
        v37 = *(v25 + 113);
        *(v103 + 7) = *(v25 + 120);
        v103[0] = v37;
        if ((v31 & 1) == 0)
        {
          v99 = v108;
          v100 = v109;
          v101 = v110;
          v95 = v104;
          v96 = v105;
          v97 = v106;
          v98 = v107;
          LOBYTE(v102) = 1;
          *(&v102 + 1) = *(v103 + 7);
          *(&v102 + 1) = v103[0];
          outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v111, &v87);
          outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v95, &v87);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = *a1;
          v39 = v86;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v80 | v83);
          v42 = v39[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_37;
          }

          v45 = v40;
          if (v39[3] >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v4 = v74;
              if ((v40 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v4 = v74;
              if ((v45 & 1) == 0)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v80 | v83);
            if ((v45 & 1) != (v47 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v41 = v46;
            v4 = v74;
            if ((v45 & 1) == 0)
            {
LABEL_28:
              v3 = v86;
              v86[(v41 >> 6) + 8] |= 1 << v41;
              v61 = v3[6] + 20 * v41;
              *v61 = v78;
              *(v61 + 4) = v77;
              *(v61 + 8) = v18;
              *(v61 + 12) = v19;
              *(v61 + 16) = v83;
              *(v61 + 17) = v21;
              v62 = (v3[7] + (v41 << 7));
              v64 = v101;
              v63 = v102;
              v65 = v100;
              v62[4] = v99;
              v62[5] = v65;
              v62[6] = v64;
              v62[7] = v63;
              v67 = v97;
              v66 = v98;
              v68 = v96;
              *v62 = v95;
              v62[1] = v68;
              v62[2] = v67;
              v62[3] = v66;
              v69 = v3[2];
              v70 = __OFADD__(v69, 1);
              v71 = v69 + 1;
              if (v70)
              {
                goto LABEL_38;
              }

              v3[2] = v71;
              goto LABEL_30;
            }
          }

          v3 = v86;
          v48 = (v86[7] + (v41 << 7));
          v49 = v48[3];
          v51 = *v48;
          v50 = v48[1];
          v89 = v48[2];
          v90 = v49;
          v87 = v51;
          v88 = v50;
          v52 = v48[6];
          v54 = v48[4];
          v53 = v48[5];
          v94 = v48[7];
          v92 = v53;
          v93 = v52;
          v91 = v54;
          v55 = v95;
          v56 = v96;
          v57 = v98;
          v48[2] = v97;
          v48[3] = v57;
          *v48 = v55;
          v48[1] = v56;
          v58 = v99;
          v59 = v100;
          v60 = v102;
          v48[6] = v101;
          v48[7] = v60;
          v48[4] = v58;
          v48[5] = v59;
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v87);
LABEL_30:
          a1 = v72;
          *v72 = v3;
          specialized Set._Variant.insert(_:)(v85, v82, v81, v80 | v83);
          v91 = v108;
          v92 = v109;
          v93 = v110;
          v87 = v104;
          v88 = v105;
          v89 = v106;
          v90 = v107;
          LOBYTE(v94) = 1;
          *(&v94 + 1) = *(v103 + 7);
          *(&v94 + 1) = v103[0];
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v87);
          LOBYTE(v3) = v73;
          goto LABEL_31;
        }

        v99 = v108;
        v100 = v109;
        v101 = v110;
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        LOBYTE(v102) = v31;
        *(&v102 + 1) = *(v103 + 7);
        *(&v102 + 1) = v103[0];
        outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v111, &v87);
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v95);
LABEL_31:
        v9 = v75;
        CoreViewRemoveFromSuperview(v79 & 3, v84);
        result = swift_unknownObjectRelease();
        v5 = v76;
        if (v76 == v8)
        {
          return result;
        }
      }
    }
  }

  return result;
}