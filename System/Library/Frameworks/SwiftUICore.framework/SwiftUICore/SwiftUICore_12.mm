uint64_t specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      v8 = (a2 + 56);
      v9 = 32;
      while (!__OFADD__(v7, 1))
      {
        v17 = *(v6 + 17);
        if (v17)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }

        if (*(v6 + 17))
        {
          v19 = 0;
        }

        else
        {
          v19 = a4;
        }

        v20 = *(v6 + 88);
        v21 = *(v20 + 16);
        if (*(v6 + 96))
        {
          if (v7 >= v21)
          {
            goto LABEL_41;
          }

          v22 = (v20 + 12 * v7 + 32);
        }

        else
        {
          if (v7 >= v21)
          {
            goto LABEL_42;
          }

          v22 = (v20 + v9);
        }

        v44 = *(v6 + 80);
        v45 = *v22;
        v40 = v18;
        v41 = (v17 ^ 1 | a5) & 1;
        v42 = v19;
        v43 = (v17 | a5) & 1;
        LayoutProxy.dimensions(in:)(&v40, &v36);
        v23 = v36;
        v24 = v37;
        v25 = v38;
        v26 = *v6;
        v27 = one-time initialization token for lockAssertionsAreEnabled;

        if (v27 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_46;
          }
        }

        v36 = v24;
        v37 = v25;
        v28 = (*(*v23 + 144))(v26, &v36);
        v30 = v29;

        if (v30)
        {
          if (one-time initialization token for typeCache != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&static AlignmentKey.typeCache);
          if (v26 < 2)
          {
            goto LABEL_43;
          }

          if (v26 >> 1 > *(off_1ED537F58 + 2))
          {
            goto LABEL_44;
          }

          v31 = (off_1ED537F58 + 16 * (v26 >> 1) + 16);
          v32 = *v31;
          v33 = v31[1];
          os_unfair_lock_unlock(&static AlignmentKey.typeCache);
          v36 = v23;
          v37 = v24;
          v38 = v25;
          (*(v33 + 8))(&v36, v32, v33);
        }

        else
        {
          v10 = *&v28;
        }

        v11 = INFINITY;
        if ((*&v10 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v11 = v10;
        }

        v12 = *v8;
        v13 = v8[1];
        ++v7;
        if ((~*&v10 & 0x7FF0000000000000) == 0)
        {
          v10 = v11;
        }

        v14 = -v10;
        v15 = v8[3];
        if (*(v6 + 17))
        {
          v16 = v14;
        }

        else
        {
          v16 = 0.0;
        }

        if (*(v6 + 17))
        {
          v14 = 0.0;
        }

        v38 = v8[2];
        v39 = v15;
        v36 = v12;
        v37 = v13;
        *v8 = v16;
        *(v8 + 1) = v14;
        v8[1] = v23;
        v8[2] = v24;
        v8[3] = v25;
        result = outlined destroy of ViewGeometry(&v36);
        v9 += 8;
        v8 = (v8 + 120);
        if (v7 == a3)
        {
          return result;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t closure #1 in static HStack._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for HStack();
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _HStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout()
{
  result = lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout;
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout;
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout;
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _HStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t LayoutEngineBox.childPlacement(at:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*(v2 + 184) + 72))(v5, *(v2 + 176));
}

void *EnvironmentValues.dynamicTypeSize.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }

    *a1 = v5;
  }

  return result;
}

void *EnvironmentValues.displayScale.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
}

void *EnvironmentValues.layoutDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t EnvironmentValues.backgroundLevel.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = v5;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1, v5);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = (v3 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = &static BackgroundInfoKey.defaultValue;
    }
  }

  return *v2;
}

void *EnvironmentValues.displayGamut.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ZStackLayout(uint64_t a1)
{
  result = _threadLayoutData();
  if (result)
  {
    if (*result == 1)
    {
      v3 = *(result + 16);
      v4 = *(result + 48);
      v5[0] = *(result + 32);
      v5[1] = v4;
      return (*(v3 + 8))(a1, v5, *(result + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  return sub_18D0D7264(a1);
}

uint64_t static ViewLayoutEngine.defaultAlignment(_:size:data:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v36 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for ViewLayoutEngine();
  v9 = *(a3 + *(v8 + 40) + 8);
  v10 = *(v8 + 56);
  v11 = *(a3 + v10);
  v12 = *(v11 + 16);
  if (v12 == *(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    *v40 = v5;
    *&v40[8] = v36;
    *&v40[24] = v7;

    v11 = ViewLayoutEngine.childGeometries(at:origin:)(v40, v8, 0.0, 0.0);
    *(a3 + v10) = v11;
    swift_bridgeObjectRetain_n();

    v12 = *(v11 + 16);
  }

  v38 = 0;
  v39 = 1;

  if (!v12)
  {

    return 0;
  }

  v30 = v8;
  v31 = a3;
  v13 = 0;
  v14 = 0;
  v34 = *MEMORY[0x1E698D3F8];
  v32 = a1 >> 1;
  v15 = (v11 + 80);
  v16 = 32;
  v33 = v12;
  while (v14 < *(v11 + 16))
  {
    if (v14 >= *(v9 + 16))
    {
      goto LABEL_46;
    }

    v35 = *v15;
    v37 = *(v15 - 1);
    if (*(v9 + v16) == v34)
    {
      InputValue = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        InputValue = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      InputValue = AGGraphGetInputValue();
    }

    v18 = *InputValue;
    v19 = one-time initialization token for lockAssertionsAreEnabled;

    if (v19 != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_50;
      }
    }

    *v40 = v37;
    *&v40[16] = v35;
    v20 = COERCE_DOUBLE((*(*v18 + 144))(a1, v40));
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      if (a1)
      {
        v23 = (v11 + 32 + (v14 << 6) + 8);
      }

      else
      {
        v23 = v15 - 6;
        if (*(v31 + *(v30 + 44)) == 1)
        {
          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v24 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if (dyld_program_sdk_at_least())
            {
LABEL_41:
              v41.origin.x = *(v15 - 6);
              v41.origin.y = *(v15 - 5);
              v41.size.width = *(v15 - 2);
              v41.size.height = *(v15 - 1);
              v25 = v5 + v20 - CGRectGetMaxX(v41);
              goto LABEL_33;
            }
          }

          else if (static Semantics.forced >= v24)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *v23 + v20;
LABEL_33:
      if (one-time initialization token for typeCache != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static AlignmentKey.typeCache);
      if (a1 < 2)
      {
        goto LABEL_47;
      }

      if (v32 > *(off_1ED537F58 + 2))
      {
        goto LABEL_48;
      }

      v26 = (off_1ED537F58 + 16 * v32 + 16);
      v27 = *v26;
      v28 = v26[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      (*(v28 + 16))(v13, &v38, v27, v28, v25);
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_49;
      }
    }

    ++v14;
    v15 += 8;
    v16 += 8;
    if (v33 == v14)
    {

      return v38;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized UnaryChildGeometry.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v21 = Value[1];
  v22 = *Value;
  v3 = *AGGraphGetValue();
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_6:
    v23 = v22;
    v24 = v21;
    (*(*v3 + 152))(&v25, &v23);

    v5 = v25;
    v6 = v26;
    v7 = rect;
    v8 = v28;
    v10 = *(&v28 + 1);
    v9 = v29;
    v12 = v30;
    v11 = v31;
    if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v13 = *AGGraphGetValue();
  *&v23 = v5;
  BYTE8(v23) = v6;
  *&v24 = v7;
  BYTE8(v24) = v8;
  LayoutProxy.dimensions(in:)(&v23, &v25);
  v14 = v25;
  v15 = v26;
  v16 = rect;
  v17 = v29;
  v18 = v12 - v10 * rect;
  v19 = v28;
  v20 = v11 - v9 * *&v28;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v19;
  *(a1 + 56) = v17;
  if (v13 == 1)
  {
    *a1 = *&v22 - CGRectGetMaxX(*&v18);
  }
}

void ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = v5 + *(a4 + 40);

  *v11 = v9;
  *(v11 + 8) = v10;
  *v17 = v8;
  swift_getKeyPath();
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  LOBYTE(v10) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v5 + *(a4 + 44)) = v10;
  (*(*(*(a4 + 16) - 8) + 24))(v5, a1);
  v16[0] = 1;
  v17[0] = 1;
  v12 = v5 + *(a4 + 48);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  *(v12 + 48) = 1;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 1;
  v13 = *(a4 + 56);

  *(v5 + v13) = MEMORY[0x1E69E7CC0];
  v14 = v5 + *(a4 + 60);
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 17) = *v16;
  *(v14 + 20) = *&v16[3];
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 41) = *v17;
  *(v14 + 44) = *&v17[3];
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  v15 = *(a4 + 64);

  *(v5 + v15) = 0;
  ViewLayoutEngine.updateCache()();
}

uint64_t protocol witness for ViewList.traits.getter in conformance ModifiedViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t *specialized RendererEffectDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v42 = v5;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v38 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v39 = v7;
  v11 = v10;
  v37 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v36 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v40 = v4;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v41 = v6;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v52 = __PAIR64__(v38, v9);
  *(&v52 + 1) = __PAIR64__(v37, v11);
  *&v53 = __PAIR64__(v36, v13);
  *(&v53 + 1) = __PAIR64__(v16, v15);
  *&v54 = __PAIR64__(v19, v18);
  *(&v54 + 1) = __PAIR64__(v22, v21);
  LODWORD(v55[0]) = v39;
  _setThreadGeometryProxyData();
  v23 = *AGGraphGetValue();
  AGGraphGetValue();
  *&v24 = v23;
  v25 = v24;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  v32 = AGGraphGetValue();
  v33 = *v1;
  *&v46 = v30;
  *(&v46 + 1) = v31;
  v47 = *v32;
  *v49 = 0x400000000;
  *&v49[8] = v41;
  *&v49[16] = v42 | v40;
  *&v49[24] = v33;
  *&v48 = v39;
  *(&v48 + 1) = v25;
  LOBYTE(v52) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v52);
  v50[2] = v48;
  v51[0] = *v49;
  *(v51 + 12) = *&v49[12];
  v50[0] = v46;
  v50[1] = v47;
  v44[2] = v48;
  v45[0] = *v49;
  *(v45 + 12) = *&v49[12];
  v44[0] = v46;
  v44[1] = v47;
  outlined init with copy of DisplayList.Item(v50, &v52);
  DisplayList.init(_:)(v44, a1);
  v54 = v48;
  v55[0] = *v49;
  *(v55 + 12) = *&v49[12];
  v52 = v46;
  v53 = v47;
  return outlined destroy of DisplayList.Item(&v52);
}

{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v44 = v5;
  v45 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v42 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v39 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v43 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v40 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v57 = __PAIR64__(v42, v9);
  *(&v57 + 1) = __PAIR64__(v41, v11);
  *&v58 = __PAIR64__(v39, v13);
  *(&v58 + 1) = __PAIR64__(v16, v15);
  *&v59 = __PAIR64__(v19, v18);
  *(&v59 + 1) = __PAIR64__(v22, v21);
  LODWORD(v60[0]) = v40;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  LOBYTE(v22) = *(v23 + 8);
  AGGraphGetValue();
  v25 = swift_allocObject();
  *&v53[0] = v24;
  WORD4(v53[0]) = v22;
  _s7SwiftUI14GraphicsFilterOWOi_(v53);
  v26 = v53[5];
  v25[5] = v53[4];
  v25[6] = v26;
  v25[7] = v54[0];
  *(v25 + 124) = *(v54 + 12);
  v27 = v53[1];
  v25[1] = v53[0];
  v25[2] = v27;
  v28 = v53[3];
  v25[3] = v53[2];
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v49 = v33;
  *(&v49 + 1) = v34;
  v50 = *v35;
  *v52 = 0xA00000000;
  *&v52[8] = v43;
  *&v52[16] = v44 | v45;
  *&v52[24] = v36;
  *&v51 = v40;
  *(&v51 + 1) = v25;
  LOBYTE(v57) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v57);
  v55[2] = v51;
  v56[0] = *v52;
  *(v56 + 12) = *&v52[12];
  v55[0] = v49;
  v55[1] = v50;
  v47[2] = v51;
  v48[0] = *v52;
  *(v48 + 12) = *&v52[12];
  v47[0] = v49;
  v47[1] = v50;
  outlined init with copy of DisplayList.Item(v55, &v57);
  DisplayList.init(_:)(v47, a1);

  v59 = v51;
  v60[0] = *v52;
  *(v60 + 12) = *&v52[12];
  v57 = v49;
  v58 = v50;
  return outlined destroy of DisplayList.Item(&v57);
}

{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v49 = v5;
  v50 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v47 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v46 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v44 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v48 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v45 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v74 = __PAIR64__(v47, v9);
  *(&v74 + 1) = __PAIR64__(v46, v11);
  *&v75 = __PAIR64__(v44, v13);
  *(&v75 + 1) = __PAIR64__(v16, v15);
  *&v76 = __PAIR64__(v19, v18);
  *(&v76 + 1) = __PAIR64__(v22, v21);
  LODWORD(v77[0]) = v45;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v60 = v23[2];
  v61 = v24;
  v58 = v26;
  v59 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *(v64 + 12) = *(v23 + 108);
  v63 = v28;
  v64[0] = v27;
  v62 = v29;
  outlined init with copy of VariableBlurStyle(&v58, &v65);
  AGGraphGetValue();
  v30 = swift_allocObject();
  v69 = v62;
  v70 = v63;
  v71[0] = v64[0];
  *(v71 + 12) = *(v64 + 12);
  v65 = v58;
  v66 = v59;
  v67 = v60;
  v68 = v61;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v65);
  v31 = v70;
  v30[5] = v69;
  v30[6] = v31;
  v30[7] = v71[0];
  *(v30 + 124) = *(v71 + 12);
  v32 = v66;
  v30[1] = v65;
  v30[2] = v32;
  v33 = v68;
  v30[3] = v67;
  v30[4] = v33;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = v34[1];
  v37 = AGGraphGetValue();
  v38 = v35 - *v37;
  v39 = v36 - v37[1];

  v40 = AGGraphGetValue();
  v41 = *v1;
  *&v54 = v38;
  *(&v54 + 1) = v39;
  v55 = *v40;
  *v57 = 0xA00000000;
  *&v57[8] = v48;
  *&v57[16] = v49 | v50;
  *&v57[24] = v41;
  *&v56 = v45;
  *(&v56 + 1) = v30;
  LOBYTE(v74) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v74);
  v72[2] = v56;
  v73[0] = *v57;
  *(v73 + 12) = *&v57[12];
  v72[0] = v54;
  v72[1] = v55;
  v52[2] = v56;
  v53[0] = *v57;
  *(v53 + 12) = *&v57[12];
  v52[0] = v54;
  v52[1] = v55;
  outlined init with copy of DisplayList.Item(v72, &v74);
  DisplayList.init(_:)(v52, a1);

  v76 = v56;
  v77[0] = *v57;
  *(v77 + 12) = *&v57[12];
  v74 = v54;
  v75 = v55;
  return outlined destroy of DisplayList.Item(&v74);
}

{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v40 = v5;
  v41 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v38 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v37 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v35 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v34 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v36 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v39 = v6;
  v20 = v19;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v51 = __PAIR64__(v38, v9);
  *(&v51 + 1) = __PAIR64__(v37, v11);
  *&v52 = __PAIR64__(v35, v13);
  *(&v52 + 1) = __PAIR64__(v34, v15);
  *&v53 = __PAIR64__(v18, v17);
  *(&v53 + 1) = __PAIR64__(v21, v20);
  LODWORD(v54[0]) = v36;
  _setThreadGeometryProxyData();
  LOBYTE(v17) = *AGGraphGetValue();
  AGGraphGetValue();
  LOBYTE(v45) = v17;
  GraphicsBlendMode.init(_:)(&v45, v49);
  v22 = *&v49[0];
  v23 = BYTE8(v49[0]);
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];
  outlined copy of GraphicsBlendMode(v22, v23);
  v30 = AGGraphGetValue();
  v31 = *v1;
  *&v45 = v28;
  *(&v45 + 1) = v29;
  v46 = *v30;
  *v48 = v23 | 0x500000000;
  *&v48[8] = v39;
  *&v48[16] = v40 | v41;
  *&v48[24] = v31;
  *&v47 = v36;
  *(&v47 + 1) = v22;
  LOBYTE(v51) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v51);
  v49[2] = v47;
  v50[0] = *v48;
  *(v50 + 12) = *&v48[12];
  v49[0] = v45;
  v49[1] = v46;
  v43[2] = v47;
  v44[0] = *v48;
  *(v44 + 12) = *&v48[12];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v49, &v51);
  DisplayList.init(_:)(v43, a1);
  outlined consume of GraphicsBlendMode(v22, v23);
  v53 = v47;
  v54[0] = *v48;
  *(v54 + 12) = *&v48[12];
  v51 = v45;
  v52 = v46;
  return outlined destroy of DisplayList.Item(&v51);
}

{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_15:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v24 = v4;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v23 = v6;
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v8 = *AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v12 = AGGraphGetValue();
  v13 = v8 == 0;
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = v10 - *v12;
  v16 = v11 - v12[1];
  if (v8)
  {
    v17 = 0x1400000000;
  }

  else
  {
    v17 = 0x200000000;
  }

  if (v13)
  {
    v18 = 2;
  }

  else
  {
    v18 = 20;
  }

  outlined copy of DisplayList.Effect(v14, 0, v18);
  v19 = AGGraphGetValue();
  v20 = *v1;
  *&v28 = v15;
  *(&v28 + 1) = v16;
  v29 = *v19;
  *v31 = v17;
  *&v31[8] = v23;
  *&v31[16] = v5 | v24;
  *&v31[24] = v20;
  *&v30 = v7;
  *(&v30 + 1) = v14;
  LOBYTE(v34[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v34);
  v32[2] = v30;
  v33[0] = *v31;
  *(v33 + 12) = *&v31[12];
  v32[0] = v28;
  v32[1] = v29;
  v26[2] = v30;
  v27[0] = *v31;
  *(v27 + 12) = *&v31[12];
  v26[0] = v28;
  v26[1] = v29;
  outlined init with copy of DisplayList.Item(v32, v34);
  DisplayList.init(_:)(v26, a1);
  outlined consume of DisplayList.Effect(v14, 0, v18);
  v34[2] = v30;
  v35[0] = *v31;
  *(v35 + 12) = *&v31[12];
  v34[0] = v28;
  v34[1] = v29;
  return outlined destroy of DisplayList.Item(v34);
}

{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v38 = v5;
  v39 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v36 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v35 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v33 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v32 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v34 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v37 = v6;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v48 = __PAIR64__(v36, v9);
  *(&v48 + 1) = __PAIR64__(v35, v11);
  *&v49 = __PAIR64__(v33, v13);
  *(&v49 + 1) = __PAIR64__(v32, v15);
  *&v50 = __PAIR64__(v18, v17);
  *(&v50 + 1) = __PAIR64__(v21, v20);
  LODWORD(v51[0]) = v34;
  _setThreadGeometryProxyData();
  AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = v22[1];
  v25 = AGGraphGetValue();
  v26 = v23 - *v25;
  v27 = v24 - v25[1];
  v28 = AGGraphGetValue();
  v29 = *v1;
  *&v43 = v26;
  *(&v43 + 1) = v27;
  v44 = *v28;
  *&v45[8] = xmmword_18DDE4990;
  *&v45[24] = v37;
  *&v45[32] = v38 | v39;
  *&v45[40] = v29;
  *v45 = v34;
  LOBYTE(v48) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v48);
  v46[2] = *v45;
  v47[0] = *&v45[16];
  *(v47 + 12) = *&v45[28];
  v46[0] = v43;
  v46[1] = v44;
  v41[2] = *v45;
  v42[0] = *&v45[16];
  *(v42 + 12) = *&v45[28];
  v41[0] = v43;
  v41[1] = v44;
  outlined init with copy of DisplayList.Item(v46, &v48);
  DisplayList.init(_:)(v41, a1);
  v50 = *v45;
  v51[0] = *&v45[16];
  *(v51 + 12) = *&v45[28];
  v48 = v43;
  v49 = v44;
  return outlined destroy of DisplayList.Item(&v48);
}

{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v43 = v5;
  v44 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v41 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v40 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v38 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v42 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v39 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v63 = __PAIR64__(v41, v9);
  *(&v63 + 1) = __PAIR64__(v40, v11);
  *&v64 = __PAIR64__(v38, v13);
  *(&v64 + 1) = __PAIR64__(v16, v15);
  *&v65 = __PAIR64__(v19, v18);
  *(&v65 + 1) = __PAIR64__(v22, v21);
  LODWORD(v66[0]) = v39;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v46 = *v23;
  v47 = *(v23 + 16);
  *v48 = *(v23 + 32);
  *&v48[13] = *(v23 + 45);
  AGGraphGetValue();
  v24 = swift_allocObject();
  v55 = v46;
  v56 = v47;
  *v57 = *v48;
  *&v57[13] = *&v48[13];
  _s7SwiftUI14GraphicsFilterOWOi3_(&v55);
  v25 = v59;
  v24[5] = v58;
  v24[6] = v25;
  v24[7] = v60[0];
  *(v24 + 124) = *(v60 + 12);
  v26 = v56;
  v24[1] = v55;
  v24[2] = v26;
  v27 = *&v57[16];
  v24[3] = *v57;
  v24[4] = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];

  v34 = AGGraphGetValue();
  v35 = *v1;
  *&v51 = v32;
  *(&v51 + 1) = v33;
  v52 = *v34;
  *v54 = 0xA00000000;
  *&v54[8] = v42;
  *&v54[16] = v43 | v44;
  *&v54[24] = v35;
  *&v53 = v39;
  *(&v53 + 1) = v24;
  LOBYTE(v63) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v63);
  v61[2] = v53;
  v62[0] = *v54;
  *(v62 + 12) = *&v54[12];
  v61[0] = v51;
  v61[1] = v52;
  v49[2] = v53;
  v50[0] = *v54;
  *(v50 + 12) = *&v54[12];
  v49[0] = v51;
  v49[1] = v52;
  outlined init with copy of DisplayList.Item(v61, &v63);
  DisplayList.init(_:)(v49, a1);

  v65 = v53;
  v66[0] = *v54;
  *(v66 + 12) = *&v54[12];
  v63 = v51;
  v64 = v52;
  return outlined destroy of DisplayList.Item(&v63);
}

{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v8 = *AGGraphGetValue();
  AGGraphGetValue();
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v14 = v11 - *v13;
  v15 = v12 - v13[1];
  v16 = AGGraphGetValue();
  v17 = *v1;
  *&v23 = v14;
  *(&v23 + 1) = v15;
  v24 = *v16;
  *v26 = 0x200000000;
  *&v26[8] = v6;
  *&v26[16] = v5 | v4;
  *&v26[24] = v17;
  *&v25 = v7;
  *(&v25 + 1) = v9;
  LOBYTE(v29[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v29);
  v27[2] = v25;
  v28[0] = *v26;
  *(v28 + 12) = *&v26[12];
  v27[0] = v23;
  v27[1] = v24;
  v21[2] = v25;
  v22[0] = *v26;
  *(v22 + 12) = *&v26[12];
  v21[0] = v23;
  v21[1] = v24;
  outlined init with copy of DisplayList.Item(v27, v29);
  DisplayList.init(_:)(v21, a1);
  v29[2] = v25;
  v30[0] = *v26;
  *(v30 + 12) = *&v26[12];
  v29[0] = v23;
  v29[1] = v24;
  return outlined destroy of DisplayList.Item(v29);
}

{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v43 = v5;
  v44 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v41 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v40 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v38 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v42 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v39 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v56 = __PAIR64__(v41, v9);
  *(&v56 + 1) = __PAIR64__(v40, v11);
  *&v57 = __PAIR64__(v38, v13);
  *(&v57 + 1) = __PAIR64__(v16, v15);
  *&v58 = __PAIR64__(v19, v18);
  *(&v58 + 1) = __PAIR64__(v22, v21);
  LODWORD(v59[0]) = v39;
  _setThreadGeometryProxyData();
  v23 = *AGGraphGetValue();

  AGGraphGetValue();
  v24 = swift_allocObject();
  *&v52[0] = v23;
  _s7SwiftUI14GraphicsFilterOWOi21_(v52);
  v25 = v52[5];
  v24[5] = v52[4];
  v24[6] = v25;
  v24[7] = v53[0];
  *(v24 + 124) = *(v53 + 12);
  v26 = v52[1];
  v24[1] = v52[0];
  v24[2] = v26;
  v27 = v52[3];
  v24[3] = v52[2];
  v24[4] = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];

  v34 = AGGraphGetValue();
  v35 = *v1;
  *&v48 = v32;
  *(&v48 + 1) = v33;
  v49 = *v34;
  *v51 = 0xA00000000;
  *&v51[8] = v42;
  *&v51[16] = v43 | v44;
  *&v51[24] = v35;
  *&v50 = v39;
  *(&v50 + 1) = v24;
  LOBYTE(v56) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v56);
  v54[2] = v50;
  v55[0] = *v51;
  *(v55 + 12) = *&v51[12];
  v54[0] = v48;
  v54[1] = v49;
  v46[2] = v50;
  v47[0] = *v51;
  *(v47 + 12) = *&v51[12];
  v46[0] = v48;
  v46[1] = v49;
  outlined init with copy of DisplayList.Item(v54, &v56);
  DisplayList.init(_:)(v46, a1);

  v58 = v50;
  v59[0] = *v51;
  *(v59 + 12) = *&v51[12];
  v56 = v48;
  v57 = v49;
  return outlined destroy of DisplayList.Item(&v56);
}

{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v45 = v5;
  v46 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v42 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v40 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v44 = v6;
  v39 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v43 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v56 = __PAIR64__(v42, v9);
  *(&v56 + 1) = __PAIR64__(v41, v11);
  *&v57 = __PAIR64__(v40, v13);
  *(&v57 + 1) = __PAIR64__(v39, v15);
  *&v58 = __PAIR64__(v18, v17);
  *(&v58 + 1) = __PAIR64__(v21, v20);
  LODWORD(v59[0]) = v7;
  _setThreadGeometryProxyData();
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = *(v22 + 12);
  v25 = *(v22 + 8);
  LOBYTE(v42) = *(v22 + 14);
  LOBYTE(v11) = *(v22 + 15);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  LOBYTE(v9) = *(v22 + 13);
  outlined copy of ContentTransition.Storage(*v22, v25 | (v24 << 32), v9);

  AGGraphGetValue();
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 28) = v24;
  *(v28 + 24) = v25;
  *(v28 + 29) = v9;
  *(v28 + 30) = v42;
  *(v28 + 31) = v11;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v50 = v33;
  *(&v50 + 1) = v34;
  v51 = *v35;
  *v53 = 0xC00000000;
  *&v53[8] = v44;
  *&v53[16] = v45 | v46;
  *&v53[24] = v36;
  *&v52 = v43;
  *(&v52 + 1) = v28;
  LOBYTE(v56) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v56);
  v54[2] = v52;
  v55[0] = *v53;
  *(v55 + 12) = *&v53[12];
  v54[0] = v50;
  v54[1] = v51;
  v48[2] = v52;
  v49[0] = *v53;
  *(v49 + 12) = *&v53[12];
  v48[0] = v50;
  v48[1] = v51;
  outlined init with copy of DisplayList.Item(v54, &v56);
  DisplayList.init(_:)(v48, a1);

  v58 = v52;
  v59[0] = *v53;
  *(v59 + 12) = *&v53[12];
  v56 = v50;
  v57 = v51;
  return outlined destroy of DisplayList.Item(&v56);
}

{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v5 = *(Value + 12) << 32;
    v43 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v5 = 0;
  v43 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v40 = v5;
  v41 = v6;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v39 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v38 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v36 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v42 = a1;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v37 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v52 = __PAIR64__(v39, v9);
  *(&v52 + 1) = __PAIR64__(v38, v11);
  *&v53 = __PAIR64__(v36, v13);
  *(&v53 + 1) = __PAIR64__(v16, v15);
  *&v54 = __PAIR64__(v19, v18);
  *(&v54 + 1) = __PAIR64__(v22, v21);
  LODWORD(v55[0]) = v37;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  outlined copy of GraphicsBlendMode(*v23, v25);
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  outlined copy of GraphicsBlendMode(v24, v25);
  v32 = AGGraphGetValue();
  v33 = *v1;
  *&v46 = v30;
  *(&v46 + 1) = v31;
  v47 = *v32;
  *v49 = v25 | 0x500000000;
  *&v49[8] = v41;
  *&v49[16] = v43 | v40;
  *&v49[24] = v33;
  *&v48 = v37;
  *(&v48 + 1) = v24;
  LOBYTE(v52) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v52);
  v50[2] = v48;
  v51[0] = *v49;
  *(v51 + 12) = *&v49[12];
  v50[0] = v46;
  v50[1] = v47;
  v44[2] = v48;
  v45[0] = *v49;
  *(v45 + 12) = *&v49[12];
  v44[0] = v46;
  v44[1] = v47;
  outlined init with copy of DisplayList.Item(v50, &v52);
  DisplayList.init(_:)(v44, v42);
  outlined consume of GraphicsBlendMode(v24, v25);
  v54 = v48;
  v55[0] = *v49;
  *(v55 + 12) = *&v49[12];
  v52 = v46;
  v53 = v47;
  return outlined destroy of DisplayList.Item(&v52);
}

{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v50 = v5;
  v51 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v48 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v47 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v45 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v49 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v46 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v68 = __PAIR64__(v48, v9);
  *(&v68 + 1) = __PAIR64__(v47, v11);
  *&v69 = __PAIR64__(v45, v13);
  *(&v69 + 1) = __PAIR64__(v16, v15);
  *&v70 = __PAIR64__(v19, v18);
  *(&v70 + 1) = __PAIR64__(v22, v21);
  LODWORD(v71[0]) = v46;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  LODWORD(v19) = *(v23 + 24);
  v27 = *v23;
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = swift_allocObject();
  *&v59 = v24;
  *(&v59 + 1) = v25;
  *&v60 = v26;
  DWORD2(v60) = v19;
  *&v61 = v29;
  *(&v61 + 1) = v30;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v59);
  v32 = v64;
  v31[5] = v63;
  v31[6] = v32;
  v31[7] = v65[0];
  *(v31 + 124) = *(v65 + 12);
  v33 = v60;
  v31[1] = v59;
  v31[2] = v33;
  v34 = v62;
  v31[3] = v61;
  v31[4] = v34;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  v38 = AGGraphGetValue();
  v39 = v36 - *v38;
  v40 = v37 - v38[1];

  v41 = AGGraphGetValue();
  v42 = *v1;
  *&v55 = v39;
  *(&v55 + 1) = v40;
  v56 = *v41;
  *v58 = 0xA00000000;
  *&v58[8] = v49;
  *&v58[16] = v50 | v51;
  *&v58[24] = v42;
  *&v57 = v46;
  *(&v57 + 1) = v31;
  LOBYTE(v68) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v68);
  v66[2] = v57;
  v67[0] = *v58;
  *(v67 + 12) = *&v58[12];
  v66[0] = v55;
  v66[1] = v56;
  v53[2] = v57;
  v54[0] = *v58;
  *(v54 + 12) = *&v58[12];
  v53[0] = v55;
  v53[1] = v56;
  outlined init with copy of DisplayList.Item(v66, &v68);
  DisplayList.init(_:)(v53, a1);

  v70 = v57;
  v71[0] = *v58;
  *(v71 + 12) = *&v58[12];
  v68 = v55;
  v69 = v56;
  return outlined destroy of DisplayList.Item(&v68);
}

{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v5 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v5 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v27 = v6;
  v28 = v5;
  v29 = a1;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v9 = AGGraphGetValue();
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 28);

  AGGraphGetValue();
  if (v14)
  {

    v15 = 0;
    v16 = 20;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    *(v15 + 32) = v13;
    *(v15 + 36) = 0;
    v16 = 19;
    *(v15 + 40) = v11;
  }

  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = v19[1];
  v22 = AGGraphGetValue();
  v23 = v20 - *v22;
  v24 = v21 - v22[1];
  outlined copy of DisplayList.Effect(v15, 0, v16);
  v25 = AGGraphGetValue();
  v26 = *v1;
  *&v32 = v23;
  *(&v32 + 1) = v24;
  v33 = *v25;
  *v35 = v16 << 32;
  *&v35[8] = v7;
  *&v35[16] = v27 | v28;
  *&v35[24] = v26;
  *&v34 = v8;
  *(&v34 + 1) = v15;
  LOBYTE(v38[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v38);
  v36[2] = v34;
  v37[0] = *v35;
  *(v37 + 12) = *&v35[12];
  v36[0] = v32;
  v36[1] = v33;
  v30[2] = v34;
  v31[0] = *v35;
  *(v31 + 12) = *&v35[12];
  v30[0] = v32;
  v30[1] = v33;
  outlined init with copy of DisplayList.Item(v36, v38);
  DisplayList.init(_:)(v30, v29);
  outlined consume of DisplayList.Effect(v15, 0, v16);
  v38[2] = v34;
  v39[0] = *v35;
  *(v39 + 12) = *&v35[12];
  v38[0] = v32;
  v38[1] = v33;
  return outlined destroy of DisplayList.Item(v38);
}

{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v45 = v5;
  v46 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v42 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v39 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v44 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v40 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v63 = __PAIR64__(v42, v9);
  *(&v63 + 1) = __PAIR64__(v41, v11);
  *&v64 = __PAIR64__(v39, v13);
  *(&v64 + 1) = __PAIR64__(v16, v15);
  *&v65 = __PAIR64__(v19, v18);
  *(&v65 + 1) = __PAIR64__(v22, v21);
  LODWORD(v66[0]) = v40;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v43 = *v23;
  v24 = *(v23 + 16);
  AGGraphGetValue();
  v25 = swift_allocObject();
  v54 = v43;
  LODWORD(v55) = 2143289344;
  *(&v55 + 4) = vrev64_s32(v24);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v54);
  v26 = v59;
  v25[5] = v58;
  v25[6] = v26;
  v25[7] = v60[0];
  *(v25 + 124) = *(v60 + 12);
  v27 = v55;
  v25[1] = v54;
  v25[2] = v27;
  v28 = v57;
  v25[3] = v56;
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v50 = v33;
  *(&v50 + 1) = v34;
  v51 = *v35;
  *v53 = 0xA00000000;
  *&v53[8] = v44;
  *&v53[16] = v45 | v46;
  *&v53[24] = v36;
  *&v52 = v40;
  *(&v52 + 1) = v25;
  LOBYTE(v63) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v63);
  v61[2] = v52;
  v62[0] = *v53;
  *(v62 + 12) = *&v53[12];
  v61[0] = v50;
  v61[1] = v51;
  v48[2] = v52;
  v49[0] = *v53;
  *(v49 + 12) = *&v53[12];
  v48[0] = v50;
  v48[1] = v51;
  outlined init with copy of DisplayList.Item(v61, &v63);
  DisplayList.init(_:)(v48, a1);

  v65 = v52;
  v66[0] = *v53;
  *(v66 + 12) = *&v53[12];
  v63 = v50;
  v64 = v51;
  return outlined destroy of DisplayList.Item(&v63);
}

{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v44 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v44 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v42 = v5;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v39 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v38 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v37 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v40 = v7;
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v43 = a1;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v41 = v6;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v53 = __PAIR64__(v39, v9);
  *(&v53 + 1) = __PAIR64__(v38, v11);
  *&v54 = __PAIR64__(v37, v13);
  *(&v54 + 1) = __PAIR64__(v16, v15);
  *&v55 = __PAIR64__(v19, v18);
  *(&v55 + 1) = __PAIR64__(v22, v21);
  LODWORD(v56[0]) = v40;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  LOBYTE(v19) = *v23;
  v25 = *(v23 + 8);
  v24 = *(v23 + 16);

  AGGraphGetValue();
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v25;
  *(v26 + 32) = v24;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = v28 - *v30;
  v32 = v29 - v30[1];

  v33 = AGGraphGetValue();
  v34 = *v1;
  *&v47 = v31;
  *(&v47 + 1) = v32;
  v48 = *v33;
  *v50 = 0;
  *&v50[8] = v41;
  *&v50[16] = v42 | v44;
  *&v50[24] = v34;
  *&v49 = v40;
  *(&v49 + 1) = v26;
  LOBYTE(v53) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v53);
  v51[2] = v49;
  v52[0] = *v50;
  *(v52 + 12) = *&v50[12];
  v51[0] = v47;
  v51[1] = v48;
  v45[2] = v49;
  v46[0] = *v50;
  *(v46 + 12) = *&v50[12];
  v45[0] = v47;
  v45[1] = v48;
  outlined init with copy of DisplayList.Item(v51, &v53);
  DisplayList.init(_:)(v45, v43);

  v55 = v49;
  v56[0] = *v50;
  *(v56 + 12) = *&v50[12];
  v53 = v47;
  v54 = v48;
  return outlined destroy of DisplayList.Item(&v53);
}

{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v45 = v5;
  v46 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v42 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v39 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v44 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v40 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v63 = __PAIR64__(v42, v9);
  *(&v63 + 1) = __PAIR64__(v41, v11);
  *&v64 = __PAIR64__(v39, v13);
  *(&v64 + 1) = __PAIR64__(v16, v15);
  *&v65 = __PAIR64__(v19, v18);
  *(&v65 + 1) = __PAIR64__(v22, v21);
  LODWORD(v66[0]) = v40;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *(v23 + 16);
  v43 = *v23;
  AGGraphGetValue();
  v25 = swift_allocObject();
  v54 = v43;
  LODWORD(v55) = 2143289344;
  DWORD1(v55) = v24;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v54);
  v26 = v59;
  v25[5] = v58;
  v25[6] = v26;
  v25[7] = v60[0];
  *(v25 + 124) = *(v60 + 12);
  v27 = v55;
  v25[1] = v54;
  v25[2] = v27;
  v28 = v57;
  v25[3] = v56;
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v50 = v33;
  *(&v50 + 1) = v34;
  v51 = *v35;
  *v53 = 0xA00000000;
  *&v53[8] = v44;
  *&v53[16] = v45 | v46;
  *&v53[24] = v36;
  *&v52 = v40;
  *(&v52 + 1) = v25;
  LOBYTE(v63) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v63);
  v61[2] = v52;
  v62[0] = *v53;
  *(v62 + 12) = *&v53[12];
  v61[0] = v50;
  v61[1] = v51;
  v48[2] = v52;
  v49[0] = *v53;
  *(v49 + 12) = *&v53[12];
  v48[0] = v50;
  v48[1] = v51;
  outlined init with copy of DisplayList.Item(v61, &v63);
  DisplayList.init(_:)(v48, a1);

  v65 = v52;
  v66[0] = *v53;
  *(v66 + 12) = *&v53[12];
  v63 = v50;
  v64 = v51;
  return outlined destroy of DisplayList.Item(&v63);
}

{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v43 = v5;
  v44 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v40 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v39 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v37 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v42 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v38 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v61 = __PAIR64__(v40, v9);
  *(&v61 + 1) = __PAIR64__(v39, v11);
  *&v62 = __PAIR64__(v37, v13);
  *(&v62 + 1) = __PAIR64__(v16, v15);
  *&v63 = __PAIR64__(v19, v18);
  *(&v63 + 1) = __PAIR64__(v22, v21);
  LODWORD(v64[0]) = v38;
  _setThreadGeometryProxyData();
  v41 = *AGGraphGetValue();
  AGGraphGetValue();
  v23 = swift_allocObject();
  v52 = v41;
  LODWORD(v53) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v52);
  v24 = v57;
  v23[5] = v56;
  v23[6] = v24;
  v23[7] = v58[0];
  *(v23 + 124) = *(v58 + 12);
  v25 = v53;
  v23[1] = v52;
  v23[2] = v25;
  v26 = v55;
  v23[3] = v54;
  v23[4] = v26;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = v28 - *v30;
  v32 = v29 - v30[1];

  v33 = AGGraphGetValue();
  v34 = *v1;
  *&v48 = v31;
  *(&v48 + 1) = v32;
  v49 = *v33;
  *v51 = 0xA00000000;
  *&v51[8] = v42;
  *&v51[16] = v43 | v44;
  *&v51[24] = v34;
  *&v50 = v38;
  *(&v50 + 1) = v23;
  LOBYTE(v61) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v61);
  v59[2] = v50;
  v60[0] = *v51;
  *(v60 + 12) = *&v51[12];
  v59[0] = v48;
  v59[1] = v49;
  v46[2] = v50;
  v47[0] = *v51;
  *(v47 + 12) = *&v51[12];
  v46[0] = v48;
  v46[1] = v49;
  outlined init with copy of DisplayList.Item(v59, &v61);
  DisplayList.init(_:)(v46, a1);

  v63 = v50;
  v64[0] = *v51;
  *(v64 + 12) = *&v51[12];
  v61 = v48;
  v62 = v49;
  return outlined destroy of DisplayList.Item(&v61);
}

{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v41 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v41 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v39 = v5;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v36 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v35 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v34 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v37 = v7;
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v40 = a1;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v38 = v6;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v50 = __PAIR64__(v36, v9);
  *(&v50 + 1) = __PAIR64__(v35, v11);
  *&v51 = __PAIR64__(v34, v13);
  *(&v51 + 1) = __PAIR64__(v16, v15);
  *&v52 = __PAIR64__(v19, v18);
  *(&v52 + 1) = __PAIR64__(v22, v21);
  LODWORD(v53[0]) = v37;
  _setThreadGeometryProxyData();
  LOBYTE(v11) = *AGGraphGetValue();
  AGGraphGetValue();
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];

  v30 = AGGraphGetValue();
  v31 = *v1;
  *&v44 = v28;
  *(&v44 + 1) = v29;
  v45 = *v30;
  *v47 = 0;
  *&v47[8] = v38;
  *&v47[16] = v39 | v41;
  *&v47[24] = v31;
  *&v46 = v37;
  *(&v46 + 1) = v23;
  LOBYTE(v50) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v50);
  v48[2] = v46;
  v49[0] = *v47;
  *(v49 + 12) = *&v47[12];
  v48[0] = v44;
  v48[1] = v45;
  v42[2] = v46;
  v43[0] = *v47;
  *(v43 + 12) = *&v47[12];
  v42[0] = v44;
  v42[1] = v45;
  outlined init with copy of DisplayList.Item(v48, &v50);
  DisplayList.init(_:)(v42, v40);

  v52 = v46;
  v53[0] = *v47;
  *(v53 + 12) = *&v47[12];
  v50 = v44;
  v51 = v45;
  return outlined destroy of DisplayList.Item(&v50);
}

{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v5 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v5 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v22 = v6;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  specialized closure #1 in RendererEffectDisplayList.value.getter(&v33);
  _setThreadGeometryProxyData();
  v9 = v33;
  v10 = v34;
  v11 = v35;
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v16 = v13 - *v15;
  v17 = v14 - v15[1];
  outlined copy of DisplayList.Effect(v9, v10, v11);
  v18 = AGGraphGetValue();
  v19 = *v1;
  *&v25 = v16;
  *(&v25 + 1) = v17;
  v26 = *v18;
  *v28 = v10 | (v11 << 32);
  *&v28[8] = v7;
  *&v28[16] = v22 | v5;
  *&v28[24] = v19;
  *&v27 = v8;
  *(&v27 + 1) = v9;
  LOBYTE(v31[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v31);
  v29[2] = v27;
  v30[0] = *v28;
  *(v30 + 12) = *&v28[12];
  v29[0] = v25;
  v29[1] = v26;
  v23[2] = v27;
  v24[0] = *v28;
  *(v24 + 12) = *&v28[12];
  v23[0] = v25;
  v23[1] = v26;
  outlined init with copy of DisplayList.Item(v29, v31);
  DisplayList.init(_:)(v23, a1);
  outlined consume of DisplayList.Effect(v9, v10, v11);
  v31[2] = v27;
  v32[0] = *v28;
  *(v32 + 12) = *&v28[12];
  v31[0] = v25;
  v31[1] = v26;
  return outlined destroy of DisplayList.Item(v31);
}

{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v5 = *(Value + 12) << 32;
    v43 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v5 = 0;
  v43 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v40 = v5;
  v41 = v6;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v39 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v38 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v36 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v42 = a1;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v37 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v52 = __PAIR64__(v39, v9);
  *(&v52 + 1) = __PAIR64__(v38, v11);
  *&v53 = __PAIR64__(v36, v13);
  *(&v53 + 1) = __PAIR64__(v16, v15);
  *&v54 = __PAIR64__(v19, v18);
  *(&v54 + 1) = __PAIR64__(v22, v21);
  LODWORD(v55[0]) = v37;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  outlined copy of GraphicsBlendMode(*v23, v25);
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  outlined copy of GraphicsBlendMode(v24, v25);
  v32 = AGGraphGetValue();
  v33 = *v1;
  *&v46 = v30;
  *(&v46 + 1) = v31;
  v47 = *v32;
  *v49 = v25 | 0x500000000;
  *&v49[8] = v41;
  *&v49[16] = v43 | v40;
  *&v49[24] = v33;
  *&v48 = v37;
  *(&v48 + 1) = v24;
  LOBYTE(v52) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v52);
  v50[2] = v48;
  v51[0] = *v49;
  *(v51 + 12) = *&v49[12];
  v50[0] = v46;
  v50[1] = v47;
  v44[2] = v48;
  v45[0] = *v49;
  *(v45 + 12) = *&v49[12];
  v44[0] = v46;
  v44[1] = v47;
  outlined init with copy of DisplayList.Item(v50, &v52);
  DisplayList.init(_:)(v44, v42);
  outlined consume of GraphicsBlendMode(v24, v25);
  v54 = v48;
  v55[0] = *v49;
  *(v55 + 12) = *&v49[12];
  v52 = v46;
  v53 = v47;
  return outlined destroy of DisplayList.Item(&v52);
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v49 = v5;
  v50 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v47 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v46 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v44 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v48 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v45 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v67 = __PAIR64__(v47, v9);
  *(&v67 + 1) = __PAIR64__(v46, v11);
  *&v68 = __PAIR64__(v44, v13);
  *(&v68 + 1) = __PAIR64__(v16, v15);
  *&v69 = __PAIR64__(v19, v18);
  *(&v69 + 1) = __PAIR64__(v22, v21);
  LODWORD(v70[0]) = v45;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v62 = v23[2];
  v63 = v24;
  v60 = v26;
  v61 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *(v66 + 12) = *(v23 + 108);
  v65 = v28;
  v66[0] = v27;
  v64 = v29;
  outlined init with copy of GraphicsFilter(&v60, v58);
  AGGraphGetValue();
  v30 = swift_allocObject();
  v31 = v65;
  v30[5] = v64;
  v30[6] = v31;
  v30[7] = v66[0];
  *(v30 + 124) = *(v66 + 12);
  v32 = v61;
  v30[1] = v60;
  v30[2] = v32;
  v33 = v63;
  v30[3] = v62;
  v30[4] = v33;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = v34[1];
  v37 = AGGraphGetValue();
  v38 = v35 - *v37;
  v39 = v36 - v37[1];

  v40 = AGGraphGetValue();
  v41 = *v1;
  *&v54 = v38;
  *(&v54 + 1) = v39;
  v55 = *v40;
  *v57 = 0xA00000000;
  *&v57[8] = v48;
  *&v57[16] = v49 | v50;
  *&v57[24] = v41;
  *&v56 = v45;
  *(&v56 + 1) = v30;
  LOBYTE(v58[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v58);
  v69 = v56;
  v70[0] = *v57;
  *(v70 + 12) = *&v57[12];
  v67 = v54;
  v68 = v55;
  v52[2] = v56;
  v53[0] = *v57;
  *(v53 + 12) = *&v57[12];
  v52[0] = v54;
  v52[1] = v55;
  outlined init with copy of DisplayList.Item(&v67, v58);
  DisplayList.init(_:)(v52, a1);

  v58[2] = v56;
  v59[0] = *v57;
  *(v59 + 12) = *&v57[12];
  v58[0] = v54;
  v58[1] = v55;
  return outlined destroy of DisplayList.Item(v58);
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(uint64_t *, void, void, uint64_t))
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), v2 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), v2 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

BOOL specialized AnimatableAttributeHelper.checkReset()(void (*a1)(void))
{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 40);
  if (v3 != v4)
  {
    if (*(v1 + 32))
    {
      a1();
    }

    *(v1 + 32) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 40) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 48);
  if (v3 != v4)
  {
    if (*(v1 + 40))
    {
      a1();
    }

    *(v1 + 40) = 0;
    *(v1 + 20) = 0;
    *(v1 + 12) = 0;
    *(v1 + 28) = 0;
    *(v1 + 32) = 1;
    *(v1 + 48) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 72);
  if (v3 != v4)
  {
    if (*(v1 + 64))
    {
      a1();
    }

    *(v1 + 64) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v1 + 72) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 80);
  if (v3 != v4)
  {
    if (*(v1 + 72))
    {
      a1();
    }

    *(v1 + 72) = 0;

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 80) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 56);
  if (v3 != v4)
  {
    if (*(v1 + 48))
    {
      a1();
    }

    *(v1 + 48) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = 0;
    *(v1 + 40) = 1;
    *(v1 + 56) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 48);
  if (v3 != v4)
  {
    if (*(v1 + 40))
    {
      a1();
    }

    *(v1 + 40) = 0;
    *(v1 + 12) = 0;
    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 1;
    *(v1 + 48) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

{
  v3 = *AGGraphGetValue() >> 1;
  v4 = *(v1 + 64);
  if (v3 != v4)
  {
    if (*(v1 + 56))
    {
      a1();
    }

    *(v1 + 56) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 1;
    *(v1 + 64) = *AGGraphGetValue() >> 1;
  }

  return v3 != v4;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for OpacityRendererEffect;
    type metadata accessor for OpacityRendererEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for OpacityRendererEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for OpacityRendererEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000015;
          *(a4 + 120) = 0x800000018DD7EDD0;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000015;
      *(a1 + 15) = 0x800000018DD7EDD0;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000015;
  *(a4 + 120) = 0x800000018DD7EDD0;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[8] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[9] = 1;
  }

  else if (a1[9] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for _BlurEffect;
    type metadata accessor for _BlurEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for _BlurEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for _BlurEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0x66664572756C425FLL;
          *(a4 + 120) = 0xEB00000000746365;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0x66664572756C425FLL;
      *(a1 + 15) = 0xEB00000000746365;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0x66664572756C425FLL;
  *(a4 + 120) = 0xEB00000000746365;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[9] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[16] = 1;
  }

  else if (a1[16] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for SummarySymbol;
    type metadata accessor for SummarySymbol.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for SummarySymbol;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for SummarySymbol;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000034;
          *(a4 + 120) = 0x800000018DD78DB0;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000034;
      *(a1 + 15) = 0x800000018DD78DB0;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000034;
  *(a4 + 120) = 0x800000018DD78DB0;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[16] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for _GrayscaleEffect;
    type metadata accessor for _GrayscaleEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for _GrayscaleEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for _GrayscaleEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000010;
          *(a4 + 120) = 0x800000018DD7ED70;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000010;
      *(a1 + 15) = 0x800000018DD7ED70;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000010;
  *(a4 + 120) = 0x800000018DD7ED70;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[8] = 1;
  return result;
}

{
  v311 = *MEMORY[0x1E69E9840];
  v225 = type metadata accessor for OSSignpostID();
  v221 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v10 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v203 - v12;
  MEMORY[0x1EEE9AC00](v14);
  *&v223 = &v203 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v224 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v203 - v22;
  v24 = *(a4 + 120);
  v226 = a2;
  if (v24)
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    a1[120] = 1;
  }

  else if (a1[120] != 1)
  {
    goto LABEL_94;
  }

  v208 = v18;
  v29 = *(a1 + 3);
  v30 = *(a1 + 1);
  v294 = *(a1 + 2);
  v295 = v29;
  v31 = *(a1 + 3);
  v296[0] = *(a1 + 4);
  v32 = *(a1 + 1);
  v293[0] = *a1;
  v293[1] = v32;
  *(v296 + 14) = *(a1 + 78);
  v267 = v294;
  v268 = v31;
  v269[0] = *(a1 + 4);
  v33 = *(a1 + 22);
  v34 = *(a1 + 14);
  *(v269 + 14) = *(a1 + 78);
  v265 = v293[0];
  v266 = v30;
  outlined init with copy of _ShapeStyle_Pack.Fill(v293, &v258);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v265, &v287);
  specialized Array<A>.animatableData.getter(v34, &v265);
  v35 = *(a4 + 112);
  v303 = v35;
  v36 = *(a4 + 96);
  v301 = *(a4 + 80);
  v302 = v36;
  v37 = *(a4 + 32);
  v297 = *(a4 + 16);
  v298 = v37;
  v38 = *(a4 + 48);
  v300 = *(a4 + 64);
  v299 = v38;
  v220 = v265;
  if (!v35)
  {
    goto LABEL_93;
  }

  v39 = *(a4 + 64);
  v40 = *(a4 + 32);
  v283 = *(a4 + 48);
  v284 = v39;
  v41 = *(a4 + 64);
  v285 = *(a4 + 80);
  v42 = *(a4 + 32);
  v281 = *(a4 + 16);
  v282 = v42;
  v277[2] = v289;
  v277[3] = v290;
  v277[4] = v291;
  v277[0] = v287;
  v277[1] = v288;
  v286 = *(a4 + 96);
  v273[2] = v283;
  v273[3] = v41;
  v273[4] = *(a4 + 80);
  LODWORD(v4) = DWORD2(v302);
  v43 = HIDWORD(v302);
  v278 = v292;
  v279 = v33;
  v280 = v265;
  v274 = *(a4 + 96);
  v273[0] = v281;
  v273[1] = v40;
  v275 = *(&v302 + 1);
  v276 = v35;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v297, &v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  if (specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(v277, v273) & 1) != 0 && v33 == *&v4 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14AnimatablePairVySfAC16_ShapeStyle_PackV6EffectV4KindO0D4DataOG_Tt1g5(v220, v35))
  {
    outlined destroy of Slice<IndexSet>(&v297, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    goto LABEL_93;
  }

  v222 = v10;
  v204 = v13;
  v214 = a1;
  v215 = v23;
  AGGraphClearUpdate();
  v44 = *(a4 + 112);
  v270 = *(a4 + 96);
  v271 = v44;
  v272 = *(a4 + 128);
  v45 = *(a4 + 48);
  v267 = *(a4 + 32);
  v268 = v45;
  v46 = *(a4 + 80);
  v269[0] = *(a4 + 64);
  v269[1] = v46;
  v48 = *a4;
  v47 = *(a4 + 16);
  v209 = a4;
  v265 = v48;
  v266 = v47;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v265, &v258, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style, &type metadata for _ShapeStyle_Pack.Style, type metadata accessor for AnimatableAttributeHelper);
  v49 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v265, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style, &type metadata for _ShapeStyle_Pack.Style, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v50 = Transaction.effectiveAnimation.getter(v49);
  if (v50)
  {
    a4 = v50;
    v207 = a3;
    goto LABEL_18;
  }

  a4 = v226;
  if (v226)
  {
    v207 = a3;

LABEL_18:
    v51 = v214;
    *&v256 = v292;
    v255[2] = v289;
    v255[3] = v290;
    v255[4] = v291;
    v255[0] = v287;
    v255[1] = v288;
    *(&v256 + 2) = v33;
    v257 = v220;
    v254 = v220;
    v250 = v289;
    v251 = v290;
    v248 = v287;
    v249 = v288;
    v252 = v291;
    v253 = v256;
    v260 = v283;
    v261 = v284;
    v262[0] = v285;
    *&v262[1] = v286;
    v258 = v281;
    v259 = v282;
    *(&v262[1] + 1) = __PAIR64__(v43, v4);
    *&v263 = v35;
    v52 = *(&v271 + 1);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v255, &v240, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(&v248, &v258);
    *(&v253 + 2) = v33 - *&v4;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(&v254, v263);
    v27 = *AGGraphGetValue();
    v205 = a4;
    v206 = v49;
    if (!v52)
    {
      v308 = v252;
      v309 = v253;
      v310 = v254;
      v304 = v248;
      v305 = v249;
      v306 = v250;
      v307 = v251;
      *&v240 = &type metadata for _ShapeStyle_Pack.Style;
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v304, &v258, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      type metadata accessor for _ShapeStyle_Pack.Style.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Type, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      v90 = swift_dynamicCast();
      if (v90)
      {
        v91 = v258;
      }

      else
      {
        v91 = 0;
      }

      if (v90)
      {
        v92 = *(&v258 + 1);
      }

      else
      {
        v92 = 0;
      }

      v210 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA16_ShapeStyle_PackV4FillO0U4DataOAVySfAA0U5ArrayVyAVySfAX6EffectV4KindOA_OGGGG_Tt4B5(v93, &v304, v49, v91, v92, v27);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v92) = CurrentAttribute;
      v95 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v73) = 0;
      }

      else
      {
        LODWORD(v73) = CurrentAttribute;
      }

      v96 = *(v51 + 5);
      v244 = *(v51 + 4);
      v245 = v96;
      v246 = *(v51 + 6);
      v247 = *(v51 + 14);
      v97 = *(v51 + 1);
      v240 = *v51;
      v241 = v97;
      v98 = *(v51 + 3);
      v242 = *(v51 + 2);
      v243 = v98;
      v264 = v247;
      v262[1] = v96;
      v263 = v246;
      v261 = v98;
      v262[0] = v244;
      v259 = v97;
      v260 = v242;
      v258 = v240;
      outlined init with copy of _ShapeStyle_Pack.Style(&v240, &v235);
      v99 = outlined destroy of _ShapeStyle_Pack.Style(&v258);
      (*(*a4 + 96))(&v231, v99);
      v100 = *(&v231 + 1);
      v101 = v231;
      v102 = v232;
      v103 = v233;
      LOBYTE(a4) = v234;
      v229 = NAN;
      v230 = 0x7FF8000000000000;
      v227 = NAN;
      v228 = 1.0;
      v235 = v231;
      v236 = v232;
      v226 = *(&v232 + 1);
      *&v237 = v233;
      BYTE8(v237) = v234;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v235, &v230, &v229, &v228, &v227);
      v104 = v229;
      v4 = v230;
      v105 = v227;
      v106 = v228;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_47;
    }

    v308 = v252;
    v309 = v253;
    v310 = v254;
    v304 = v248;
    v305 = v249;
    v306 = v250;
    v307 = v251;

    LOBYTE(v258) = 0;
    v210 = v52;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(a4, &v304, v49, v27);
    v53 = AGGraphGetCurrentAttribute();
    v54 = v53;
    v55 = *MEMORY[0x1E698D3F8];
    if (v53 == *MEMORY[0x1E698D3F8])
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    LODWORD(v226) = v56;
    v57 = *(v51 + 5);
    v244 = *(v51 + 4);
    v245 = v57;
    v246 = *(v51 + 6);
    v247 = *(v51 + 14);
    v58 = *(v51 + 1);
    v240 = *v51;
    v241 = v58;
    v59 = *(v51 + 3);
    v242 = *(v51 + 2);
    v243 = v59;
    v264 = v247;
    v262[1] = v57;
    v263 = v246;
    v261 = v59;
    v262[0] = v244;
    v259 = v58;
    v260 = v242;
    v258 = v240;
    outlined init with copy of _ShapeStyle_Pack.Style(&v240, &v235);
    v60 = outlined destroy of _ShapeStyle_Pack.Style(&v258);
    (*(*a4 + 96))(&v231, v60);
    v61 = v231;
    v62 = v232;
    v63 = v233;
    v64 = v234;
    v229 = NAN;
    v230 = 0x7FF8000000000000;
    v227 = NAN;
    v228 = 1.0;
    v235 = v231;
    v236 = v232;
    *&v237 = v233;
    BYTE8(v237) = v234;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v235, &v230, &v229, &v228, &v227);
    v65 = *&v229;
    v4 = v230;
    v66 = v227;
    v67 = v228;
    if (one-time initialization token for enabledCategories != -1)
    {
      v222 = *&v229;
      *&v218 = v228;
      *&v219 = v227;
      swift_once();
      v67 = *&v218;
      v66 = *&v219;
      v65 = v222;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v68 = static CustomEventTrace.recorder) != 0)
      {
        v222 = v63;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        LODWORD(v219) = v64;
        v69 = *(v68 + 16);
        LODWORD(v235) = v226;
        BYTE4(v235) = v54 == v55;
        *(&v235 + 1) = &type metadata for _ShapeStyle_Pack.Style;
        *&v236 = v4;
        *(&v236 + 1) = v65;
        *&v237 = v67;
        *(&v237 + 1) = v66;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v226 = v70;

        v71 = v69;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v61, *(&v61 + 1), v62, *(&v62 + 1), v222, v219);
      }

      else
      {
        outlined consume of Animation.Function(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
      }

      v72 = one-time initialization token for animationState;

      if (v72 == -1)
      {
LABEL_30:
        v74 = *(&static Signpost.animationState + 1);
        v73 = static Signpost.animationState;
        v75 = word_1ED5283E8;
        v76 = HIBYTE(word_1ED5283E8);
        v77 = byte_1ED5283EA;
        v78 = static os_signpost_type_t.event.getter();
        v235 = __PAIR128__(v74, v73);
        LOBYTE(v236) = v75;
        BYTE1(v236) = v76;
        BYTE2(v236) = v77;
        if (Signpost.isEnabled.getter())
        {
          LODWORD(v226) = v78;
          v79 = v55;
          v80 = one-time initialization token for _signpostLog;

          if (v80 != -1)
          {
            swift_once();
          }

          v81 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v55)
          {
            __break(1u);
          }

          else
          {
            v83 = AGGraphGetAttributeGraph();
            Counter = AGGraphGetCounter();

            v85 = MEMORY[0x1E69E6870];
            *(v82 + 56) = MEMORY[0x1E69E6810];
            *(v82 + 64) = v85;
            *(v82 + 32) = Counter;
            v86 = AGGraphGetCurrentAttribute();
            if (v86 != v79)
            {
              v87 = v82;
              v88 = MEMORY[0x1E69E76D0];
              *(v82 + 96) = MEMORY[0x1E69E7668];
              *(v82 + 104) = v88;
              *(v82 + 72) = v86;
              *(v82 + 136) = MEMORY[0x1E69E6158];
              *(v82 + 144) = lazy protocol witness table accessor for type String and conformance String();
              *(v82 + 112) = 0x656C797453;
              *(v82 + 120) = 0xE500000000000000;
              if (v76)
              {
                LOBYTE(v227) = v226;
                v229 = *&v81;
                v230 = &dword_18D018000;
                *&v235 = v73;
                *(&v235 + 1) = v74;
                LOBYTE(v236) = v75;
                *&v231 = "Animation: (%p) [%d] %{public}@ updated";
                *(&v231 + 1) = 39;
                LOBYTE(v232) = 2;
                v228 = *&v82;
                v89 = v208;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

                (*(v221 + 8))(v89, v225);
              }

              else
              {
                if (v73 == 20)
                {
                  a4 = 3;
                }

                else
                {
                  a4 = 4;
                }

                LODWORD(v129) = bswap32(v73) | (4 * WORD1(v73));
                LODWORD(v226) = v226;
                v130 = v221 + 16;
                v212 = *(v221 + 16);
                v131 = v212(*&v223, v208, v225);
                v132 = 0;
                LOBYTE(v231) = 1;
                v213 = v130;
                v218 = 16 * a4;
                v219 = v130 - 8;
                v216 = v73;
                v217 = v87 + 32;
                v73 = v87;
                v211 = a4;
                do
                {
                  v222 = &v203;
                  MEMORY[0x1EEE9AC00](v131);
                  v23 = &v203 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
                  a1 = v23 + 8;
                  v135 = a4;
                  v136 = v23 + 8;
                  do
                  {
                    *(v136 - 1) = 0;
                    *v136 = 0;
                    v136 += 16;
                    --v135;
                  }

                  while (v135);
                  v137 = v217 + 40 * v132;
                  while (1)
                  {
                    v138 = *(v87 + 16);
                    if (v132 == v138)
                    {
                      break;
                    }

                    if (v132 >= v138)
                    {
                      goto LABEL_179;
                    }

                    ++v132;
                    outlined init with copy of AnyTrackedValue(v137, &v235);
                    v139 = *(&v236 + 1);
                    __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
                    v87 = v73;
                    *(a1 - 1) = CVarArg.kdebugValue(_:)(v129 | v226, v139);
                    *a1 = v140 & 1;
                    a1 += 16;
                    v133 = __swift_destroy_boxed_opaque_existential_1(&v235);
                    v137 += 40;
                    if (!--a4)
                    {
                      goto LABEL_75;
                    }
                  }

                  LOBYTE(v231) = 0;
LABEL_75:
                  v141 = v216;
                  if (v216 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  a4 = v211;
                  if (v23[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v23[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v23[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v141 != 20 && v23[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v142 = *v219;
                  v143 = v223;
                  v144 = v225;
                  (*v219)(COERCE_DOUBLE(*&v223), v225);
                  v145 = __swift_project_value_buffer(v144, static OSSignpostID.continuation);
                  v131 = v212(*&v143, v145, v144);
                  v87 = v73;
                }

                while ((v231 & 1) != 0);

                v146 = v225;
                v142(*&v223, v225);
                v142(v208, v146);
              }

LABEL_91:
              a1 = v214;
              a4 = v209;
              goto LABEL_92;
            }
          }

          __break(1u);
          goto LABEL_195;
        }

        goto LABEL_91;
      }
    }

    swift_once();
    goto LABEL_30;
  }

  outlined destroy of Slice<IndexSet>(&v297, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);

  a1 = v214;
  v23 = v215;
  a4 = v209;
LABEL_93:
  while (1)
  {
    v147 = *(a4 + 96);
    v269[0] = *(a4 + 80);
    v269[1] = v147;
    *&v270 = *(a4 + 112);
    v148 = *(a4 + 32);
    v265 = *(a4 + 16);
    v266 = v148;
    v149 = *(a4 + 64);
    v267 = *(a4 + 48);
    v268 = v149;
    result = outlined destroy of Slice<IndexSet>(&v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    v150 = v290;
    *(a4 + 48) = v289;
    *(a4 + 64) = v150;
    *(a4 + 80) = v291;
    *(a4 + 96) = v292;
    v151 = v288;
    *(a4 + 16) = v287;
    *(a4 + 32) = v151;
    *(a4 + 104) = v33;
    *(a4 + 112) = v220;
LABEL_94:
    v87 = *(a4 + 120);
    if (!v87)
    {
      return result;
    }

    v152 = *(a1 + 3);
    v153 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = v152;
    v154 = *(a1 + 3);
    v239[0] = *(a1 + 4);
    v155 = *(a1 + 1);
    v235 = *a1;
    v236 = v155;
    *(v239 + 14) = *(a1 + 78);
    v260 = v237;
    v261 = v154;
    v262[0] = *(a1 + 4);
    v33 = *(a1 + 22);
    v137 = (a1 + 112);
    v156 = *(a1 + 14);
    *(v262 + 14) = *(a1 + 78);
    v258 = v235;
    v259 = v153;

    outlined init with copy of _ShapeStyle_Pack.Fill(&v235, &v265);
    _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v258, &v265);
    specialized Array<A>.animatableData.getter(v156, &v270);
    *(&v269[1] + 2) = v33;
    LOBYTE(v258) = 0;
    v157 = specialized AnimatorState.update(_:at:environment:)(&v265, a3, v27);
    v133 = AGGraphGetCurrentAttribute();
    LODWORD(v73) = *MEMORY[0x1E698D3F8];
    if (v133 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v129) = 0;
    }

    else
    {
      LODWORD(v129) = v133;
    }

    v132 = &type metadata instantiation cache for TupleTypeDescription;
    if (v157)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_100;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_113:
    v169 = *(v132 + 616);
    if (*(v169 + 16) >= 0x43uLL)
    {
      if (*(v169 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v258) = v129;
        BYTE4(v258) = v133 == v73;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_148;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_105:
    v92 = *(&static Signpost.animationState + 1);
    v102 = static Signpost.animationState;
    v95 = word_1ED5283E8;
    v101 = HIBYTE(word_1ED5283E8);
    v161 = byte_1ED5283EA;
    v162 = static os_signpost_type_t.end.getter();
    v226 = v102;
    v258 = __PAIR128__(v92, v102);
    v223 = *&v92;
    LOBYTE(v259) = v95;
    BYTE1(v259) = v101;
    BYTE2(v259) = v161;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_147;
    }

    LODWORD(v222) = v162;
    v163 = one-time initialization token for _signpostLog;

    if (v163 != -1)
    {
      swift_once();
    }

    v209 = a4;
    v214 = a1;
    v100 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v73)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    v223 = v104;
    *&v218 = v106;
    *&v219 = v105;
    swift_once();
    v106 = *&v218;
    v105 = *&v219;
    v104 = v223;
LABEL_47:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_54;
    }

    v107 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v223) = v95;
    if (v107 == 1 && (v108 = static CustomEventTrace.recorder) != 0)
    {
      v109 = v92 == v95;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
      v110 = *(v108 + 16);
      LODWORD(v235) = v73;
      BYTE4(v235) = v109;
      *(&v235 + 1) = &type metadata for _ShapeStyle_Pack.Style;
      *&v236 = v4;
      *(&v236 + 1) = v104;
      *&v237 = v106;
      *(&v237 + 1) = v105;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v219 = v111;

      v112 = a4;
      v113 = v110;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v101, v100, v102, v226, v103, v112);
    }

    else
    {
      outlined consume of Animation.Function(v101, v100, v102, v226, v103, a4);
    }

    v114 = one-time initialization token for animationState;

    if (v114 != -1)
    {
      goto LABEL_192;
    }

LABEL_54:
    v74 = *(&static Signpost.animationState + 1);
    v73 = static Signpost.animationState;
    v75 = word_1ED5283E8;
    v76 = HIBYTE(word_1ED5283E8);
    v115 = byte_1ED5283EA;
    v116 = static os_signpost_type_t.begin.getter();
    v235 = __PAIR128__(v74, v73);
    LOBYTE(v236) = v75;
    BYTE1(v236) = v76;
    BYTE2(v236) = v115;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v128 = v210;

      goto LABEL_61;
    }

    LODWORD(v226) = v116;
    v117 = one-time initialization token for _signpostLog;

    if (v117 != -1)
    {
LABEL_195:
      swift_once();
    }

    v118 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_18DDAF080;
    v120 = AGGraphGetCurrentAttribute();
    v121 = LODWORD(v223);
    if (v120 == LODWORD(v223))
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v122 = AGGraphGetAttributeGraph();
    v123 = AGGraphGetCounter();

    v124 = MEMORY[0x1E69E6870];
    *(v119 + 56) = MEMORY[0x1E69E6810];
    *(v119 + 64) = v124;
    *(v119 + 32) = v123;
    v125 = AGGraphGetCurrentAttribute();
    if (v125 == v121)
    {
      goto LABEL_197;
    }

    a4 = v119;
    v126 = MEMORY[0x1E69E76D0];
    *(v119 + 96) = MEMORY[0x1E69E7668];
    *(v119 + 104) = v126;
    *(v119 + 72) = v125;
    *(v119 + 136) = MEMORY[0x1E69E6158];
    *(v119 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v119 + 112) = 0x656C797453;
    *(v119 + 120) = 0xE500000000000000;
    v127 = v204;
    if (v76)
    {
      LOBYTE(v227) = v226;
      v229 = *&v118;
      v230 = &dword_18D018000;
      *&v235 = v73;
      *(&v235 + 1) = v74;
      LOBYTE(v236) = v75;
      *&v231 = "Animation: (%p) [%d] %{public}@ started";
      *(&v231 + 1) = 39;
      LOBYTE(v232) = 2;
      v228 = *&a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v128 = v210;

      (*(v221 + 8))(v127, v225);

LABEL_61:
      a4 = v209;
      *(v209 + 120) = v128;
      a1 = v214;
      goto LABEL_92;
    }

    if (v73 == 20)
    {
      v185 = 3;
    }

    else
    {
      v185 = 4;
    }

    LODWORD(v129) = bswap32(v73) | (4 * WORD1(v73));
    LODWORD(v226) = v226;
    v186 = (v221 + 16);
    v87 = v185;
    v211 = *(v221 + 16);
    v187 = v211(v222, v204, v225);
    v132 = 0;
    LOBYTE(v231) = 1;
    v212 = v186;
    v213 = v87;
    v218 = 16 * v87;
    v219 = v186 - 8;
    v216 = v73;
    v217 = a4 + 32;
    do
    {
      v223 = COERCE_DOUBLE(&v203);
      MEMORY[0x1EEE9AC00](v187);
      a1 = &v203 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = a1 + 8;
      v189 = v87;
      v190 = a1 + 8;
      do
      {
        *(v190 - 1) = 0;
        *v190 = 0;
        v190 += 16;
        --v189;
      }

      while (v189);
      v137 = v217 + 40 * v132;
      while (1)
      {
        v191 = *(a4 + 16);
        if (v132 == v191)
        {
          break;
        }

        if (v132 >= v191)
        {
          goto LABEL_180;
        }

        ++v132;
        outlined init with copy of AnyTrackedValue(v137, &v235);
        LODWORD(v73) = a4;
        v192 = *(&v236 + 1);
        __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
        *(v23 - 1) = CVarArg.kdebugValue(_:)(v129 | v226, v192);
        *v23 = v193 & 1;
        v23 += 16;
        v133 = __swift_destroy_boxed_opaque_existential_1(&v235);
        v137 += 40;
        if (!--v87)
        {
          goto LABEL_162;
        }
      }

      LOBYTE(v231) = 0;
LABEL_162:
      v194 = v216;
      if (v216 == 20)
      {
        v195 = v222;
        OSSignpostID.rawValue.getter();
        kdebug_trace();
      }

      else
      {
        kdebug_trace();
        v195 = v222;
      }

      if (a1[8] == 1)
      {
        kdebug_trace_string();
      }

      if (a1[24] == 1)
      {
        kdebug_trace_string();
      }

      if (a1[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v194 != 20 && a1[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v196 = *v219;
      v197 = v225;
      (*v219)(v195, v225);
      v198 = __swift_project_value_buffer(v197, static OSSignpostID.continuation);
      v187 = v211(v195, v198, v197);
      v87 = v213;
    }

    while ((v231 & 1) != 0);
    v199 = v210;

    v200 = v225;
    v196(v195, v225);
    v196(v204, v200);

    a4 = v209;
    *(v209 + 120) = v199;
    a1 = v214;
LABEL_92:
    v23 = v215;
    a3 = v207;
    specialized AnimatorState.addListeners(transaction:)(v206);

    v262[0] = v252;
    v262[1] = v253;
    *&v263 = v254;
    v258 = v248;
    v259 = v249;
    v260 = v250;
    v261 = v251;
    outlined destroy of Slice<IndexSet>(&v258, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    outlined destroy of Slice<IndexSet>(&v297, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  }

  v164 = AGGraphGetAttributeGraph();
  v102 = AGGraphGetCounter();

  v165 = MEMORY[0x1E69E6870];
  *(v103 + 56) = MEMORY[0x1E69E6810];
  *(v103 + 64) = v165;
  *(v103 + 32) = v102;
  v166 = AGGraphGetCurrentAttribute();
  if (v166 == v73)
  {
    goto LABEL_189;
  }

  v167 = MEMORY[0x1E69E76D0];
  *(v103 + 96) = MEMORY[0x1E69E7668];
  *(v103 + 104) = v167;
  *(v103 + 72) = v166;
  *(v103 + 136) = MEMORY[0x1E69E6158];
  *(v103 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v103 + 112) = 0x656C797453;
  *(v103 + 120) = 0xE500000000000000;
  v168 = v215;
  if (v101)
  {
    LOBYTE(v255[0]) = v222;
    *&v297 = &dword_18D018000;
    *&v277[0] = v100;
    *&v258 = v226;
    *(&v258 + 1) = v223;
    LOBYTE(v259) = v95;
    *&v240 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v240 + 1) = 37;
    LOBYTE(v241) = 2;
    *&v273[0] = v103;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v221 + 8))(v168, v225);
    goto LABEL_146;
  }

  v170 = v226;
  if (v226 == 20)
  {
    v137 = 3;
  }

  else
  {
    v137 = 4;
  }

  LODWORD(v73) = bswap32(v226) | (4 * WORD1(v226));
  v132 = v222;
  v171 = v221 + 16;
  v216 = *(v221 + 16);
  v172 = (v216)(v224, v215, v225);
  v87 = 0;
  LOBYTE(v240) = 1;
  v223 = *&v137;
  v221 = v171;
  v219 = 16 * v137;
  v220 = (v171 - 8);
  v226 = v103;
  v217 = v170;
  v218 = v103 + 32;
  do
  {
    v222 = &v203;
    MEMORY[0x1EEE9AC00](v172);
    v23 = &v203 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
    v129 = v23 + 8;
    v174 = v223;
    v175 = v23 + 8;
    do
    {
      *(v175 - 1) = 0;
      *v175 = 0;
      v175 += 16;
      --*&v174;
    }

    while (v174 != 0.0);
    a1 = (v218 + 40 * v87);
    a4 = *&v223;
    while (1)
    {
      v176 = *(v226 + 16);
      if (v87 == v176)
      {
        break;
      }

      if (v87 >= v176)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v201 = v133;
        swift_once();
        v133 = v201;
LABEL_100:
        v158 = *(v132 + 616);
        if (*(v158 + 16) >= 0x43uLL)
        {
          v159 = *(v158 + 98);
          v212 = v137;
          if (v159 == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v258) = v129;
            BYTE4(v258) = v133 == v73;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v215 = v23;
          v160 = one-time initialization token for animationState;
          v213 = v87;

          if (v160 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_183:
        v202 = v133;
        swift_once();
        v133 = v202;
        goto LABEL_113;
      }

      ++v87;
      outlined init with copy of AnyTrackedValue(a1, &v258);
      v177 = *(&v259 + 1);
      v137 = v260;
      __swift_project_boxed_opaque_existential_1(&v258, *(&v259 + 1));
      *(v129 - 1) = CVarArg.kdebugValue(_:)(v73 | v132, v177);
      *v129 = v178 & 1;
      v129 += 16;
      v133 = __swift_destroy_boxed_opaque_existential_1(&v258);
      a1 += 40;
      if (!--a4)
      {
        goto LABEL_131;
      }
    }

    LOBYTE(v240) = 0;
LABEL_131:
    v179 = v217;
    if (v217 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v23[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v23[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v23[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v179 != 20 && v23[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v180 = *v220;
    v137 = v224;
    v181 = v225;
    (*v220)(v224, v225);
    v182 = __swift_project_value_buffer(v181, static OSSignpostID.continuation);
    v172 = (v216)(v137, v182, v181);
  }

  while ((v240 & 1) != 0);

  v183 = v225;
  v180(v224, v225);
  v180(v215, v183);
LABEL_146:

  a1 = v214;
  a4 = v209;
LABEL_147:
  specialized AnimatorState.removeListeners()();

  *(a4 + 120) = 0;
LABEL_148:
  v244 = v269[0];
  v245 = v269[1];
  *&v246 = v270;
  v240 = v265;
  v241 = v266;
  v242 = v267;
  v243 = v268;
  v299 = v267;
  v300 = v268;
  v301 = v269[0];
  LOBYTE(v302) = v269[1];
  v297 = v265;
  v298 = v266;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v240, &v258, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a1);
  *(a1 + 22) = DWORD2(v245);

  specialized Array<A>.animatableData.setter(v184);

  outlined destroy of Slice<IndexSet>(&v240, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v262[0] = v269[0];
  v262[1] = v269[1];
  *&v263 = v270;
  v258 = v265;
  v259 = v266;
  v260 = v267;
  v261 = v268;
  result = outlined destroy of Slice<IndexSet>(&v258, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  a1[120] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for _BrightnessEffect;
    type metadata accessor for _BrightnessEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for _BrightnessEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for _BrightnessEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000011;
          *(a4 + 120) = 0x800000018DD7ED30;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000011;
      *(a1 + 15) = 0x800000018DD7ED30;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000011;
  *(a4 + 120) = 0x800000018DD7ED30;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[8] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for _SaturationEffect;
    type metadata accessor for _SaturationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for _SaturationEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for _SaturationEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000011;
          *(a4 + 120) = 0x800000018DD7ECB0;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000011;
      *(a1 + 15) = 0x800000018DD7ECB0;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000011;
  *(a4 + 120) = 0x800000018DD7ECB0;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[8] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1 * 128.0;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for _HueRotationEffect;
    type metadata accessor for _HueRotationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for _HueRotationEffect;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for _HueRotationEffect;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0xD000000000000012;
          *(a4 + 120) = 0x800000018DD7EC70;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0xD000000000000012;
      *(a1 + 15) = 0x800000018DD7EC70;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1 * 128.0;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0xD000000000000012;
  *(a4 + 120) = 0x800000018DD7EC70;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189 * 0.0078125;
  a1[8] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1 * 128.0;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for Angle;
    type metadata accessor for Angle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for Angle;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for Angle;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0x656C676E41;
          *(a4 + 120) = 0xE500000000000000;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0x656C676E41;
      *(a1 + 15) = 0xE500000000000000;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1 * 128.0;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0x656C676E41;
  *(a4 + 120) = 0xE500000000000000;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189 * 0.0078125;
  a1[8] = 1;
  return result;
}

{
  v204 = *MEMORY[0x1E69E9840];
  v184 = type metadata accessor for OSSignpostID();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v11 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v186 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v176 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  *&v29 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(a4 + 16);
  if (v5 == v29)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v180 = v11;
  v166 = v20;
  AGGraphClearUpdate();
  v174 = a4;
  v30 = *(a4 + 32);

  v31 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v32 = Transaction.effectiveAnimation.getter(v31);
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    if (!a2)
    {

      a4 = v174;
      goto LABEL_121;
    }

    v33 = a2;
  }

  v169 = v29;
  v34 = v29 - v5;
  v27 = *AGGraphGetValue();
  v177 = v30;
  v170 = a3;
  v168 = v31;
  v167 = v33;
  if (!v30)
  {
    v165 = v14;
    v198 = &type metadata for Capsule._Inset;
    type metadata accessor for Capsule._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v192;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v193;
    }

    else
    {
      v51 = 0;
    }

    v53 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v52, v31, v50, v51, v34, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v185) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v185)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v181) = v56;
    (*(*v33 + 96))(&v198);
    v58 = v198;
    v57 = v199;
    v59 = v203;
    v191 = 0x7FF8000000000000;
    v192 = v198;
    v188 = 0x3FF0000000000000;
    v189 = NAN;
    v187 = NAN;
    v193 = v199;
    v194 = v200;
    v60 = v200;
    v61 = v201;
    v195 = *&v201;
    v196 = v202;
    v183 = v202;
    LOBYTE(v197) = v203;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v192, &v191, &v189, &v188, &v187);
    v4 = v191;
    v62 = v188;
    v5 = v189;
    v63 = v187;
    if (one-time initialization token for enabledCategories != -1)
    {
      v179 = v188;
      v178 = v187;
      swift_once();
      v63 = v178;
      v62 = v179;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v64 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v166 = v53;
      if (v64)
      {
        v65 = a1;
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v185;
          LODWORD(v179) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v192) = v181;
          BYTE4(v192) = v67;
          v193 = &type metadata for Capsule._Inset;
          v194 = v4;
          v195 = v5;
          v196 = v62;
          v197 = v63;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v183, v179);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v183, v59);
        }

        a1 = v65;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v183, v59);
      }

      v106 = one-time initialization token for animationState;

      if (v106 == -1)
      {
LABEL_83:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v107 = byte_1ED5283EA;
        LODWORD(v183) = static os_signpost_type_t.begin.getter();
        v192 = v71;
        v193 = v72;
        LOBYTE(v194) = a4;
        BYTE1(v194) = v74;
        BYTE2(v194) = v107;
        v108 = Signpost.isEnabled.getter();
        LODWORD(v36) = v185;
        if ((v108 & 1) == 0)
        {

          v118 = v166;

          a4 = v174;
          *(v174 + 32) = v118;
          goto LABEL_120;
        }

        v171 = a1;
        v109 = one-time initialization token for _signpostLog;

        if (v109 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_85;
      }
    }

    swift_once();
    goto LABEL_83;
  }

  LOBYTE(v192) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, v31, v34, v27);
  v35 = AGGraphGetCurrentAttribute();
  a4 = v35;
  LODWORD(v36) = *MEMORY[0x1E698D3F8];
  if (v35 == *MEMORY[0x1E698D3F8])
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  LODWORD(v183) = v37;
  (*(*v33 + 96))(&v198);
  v39 = v198;
  v38 = v199;
  v40 = v201;
  v41 = v202;
  v191 = 0x7FF8000000000000;
  v192 = v198;
  v188 = 0x3FF0000000000000;
  v189 = NAN;
  v187 = NAN;
  v193 = v199;
  v194 = v200;
  v42 = v200;
  v195 = *&v201;
  v196 = v202;
  LODWORD(v185) = v203;
  LOBYTE(v197) = v203;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v192, &v191, &v189, &v188, &v187);
  v4 = v191;
  v43 = v188;
  v5 = v189;
  *&v44 = v187;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_44;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v45 = static CustomEventTrace.recorder) != 0)
    {
      v179 = v41;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v180) = v36;
      v46 = *(v45 + 16);
      LODWORD(v192) = v183;
      BYTE4(v192) = a4 == v36;
      v193 = &type metadata for Capsule._Inset;
      v194 = v4;
      v195 = v5;
      v196 = v43;
      v197 = *&v44;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v183 = v47;

      v48 = v46;
      AGGraphAddTraceEvent();
      LODWORD(v36) = v180;
      outlined consume of Animation.Function(v39, v38, v42, v40, v179, v185);
    }

    else
    {
      outlined consume of Animation.Function(v39, v38, v42, v40, v41, v185);
    }

    v171 = a1;
    v70 = one-time initialization token for animationState;

    a4 = v174;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_44:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v192 = v71;
    v193 = v72;
    LOBYTE(v194) = v73;
    BYTE1(v194) = v74;
    BYTE2(v194) = v75;
    if (Signpost.isEnabled.getter())
    {
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      *&v78 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&a4 = COERCE_DOUBLE(swift_allocObject());
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v36)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v81 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v81;
        *(a4 + 32) = Counter;
        v82 = AGGraphGetCurrentAttribute();
        if (v82 != v36)
        {
          v83 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v83;
          *(a4 + 72) = v82;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0x7465736E495FLL;
          *(a4 + 120) = 0xE600000000000000;
          if (v74)
          {
            LOBYTE(v187) = v76;
            v191 = &dword_18D018000;
            v192 = v71;
            v188 = a4;
            v189 = *&v78;
            v193 = v72;
            LOBYTE(v194) = v73;
            v198 = "Animation: (%p) [%d] %{public}@ updated";
            v199 = 39;
            LOBYTE(v200) = 2;
            v84 = v166;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v182 + 8))(v84, v184);
          }

          else
          {
            v85 = v76;
            v86 = v71;
            if (v71 == 20)
            {
              v87 = 3;
            }

            else
            {
              v87 = 4;
            }

            v88 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v36) = v85;
            v89 = v182 + 16;
            v172 = *(v182 + 16);
            v90 = v172(v181, v166, v184);
            v42 = 0;
            LOBYTE(v198) = 1;
            v185 = v87;
            v179 = 16 * v87;
            v173 = v89;
            v180 = (v89 - 8);
            *&v178 = a4 + 32;
            v175 = v86;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v90);
              v93 = &v164 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v93 + 8;
              v94 = v185;
              v95 = v93 + 8;
              do
              {
                *(v95 - 1) = 0;
                *v95 = 0;
                v95 += 16;
                --v94;
              }

              while (v94);
              v96 = *&v178 + 40 * v42;
              v97 = v185;
              while (1)
              {
                v98 = *(a4 + 16);
                if (v42 == v98)
                {
                  break;
                }

                if (v42 >= v98)
                {
                  goto LABEL_179;
                }

                ++v42;
                outlined init with copy of AnyTrackedValue(v96, &v192);
                v99 = *&v195;
                v89 = __swift_project_boxed_opaque_existential_1(&v192, *&v195);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v88 | v36, v99);
                *a1 = v100 & 1;
                a1 += 16;
                v91 = __swift_destroy_boxed_opaque_existential_1(&v192);
                v96 += 40;
                if (!--v97)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v198) = 0;
LABEL_64:
              v101 = v175;
              if (v175 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v93[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v101 != 20 && v93[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v102 = *v180;
              v103 = v181;
              v89 = v184;
              (*v180)(v181, v184);
              v104 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
              v90 = v172(v103, v104, v89);
            }

            while ((v198 & 1) != 0);

            v105 = v184;
            v102(v103, v184);
            v102(v166, v105);
          }

          a1 = v171;
          a4 = v174;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_85:
      *&v110 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v36)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v111 = AGGraphGetAttributeGraph();
      v112 = AGGraphGetCounter();

      v113 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v113;
      *(a1 + 4) = v112;
      v114 = AGGraphGetCurrentAttribute();
      if (v114 == v36)
      {
        goto LABEL_197;
      }

      v115 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v115;
      *(a1 + 18) = v114;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0x7465736E495FLL;
      *(a1 + 15) = 0xE600000000000000;
      v116 = v165;
      if (v74)
      {
        LOBYTE(v187) = v183;
        v191 = &dword_18D018000;
        v192 = v71;
        v188 = a1;
        v189 = *&v110;
        v193 = v72;
        LOBYTE(v194) = a4;
        v198 = "Animation: (%p) [%d] %{public}@ started";
        v199 = 39;
        LOBYTE(v200) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v117 = v166;

        (*(v182 + 8))(v116, v184);
      }

      else
      {
        v119 = v71;
        v89 = v71 == 20 ? 3 : 4;
        v88 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v36) = v183;
        v120 = v182 + 16;
        v172 = *(v182 + 16);
        v121 = v172(v180, v165, v184);
        v42 = 0;
        LOBYTE(v198) = 1;
        v185 = v89;
        v179 = 16 * v89;
        v173 = v120;
        v181 = (v120 - 8);
        *&v178 = a1 + 32;
        v175 = v119;
        do
        {
          v183 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v185;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v96 = *&v178 + 40 * v42;
          v126 = v185;
          while (1)
          {
            v127 = *(a1 + 2);
            if (v42 == v127)
            {
              break;
            }

            if (v42 >= v127)
            {
              goto LABEL_180;
            }

            ++v42;
            outlined init with copy of AnyTrackedValue(v96, &v192);
            v128 = *&v195;
            v89 = __swift_project_boxed_opaque_existential_1(&v192, *&v195);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v88 | v36, v128);
            *a4 = v129 & 1;
            a4 += 16;
            v91 = __swift_destroy_boxed_opaque_existential_1(&v192);
            v96 += 40;
            if (!--v126)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v198) = 0;
LABEL_102:
          v130 = v175;
          if (v175 == 20)
          {
            v131 = v180;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v131 = v180;
          }

          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v130 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v132 = *v181;
          v89 = v184;
          (*v181)(v131, v184);
          v133 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
          v121 = v172(v131, v133, v89);
        }

        while ((v198 & 1) != 0);
        v117 = v166;

        v134 = v184;
        v132(v131, v184);
        v132(v165, v134);
      }

      a4 = v174;
      *(v174 + 32) = v117;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v170;
    specialized AnimatorState.addListeners(transaction:)(v168);

    v29 = v169;
LABEL_121:
    *(a4 + 16) = v29;
    *(a4 + 24) = 0;
LABEL_122:
    v88 = *(a4 + 32);
    if (!v88)
    {
      return result;
    }

    v96 = *a1;
    v191 = *a1 & 0xFFFFFFFFFFFFFFFELL;

    LOBYTE(v192) = 0;
    v135 = specialized AnimatorState.update(_:at:environment:)(&v191, a3, v27);
    v91 = AGGraphGetCurrentAttribute();
    LODWORD(v36) = *MEMORY[0x1E698D3F8];
    if (v91 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v42) = 0;
    }

    else
    {
      LODWORD(v42) = v91;
    }

    v89 = &type metadata instantiation cache for TupleTypeDescription;
    if (v135)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v145 = *(v89 + 616);
    if (*(v145 + 16) >= 0x43uLL)
    {
      if (*(v145 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v192) = v42;
        BYTE4(v192) = v91 == v36;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v138 = *(&static Signpost.animationState + 1);
    v42 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    v139 = HIBYTE(word_1ED5283E8);
    v140 = byte_1ED5283EA;
    v39 = static os_signpost_type_t.end.getter();
    v192 = v42;
    v193 = v138;
    LOBYTE(v194) = v40;
    BYTE1(v194) = v139;
    BYTE2(v194) = v140;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v174 = a4;
    v41 = one-time initialization token for _signpostLog;

    if (v41 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v38 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v36)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v180 = v43;
    v179 = v44;
    swift_once();
    v44 = v179;
    v43 = v180;
  }

  v41 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v141 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v141;
  *(a4 + 32) = a1;
  v142 = AGGraphGetCurrentAttribute();
  if (v142 == v36)
  {
    goto LABEL_187;
  }

  v143 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v143;
  *(a4 + 72) = v142;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0x7465736E495FLL;
  *(a4 + 120) = 0xE600000000000000;
  if (v139)
  {
    v190 = v39;
    v188 = v38;
    v189 = COERCE_DOUBLE(&dword_18D018000);
    v192 = v42;
    v193 = v138;
    LOBYTE(v194) = v40;
    v198 = "Animation: (%p) [%d] %{public}@ ended";
    v199 = 37;
    LOBYTE(v200) = 2;
    v187 = *&a4;
    v144 = v176;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v182 + 8))(v144, v184);
    goto LABEL_174;
  }

  *&v146 = v42;
  if (v42 == 20)
  {
    v89 = 3;
  }

  else
  {
    v89 = 4;
  }

  v147 = bswap32(v42) | (4 * WORD1(v42));
  LODWORD(v42) = v39;
  v148 = v182 + 16;
  v177 = *(v182 + 16);
  v149 = v177(v186, v176, v184);
  v36 = 0;
  LOBYTE(v198) = 1;
  v185 = v89;
  v180 = (16 * v89);
  v182 = v148;
  v181 = (v148 - 8);
  v179 = a4 + 32;
  v178 = v146;
  do
  {
    v183 = &v164;
    MEMORY[0x1EEE9AC00](v149);
    a1 = &v164 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
    v151 = a1 + 8;
    v152 = v185;
    v153 = a1 + 8;
    do
    {
      *(v153 - 1) = 0;
      *v153 = 0;
      v153 += 16;
      --v152;
    }

    while (v152);
    v96 = v179 + 40 * v36;
    v88 = v185;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v36 == v154)
      {
        break;
      }

      if (v36 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v91;
        swift_once();
        v91 = v162;
LABEL_128:
        v136 = *(v89 + 616);
        if (*(v136 + 16) >= 0x43uLL)
        {
          if (*(v136 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v192) = v42;
            BYTE4(v192) = v91 == v36;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v173 = v96;
          v137 = one-time initialization token for animationState;
          v175 = v88;

          if (v137 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v91;
        swift_once();
        v91 = v163;
        goto LABEL_141;
      }

      ++v36;
      outlined init with copy of AnyTrackedValue(v96, &v192);
      v155 = *&v195;
      v89 = __swift_project_boxed_opaque_existential_1(&v192, *&v195);
      *(v151 - 1) = CVarArg.kdebugValue(_:)(v147 | v42, v155);
      *v151 = v156 & 1;
      v151 += 16;
      v91 = __swift_destroy_boxed_opaque_existential_1(&v192);
      v96 += 40;
      if (!--v88)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v198) = 0;
LABEL_159:
    v157 = v178;
    if (*&v178 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (*&v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v181;
    v159 = v186;
    v89 = v184;
    (*v181)(v186, v184);
    v160 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
    v149 = v177(v159, v160, v89);
  }

  while ((v198 & 1) != 0);

  v161 = v184;
  v158(v186, v184);
  v158(v176, v161);
LABEL_174:

  a1 = v171;
  a4 = v174;
LABEL_175:
  LOBYTE(v96) = v173;
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v191 & 0xFFFFFFFFFFFFFFFELL | v96 & 1;
  a1[8] = 1;
  return result;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v182 = type metadata accessor for OSSignpostID();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v11 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v164 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v164 - v24;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[10] = 1;
  }

  else if (a1[10] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v181 = v17;
  v183 = v11;
  AGGraphClearUpdate();
  v172 = a4;
  v29 = *(a4 + 32);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v172;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v33 = v5 - v4;
  v27 = *AGGraphGetValue();
  v171 = a1;
  v168 = a3;
  v167 = v30;
  v166 = v32;
  v169 = v29;
  if (!v29)
  {
    v164 = v14;
    v196 = &type metadata for BlurStyle;
    type metadata accessor for BlurStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v190;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v191;
    }

    else
    {
      v52 = 0;
    }

    v165 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v53, v30, v51, v52, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v55 = CurrentAttribute;
    LODWORD(v181) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v181)
    {
      v56 = 0;
    }

    else
    {
      v56 = CurrentAttribute;
    }

    LODWORD(v179) = v56;
    (*(*v32 + 96))(&v196);
    v58 = v196;
    v57 = v197;
    v59 = v201;
    v189 = NAN;
    v190 = v196;
    v186 = 0x3FF0000000000000;
    v187 = 0x7FF8000000000000;
    v185 = 0x7FF8000000000000;
    v191 = v197;
    v192 = *&v198;
    v60 = v198;
    v61 = v199;
    v193 = v199;
    v194 = v200;
    v62 = v200;
    LOBYTE(v195) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
    v4 = v189;
    v63 = v186;
    v64 = v187;
    v65 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v178 = v187;
      v176 = v186;
      v177 = v185;
      swift_once();
      v65 = v177;
      v63 = v176;
      v64 = v178;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v55 == v181;
          LODWORD(v178) = v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = *(v66 + 16);
          LODWORD(v190) = v179;
          BYTE4(v190) = v67;
          v191 = &type metadata for BlurStyle;
          v192 = v4;
          v193 = v64;
          v194 = v63;
          v195 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v69 = v68;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v178);
        }

        else
        {
          outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
        }

        a1 = v171;
      }

      else
      {
        outlined consume of Animation.Function(v58, v57, v60, v61, v62, v59);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_84:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v74 = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v190 = v71;
        v191 = v72;
        LOBYTE(v192) = a4;
        BYTE1(v192) = v74;
        BYTE2(v192) = v105;
        v106 = Signpost.isEnabled.getter();
        LODWORD(v35) = v181;
        if ((v106 & 1) == 0)
        {

          v116 = v165;

          a4 = v172;
          *(v172 + 32) = v116;
          goto LABEL_120;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v190) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v179) = v36;
  (*(*v32 + 96))(&v196);
  v38 = v196;
  v37 = v197;
  v40 = v198;
  v39 = v199;
  v41 = v200;
  v189 = NAN;
  v190 = v196;
  v186 = 0x3FF0000000000000;
  v187 = 0x7FF8000000000000;
  v185 = 0x7FF8000000000000;
  v191 = v197;
  v192 = *&v198;
  v193 = v199;
  v194 = v200;
  LODWORD(v183) = v201;
  LOBYTE(v195) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v190, &v189, &v187, &v186, &v185);
  v4 = v189;
  v42 = v186;
  v43 = v187;
  v44 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v45 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v165 = Counter;
    if (v45)
    {
      v178 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v177 = v41;
        v47 = *(v46 + 16);
        LODWORD(v190) = v179;
        BYTE4(v190) = a4 == v35;
        v191 = &type metadata for BlurStyle;
        v192 = v4;
        v193 = v43;
        v194 = v42;
        v195 = v44;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v179 = v48;

        v49 = v47;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v38, v37, v40, v178, v177, v183);
      }

      else
      {
        outlined consume of Animation.Function(v38, v37, v40, v178, v41, v183);
      }

      LOBYTE(Counter) = v165;
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v40, v39, v41, v183);
    }

    v70 = one-time initialization token for animationState;

    a4 = v172;
    if (v70 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v72 = *(&static Signpost.animationState + 1);
    v71 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v190 = v71;
    v191 = v72;
    LOBYTE(v192) = v73;
    BYTE1(v192) = v74;
    BYTE2(v192) = v75;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v183) = v76;
      v77 = one-time initialization token for _signpostLog;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v79 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 56) = MEMORY[0x1E69E6810];
        *(a4 + 64) = v80;
        *(a4 + 32) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 96) = MEMORY[0x1E69E7668];
          *(a4 + 104) = v82;
          *(a4 + 72) = v81;
          *(a4 + 136) = MEMORY[0x1E69E6158];
          *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 112) = 0x6C79745372756C42;
          *(a4 + 120) = 0xE900000000000065;
          v83 = v165;
          if (v74)
          {
            LOBYTE(v185) = v183;
            v189 = COERCE_DOUBLE(&dword_18D018000);
            v190 = v71;
            v186 = a4;
            v187 = v78;
            v191 = v72;
            LOBYTE(v192) = v73;
            v196 = "Animation: (%p) [%d] %{public}@ updated";
            v197 = 39;
            LOBYTE(v198) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v180 + 8))(v83, v182);
          }

          else
          {
            v84 = v71;
            if (v71 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v71) | (4 * (v71 >> 16));
            LODWORD(v35) = v183;
            v87 = v180 + 16;
            v88 = v85;
            v170 = *(v180 + 16);
            v89 = v170(v181, v165, v182);
            v40 = 0;
            LOBYTE(v196) = 1;
            v178 = (16 * v88);
            v173 = v87;
            v179 = (v87 - 8);
            v177 = (a4 + 32);
            v176 = v84;
            v175 = v88;
            do
            {
              v183 = &v164;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v177[40 * v40];
              while (1)
              {
                v96 = *(a4 + 16);
                if (v40 == v96)
                {
                  break;
                }

                if (v40 >= v96)
                {
                  goto LABEL_179;
                }

                ++v40;
                outlined init with copy of AnyTrackedValue(v95, &v190);
                v97 = v193;
                v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v35, v97);
                *a1 = v98 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v196) = 0;
LABEL_65:
              v99 = v176;
              if (v176 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v175;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v99 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v100 = *v179;
              v101 = v181;
              v78 = v182;
              (*v179)(v181, v182);
              v102 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
              v89 = v170(v101, v102, v78);
            }

            while ((v196 & 1) != 0);

            v103 = v182;
            v100(v181, v182);
            v100(v165, v103);
          }

          a1 = v171;
          a4 = v172;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v108 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v109 = AGGraphGetAttributeGraph();
      v110 = AGGraphGetCounter();

      v111 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v111;
      *(a1 + 4) = v110;
      v112 = AGGraphGetCurrentAttribute();
      if (v112 == v35)
      {
        goto LABEL_197;
      }

      v113 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v113;
      *(a1 + 18) = v112;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 14) = 0x6C79745372756C42;
      *(a1 + 15) = 0xE900000000000065;
      v114 = v164;
      if (v74)
      {
        LOBYTE(v185) = Counter;
        v189 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v71;
        v186 = a1;
        v187 = v108;
        v191 = v72;
        LOBYTE(v192) = a4;
        v196 = "Animation: (%p) [%d] %{public}@ started";
        v197 = 39;
        LOBYTE(v198) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v115 = v165;

        (*(v180 + 8))(v114, v182);
      }

      else
      {
        v117 = v71;
        v118 = Counter;
        v119 = v71 == 20 ? 3 : 4;
        v120 = bswap32(v71) | (4 * (v71 >> 16));
        LODWORD(v35) = v118;
        v78 = v180 + 16;
        v170 = *(v180 + 16);
        v121 = v170(v183, v164, v182);
        v40 = 0;
        LOBYTE(v196) = 1;
        v178 = (16 * v119);
        v173 = v78;
        v179 = (v78 - 8);
        v177 = a1 + 32;
        v176 = v117;
        v175 = v119;
        do
        {
          v181 = &v164;
          MEMORY[0x1EEE9AC00](v121);
          v123 = &v164 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = (v123 + 8);
          v124 = v119;
          v125 = v123 + 8;
          do
          {
            *(v125 - 1) = 0;
            *v125 = 0;
            v125 += 16;
            --v124;
          }

          while (v124);
          v95 = &v177[40 * v40];
          while (1)
          {
            v126 = *(a1 + 2);
            if (v40 == v126)
            {
              break;
            }

            if (v40 >= v126)
            {
              goto LABEL_180;
            }

            ++v40;
            outlined init with copy of AnyTrackedValue(v95, &v190);
            v127 = v193;
            v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v120 | v35, v127);
            *a4 = v128 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
            v95 += 40;
            if (!--v119)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v196) = 0;
LABEL_103:
          v129 = v176;
          if (v176 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v119 = v175;
          if (v123[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v123[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v129 != 20 && v123[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v130 = *v179;
          v131 = v183;
          v78 = v182;
          (*v179)(v183, v182);
          v132 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
          v121 = v170(v131, v132, v78);
        }

        while ((v196 & 1) != 0);
        v115 = v165;

        v133 = v182;
        v130(v183, v182);
        v130(v164, v133);
      }

      a4 = v172;
      *(v172 + 32) = v115;
    }

    else
    {
    }

    a1 = v171;
LABEL_120:
    a3 = v168;
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_121:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_122:
    v95 = *(a4 + 32);
    if (!v95)
    {
      return result;
    }

    v189 = *a1;

    LOBYTE(v190) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v189, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v40) = 0;
    }

    else
    {
      LODWORD(v40) = v90;
    }

    v78 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v144 = *(v78 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v40;
        BYTE4(v190) = v90 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v137 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v41 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    BYTE1(v192) = Counter;
    BYTE2(v192) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v172 = a4;
    v39 = one-time initialization token for _signpostLog;

    if (v39 != -1)
    {
      swift_once();
    }

    v171 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v178 = v43;
    v176 = v42;
    v177 = v44;
    swift_once();
    v44 = v177;
    v42 = v176;
    v43 = v178;
  }

  v39 = AGGraphGetAttributeGraph();
  v139 = AGGraphGetCounter();

  v140 = MEMORY[0x1E69E6870];
  *(a4 + 56) = MEMORY[0x1E69E6810];
  *(a4 + 64) = v140;
  *(a4 + 32) = v139;
  v141 = AGGraphGetCurrentAttribute();
  if (v141 == v35)
  {
    goto LABEL_187;
  }

  v142 = MEMORY[0x1E69E76D0];
  *(a4 + 96) = MEMORY[0x1E69E7668];
  *(a4 + 104) = v142;
  *(a4 + 72) = v141;
  *(a4 + 136) = MEMORY[0x1E69E6158];
  *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 112) = 0x6C79745372756C42;
  *(a4 + 120) = 0xE900000000000065;
  if (Counter)
  {
    v188 = v38;
    v186 = v37;
    v187 = &dword_18D018000;
    v190 = v40;
    v191 = v137;
    LOBYTE(v192) = v41;
    v196 = "Animation: (%p) [%d] %{public}@ ended";
    v197 = 37;
    LOBYTE(v198) = 2;
    v185 = a4;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v180 + 8))(v143, v182);
    goto LABEL_174;
  }

  v145 = v40;
  if (v40 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = 4;
  }

  v146 = bswap32(v40) | (4 * WORD1(v40));
  LODWORD(v40) = v38;
  v147 = v180 + 16;
  v175 = *(v180 + 16);
  v148 = v175(v184, v174, v182);
  v35 = 0;
  LOBYTE(v196) = 1;
  v183 = v78;
  v178 = (16 * v78);
  v180 = v147;
  v179 = (v147 - 8);
  v177 = (a4 + 32);
  v176 = v145;
  do
  {
    v181 = &v164;
    MEMORY[0x1EEE9AC00](v148);
    a1 = &v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = a1 + 8;
    v151 = v183;
    v152 = a1 + 8;
    do
    {
      *(v152 - 1) = 0;
      *v152 = 0;
      v152 += 16;
      v151 = (v151 - 1);
    }

    while (v151);
    v95 = &v177[40 * v35];
    v153 = v183;
    while (1)
    {
      v154 = *(a4 + 16);
      if (v35 == v154)
      {
        break;
      }

      if (v35 >= v154)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v162 = v90;
        swift_once();
        v90 = v162;
LABEL_128:
        v135 = *(v78 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v40;
            BYTE4(v190) = v90 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v173 = v95;

          if (v136 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v163 = v90;
        swift_once();
        v90 = v163;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v95, &v190);
      v155 = v193;
      v78 = __swift_project_boxed_opaque_existential_1(&v190, v193);
      *(v150 - 1) = CVarArg.kdebugValue(_:)(v146 | v40, v155);
      *v150 = v156 & 1;
      v150 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v95 += 40;
      v153 = (v153 - 1);
      if (!v153)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v196) = 0;
LABEL_159:
    v157 = v176;
    if (v176 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v157 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v158 = *v179;
    v159 = v184;
    v78 = v182;
    (*v179)(v184, v182);
    v160 = __swift_project_value_buffer(v78, static OSSignpostID.continuation);
    v148 = v175(v159, v160, v78);
  }

  while ((v196 & 1) != 0);

  v161 = v182;
  v158(v184, v182);
  v158(v174, v161);
LABEL_174:

  a1 = v171;
  a4 = v172;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_176:
  *a1 = v189;
  a1[10] = 1;
  return result;
}