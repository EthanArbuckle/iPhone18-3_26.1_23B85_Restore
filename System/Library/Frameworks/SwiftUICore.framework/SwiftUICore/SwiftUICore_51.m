uint64_t getEnumTag for AccessibilityTextLayoutProperties(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(uint64_t a1)
{
  type metadata accessor for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)()
{
  if (!lazy cache variable for type metadata for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties));
    }
  }
}

uint64_t initializeWithTake for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 32) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

void type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)()
{
  if (!lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics))
  {
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics));
    }
  }
}

void partial apply for closure #1 in closure #1 in GraphHost.uninstantiate(immediately:)()
{
  v1 = *(v0 + 16);
  AGSubgraphInvalidate();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyEquatable(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollAnchorStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return (v7 & 1) == 0 && v2 == v5 && v3 == v6;
  }

  return (v7 & 1) != 0;
}

float32x4_t *specialized static Color.ResolvedHDR._Animatable.-= infix(_:_:)(float32x4_t *result, float32x4_t *a2)
{
  v2 = a2[1].f32[0];
  *result = vsubq_f32(*result, *a2);
  if (result[1].f32[0] > v2)
  {
    v2 = result[1].f32[0];
  }

  result[1].f32[0] = v2;
  return result;
}

uint64_t specialized static ScrollPosition.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ScrollPosition.Storage(a1, &v25);
  outlined init with copy of ScrollPosition.Storage(a2, &v32);
  if (v31 <= 2u)
  {
    if (v31)
    {
      if (v31 == 1)
      {
        outlined init with copy of ScrollPosition.Storage(&v25, v19);
        if (v34 == 1)
        {
          v3 = LOBYTE(v19[0]) == v32;
          goto LABEL_14;
        }
      }

      else
      {
        outlined init with copy of ScrollPosition.Storage(&v25, v19);
        if (v34 == 2)
        {
          v4 = v19[1] == *(&v32 + 1) && v19[0] == *&v32;
          goto LABEL_21;
        }
      }

      goto LABEL_32;
    }

    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34)
    {
      outlined destroy of ScrollPosition.ViewID(v19);
      goto LABEL_32;
    }

    *&v18[9] = *&v33[25];
    v17 = *v33;
    *v18 = *&v33[16];
    v16 = v32;
    if (v24)
    {
      if (v33[40])
      {
        goto LABEL_42;
      }
    }

    else if ((v33[40] & 1) == 0 && v22 == *&v18[8] && v23 == *&v18[16])
    {
LABEL_42:
      v11 = v20;
      v12 = v21;
      v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = *(&v17 + 1);
      v15 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      LOBYTE(v11) = project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v13, v15, v11, v14, v12);
      outlined destroy of ScrollPosition.ViewID(&v16);
      outlined destroy of ScrollPosition.ViewID(v19);
      if (v11)
      {
        goto LABEL_43;
      }

LABEL_44:
      outlined destroy of ScrollPosition.Storage(&v25);
      return 0;
    }

    outlined destroy of ScrollPosition.ViewID(&v16);
    outlined destroy of ScrollPosition.ViewID(v19);
    goto LABEL_44;
  }

  if (v31 == 3)
  {
    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34 != 3)
    {
      goto LABEL_32;
    }

LABEL_13:
    v3 = v19[0] == *&v32;
LABEL_14:
    v4 = v3;
LABEL_21:
    outlined destroy of ScrollPosition.Storage(&v25);
    return v4;
  }

  if (v31 == 4)
  {
    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34 != 4)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (v30 || (v6 = vorrq_s8(v26, v27), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v28 | v29 | v25))
  {
    if (v34 != 5 || v33[40] || v32 != 1)
    {
      goto LABEL_32;
    }

    v9 = *(&v32 + 1);
    v10 = vorrq_s8(*&v33[8], *&v33[24]);
    v8 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *v33;
  }

  else
  {
    if (v34 != 5 || v33[40])
    {
      goto LABEL_32;
    }

    v7 = vorrq_s8(*&v33[8], *&v33[24]);
    v8 = *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | *v33;
    v9 = *(&v32 + 1) | v32;
  }

  if (!(v8 | v9))
  {
LABEL_43:
    outlined destroy of ScrollPosition.Storage(&v25);
    return 1;
  }

LABEL_32:
  outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(&v25, type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage));
  return 0;
}

uint64_t project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

__n128 assignWithTake for ScrollPosition(__n128 *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    outlined destroy of ScrollPosition.Storage(a1);
    a1 = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    v3[2] = *(a2 + 32);
    *(v3 + 42) = *(a2 + 42);
  }

  result = *(a2 + 64);
  a1[4] = result;
  a1[5].n128_u64[0] = *(a2 + 80);
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout()
{
  result = lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout;
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout;
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout;
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout;
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line()
{
  result = lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line;
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line;
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line;
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line;
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }

  return result;
}

void Color.ResolvedHDR.animatableData.setter(float32x4_t *a1)
{
  v2 = *a1;
  v3 = a1[1].f32[0];
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v2 = v11;
  }

  v10 = vmulq_f32(v2, v4);
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
  v9 = NAN;
  if (v3 > 0.0)
  {
    v9 = v3;
  }

  *(v1 + 16) = v9;
}

uint64_t one-time initialization function for customAttributes()
{
  result = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C140);
  static NSAttributedStringKey.customAttributes = result;
  return result;
}

uint64_t one-time initialization function for customAttachment()
{
  result = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C6E0);
  static NSAttributedStringKey.customAttachment = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPosition(uint64_t a1, uint64_t a2)
{
  if ((static ScrollPosition.Storage.== infix(_:_:)() & 1) == 0 || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = *(a2 + 64);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.== infix(_:_:)(v4, v5);
}

unint64_t type metadata accessor for RBDisplayListContents()
{
  result = lazy cache variable for type metadata for RBDisplayListContents;
  if (!lazy cache variable for type metadata for RBDisplayListContents)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBDisplayListContents);
  }

  return result;
}

uint64_t EnvironmentValues.tintAdjustmentMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018TintAdjustmentModeF033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018TintAdjustmentModeK033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Ttg5(v3, *v2);
  }
}

uint64_t destroy for CoordinateSpace.Name(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

BOOL OptionalEdgeInsets.init(_:edges:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = Edge.Set.contains(_:)(SwiftUI_Edge_top);
  if (v10)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0.0;
  }

  v20 = !v10;
  v12 = Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  if (v12)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0.0;
  }

  v19 = !v12;
  v14 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  if (v14)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0.0;
  }

  v18 = !v14;
  result = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  v17 = a5;
  if (!result)
  {
    v17 = 0.0;
  }

  *a1 = v11;
  *(a1 + 8) = v20;
  *(a1 + 16) = v13;
  *(a1 + 24) = v19;
  *(a1 + 32) = v15;
  *(a1 + 40) = v18;
  *(a1 + 48) = v17;
  *(a1 + 56) = !result;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsAuxiliaryContentTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t ViewTraitCollection.tag<A>(for:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = type metadata accessor for TagValueTraitKey.Value();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v19[1] = *v2;
  v14 = type metadata accessor for TagValueTraitKey();
  WitnessTable = swift_getWitnessTable();
  ViewTraitCollection.subscript.getter(v14, WitnessTable, v8);
  if ((*(v9 + 48))(v8, 1, a1) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v12, v8, a1);
    if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, v13) & 1) == 0)
    {
      v16(a2, v12, a1);
      v17 = 0;
      return (*(v9 + 56))(a2, v17, 1, a1);
    }

    (*(v9 + 8))(v12, a1);
  }

  v17 = 1;
  return (*(v9 + 56))(a2, v17, 1, a1);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v47);
        outlined init with take of AnyTrackedValue(v47, v48);
        v12 = v49;
        v13 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        (v13[1])(&type metadata for ContentTransition.State, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v48);
      }

      else
      {
        v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(a1);
        v46 = v8;
        if (v25)
        {
          v26 = v25[9];
          v27 = *(v25 + 84);
          v28 = *(v25 + 20);
          v29 = v28 | (v27 << 32);
          v30 = *(v25 + 85);
          v31 = *(v25 + 86);
          v32 = *(v25 + 87);
          v33 = v25[11];
          v34 = *(v25 + 24);
          *a2 = v26;
          *(a2 + 8) = v28;
          *(a2 + 12) = v27;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v26 = static ContentTransition.State.defaultValue;
          v41 = byte_1ED53661C;
          v42 = dword_1ED536618;
          v29 = dword_1ED536618 | (byte_1ED53661C << 32);
          v30 = byte_1ED53661D;
          v31 = byte_1ED53661E;
          v32 = byte_1ED53661F;
          v33 = off_1ED536620;
          v34 = dword_1ED536628;
          *a2 = static ContentTransition.State.defaultValue;
          *(a2 + 12) = v41;
          *(a2 + 8) = v42;
        }

        *(a2 + 13) = v30;
        *(a2 + 14) = v31;
        *(a2 + 15) = v32;
        *(a2 + 16) = v33;
        *(a2 + 24) = v34;
        outlined copy of ContentTransition.Storage(v26, v29, v30);

        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>();
        v49 = v43;
        v50 = &protocol witness table for TrackedValue<A>;
        v44 = swift_allocObject();
        v48[0] = v44;
        *(v44 + 16) = v26;
        *(v44 + 28) = BYTE4(v29);
        *(v44 + 24) = v29;
        *(v44 + 29) = v30;
        *(v44 + 30) = v31;
        *(v44 + 31) = v32;
        *(v44 + 32) = v33;
        *(v44 + 40) = v34;
        outlined copy of ContentTransition.Storage(v26, v29, v30);

        specialized Dictionary.subscript.setter(v48, v46);
      }

      goto LABEL_19;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(a1);
  if (v14)
  {
    v15 = v14[9];
    v16 = *(v14 + 84);
    v17 = *(v14 + 20);
    v18 = v17 | (v16 << 32);
    v19 = *(v14 + 86);
    v20 = *(v14 + 87);
    v21 = v14[11];
    v22 = *(v14 + 24);
    v23 = *(v14 + 85);
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 12) = v16;
    *(a2 + 13) = v23;
    *(a2 + 14) = v19;
    *(a2 + 15) = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    v24 = v15;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v24 = static ContentTransition.State.defaultValue;
    v35 = byte_1ED53661C;
    v36 = dword_1ED536618;
    v18 = dword_1ED536618 | (byte_1ED53661C << 32);
    v37 = byte_1ED53661E;
    v38 = byte_1ED53661F;
    v39 = off_1ED536620;
    v40 = dword_1ED536628;
    *a2 = static ContentTransition.State.defaultValue;
    *(a2 + 12) = v35;
    *(a2 + 8) = v36;
    v23 = byte_1ED53661D;
    *(a2 + 13) = byte_1ED53661D;
    *(a2 + 14) = v37;
    *(a2 + 15) = v38;
    *(a2 + 16) = v39;
    *(a2 + 24) = v40;
  }

  outlined copy of ContentTransition.Storage(v24, v18, v23);

LABEL_19:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t sub_18D2FE608()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>);
    }
  }
}

uint64_t specialized static ViewTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a2;
  v2 = (*a1 | *a2) == 0;
  if (*a1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v3[3] != v4[3])
    {
      return 0;
    }

    do
    {
      if (!v4)
      {
        v2 = 0;
        goto LABEL_17;
      }

      v2 = v3 == v4;
      if (v3 == v4 || ((*(*v3 + 112))(v4) & 1) == 0)
      {

        goto LABEL_17;
      }

      v6 = v3[2];

      v7 = v4[2];

      v3 = v6;
      v4 = v7;
    }

    while (v6);
    if (v7)
    {
      v2 = 0;
LABEL_17:

      return v2;
    }

    return 1;
  }

  return v2;
}

uint64_t Element.isEqual(to:)()
{
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 32) != *(v1 + 32) || *(v0 + 40) != *(v1 + 40))
  {
    return 0;
  }

  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v4 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SizedSpaceElement(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ContentTransition.State@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static ContentTransition.State.defaultValue;
  v2 = BYTE12(static ContentTransition.State.defaultValue);
  v3 = DWORD2(static ContentTransition.State.defaultValue);
  v4 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
  v5 = BYTE14(static ContentTransition.State.defaultValue);
  v6 = HIBYTE(static ContentTransition.State.defaultValue);
  v7 = off_1ED536620;
  v8 = dword_1ED536628;
  *a1 = static ContentTransition.State.defaultValue;
  *(a1 + 12) = v2;
  *(a1 + 8) = v3;
  v9 = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 13) = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 14) = v5;
  *(a1 + 15) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined copy of ContentTransition.Storage(v1, v4, v9);
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ContentTransition.State(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = a1[2];
  v8 = *(a1 + 6);
  v9 = *a2;
  v10 = *(a2 + 6);
  v11 = *(a2 + 2);
  v12 = *(a2 + 14);
  v13 = *(a2 + 15);
  v14 = a2[2];
  v15 = *(a2 + 6);
  v24 = v2;
  v25 = v4;
  v26 = v3;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  return specialized static ContentTransition.State.== infix(_:_:)(&v24, &v17);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3()
{
  result = lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3;
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3;
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3;
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.DisplayP3(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance AdaptiveColorProvider@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*v4 + 120))(&v7, &v6);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance _VariadicView_Children(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v7 = v2[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v9 = ViewList.count.getter(v7, v8);
  static Update.end()();
  result = _MovableLockUnlock(v6);
  if (v4 < 0 || v9 < v4)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v6);
    specialized static Update.begin()();
    v11 = v3[3];
    v12 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v11);
    v13 = ViewList.count.getter(v11, v12);
    static Update.end()();
    result = _MovableLockUnlock(v6);
    if ((v5 & 0x8000000000000000) == 0 && v13 >= v5)
    {
      return v5 - v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v8 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v22 = 2;
  v11 = (*(v10 + 16))(&v22, v9, v10);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if (a1 < 0 || v11 < a1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  _MovableLockLock(v8);
  specialized static Update.begin()();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  v22 = 2;
  v15 = (*(v14 + 16))(&v22, v13, v14);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if (a3 < 0 || v15 < a3)
  {
    goto LABEL_19;
  }

  v16 = a3 - a1;
  if (a2 >= 1)
  {
    if (v16 < 0 || v16 >= a2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v16 <= 0 && v16 > a2)
  {
    return 0;
  }

LABEL_14:
  v18 = __OFADD__(a1, a2);
  v17 = a1 + a2;
  if (v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  _MovableLockLock(v8);
  specialized static Update.begin()();
  v19 = v4[3];
  v20 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v19);
  v22 = 2;
  v21 = (*(v20 + 16))(&v22, v19, v20);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if ((v17 & 0x8000000000000000) == 0 && v21 >= v17)
  {
    return v17;
  }

LABEL_21:
  __break(1u);
  return result;
}

{
  v7 = *(*v3 + 88);
  result = v7();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v7();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v7();
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = *(v7 + 80);
  }

  else
  {
    v9 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v9 > a1 || result < a1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    v11 = *(v7 + 80);
  }

  else
  {
    v11 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v11 > a3 || result < a3)
  {
    goto LABEL_27;
  }

  v12 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 >= 1)
  {
    if (v12 < 0 || v12 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v12 <= 0 && v12 > a2)
  {
    return 0;
  }

LABEL_19:
  v14 = __OFADD__(a1, a2);
  v13 = a1 + a2;
  if (v14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8)
  {
    v15 = *(v7 + 80);
  }

  else
  {
    v15 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v13 >= v15 && result >= v13)
  {
    return v13;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA0C13ContentOffsetO_Tt0B5(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = 0;
  v6 = 0;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v7 = *v3;
  v8 = *v3 + 32;
  v9 = *(*v3 + 16);
  do
  {
    if (v9 == v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v20 = v7[2];
        v19 = v7[3];
        if (v20 >= v19 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
          *v4 = v7;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<ViewContentOffset>, &type metadata for ViewContentOffset, &protocol witness table for ViewContentOffset, type metadata accessor for ViewTraitCollection.AnyTrait);
        v26 = v21;
        v27 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        v24 = v22;
        v25 = a3;
        v7[2] = v20 + 1;
        result = outlined init with take of AnyTrackedValue(&v24, &v7[5 * v20 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *v4 = v7;
      goto LABEL_10;
    }

    if (v6 >= v7[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v6;
    outlined init with copy of AnyTrackedValue(v8 + v5 * 8, &v24);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v5 += 5;
  }

  while (v12 != &type metadata for ViewContentOffset);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    *v4 = result;
  }

  if (v6 - 1 < v7[2])
  {
    v14 = v7[v5 + 2];
    v15 = v7[v5 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v7[v5 - 1], v14);
    v16 = *(v15 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for ViewContentOffset?, &type metadata for ViewContentOffset, MEMORY[0x1E69E6720]);
    result = v16(v28, v17, v14, v15);
LABEL_13:
    *v4 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18D2FF230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance _VariadicView_Children@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v7 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v8 = v2[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = ViewList.count.getter(v8, v9);
  static Update.end()();
  result = _MovableLockUnlock(v7);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= v6)
  {
    result = outlined init with copy of _VariadicView_Children(v3, (a2 + 2));
    *a2 = v5;
    a2[1] = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitVector(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _VariadicView_Children(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BufferedElement.isEqual(to:)(uint64_t a1)
{
  if (*a1 == _TtC7SwiftUIP33_1CC2FE016A82CF91549A64E942CE8ED415BufferedElement && (*(v1 + 32) == *(a1 + 32) ? (v2 = *(v1 + 40) == *(a1 + 40)) : (v2 = 0), v2))
  {
    swift_beginAccess();
    v7[0] = *(v1 + 48);
    v7[1] = *(v1 + 56);
    swift_beginAccess();
    v6[0] = *(a1 + 48);
    v6[1] = *(a1 + 56);
    v3 = specialized static ViewTransform.UnsafeBuffer.== infix(_:_:)(v7, v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t specialized static ViewTransform.UnsafeBuffer.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 12);
  if (v2 != *(a2 + 3))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2;
  v6 = *result;
  while (1)
  {
    if (!(v2 | v4))
    {
      return 1;
    }

    if (!v6)
    {
      break;
    }

    v7 = (v6 + v4);
    v8 = v2 - 1;
    if (v2 == 1)
    {
      if (!(v3 | 1))
      {
        return 1;
      }

      if (!v5)
      {
        goto LABEL_18;
      }

      v4 = 0;
      v9 = v5 + v3;
      v3 = 0;
    }

    else
    {
      if (!(v2 | v3))
      {
        return 1;
      }

      if (!v5)
      {
        goto LABEL_18;
      }

      v4 += *(v7 + 2);
      v9 = v5 + v3;
      v3 += *(v9 + 8);
    }

    v10 = *v7;
    if (*v9 == *v7)
    {
      v11 = v9;
      v12 = v7;
      result = (*(v10 + 128))(&v12, &v11);
      v2 = v8;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.equal(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v10 = *v9;
  v19 = *v11;
  v12 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v13 = *(v3 + 16);
  v13(v8, v12, v2);
  v19 = v10;
  v14 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v13(v5, v14, v2);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v16(v8, v2);
  return v15 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewTransform.ScrollGeometryItem(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 112);
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v11[6] = *(a2 + 96);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = *(a2 + 112);
  return specialized static ScrollGeometry.== infix(_:_:)(v12, v11) & ~(v5 ^ v9) & 1;
}

BOOL specialized static ScrollGeometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return CGRectEqualToRect(*(a1 + 80), *(a2 + 80));
  }

  return v2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<RoundedRectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<RoundedRectangle, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV_AA15ForegroundStyleVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v8;
  v9 = *(a2 + 48);
  v11 = *a2;
  v10 = *(a2 + 16);
  v31 = *(a2 + 32);
  v28[2] = *(a2 + 32);
  v28[3] = v9;
  v28[4] = *(a2 + 64);
  v29 = *(a2 + 80);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA16RoundedRectangleV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>.Init, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<RoundedRectangle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>);
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = a1;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>.Init, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleVG_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v13;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v14 = *(a2 + 16);
    v59 = *a2;
    v60 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v59);
    v16 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v16;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v17 = *(a2 + 16);
    v59 = *a2;
    v60 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v59);
    v51 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v47 = v21;
    v48 = *(a2 + 60);
    v49 = *(a2 + 68);
    v50 = *(a2 + 76);
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v19);
    LOBYTE(v62) = v21;
    WORD1(v62) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>();
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v22);
    LOBYTE(v62) = v47;
    WORD1(v62) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v59, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>);
    LOBYTE(v58[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v51;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = v24;
    v63 = v25;
    v64 = *(a2 + 80);
    v59 = *a2;
    v60 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v59);
    v28 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v28;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = v8;
    *(v32 + 24) = 0;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    *&v59 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v59 = __PAIR64__(a3, a1);
        *(&v59 + 1) = __PAIR64__(v30, v27);
        LODWORD(v60) = v31;
        *(&v60 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>();
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v59 = __PAIR64__(v40, v31);
    *(&v59 + 1) = __PAIR64__(a1, v41);
    LODWORD(v60) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>();
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v59) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v59);
  result = AGWeakAttributeGetAttribute();
  if (result != v52)
  {
    v58[0] = v9;
    v46 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
    v46(&v59, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    v0 = type metadata accessor for ShapeStyledDisplayList();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    v0 = type metadata accessor for ShapeStyledResponderData();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    v0 = type metadata accessor for ShapeStyledResponderFilter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>);
    }
  }
}

uint64_t ShapeStyle.blendMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  v11 = *a1;
  (*(v7 + 32))(a3, v10, a2);
  result = type metadata accessor for _BlendModeShapeStyle();
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t BackgroundStyle._apply(to:)(uint64_t a1)
{
  v3 = *(a1 + 107);
  if ((v3 & 4) == 0)
  {
    v4 = *(a1 + 48);
    if (*(a1 + 56))
    {

      v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v4);

      if (!v5)
      {
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 107) = v3 | 4;
      (*(*v5 + 80))(a1);

      if ((*(a1 + 107) & 4) != 0)
      {
        *(a1 + 107) &= ~4u;
      }

      return result;
    }

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*(a1 + 48));
    if (v6)
    {
      v5 = v6[9];

      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:
  v8 = *a1;
  v9 = *(a1 + 24);
  if (v9 <= 2)
  {
    if (*(a1 + 24))
    {
      v10 = v9 == 1;
    }

    else
    {
      v10 = 0;
    }

    if (!v10 || *a1 != 1)
    {
      goto LABEL_31;
    }

    return HierarchicalShapeStyle._apply(to:)(a1, 3u);
  }

  if (v9 == 3)
  {
    goto LABEL_29;
  }

  if (v9 != 4)
  {
    if (!(*(a1 + 8) | *(a1 + 16) | v8))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      v17 = 4;
      goto LABEL_30;
    }

LABEL_29:
    type metadata accessor for ShapeStyleBox<BackgroundStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for ShapeStyleBox);
    v16 = swift_allocObject();
    outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v16;
    v17 = 2;
LABEL_30:
    *(a1 + 40) = v17;
    goto LABEL_31;
  }

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v1 = (a1 + 48);
  if (!v12)
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*(a1 + 48));
    if (v32)
    {
      v34 = v32[9];
      v33 = v32[10];
      goto LABEL_54;
    }

    if (one-time initialization token for defaultValue != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v13, v48);

  v14 = __OFADD__(*(&v48[0] + 1), v8);
  v8 += *(&v48[0] + 1);
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  do
  {
    __break(1u);
LABEL_59:
    swift_once();
LABEL_53:
    v33 = *(&static BackgroundInfoKey.defaultValue + 1);
    v34 = static BackgroundInfoKey.defaultValue;
LABEL_54:
    *&v48[0] = v34;
    v14 = __OFADD__(v33, v8);
    v8 += v33;
    if (v14)
    {
      goto LABEL_56;
    }

LABEL_25:
    *(&v48[0] + 1) = v8;
    v15 = *&v48[0];
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v1, v15, v8);

    if (v12)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v13, *v1);
    }

LABEL_31:
    v48[0] = *(a1 + 48);
    v12 = v48;
    result = EnvironmentValues.backgroundMaterialProvider.getter();
    if (result)
    {
      v12 = result;
      v18 = (*(*result + 96))(a1);

      if (v18)
      {
        return result;
      }
    }

    v13 = *a1;
    v19 = *(a1 + 24);
    if (!*(a1 + 24) || v19 == 2)
    {
      v31 = *(a1 + 56);
      *&v48[0] = *(a1 + 48);
      *(&v48[0] + 1) = v31;

      BackgroundStyle.base(level:env:)(v13, v48, v55);

      (*(*v55[0] + 80))(a1);
    }

    if (v19 != 1)
    {
      return result;
    }

    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    if (v20 == v21)
    {
      return result;
    }

    if (v21 < v20)
    {
      goto LABEL_57;
    }
  }

  while (v20 >= v21);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v41 = *(a1 + 88);
  v42 = *(a1 + 72);
  v39 = *(a1 + 105);
  v40 = *(a1 + 104);
  v35 = a1;
  v37 = *(a1 + 107);
  v38 = *(a1 + 106);
  v43 = *(a1 + 56);
  v25 = *(a1 + 56);
  v36 = v21 - 1;
  v26 = *(a1 + 8);
  while (1)
  {
    v55[0] = v13;
    v55[1] = v20;
    v27 = v20;
    v28 = v21;
    v55[2] = v21;
    LOBYTE(v56) = 1;
    *&v57 = v22;
    BYTE8(v57) = v23;
    *v58 = v24;
    *&v58[8] = v43;
    *&v58[24] = v42;
    *&v58[40] = v41;
    v58[56] = v40;
    v58[57] = v39;
    v58[58] = v38;
    v58[59] = v37;
    v53 = *&v58[16];
    v54[0] = *&v58[32];
    *(v54 + 12) = *&v58[44];
    *&v50[24] = v56;
    v51 = v57;
    v52 = *v58;
    *v50 = v13;
    *&v50[8] = xmmword_18DD85550;
    v50[24] = 1;
    *&v44[0] = v24;
    *(&v44[0] + 1) = v25;
    outlined init with copy of _ShapeStyle_Shape(v55, v48);

    BackgroundStyle.base(level:env:)(v26, v44, v48);

    (*(**&v48[0] + 80))(v50);

    v29 = MEMORY[0x1E69E7CC0];
    if (BYTE8(v51) == 1)
    {
    }

    v49 = v29;
    LOBYTE(v44[0]) = v13;
    _ShapeStyle_Pack.subscript.getter(v44, 0, v48);

    v47 = v13;
    v30 = MEMORY[0x1E69E7CC0];
    if (v23 == 1)
    {
      v30 = v22;
      v22 = 0;
      v23 = 5;
    }

    v46 = v30;
    _ShapeStyle_Pack.subscript.setter(v48, &v47, v26);
    v44[4] = v53;
    v45[0] = v54[0];
    *(v45 + 12) = *(v54 + 12);
    v44[0] = *v50;
    v44[1] = *&v50[16];
    v44[2] = v51;
    v44[3] = v52;
    outlined destroy of _ShapeStyle_Shape(v44);
    result = outlined consume of _ShapeStyle_Shape.Result(v22, v23);
    v22 = v46;
    if (v36 == v26)
    {
      break;
    }

    ++v26;
    v23 = 1;
    v20 = v27;
    v21 = v28;
  }

  *(v35 + 32) = v46;
  *(v35 + 40) = 1;
  return result;
}

void type metadata accessor for _SetStorage<AnyKeyPath>()
{
  if (!lazy cache variable for type metadata for _SetStorage<AnyKeyPath>)
  {
    type metadata accessor for AnyKeyPath();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<AnyKeyPath>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundStyleKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BackgroundStyleV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundStyleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundStyleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BackgroundStyleV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BackgroundStyleV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

float *BackgroundStyle.base(level:env:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float **a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  if (!v5)
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a2);
    if (v9)
    {
      v10 = (v9 + 9);
      v7 = v9 + 10;
    }

    else
    {
      v10 = &static BackgroundInfoKey.defaultValue;
      v7 = &static BackgroundInfoKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_7;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v6, &v32);

  if (__OFADD__(v33, a1))
  {
    do
    {
      __break(1u);
LABEL_13:
      v23 = v7;
      swift_once();
      v7 = v23;
      v10 = &static BackgroundInfoKey.defaultValue;
LABEL_7:
      v11 = *v7;
      v12 = *v10;
      v32 = v12;
      v13 = __OFADD__(v11, a1);
      v7 = (v11 + a1);
    }

    while (v13);
    v30 = v12;
    v31 = v7;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v6);
    if (v14)
    {
      v8 = *(v14 + 72);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v30 = v32;
    v31 = (v33 + a1);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v6, &v29);

    v8 = v29;
  }

  v28 = v8;
  v26 = v6;
  v27 = v5;
  EnvironmentValues.colorScheme.getter(&v25);
  v24 = v25;
  v15 = specialized static Color.systemBackgroundColor(info:context:scheme:)(&v30, &v28, &v24);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  type metadata accessor for ShapeStyleBox<BackgroundStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<Color.Resolved>, &type metadata for Color.Resolved, &protocol witness table for Color.Resolved, type metadata accessor for ShapeStyleBox);
  result = swift_allocObject();
  result[4] = v15;
  *(result + 5) = v17;
  *(result + 6) = v19;
  *(result + 7) = v21;
  *a3 = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
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
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for BackgroundContext, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundContextKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017BackgroundContextV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundContextKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundContextKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017BackgroundContextV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017BackgroundContextV033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
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

void *assignWithCopy for _BackgroundStyleModifier.BackgroundInfo.Value(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 + 55;
  v8 = a1 + v6 + 55;
  v9 = ~v6 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & v9;
  v11 = (a2 + v7) & v9;
  (*(v4 + 24))(v8 & v9, v11);
  v12 = *(v5 + 40) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];
  v13[2] = v14[2];
  v13[3] = v14[3];
  return a1;
}

void type metadata accessor for ShapeStyleBox<BackgroundStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

float specialized static Color.systemBackgroundColor(info:context:scheme:)(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v5 = a1[1];
  if (*a3)
  {
    v6 = *a1 + v5;
    if (!__OFADD__(*a1, v5))
    {
      if (v6 > 2)
      {
        return 0.042311;
      }

      else
      {
        return flt_18DDE6C98[v6];
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v4 = *a2;
  type metadata accessor for ShapeStyleBox<BackgroundStyle>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
  v10[0] = v8;
  v10[1] = &protocol witness table for InterfaceIdiomBox<A>;
  Solarium.EnablementIdiom.init(_:)(v10, &v11);
  v3 = v11;
  if (one-time initialization token for cachedValues != -1)
  {
LABEL_24:
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v3, v10);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  if (LOBYTE(v10[0]) != 2)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for v7_1 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = static Semantics.v7_1;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C != 1)
    {
      break;
    }

    if (dyld_program_sdk_at_least())
    {
      goto LABEL_15;
    }

LABEL_19:
    if (!__OFADD__(v5, v4))
    {
      result = 0.88792;
      if (((v5 + v4) & 1) == 0)
      {
        return 1.0;
      }

      return result;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  if (static Semantics.forced < v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA028UnifiedSystemBackgroundColorcD033_C7D4771CFE453D905E7BCD5A907D32EBLLV_Ttg5() & 1) == 0)
  {
    goto LABEL_19;
  }

  result = 0.93011;
  if ((v5 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t Color.Resolved._apply(to:)(uint64_t result, float a2, float a3, float a4, float a5)
{
  v13 = *(result + 24);
  if (v13 <= 2)
  {
    v56 = v12;
    v57 = v11;
    v58 = v10;
    v59 = v9;
    v60 = v8;
    v61 = v7;
    v62 = v5;
    v63 = v6;
    v14 = a5;
    v18 = result;
    v19 = *result;
    if (v13)
    {
      if (v13 == 1)
      {
        v20 = *(result + 8);
        if (v20 != *(result + 16))
        {
          v21 = *(result + 48);
          v22 = *(result + 80);
          v52 = *(result + 64);
          v53[0] = v22;
          *(v53 + 12) = *(result + 92);
          v23 = *(result + 16);
          v49[0] = *result;
          v49[1] = v23;
          v24 = *(result + 48);
          v26 = *result;
          v25 = *(result + 16);
          v50 = *(result + 32);
          v51 = v24;
          v27 = *(result + 80);
          v46 = v52;
          *v47 = v27;
          *&v47[12] = *(result + 92);
          v42 = v26;
          v43 = v25;
          v44 = v50;
          v45 = v21;
          outlined init with copy of _ShapeStyle_Shape(v49, v54);
          v28 = _ShapeStyle_Shape.opacity(at:)(v20);
          v54[4] = v46;
          v55[0] = *v47;
          *(v55 + 12) = *&v47[12];
          v54[0] = v42;
          v54[1] = v43;
          v54[2] = v44;
          v54[3] = v45;
          outlined destroy of _ShapeStyle_Shape(v54);
          *&v42 = __PAIR64__(LODWORD(a3), LODWORD(a2));
          *(&v42 + 2) = a4;
          *(&v42 + 3) = v28 * v14;
          LODWORD(v43) = 2143289344;
          v47[5] = 0;
          *&v47[8] = 1065353216;
          *&v47[16] = 0;
          v47[24] = -1;
          v29 = MEMORY[0x1E69E7CC0];
          v48 = MEMORY[0x1E69E7CC0];
          v41 = v19;
          if (*(v18 + 40) == 1)
          {
            v29 = *(v18 + 32);

            outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
            *(v18 + 32) = 0;
            *(v18 + 40) = 5;
          }

          _ShapeStyle_Pack.subscript.setter(&v42, &v41, v20);
          v31 = *(v18 + 32);
          v32 = *(v18 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          *(v18 + 32) = v29;
          *(v18 + 40) = 1;
        }
      }

      else
      {
        if (v19 >= 1)
        {
          v37 = *(result + 80);
          v46 = *(result + 64);
          *v47 = v37;
          *&v47[12] = *(result + 92);
          v38 = *(result + 16);
          v42 = *result;
          v43 = v38;
          v39 = *(result + 48);
          v44 = *(result + 32);
          v45 = v39;
          v14 = _ShapeStyle_Shape.opacity(at:)(v19) * a5;
        }

        type metadata accessor for ColorBox<ResolvedColorProvider>();
        v40 = swift_allocObject();
        *(v40 + 16) = a2;
        *(v40 + 20) = a3;
        *(v40 + 24) = a4;
        *(v40 + 28) = v14;
        *(v40 + 32) = 2143289344;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v18 + 32), *(v18 + 40));
        *(v18 + 32) = v40;
        *(v18 + 40) = 3;
      }
    }

    else
    {
      if (v19 >= 1)
      {
        v33 = *(result + 80);
        v46 = *(result + 64);
        *v47 = v33;
        *&v47[12] = *(result + 92);
        v34 = *(result + 16);
        v42 = *result;
        v43 = v34;
        v35 = *(result + 48);
        v44 = *(result + 32);
        v45 = v35;
        v14 = _ShapeStyle_Shape.opacity(at:)(v19) * a5;
      }

      type metadata accessor for ColorBox<ResolvedColorProvider>();
      v36 = swift_allocObject();
      *(v36 + 16) = a2;
      *(v36 + 20) = a3;
      *(v36 + 24) = a4;
      *(v36 + 28) = v14;
      *(v36 + 32) = 2143289344;
      result = outlined consume of _ShapeStyle_Shape.Result(*(v18 + 32), *(v18 + 40));
      *(v18 + 32) = v36;
      *(v18 + 40) = 0;
    }
  }

  return result;
}

Swift::Float __swiftcall _ShapeStyle_Shape.opacity(at:)(Swift::Int at)
{
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (v3)
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v7 = v6;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v4);
    if (v8)
    {
      v5 = v8[9];
      v7 = v8[10];
    }

    else
    {
      v7 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v5 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v12[0] = v4;
  v12[1] = v3;
  v9 = v7[2];

  v10 = v9(at, v12, v5, v7);

  return v10;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Circle@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA6CircleVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Circle, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Circle, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Circle, ForegroundStyle>>);
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA6CircleVAA010ForegroundS0VG_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v13;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v14 = *(a2 + 16);
    v59 = *a2;
    v60 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v59);
    v16 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v16;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v17 = *(a2 + 16);
    v59 = *a2;
    v60 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v59);
    v51 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v47 = v21;
    v48 = *(a2 + 60);
    v49 = *(a2 + 68);
    v50 = *(a2 + 76);
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v19);
    LOBYTE(v62) = v21;
    WORD1(v62) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v22);
    LOBYTE(v62) = v47;
    WORD1(v62) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v59, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>>);
    LOBYTE(v58[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v51;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = v24;
    v63 = v25;
    v64 = *(a2 + 80);
    v59 = *a2;
    v60 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v59);
    v28 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v28;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Circle, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Circle, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    *&v59 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v59 = __PAIR64__(a3, a1);
        *(&v59 + 1) = __PAIR64__(v30, v27);
        LODWORD(v60) = v31;
        *(&v60 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Circle, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Circle, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Circle, ForegroundStyle>>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v59 = __PAIR64__(v40, v31);
    *(&v59 + 1) = __PAIR64__(a1, v41);
    LODWORD(v60) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Circle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Circle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Circle, ForegroundStyle>>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v59) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v59);
  result = AGWeakAttributeGetAttribute();
  if (result != v52)
  {
    v58[0] = v9;
    v46 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
    v46(&v59, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t static Transaction.current.getter()
{
  result = _threadTransactionData();
  if (result)
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>, &type metadata for Transaction.ScrollTargetAnchorKey, &protocol witness table for Transaction.ScrollTargetAnchorKey, type metadata accessor for TransactionPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V018ScrollTargetAnchorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v8, v15);
  if (!result)
  {
    goto LABEL_10;
  }

  if (a4)
  {
    if (result[11])
    {
      return result;
    }

LABEL_10:
    v13 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>>();
    v14 = swift_allocObject();
    *(v14 + 72) = *&a2;
    *(v14 + 80) = *&a3;
    *(v14 + 88) = a4 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v13);
  }

  if (result[11])
  {
    goto LABEL_10;
  }

  if (result[9] != *&a2 || result[10] != *&a3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t Transaction.scrollTargetAnchor.setter(uint64_t a1, uint64_t a2, char a3)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v3, a1, a2, a3 & 1);
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>, &type metadata for Transaction.ScrollTargetAnchorKey, &protocol witness table for Transaction.ScrollTargetAnchorKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollTargetAnchorKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollTargetAnchorKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollTargetAnchorKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollTargetAnchorKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>, &type metadata for Transaction.ScrollTargetAnchorKey, &protocol witness table for Transaction.ScrollTargetAnchorKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollTargetAnchorKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V018ScrollTargetAnchorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V018ScrollTargetAnchorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>, &type metadata for Transaction.ScrollTargetAnchorKey, &protocol witness table for Transaction.ScrollTargetAnchorKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t PreferenceValueAttribute.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if ((*(v2 + 8) & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 56))(v11, 1, 1, AssociatedTypeWitness, v9);
    (*(v4 + 16))(v5, v4);
    result = (*(v15 + 48))(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 16))(v11, WeakValue, AssociatedTypeWitness);
    (*(v13 + 56))(v11, 0, 1, AssociatedTypeWitness);
    return (*(v13 + 32))(a2, v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ScrollableContainer.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 24))(v24, a2, a4);
  v10 = v25;
  outlined destroy of Scrollable?(v24);
  if (v10 && (v11 = (*(a4 + 32))(a1, a3, a5, a2, a4)) != 0)
  {
    v13 = v11;
    v14 = ScrollableContainer.setParentTarget(_:)(v11, v12, a2, a4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v13);
    return v14 & 1;
  }

  else
  {
    v15 = (*(a4 + 16))(a2, a4);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    result = v16 + 32;
    v18 = -*(v16 + 16);
    v19 = -1;
    while (1)
    {
      if (v18 + v19 == -1)
      {

        v14 = 0;
        return v14 & 1;
      }

      if (++v19 >= *(v16 + 16))
      {
        break;
      }

      v20 = result + 40;
      outlined init with copy of AnyTrackedValue(result, v24);
      v21 = v25;
      v22 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v23 = (*(v22 + 8))(a1, a3, a5, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = v20;
      if (v23)
      {

        v14 = 1;
        return v14 & 1;
      }
    }

    __break(1u);
  }

  return result;
}

double protocol witness for ScrollableContainer.parent.getter in conformance DynamicLayoutScrollable@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t outlined destroy of Scrollable?(uint64_t a1)
{
  type metadata accessor for Scrollable?(0, &lazy cache variable for type metadata for Scrollable?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*DynamicLayoutScrollable.makeTarget<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  result = AGGraphGetWeakValue();
  if (result)
  {
    outlined init with copy of AnyTrackedValue(result, v23);
    v9 = v24;
    v10 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v22 = 2;
    v11 = (*(v10 + 80))(a1, &v22, a2, a3, v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (v13)
    {
      return 0;
    }

    else
    {
      if (_threadTransactionData())
      {
        type metadata accessor for PropertyList.Element();
        swift_unknownObjectRetain();
        v14 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v14 = 0;
      }

      v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v14);
      v17 = v16;
      v19 = v18;

      v20 = swift_allocObject();
      v21 = *(v4 + 16);
      *(v20 + 16) = *v4;
      *(v20 + 32) = v21;
      *(v20 + 48) = *(v4 + 32);
      *(v20 + 64) = *(v4 + 48);
      *(v20 + 72) = v11;
      *(v20 + 80) = v15;
      *(v20 + 88) = v17;
      *(v20 + 96) = v19 & 1;
      return closure #1 in DynamicLayoutScrollable.makeTarget(at:)partial apply;
    }
  }

  return result;
}

uint64_t _ViewList_Group.firstOffset<A>(forID:style:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v5 = 0;
  v6 = *a2;
  v7 = *v4;
  v8 = *(*v4 + 16);
  v32 = *v4 + 32;
  while (1)
  {
    if (v5 == v8)
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = v8;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_23;
      }

      v14 = v5 + 1;
      *&v49 = v5;
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v32 + 48 * v5, &v49 + 8, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v10 = v49;
      v12 = v50;
      v13 = v51;
      v11 = v14;
      v9 = v52;
    }

    v53[0] = v10;
    v53[1] = v12;
    v53[2] = v13;
    v54 = v9;
    if (!v13)
    {
      return 0;
    }

    v33 = v10;
    v31 = v11;
    outlined init with take of AnyTrackedValue((v53 + 8), v46);
    outlined init with take of AnyTrackedValue(v46, v47);
    v48 = v9;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v47, &v49, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    outlined init with take of AnyTrackedValue(&v49, v43);
    v15 = v44;
    v16 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    *&v49 = v6;
    result = (*(v16 + 80))(v28, &v49, a3, a4, v15, v16);
    if ((v17 & 1) == 0)
    {
      v18 = result;
      v19 = 0;
      if (!v8)
      {
LABEL_10:
        v20 = 0;
        v21 = 0uLL;
        v19 = v8;
        v22 = 0uLL;
        v23 = 0uLL;
        goto LABEL_13;
      }

      while (v19 < *(v7 + 16))
      {
        *&v40[0] = v19;
        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v32 + 48 * v19, v40 + 8, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v21 = v40[0];
        v22 = v40[1];
        v23 = v41;
        ++v19;
        v20 = v42;
LABEL_13:
        v49 = v21;
        v50 = v22;
        v51 = v23;
        v52 = v20;
        if (!v23)
        {
          goto LABEL_2;
        }

        v34 = v21;
        outlined init with take of AnyTrackedValue((&v49 + 8), v39);
        outlined init with take of AnyTrackedValue(v39, v40);
        DWORD2(v41) = v20;
        if (vmovn_s64(vceqq_s64(v34, v33)).u8[0])
        {
          outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v40, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v47, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          __swift_destroy_boxed_opaque_existential_1(v43);
          return v18;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v40, v35, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        outlined init with take of AnyTrackedValue(v35, v36);
        v24 = v37;
        v25 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        *&v35[0] = v6;
        v26 = (*(v25 + 16))(v35, v24, v25);
        result = outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v40, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v27 = __OFADD__(v18, v26);
        v18 += v26;
        if (v27)
        {
          __break(1u);
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_1(v36);
        if (v19 == v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

LABEL_2:
    outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v47, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    result = __swift_destroy_boxed_opaque_existential_1(v43);
    v5 = v31;
  }
}

uint64_t ModifiedViewList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  v12 = v8;
  return (*(v10 + 80))(a1, &v12, a3, a4, v9, v10);
}

uint64_t DynamicViewList.WrappedList.firstOffset<A>(forID:style:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v37 = a5;
  v7 = *(a3 + 24);
  v35[1] = *(a3 + 16);
  v35[2] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v35 - v22;
  v36 = *v38;
  v25 = *(v24 + 16);
  v38 = a1;
  v25(v15, a1, a4, v21);
  v26 = swift_dynamicCast();
  v27 = *(v16 + 56);
  if (v26)
  {
    v27(v12, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v23, v12, AssociatedTypeWitness);
    v28 = v39;
    (*(v16 + 16))(v19, v39[5] + *(*v39[5] + 136), AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *(v16 + 8);
    v30(v19, AssociatedTypeWitness);
    v30(v23, AssociatedTypeWitness);
    v31 = v28;
    if (v29)
    {
      return 0;
    }
  }

  else
  {
    v27(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    v31 = v39;
  }

  v33 = v31[3];
  v34 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v33);
  v40 = v36;
  return (*(v34 + 80))(v38, &v40, a4, v37, v33, v34);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollTargetAnchorKey>, &type metadata for Transaction.ScrollTargetAnchorKey, &protocol witness table for Transaction.ScrollTargetAnchorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V018ScrollTargetAnchorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return result[9];
  }

  return result;
}

uint64_t ScrollableContainer.setParentTarget(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v10, a3, a4);
  if (v11)
  {
    outlined init with take of AnyTrackedValue(&v10, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 16))(a1, a2, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    outlined destroy of Scrollable?(&v10);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t ScrollTargetConfiguration.init(transaction:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((Transaction.isAnimated.getter(a1) & 1) != 0 && (v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1)) != 0)
  {
    v5 = v4[9];
  }

  else
  {
    v5 = 0;
  }

  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(a1) & 1;
  v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V023ScrollPreservesVelocityF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(a1);

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7 & 1;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE34ScrollToRequiresCompleteVisibility33_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(a1, v5);
  if (v3)
  {
    return *(v3 + 72);
  }

  else
  {
    return 1;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE34ScrollToRequiresCompleteVisibility33_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE34ScrollToRequiresCompleteVisibility33_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V023ScrollPreservesVelocityF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V023ScrollPreservesVelocityV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V023ScrollPreservesVelocityV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V023ScrollPreservesVelocityV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for kitBaselineOffset()
{
  result = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7A070);
  static NSAttributedStringKey.kitBaselineOffset = result;
  return result;
}

void *ContentTransition.NamedTransition.makeRBTransition()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  v4 = *(v0 + 11);
  v5 = *(v0 + 12);
  v6 = [objc_allocWithZone(MEMORY[0x1E69C7118]) init];
  v7 = v6;
  v8 = (v1 >> 38) & 3;
  if (!v8)
  {
    if ((v1 & 1) == 0)
    {
      v13 = 1;
LABEL_29:
      [v6 setMethod_];
      v14 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v14 setType_];
      [v14 setDuration_];
      [v7 addEffect_];
LABEL_54:

      return v7;
    }

    if (v5 == 2)
    {
      [v6 setMethod_];
      v36 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v36 setType_];
      [v36 setEvents_];
      [v36 setInsertAnimationIndex_];
      [v36 setRemoveAnimationIndex_];
      [v7 addEffect_];

      v37 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v37 setType_];
      LODWORD(v38) = 1060320051;
      [v37 setArgumentValue:0 atIndex:v38];
      [v37 setEvents_];
      [v37 setInsertAnimationIndex_];
      [v37 setRemoveAnimationIndex_];
      [v7 addEffect_];

      v39 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v39 setType_];
      [v39 setArgumentValue:0 atIndex:0.0];
      LODWORD(v40) = 0.25;
      [v39 setArgumentValue:1 atIndex:v40];
      [v39 setEvents_];
      [v39 setInsertAnimationIndex_];
      [v39 setRemoveAnimationIndex_];
      [v7 addEffect_];

      v14 = [objc_allocWithZone(MEMORY[0x1E69C7098]) &off_1E7246B78];
      [v14 addSpringDuration:0.5 mass:1.0 stiffness:331.0 damping:36.4 initialVelocity:0.0];
      [v14 addSpringDuration:0.8 mass:2.0 stiffness:300.0 damping:50.0 initialVelocity:0.0];
LABEL_53:
      [v7 setAnimation_];
      goto LABEL_54;
    }

    if (v5 == 1)
    {
      [v6 setMethod_];
      [v7 setMaxChanges_];
      if (v4 == 2 || (v4 & 1) == 0)
      {
        v11 = 7;
        v12 = 11;
      }

      else
      {
        v11 = 8;
        v12 = 12;
      }

      v41 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v41 setType_];
      [v41 setEvents_];
      [v41 setFlags_];
      LODWORD(v42) = 1025758986;
      [v41 setBeginTime_];
      LODWORD(v43) = 1.0;
      [v41 setDuration_];
      [v7 addEffect_];

      v44 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v44 setType_];
      [v44 setEvents_];
      [v44 setBeginTime_];
      LODWORD(v45) = 1.0;
      [v44 setDuration_];
      [v7 addEffect_];

      v46 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v46 setType_];
      [v46 setEvents_];
      LODWORD(v47) = 1051260355;
      [v46 setBeginTime_];
      LODWORD(v48) = 1059816734;
      [v46 setDuration_];
      [v7 addEffect_];

      v49 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v49 setType_];
      [v49 setEvents_];
      [v49 setBeginTime_];
      LODWORD(v50) = 1.0;
      [v49 setDuration_];
      [v7 addEffect_];

      v51 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v51 setType_];
      [v51 setArgumentValue:0 atIndex:0.0];
      LODWORD(v52) = 0.25;
      [v51 setArgumentValue:1 atIndex:v52];
      [v51 setEvents_];
      LODWORD(v53) = 1051260355;
      [v51 setBeginTime_];
      LODWORD(v54) = 1059816734;
      [v51 setDuration_];
      [v7 addEffect_];

      v55 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v55 setType_];
      LODWORD(v56) = 0.5;
      [v55 setArgumentValue:0 atIndex:v56];
      [v55 setEvents_];
      [v55 setBeginTime_];
      LODWORD(v57) = 1.0;
      [v55 setDuration_];
      [v7 addEffect_];

      v14 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v14 setType_];
      LODWORD(v58) = 1062836634;
      [v14 setArgumentValue:0 atIndex:v58];
      [v14 setEvents_];
      LODWORD(v59) = 1051260355;
      [v14 setBeginTime_];
      LODWORD(v60) = 1059816734;
      [v14 setDuration_];
      [v7 addEffect_];
      goto LABEL_54;
    }

LABEL_24:
    v13 = 6;
    goto LABEL_29;
  }

  v9 = v3 | (v2 << 16);
  if (v8 == 1)
  {
    [v6 setMethod_];
    v61 = v1 & 0xFF0000000000;
    if ((v1 & 0xFF0000000000) != 0x20000000000 && (v1 & 0x10000000000) != 0)
    {
      if ((v1 & 0x1000000000000) != 0)
      {
        v10 = 14;
      }

      else
      {
        v10 = 13;
      }

LABEL_33:
      v15 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v15 setType_];
      [v15 setEvents_];
      *&v16 = HIBYTE(v1) * 0.0083333;
      [v15 setBeginTime_];
      LODWORD(v17) = 1061997773;
      [v15 setDuration_];
      [v7 addEffect_];

      v18 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
      [v18 setType_];
      [v18 setEvents_];
      [v18 setAnimationIndex_];
      [v7 addEffect_];

      v19 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      if ((v1 & 0x2000000000000) != 0)
      {
        [v19 setType_];
        [v19 setArgumentValue:0 atIndex:0.0];
        LODWORD(v21) = vcvts_n_f32_u32(BYTE1(v9), 7uLL);
        [v19 setArgumentValue:1 atIndex:{v21, BYTE6(v1)}];
      }

      else
      {
        [v19 setType_];
        *&v20 = vcvts_n_f32_u32(BYTE1(v9), 2uLL);
        [v19 setArgumentValue:0 atIndex:{v20, BYTE6(v1)}];
      }

      [v19 setEvents_];
      [v19 setAnimationIndex_];
      [v7 &selRef:v19 :? formatStringFromComponents:? + 4];

      v22 = v9 << 8 >> 24;
      v23 = vcvts_n_f32_s32(v22, 5uLL);
      v24 = v22 * 0.03125;
      if (v1)
      {
        v24 = v22 * -0.03125;
      }

      if ((v1 & 0x100000000) != 0)
      {
        v25 = 3;
      }

      else
      {
        v25 = 1;
      }

      if ((v1 & 0x100000000) != 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v24;
      }

      v27 = v1 >> 40;
      v28 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v28 setType_];
      v29 = 0.0;
      if (v27)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v26;
      }

      if (v27)
      {
        v31 = v26;
      }

      else
      {
        v31 = 0.0;
      }

      if (v61 != 0x20000000000)
      {
        v26 = v30;
        *&v29 = v31;
      }

      [v28 &selRef:0 setStrokedCircleAtPoint:v29 radius:? lineWidth:? + 2];
      *&v32 = v26;
      [v28 &selRef:1 setStrokedCircleAtPoint:v32 radius:? lineWidth:? + 2];
      [v28 setEvents_];
      [v28 setFlags_];
      [v28 &selRef_string + 4];
      [v7 addEffect_];

      v33 = [objc_allocWithZone(MEMORY[0x1E69C7120]) &off_1E7246B78];
      [v33 setType_];
      *&v34 = vcvts_n_f32_u32(v9, 7uLL);
      [v33 &selRef:0 setStrokedCircleAtPoint:v34 radius:? lineWidth:? + 2];
      [v33 setEvents_];
      [v33 &selRef_string + 4];
      [v7 addEffect_];

      v14 = [objc_allocWithZone(MEMORY[0x1E69C7098]) &off_1E7246B78];
      [v14 addSpringDuration:0.5 mass:1.0 stiffness:344.0 damping:37.0 initialVelocity:0.0];
      [v14 addSpringDuration:0.8 mass:2.0 stiffness:470.0 damping:34.0 initialVelocity:0.0];
      goto LABEL_53;
    }

    if (v4 == 2)
    {
      if ((v1 & 0x1000000000000) == 0)
      {
LABEL_21:
        v10 = 11;
        goto LABEL_33;
      }
    }

    else if ((v1 & 0x1000000000000) != 0)
    {
      if (v4)
      {
        goto LABEL_21;
      }
    }

    else if ((v4 & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = 12;
    goto LABEL_33;
  }

  if (v1 > 0x8000000001)
  {
    if (v1 ^ 0x8000000002 | *&v9 & 0xFFFFFFLL)
    {
      if (v1 ^ 0x8000000003 | *&v9 & 0xFFFFFFLL)
      {
        v13 = 6;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 7;
    }

    goto LABEL_29;
  }

  if (!(v1 ^ 0x8000000000 | *&v9 & 0xFFFFFFLL))
  {
    goto LABEL_24;
  }

  [v6 setMethod_];
  return v7;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1FFFFFFFFFFLL);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1FFFFFFFFFFLL);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 0x1FFFFFFFFFFLL, a1, v21);
  }
}

void type metadata accessor for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for RBTransition);
    lazy protocol witness table accessor for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey;
  if (!lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey;
  if (!lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NamedKey and conformance ContentTransition.NamedKey);
  }

  return result;
}

uint64_t EnvironmentValues.cuiNamedColorProvider.getter()
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

  static CorePlatformProvidersDefinition.providers.getter(&v3);
  return v4;
}

uint64_t type metadata completion function for OpenURLAction.Result()
{
  result = type metadata accessor for OpenURLAction.Result.ActionResult(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for OpenURLAction.Result.ActionResult()
{
  type metadata accessor for URL?(319);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
  }
}

uint64_t implicit closure #4 in implicit closure #3 in _AppearanceActionModifier.MergedCallbacks.updateValue()(uint64_t result)
{
  v3 = *(result + 20);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 20) = v5;
    if (!v5 && (*(result + 64) & 1) == 0)
    {
      v8 = v1;
      v9 = v2;
      *(result + 64) = 1;
      v7 = 17;
      v6 = result;

      static Update.enqueueAction(reason:_:)(&v7, partial apply for closure #1 in _AppearanceActionModifier.MergedBox.update(), v6);
    }
  }

  return result;
}

uint64_t destroy for SafeAreaInsets()
{
}

uint64_t specialized static CoordinateSpace.Name.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of CoordinateSpace.Name(a1, v11);
  outlined init with copy of CoordinateSpace.Name(a2, v12);
  if (v11[40])
  {
    outlined init with copy of CoordinateSpace.Name(v11, v9);
    if (v14 == 1)
    {
      v3 = *&v9[0] == *&v12[0];
LABEL_8:
      outlined destroy of CoordinateSpace.Name(v11);
      return v3 & 1;
    }
  }

  else
  {
    outlined init with copy of CoordinateSpace.Name(v11, v9);
    if ((v14 & 1) == 0)
    {
      v7[0] = v9[0];
      v7[1] = v9[1];
      v8 = v10;
      v5[0] = v12[0];
      v5[1] = v12[1];
      v6 = v13;
      v3 = MEMORY[0x193AC01F0](v7, v5);
      outlined destroy of AnyHashable(v5);
      outlined destroy of AnyHashable(v7);
      goto LABEL_8;
    }

    outlined destroy of AnyHashable(v9);
  }

  _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v11, &lazy cache variable for type metadata for (CoordinateSpace.Name, CoordinateSpace.Name));
  v3 = 0;
  return v3 & 1;
}

uint64_t outlined destroy of CoordinateSpace.Name(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 < 2)
  {
    if (v1 == 1)
    {
      return result;
    }

LABEL_5:
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v2;
  }

  if (*result != -1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t _AppearanceActionModifier.MergedBox.__deallocating_deinit()
{
  if (*(v0 + 24) >= 1)
  {
    v1 = *(v0 + 48);
    if (v1)
    {
      v2 = *(v0 + 56);
      v5 = 17;

      static Update.enqueueAction(reason:_:)(&v5, v1, v2);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
    }
  }

  v3 = *(v0 + 48);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 32));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);

  return swift_deallocClassInstance();
}

uint64_t RepresentableContextValues.environment.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v3 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    InputValue = AGGraphGetInputValue();
    v6 = *InputValue;
    v5 = InputValue[1];
    *a1 = v6;
    a1[1] = v5;

    static Update.end()();

    return _MovableLockUnlock(v3);
  }

  else
  {
    v8 = *(v1 + 24);
    *a1 = *(v1 + 16);
    a1[1] = v8;
  }
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x193ABEDD0](a2, a3, v13);
  v16 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v22);
  v16(a4, a5);
  outlined init with take of AnyTrackedValue(&v22, v15);
  *(v15 + 5) = 0;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v6 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v15, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v6 + 16) = v17;
  return result;
}

uint64_t static ViewModifier<>._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = a2[1];
  v13 = a2[3];
  v27 = a2[2];
  v28 = v13;
  v29 = a2[4];
  v14 = a2[1];
  v25 = *a2;
  v26 = v14;
  v18 = v25;
  v19 = v12;
  v15 = *a1;
  v30 = *(a2 + 20);
  v24 = v15;
  v20 = v27;
  outlined init with copy of _GraphInputs(&v25, v31);
  v16 = static Animatable.makeAnimatable(value:inputs:)(&v24, &v18, a5, a6);
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  outlined destroy of _GraphInputs(v31);
  _GraphValue.init(_:)(v16, &v24);
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v18 = v25;
  v19 = v26;
  return static ViewModifier.makeView(modifier:inputs:body:)(&v24, &v18, a3, a4, a5, a7);
}

uint64_t Text.modified(with:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v11 = *(a6 + 2);
  v10 = *(a6 + 3);
  if (v11 >= v10 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a6);
  }

  *(a6 + 2) = v11 + 1;
  v12 = &a6[16 * v11];
  *(v12 + 4) = a1;
  v12[40] = a2;
  outlined copy of Text.Modifier(a1, a2);
  return a3;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA16RoundedRectangleVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<RoundedRectangle>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 204) = v7;
    *(v4 + 208) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<RoundedRectangle>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v8;
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 185) = *(a1 + 169);
  v9 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v9;
  v10 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v10;
  v11 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v13;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t LazyHVStack<>.place(subviews:length:minorGeometry:emit:)(double a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_BYTE *, double *, double, double, double, double), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (*(*(a8 + 8) + 32))(a7);
  if (v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = *&a3;
  }

  v16 = ((v14 & 1) == 0) & a4;
  if ((v14 & 1) == 0)
  {
    *&a3 = a1;
  }

  v17 = v14 & a4;
  Array.subscript.getter();
  v21 = v15;
  v22 = v16;
  v23 = a3;
  v24 = v17 & 1;
  LazyHVStack<>.anchor.getter(a7, a8);
  a5(v25, &v21, 0.0, 0.0, v18, v19);
  return outlined destroy of _LazyLayout_Subview(v25);
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutEngine();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<RoundedRectangle>>);
    }
  }
}

uint64_t LazyHVStack<>.anchor.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(a2 + 32))(a1, a2, v11);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, v9);
  v14 = swift_getAssociatedConformanceWitness();
  AlignmentGuide.fraction.getter(AssociatedTypeWitness, v14);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(*(a2 + 8) + 32))(a1);
}

void *assignWithCopy for CoreInteractionRepresentableEffect(void *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = ((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = &a2[v14];
  v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v15 = *(v16 & 0xFFFFFFFFFFFFFFF8);

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

unint64_t lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment()
{
  result = lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment;
  if (!lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment;
  if (!lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment);
  }

  return result;
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v10 = *a1;
  v11 = *(a3 + 16);
  v79 = *a3;
  v80 = v11;
  v12 = *(a3 + 48);
  v81 = *(a3 + 32);
  v82 = v12;
  v13 = *(a3 + 80);
  v83 = *(a3 + 64);
  v84[0] = v13;
  *(v84 + 12) = *(a3 + 92);
  v14 = DWORD2(v84[1]) >> 29;
  if (DWORD2(v84[1]) >> 29 == 2)
  {
    v44 = a6;
    v45 = a7;
    v46 = a8;
    v16 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v60 = v79;
      LOBYTE(v61) = v80 & 1;
      v17 = *(v16 + 16);
      v50 = *v16;
      v51 = v17;
      v52 = *(v16 + 32);
      LODWORD(v53) = *(v16 + 48);
      outlined init with copy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v50, &v72, a5, v44, v45, v46);
      v18 = *AGGraphGetValue();

      outlined destroy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v50, a5, v44, v45, v46);
      v58[0] = v18;
      LOBYTE(v72) = v10;
      _ShapeStyle_Pack.subscript.getter(&v72, 0, &v64);

      v49 = v10;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v60, &v64, &v49);
      v76 = v68;
      v77[0] = v69;
      v77[1] = v70;
      v78 = v71;
      v72 = v64;
      v73 = v65;
      v74 = v66;
      v75 = v67;
      outlined destroy of _ShapeStyle_Pack.Style(&v72);
    }

    else
    {
      v72 = v79;
      LOBYTE(v73) = v80 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v72);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v79);
  }

  else
  {
    v15 = BYTE8(v81);
    if (v14 == 3)
    {
      if (v83)
      {
        v72 = v79;
        LOBYTE(v73) = v80;
        *(&v73 + 1) = *(&v80 + 1);
        BYTE7(v73) = (*(&v80 + 1) | ((*(&v80 + 5) | (BYTE7(v80) << 16)) << 32)) >> 48;
        *(&v73 + 5) = *(&v80 + 5);
        *(&v73 + 1) = *(&v80 + 1);
        v74 = v81;
        v75 = v82;
        LOBYTE(v76) = v83;
        *(&v76 + 1) = *(&v83 + 1);
        BYTE7(v76) = (*(&v83 + 1) | ((*(&v83 + 5) | (BYTE7(v83) << 16)) << 32)) >> 48;
        *(&v76 + 5) = *(&v83 + 5);
        *(&v76 + 1) = *(&v83 + 1);
        v77[0] = v84[0];
        *&v77[1] = *&v84[1];
        DWORD2(v77[1]) = DWORD2(v84[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v72);
        return;
      }

      if (BYTE8(v79) != 2)
      {
        if (BYTE8(v79) == 255)
        {
          *(v77 + 12) = *(a3 + 92);
          v19 = *(a3 + 80);
          v76 = *(a3 + 64);
          v77[0] = v19;
          v20 = *(a3 + 16);
          v72 = *a3;
          v73 = v20;
          v21 = *(a3 + 48);
          v74 = *(a3 + 32);
          v75 = v21;
          DWORD2(v77[1]) &= 0x1FFFFFFFu;
          v22 = a4;
          v23 = a8;
          v24 = a7;
          v25 = a6;
          outlined init with copy of GraphicsImage(&v72, &v64);
          a6 = v25;
          a7 = v24;
          a8 = v23;
          a4 = v22;
        }

        goto LABEL_14;
      }

      v30 = *(v79 + 24);
      v31 = *(v79 + 40);
      v32 = *(v79 + 44);
      v33 = *(v79 + 45);
      v47 = *(v79 + 32);
      v34 = *(v79 + 48);
      *&v50 = *(v79 + 16);
      BYTE8(v50) = v30;
      *&v51 = v47;
      DWORD2(v51) = v31;
      BYTE12(v51) = v32;
      BYTE13(v51) = v33;
      *&v52 = v34;
      LOBYTE(v60) = v10;
      v35 = *(a4 + 16);
      v66 = *(a4 + 32);
      LODWORD(v67) = *(a4 + 48);
      v36 = *a4;
      v65 = v35;
      v64 = v36;
      v37 = a8;
      v38 = a7;
      v39 = a6;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v79, &v72);
      v40 = v50;
      outlined copy of Image.Location(v47);
      v41 = v34;
      v42 = v37;
      outlined init with copy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v64, &v72, a5, v39, v38, v37);
      v43 = *AGGraphGetValue();

      outlined destroy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v64, a5, v39, v38, v42);
      *&v72 = v43;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v50, v15, &v60, &v72, a2);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v79);

      outlined consume of Image.Location(v47);
    }

    else if (v14 != 5 || DWORD2(v84[1]) != -1610612736 || v80 | ((*(&v80 + 1) | ((*(&v80 + 5) | (BYTE7(v80) << 16)) << 32)) << 8) | v83 | ((*(&v83 + 1) | ((*(&v83 + 5) | (BYTE7(v83) << 16)) << 32)) << 8) | v79 | *(&v79 + 1) | *(&v80 + 1) | v81 | *(&v81 + 1) | v82 | *(&v82 + 1) | *(&v83 + 1) | *&v84[0] | *(&v84[0] + 1) | *&v84[1])
    {
LABEL_14:
      v26 = *a4;
      v61 = *(a4 + 16);
      v60 = v26;
      v62 = *(a4 + 32);
      v63 = *(a4 + 48);
      v27 = a6;
      v28 = a8;
      v29 = a7;
      outlined init with copy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v60, &v72, a5, a6, a7, a8);
      AGGraphGetValue();

      outlined destroy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(&v60, a5, v27, v29, v28);
      LOBYTE(v64) = v10;
      _ShapeStyle_Pack.subscript.getter(&v64, 0, &v72);

      v68 = v76;
      v69 = v77[0];
      v70 = v77[1];
      v71 = v78;
      v64 = v72;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      v57 = v78;
      v58[0] = v10;
      v58[1] = 0;
      v59 = 0;
      v54 = v76;
      v55 = v77[0];
      v56 = v77[1];
      v50 = v72;
      v51 = v73;
      v52 = v74;
      v53 = v75;
      outlined init with copy of _ShapeStyle_Pack.Style(&v64, &v72);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v58, &v50, a3);
      v76 = v54;
      v77[0] = v55;
      v77[1] = v56;
      v78 = v57;
      v72 = v50;
      v73 = v51;
      v74 = v52;
      v75 = v53;
      outlined destroy of _ShapeStyle_Pack.Style?(&v72, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v57 = v71;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v53 = v67;
      _ShapeStyle_RenderedShape.render(style:)(&v50);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v64);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for VerticalAlignment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  type metadata accessor for ShapeStyledDisplayList<AnimatedShape<AnyShape>>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<AnyShape>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(255, a3, a4, a5, type metadata accessor for AnimatedShape);
    v6 = type metadata accessor for ShapeStyledDisplayList();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for ShapeStyledDisplayList<AnimatedShape<AnyShape>>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t View.shadow(color:radius:x:y:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6[0] = a1;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return View.modifier<A>(_:)(v6, a2, &type metadata for _ShadowEffect);
}

uint64_t AccessibilityTextModifier.modify(style:environment:)(uint64_t *a1)
{
  v3 = a1[36];
  if (v3 == 1)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 17);
    v6 = *(v1 + 18);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v3 = *(v1 + 48);
    outlined copy of Text?(v7, v8, v9, v3);
  }

  else
  {
    v10 = *(a1 + 64);
    v6 = BYTE2(v10);
    v11 = *(v1 + 18);
    if (v10 == 8)
    {
      v4 = *(v1 + 16);
    }

    else
    {
      v4 = *(a1 + 64);
    }

    if (BYTE1(v10) == 7)
    {
      v5 = *(v1 + 17);
    }

    else
    {
      v5 = BYTE1(v10);
    }

    if (v3)
    {
      v7 = a1[33];
      v8 = a1[34];
      v9 = a1[35];
      outlined copy of Text.Storage(v7, v8, a1[35] & 1);
    }

    else
    {
      v9 = *(v1 + 40);
      v3 = *(v1 + 48);
      v7 = *(v1 + 24);
      v8 = *(v1 + 32);
      outlined copy of Text?(v7, v8, v9, v3);
    }

    if (v6 == 2)
    {
      v6 = v11;
    }
  }

  result = outlined consume of AccessibilityTextAttributes?(a1[32], a1[33], a1[34], a1[35], a1[36]);
  a1[32] = v4 | (v5 << 8) | (v6 << 16);
  a1[33] = v7;
  a1[34] = v8;
  a1[35] = v9;
  a1[36] = v3;
  return result;
}

uint64_t outlined consume of AccessibilityTextAttributes?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5 != 1)
  {
    return outlined consume of Text?(a2, a3, a4, a5);
  }

  return result;
}

uint64_t View.padding(_:)(uint64_t a1, double a2)
{
  v3[0] = 15;
  v4 = a2;
  v5 = a2;
  v6 = a2;
  v7 = a2;
  v8 = 0;
  return View.modifier<A>(_:)(v3, a1, &type metadata for _PaddingLayout);
}

void type metadata accessor for MutableBox<ResolvedShadowStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static EnvironmentalModifier._makeViewList(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v28 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v26);
  v6 = v26;
  v7 = v27;
  v8 = HIDWORD(v27);
  outlined init with copy of _ViewListInputs(a2, &v26);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v9 = v27;
    swift_beginAccess();
    LODWORD(v9) = *(v9 + 16);
    type metadata accessor for PropertyList.Tracker();
    v10 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 24) = 0;
    *(v11 + 32) = v12;
    v13 = MEMORY[0x1E69E7CC0];
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = 0;
    *(v10 + 16) = v11;
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v24[0]) = v7;
    v14 = v7 | (v8 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v26, v6, *(&v6 + 1), v14, a1, v9, v10, 1, v24);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v16 = LODWORD(v24[0]);
    v17 = v24[1];
    v18 = v24[2];
    v19 = v25;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v21 = AGSubgraphBeginTreeElement();
      a3(v21, &v26);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      AGSubgraphEndTreeElement();
      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      (a3)(ShouldRecordTree);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      if (v19)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v26);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v24[0]) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v6, *(&v6 + 1), v7, v17, v18);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(47);

  MEMORY[0x193ABEDD0](0x45776F646168535FLL, 0xED00007463656666);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v30 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v28);
  v6 = v28;
  v7 = v29;
  v8 = HIDWORD(v29);
  outlined init with copy of _ViewListInputs(a2, &v28);
  if (AGTypeGetKind() - 2 > 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v29;
    swift_beginAccess();
    LODWORD(v9) = *(v9 + 16);
    type metadata accessor for PropertyList.Tracker();
    v10 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v12;
    v13 = MEMORY[0x1E69E7CC0];
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = 0;
    *(v10 + 16) = v11;
    LOBYTE(v24) = v7;
    v14 = v7 | (v8 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v28, v6, *(&v6 + 1), v14, a1, v9, v10, 1, &v24);

    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v21 = AGSubgraphBeginTreeElement();
      a3(v21, &v28);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v28);
      AGSubgraphEndTreeElement();
      if ((v19 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v24) = v7;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v6, *(&v6 + 1), v7, v17, v18);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v28);
      }
    }

    else
    {
      (a3)(ShouldRecordTree);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v28);
      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v28);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v26);
  v6 = v26;
  v7 = v27;
  v8 = HIDWORD(v27);
  outlined init with copy of _ViewListInputs(a2, &v26);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v9 = v27;
    swift_beginAccess();
    LODWORD(v9) = *(v9 + 16);
    type metadata accessor for PropertyList.Tracker();
    v10 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 24) = 0;
    *(v11 + 32) = v12;
    v13 = MEMORY[0x1E69E7CC0];
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = 0;
    *(v10 + 16) = v11;
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v24[0]) = v7;
    v14 = v7 | (v8 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v26, v6, *(&v6 + 1), v14, a1, v9, v10, 1, v24);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v16 = LODWORD(v24[0]);
    v17 = v24[1];
    v18 = v24[2];
    v19 = v25;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v21 = AGSubgraphBeginTreeElement();
      a3(v21, &v26);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      AGSubgraphEndTreeElement();
      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      (a3)(ShouldRecordTree);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      if (v19)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v26);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v24[0]) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v6, *(&v6 + 1), v7, v17, v18);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(47);

  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD787B0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v23 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v20);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  outlined init with copy of _ViewListInputs(a2, &v20);
  LOBYTE(v18[0]) = v8;
  _s7SwiftUI21EnvironmentalModifierPAAE012makeResolvedD033_A1B6966B83442495FADFE75F475ECBE28modifier6inputs6fieldsAA11_GraphValueVy0fD0QzG_AA22_DynamicPropertyBufferVSgtAJyxG_AA01_P6InputsVzAA0rS5CacheV6FieldsVtFZAA21_AlphaThresholdEffectV_Tt4B5(&v17, v18, a1, &v20, v7, *(&v7 + 1), v8 | (v9 << 32));
  v10 = v17;
  v15 = v18[1];
  v16 = v18[0];
  v11 = v19;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    v13 = AGSubgraphBeginTreeElement();
    a3(v13, &v20);
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v10, &v20);
    AGSubgraphEndTreeElement();
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a3(ShouldRecordTree, &v20);
  specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v10, &v20);
  if ((v11 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v18[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v16, v15);
  }

LABEL_6:
  outlined destroy of _ViewListInputs(&v20);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

{
  v28 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v26);
  v6 = v26;
  v7 = v27;
  v8 = HIDWORD(v27);
  outlined init with copy of _ViewListInputs(a2, &v26);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v9 = v27;
    swift_beginAccess();
    LODWORD(v9) = *(v9 + 16);
    type metadata accessor for PropertyList.Tracker();
    v10 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 24) = 0;
    *(v11 + 32) = v12;
    v13 = MEMORY[0x1E69E7CC0];
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = 0;
    *(v10 + 16) = v11;
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v24[0]) = v7;
    v14 = v7 | (v8 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v26, v6, *(&v6 + 1), v14, a1, v9, v10, 1, v24);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v16 = LODWORD(v24[0]);
    v17 = v24[1];
    v18 = v24[2];
    v19 = v25;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v21 = AGSubgraphBeginTreeElement();
      a3(v21, &v26);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      AGSubgraphEndTreeElement();
      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      (a3)(ShouldRecordTree);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v16, &v26);
      if (v19)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v26);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v24[0]) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v6, *(&v6 + 1), v7, v17, v18);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(47);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD78770);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void ShapeLayerShadowHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v9 = &v132;
  v138 = *MEMORY[0x1E69E9840];
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 1);
  v14 = *(v2 + 2);
  *(v15 + 88) = v13;
  *(v15 + 104) = v14;
  v124 = *(v2 + 48);
  v16 = v124;
  v17 = *(v2 + 2);
  v106 = *(v2 + 3);
  v107 = v17;
  v18 = *(v2 + 5);
  v105 = *(v2 + 4);
  *(v15 + 136) = v13;
  *(v15 + 152) = v14;
  v125[32] = v16;
  outlined init with copy of Path.Storage(v125, v135);
  ShapeType.init(_:)(v123, &v126);
  (*(v10 + 16))(v12, a1, a2);
  PaintType.init<A>(_:)(v12, a2, &v132);
  v135[0] = v132;
  v135[1] = v133;
  v136[0] = v134[0];
  *(v136 + 9) = *(v134 + 9);
  v136[4] = v128;
  v136[5] = v129;
  v136[6] = v130;
  v137 = v131;
  v136[2] = v126;
  v136[3] = v127;
  if (v131)
  {
    if (v131 == 3)
    {
      v19 = vorrq_s8(vorrq_s8(v127, v129), vorrq_s8(v128, v130));
      if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v126 + 1) | v126))
      {
        v20 = *(v2 + 1);
        v21 = *v2 & 3;
        LOBYTE(v122.a) = *v2 & 3;
        v22 = CoreViewLayerView(v21, v20, &v122);
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        a_low = LOBYTE(v122.a);
        __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        v24 = _bridgeAnythingToObjectiveC<A>(_:)();
        CoreViewSetShadow(a_low, v24, 0, 0.0, 0.0, 0.0);
        outlined destroy of (ShapeType, ShapeType)(v135, &lazy cache variable for type metadata for (PaintType, ShapeType));
        swift_unknownObjectRelease();
LABEL_58:
        __swift_destroy_boxed_opaque_existential_1(&v114);
        goto LABEL_77;
      }
    }
  }

  else if (BYTE8(v134[1]) <= 0x1Fu)
  {
    v25 = *v2;
    v20 = *(v2 + 1);
    v26 = v2[20];
    v27 = v2[22];
    v28 = *(v2 + 12);
    v29 = *(v2 + 13);
    v30 = *(v2 + 14);
    *&v31 = *(&v132 + 3) * *(v2 + 21);
    v32 = (*(v2 + 124) >> 4) & 1;
    v33 = *(v6 + 9);
    [*(v6 + 1) setShadowPathIsBounds_];
    [v20 setShadowPath_];
    [v20 setPunchoutShadow_];
    v122.a = v33;
    *&v122.b = __PAIR64__(v31, v26);
    LODWORD(v122.c) = v27;
    LOBYTE(v117) = v25 & 3;
    v34 = CoreViewLayerView(v25 & 3, v20, &v117);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v35 = LOBYTE(v117);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v36 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v37 = specialized ObjectCache.subscript.getter(&v122);
    CoreViewSetShadow(v35, v36, v37, v28, v29, v30);
    outlined destroy of (ShapeType, ShapeType)(v135, &lazy cache variable for type metadata for (PaintType, ShapeType));
    goto LABEL_57;
  }

  v38 = v132;
  v39 = BYTE8(v134[1]) >> 5;
  if (v39 <= 2)
  {
    if (!v39)
    {
      v54 = *(&v132 + 3);
      v20 = *(v6 + 1);
      v104 = *v6;
      v55 = *(v6 + 8);
      v56 = *(v6 + 9);
      v57 = v6[20];
      v58 = *(v6 + 21);
      v59 = v6[22];
      v60 = *(v6 + 12);
      v61 = *(v6 + 13);
      v62 = *(v6 + 14);
      v63 = *(v6 + 7);
      v103 = *(v6 + 124);
      if (v63 == 0.0 && v55 == 0.0)
      {
        outlined init with copy of Path(v123, &v114);
        outlined init with copy of ShapeType(&v126, &v114);
        v65 = *&v106;
        v64 = *&v107;
        v66 = *&v105;
        v67 = *&v18;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v122, -v63, -v55);
        outlined init with copy of ShapeType(&v126, &v114);
        Path.applying(_:)(&v122.a, &v117);
        v64 = *&v117;
        v65 = *&v118;
        v66 = *&v119;
        v67 = *&v120;
        v16 = v121;
      }

      *&v114 = v64;
      *(&v114 + 1) = v65;
      *&v115 = v66;
      *(&v115 + 1) = v67;
      LOBYTE(v116[0]) = v16;
      v91 = Path.cgPath.getter();
      [v20 setShadowPath_];

      [v20 setPunchoutShadow_];
      outlined consume of Path.Storage(v64, v65, v66, v67, v16);
      v109 = v56;
      LODWORD(v110) = v57;
      *(&v110 + 1) = v54 * v58;
      v111 = v59;
      v108 = v104 & 3;
      v92 = CoreViewLayerView(v104 & 3, v20, &v108);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v93 = v108;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v94 = _bridgeAnythingToObjectiveC<A>(_:)();
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v90 = specialized ObjectCache.subscript.getter(&v109);
      CoreViewSetShadow(v93, v94, v90, v60, v61, v62);
      outlined destroy of (ShapeType, ShapeType)(v135, &lazy cache variable for type metadata for (PaintType, ShapeType));
      goto LABEL_67;
    }

    if (v39 == 1)
    {
      if (!v131)
      {
        v20 = *(v6 + 1);
        v122.a = *v6;
        type metadata accessor for UnclippedGradientLayer();
        v40 = swift_dynamicCastClassUnconditional();
        v46 = *(v6 + 22);
        v114 = *(v6 + 18);
        v115 = v46;
        v116[0] = *(v6 + 26);
        *(v116 + 13) = *(v6 + 117);
        LOBYTE(v117) = 0;
        BYTE5(v116[1]) = 0;
        v47 = *(v38 + 16);
        if (!v47)
        {
          goto LABEL_75;
        }

        v48 = (v38 + 44);
        v44 = 1;
        v49 = 1 - v47;
        do
        {
          if (v44)
          {
            v44 = *v48 == 1.0;
            if (!v49)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v44 = 0;
            if (!v49)
            {
              goto LABEL_76;
            }
          }

          ++v49;
          v48 += 12;
        }

        while (v49 != 1);
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        swift_once();
LABEL_56:
        v37 = specialized ObjectCache.subscript.getter(&v122);
        CoreViewSetShadow(v12, v9, v37, v3, v4, v5);
LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_58;
      }
    }

    else if (!v131)
    {
      v20 = *(v6 + 1);
      v122.a = *v6;
      type metadata accessor for UnclippedGradientLayer();
      v40 = swift_dynamicCastClassUnconditional();
      v68 = *(v6 + 22);
      v114 = *(v6 + 18);
      v115 = v68;
      v116[0] = *(v6 + 26);
      *(v116 + 13) = *(v6 + 117);
      LOBYTE(v117) = 0;
      BYTE5(v116[1]) = 0;
      v69 = *(v38 + 16);
      if (v69)
      {
        v70 = (v38 + 44);
        v44 = 1;
        v71 = 1 - v69;
        while (1)
        {
          if (v44)
          {
            v44 = *v70 == 1.0;
            if (!v71)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v44 = 0;
            if (!v71)
            {
              goto LABEL_76;
            }
          }

          ++v71;
          v70 += 12;
          if (v71 == 1)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_51:
    outlined init with copy of ShapeType(&v126, &v114);
    outlined init with copy of PaintType(&v132, &v114);
    outlined destroy of (ShapeType, ShapeType)(v135, &lazy cache variable for type metadata for (PaintType, ShapeType));
    v114 = v132;
    v115 = v133;
    v116[0] = v134[0];
    *(v116 + 9) = *(v134 + 9);
    v72 = PaintType.isOpaqueForShadow.getter();
    outlined destroy of PaintType(&v132);
    v73 = *v6;
    v20 = *(v6 + 1);
    if (v72)
    {
      v104 = *(v6 + 1);
      v74 = *(v6 + 9);
      v75 = *(v6 + 10);
      v76 = v6[22];
      v77 = *(v6 + 12);
      v78 = *(v6 + 13);
      v79 = *(v6 + 14);
      v80 = *(v6 + 7);
      v81 = *(v6 + 8);
      v103 = *(v6 + 124);
      if (v80 == 0.0 && v81 == 0.0)
      {
        outlined init with copy of Path.Storage(v125, &v114);
        v83 = v106;
        v82 = v107;
        v84 = v105;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v114, -v80, -v81);
        Path.applying(_:)(&v114, &v117);
        v82 = v117;
        v83 = v118;
        v84 = v119;
        v18 = v120;
        v16 = v121;
      }

      v122.a = v82;
      v122.b = v83;
      v122.c = v84;
      v122.d = v18;
      LOBYTE(v122.tx) = v16;
      v86 = Path.cgPath.getter();
      v20 = v104;
      [v104 setShadowPath_];

      [v20 setPunchoutShadow_];
      outlined consume of Path.Storage(*&v82, *&v83, *&v84, *&v18, v16);
      v109 = v74;
      v110 = v75;
      v111 = v76;
      v108 = LOBYTE(v73) & 3;
      v87 = CoreViewLayerView(LOBYTE(v73) & 3, v20, &v108);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v88 = v108;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v89 = _bridgeAnythingToObjectiveC<A>(_:)();
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v90 = specialized ObjectCache.subscript.getter(&v109);
      CoreViewSetShadow(v88, v89, v90, v77, v78, v79);
LABEL_67:
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v112);
      goto LABEL_77;
    }

    *&v122.a = *(v6 + 18);
    LODWORD(v122.c) = v6[22];
    v3 = *(v6 + 12);
    v4 = *(v6 + 13);
    v5 = *(v6 + 14);
    [v20 setShadowPathIsBounds_];
    [v20 setShadowPath_];
    [v20 setPunchoutShadow_];
    LOBYTE(v117) = LOBYTE(v73) & 3;
    v85 = CoreViewLayerView(LOBYTE(v73) & 3, v20, &v117);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v12 = LOBYTE(v117);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (one-time initialization token for cache == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_89;
  }

  if (BYTE8(v134[1]) >> 5 > 4u)
  {
    if (v39 != 5 || v131)
    {
      goto LABEL_51;
    }

    v20 = *(v6 + 1);
    v122.a = *v6;
    type metadata accessor for UnclippedGradientLayer();
    v40 = swift_dynamicCastClassUnconditional();
    v50 = *(v6 + 22);
    v114 = *(v6 + 18);
    v115 = v50;
    v116[0] = *(v6 + 26);
    *(v116 + 13) = *(v6 + 117);
    LOBYTE(v117) = 0;
    BYTE5(v116[1]) = 0;
    v51 = *(v38 + 16);
    if (v51)
    {
      v52 = (v38 + 44);
      v44 = 1;
      v53 = 1 - v51;
      while (1)
      {
        if (v44)
        {
          v44 = *v52 == 1.0;
          if (!v53)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v44 = 0;
          if (!v53)
          {
            goto LABEL_76;
          }
        }

        ++v53;
        v52 += 12;
        if (v53 == 1)
        {
          goto LABEL_87;
        }
      }
    }
  }

  else
  {
    if (v39 == 3)
    {
      if (!v131)
      {
        v20 = *(v6 + 1);
        v122.a = *v6;
        type metadata accessor for UnclippedGradientLayer();
        v40 = swift_dynamicCastClassUnconditional();
        v41 = *(v6 + 22);
        v114 = *(v6 + 18);
        v115 = v41;
        v116[0] = *(v6 + 26);
        *(v116 + 13) = *(v6 + 117);
        LOBYTE(v117) = 0;
        BYTE5(v116[1]) = 0;
        v42 = *(v38 + 16);
        if (v42)
        {
          v43 = (v38 + 44);
          v44 = 1;
          v45 = 1 - v42;
          while (1)
          {
            if (v44)
            {
              v44 = *v43 == 1.0;
              if (!v45)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v44 = 0;
              if (!v45)
              {
                goto LABEL_76;
              }
            }

            ++v45;
            v43 += 12;
            if (v45 == 1)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_75;
      }

      goto LABEL_51;
    }

    if (v131)
    {
      goto LABEL_51;
    }

    v20 = *(v6 + 1);
    v122.a = *v6;
    type metadata accessor for UnclippedGradientLayer();
    v40 = swift_dynamicCastClassUnconditional();
    v95 = *(v6 + 22);
    v114 = *(v6 + 18);
    v115 = v95;
    v116[0] = *(v6 + 26);
    *(v116 + 13) = *(v6 + 117);
    LOBYTE(v117) = 0;
    BYTE5(v116[1]) = 0;
    v96 = *(v38 + 16);
    if (v96)
    {
      v97 = (v38 + 44);
      v44 = 1;
      v98 = 1 - v96;
      while (1)
      {
        if (v44)
        {
          v44 = *v97 == 1.0;
          if (!v98)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v44 = 0;
          if (!v98)
          {
            goto LABEL_76;
          }
        }

        ++v98;
        v97 += 12;
        if (v98 == 1)
        {
          goto LABEL_88;
        }
      }
    }
  }

LABEL_75:
  v44 = 0;
LABEL_76:
  updateShadow(platform:gradientLayer:shadow:opaque:)(&v122, v40, &v114, v44);
  outlined destroy of (ShapeType, ShapeType)(v135, &lazy cache variable for type metadata for (PaintType, ShapeType));
LABEL_77:
  if (*(v6 + 125) != 1)
  {
LABEL_80:
    outlined destroy of ShapeType(&v126);
    return;
  }

  if (v131)
  {
    [v20 setCornerRadius_];
    goto LABEL_80;
  }

  v99 = v128.i8[8];
  [v20 setCornerRadius_];
  v100 = MEMORY[0x1E69796E8];
  if ((v99 & 1) == 0)
  {
    v100 = MEMORY[0x1E69796E0];
  }

  v101 = *v100;
  [v20 setCornerCurve_];
}

uint64_t one-time initialization function for vertical()
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.vertical = result;
  return result;
}

uint64_t CoreViewSetShadow(uint64_t result, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = a4;
  v10 = a2;
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v10 = [a2 layer];
  }

  if (a3)
  {
    LODWORD(a4) = 1.0;
    [v10 setShadowOpacity:a4];
    [v10 setShadowColor:a3];
    [v10 setShadowRadius:v8];

    return [v10 setShadowOffset:{a5, a6}];
  }

  else
  {

    return [v10 setShadowOpacity:0.0];
  }
}

uint64_t _LazyLayoutViewCache.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, void (*a6)(char *, __int128 *)@<X5>, uint64_t a7@<X8>)
{
  v8[6] = a5;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  return _LazyLayoutViewCache.withPlacementData<A>(_:)(a6, v8, a7);
}

uint64_t closure #1 in _LazyLayoutViewCache.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:)(uint64_t a1, const void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  v18[0] = a5;
  v18[1] = a1;
  v10 = *(*a3 + 448);
  v11 = *(*a3 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v18 - v14;
  v16 = memcpy(v23, a2, 0x129uLL);
  _LazyLayoutViewCache.copyCacheState<A>(type:)(v16, AssociatedTypeWitness);
  LazyLayoutViewCache.subviews(context:)(a4, v22);
  (*(v10 + 88))(v18[0], v19, v20, v21, v23, v22, v15, v11, v10);
  outlined destroy of _LazyLayout_Subviews(v22);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t destroy for ShapeLayerShadowHelper(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return outlined consume of Path.Storage(v2, v3, v4, v5, v6);
}

uint64_t LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<X0>(char *__src@<X4>, unint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t))
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a5)
  {
    Array.subscript.getter();
    *&v83[32] = v91;
    *&v83[48] = v92;
    *&v83[64] = v93;
    *v83 = *v90;
    *&v83[16] = *&v90[16];
    result = outlined destroy of _LazyLayout_PlacedSubview(v83);
    v22 = *&v83[24];
    *a9 = *&v83[8];
    *(a9 + 16) = v22;
    v23 = *&v83[40];
    v24 = *&v83[56];
LABEL_3:
    *(a9 + 32) = v23;
    *(a9 + 48) = v24;
    return result;
  }

  v79 = a7;
  v25 = *(__src + 35);
  v26 = *(__src + 36);
  v27 = __src[296];
  v28 = *(__src + 104);
  v29 = *(__src + 136);
  *&v83[64] = *(__src + 120);
  *&v83[80] = v29;
  *&v83[96] = *(__src + 152);
  v30 = *(__src + 72);
  *v83 = *(__src + 56);
  *&v83[16] = v30;
  *&v83[32] = *(__src + 88);
  *&v83[48] = v28;
  if (v27)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v26, v25));
  }

  v31 = *&v83[80];
  v32 = *&v83[96];
  v33 = a11(v11, a8, a10);
  result = Array<A>.motionVectors(closestTo:in:avoiding:distance:)(a2, a4, v33, a3, v98, *&v83[80], *&v83[88], *&v83[96], *&v83[104]);
  if (v99)
  {

    Array.subscript.getter();
    v87[2] = v91;
    v87[3] = v92;
    v87[4] = v93;
    v87[0] = *v90;
    v87[1] = *&v90[16];
    memcpy(v83, __dst, sizeof(v83));
    v84 = v25;
    v85 = v26;
    v86 = v27;
    LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)(v87, a6, v83, v79, a8, a10, v88);
    v94 = v88[0];
    v95 = v88[1];
    v96 = v88[2];
    v97 = v88[3];
    if ((v89 & 1) == 0)
    {
      result = outlined destroy of _LazyLayout_PlacedSubview(v90);
      v63 = v95;
      *a9 = v94;
      *(a9 + 16) = v63;
      v23 = v96;
      v24 = v97;
      goto LABEL_3;
    }

    result = (*(a10 + 32))(a8, a10);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*(a3 + 16) > a2)
      {
        v34 = result;
        v35 = a3 + 80 * a2;
        v36 = *(v35 + 40);
        v37 = *(v35 + 48);
        *v82 = *(v35 + 49);
        *&v82[3] = *(v35 + 52);
        v38 = *(v35 + 56);
        v39 = *(v35 + 64);
        *v81 = *(v35 + 65);
        *&v81[3] = *(v35 + 68);
        v40 = *(v35 + 72);
        v41 = *(v35 + 80);
        v42 = *(v35 + 96);
        v80 = *(v35 + 88);
        v101.origin = v31;
        v101.size = v32;
        v43 = 0.0;
        if (!CGRectIsNull(v101))
        {
          if (v34)
          {
            height = v32.height;
          }

          else
          {
            height = v32.width;
          }

          if (v34)
          {
            y = v31.y;
          }

          else
          {
            y = v31.x;
          }

          v46 = y + height;
          if (v46 >= y)
          {
            v47 = y;
          }

          else
          {
            v47 = v46;
          }

          if (y > v46)
          {
            v46 = y;
          }

          if (v47 <= v46)
          {
            v43 = v46;
          }
        }

        v102.origin = v31;
        v102.size = v32;
        if (CGRectIsNull(v102))
        {
          result = outlined destroy of _LazyLayout_PlacedSubview(v90);
          v48 = v34 & 1;
          v49 = 0.0;
        }

        else
        {
          result = outlined destroy of _LazyLayout_PlacedSubview(v90);
          v48 = v34 & 1;
          if (v34)
          {
            width = v32.height;
          }

          else
          {
            width = v32.width;
          }

          if (v34)
          {
            x = v31.y;
          }

          else
          {
            x = v31.x;
          }

          v66 = x + width;
          if (v66 >= x)
          {
            v67 = x;
          }

          else
          {
            v67 = v66;
          }

          if (x > v66)
          {
            v66 = x;
          }

          v68 = v66 - v67;
          v69 = v67 > v66;
          v49 = 0.0;
          if (!v69)
          {
            v49 = v68;
          }
        }

        v70 = v36;
        v71 = 10.0;
        if (v37)
        {
          v70 = 10.0;
        }

        if ((v39 & 1) == 0)
        {
          v71 = v38;
        }

        v72 = v43 + v49;
        v73 = v41 * v71;
        if (!v48)
        {
          v73 = v40 * v70;
        }

        v74 = v72 + v73;
        if (v39)
        {
          v75 = v80;
          if (!v48)
          {
            v78 = v80 + v70;
            if (v74 <= v78)
            {
              v74 = v78;
            }

            goto LABEL_70;
          }

          if (v74 <= v42 + 10.0)
          {
            v74 = v42 + 10.0;
          }
        }

        else
        {
          v75 = v80;
          if (v48)
          {
            v76 = v42;
          }

          else
          {
            v76 = v80;
          }

          if (v48)
          {
            v70 = v38;
          }

          v77 = v76 + v70;
          if (v74 <= v77)
          {
            v74 = v77;
          }

          if (!v48)
          {
            goto LABEL_70;
          }
        }

        v42 = v74;
        v74 = v75;
LABEL_70:
        *a9 = v36;
        *(a9 + 8) = v37;
        *(a9 + 9) = *v82;
        *(a9 + 12) = *&v82[3];
        *(a9 + 16) = v38;
        *(a9 + 24) = v39;
        *(a9 + 25) = *v81;
        *(a9 + 28) = *&v81[3];
        *(a9 + 32) = v40;
        *(a9 + 40) = v41;
        *(a9 + 48) = v74;
        *(a9 + 56) = v42;
        return result;
      }

      goto LABEL_74;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_72;
  }

  if (*(a3 + 16) <= a2)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v50 = v98[2];
  v51 = v98[3];
  v52 = a3 + 80 * a2;
  LODWORD(v87[0]) = *(v52 + 49);
  *(v87 + 3) = *(v52 + 52);
  *v90 = *(v52 + 65);
  *&v90[15] = *(v52 + 80);
  v53 = v98[0] + *(v52 + 88);
  v54 = v98[1] + *(v52 + 96);
  v55 = *(v52 + 80);
  *&v83[32] = *(v52 + 64);
  *&v83[48] = v55;
  *&v83[64] = *(v52 + 96);
  v56 = *(v52 + 48);
  *v83 = *(v52 + 32);
  *&v83[16] = v56;
  _LazyLayout_PlacedSubview.size.getter();
  v58 = v57;
  v60 = v59;

  v61 = v50 * v58;
  if (v58 == 0.0)
  {
    v61 = 0.0;
  }

  LOBYTE(v88[0]) = 0;
  LOBYTE(v94) = 0;
  *a9 = v61;
  *(a9 + 8) = 0;
  if (v60 == 0.0)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v51 * v60;
  }

  *(a9 + 9) = v87[0];
  *(a9 + 12) = *(v87 + 3);
  *(a9 + 16) = v62;
  *(a9 + 24) = 0;
  *(a9 + 25) = *v90;
  *(a9 + 40) = *&v90[15];
  *(a9 + 48) = v53;
  *(a9 + 56) = v54;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void sub_18D30AD70()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for Mutex<MaterialBackdropProxy.Storage.Data>();
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ShadowEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07_ShadowD0V9_ResolvedV_Tt3B5);
}

uint64_t (*implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
}

uint64_t Array<A>.motionVectors(closestTo:in:avoiding:distance:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, double (*a3)(uint64_t, double, double, double, double, double, double, double, double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v134[16] = a8;
  *&v134[24] = a9;
  *v134 = a6;
  *&v134[8] = a7;
  v162 = *(a2 + 16);
  if (v162)
  {
    v11 = 0;
    v12 = (a2 + 32);
    v13 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v14 = v12[3];
      v180 = v12[2];
      v181 = v14;
      v182 = v12[4];
      v15 = v12[1];
      v178 = *v12;
      v179 = v15;
      v183 = v178;
      v184 = v15;
      v185 = v180;
      v186 = v14;
      v187 = v182;
      v16 = *(v178 + 144);
      v17 = *(v178 + 148);
      v18 = *(v178 + 152);
      swift_bridgeObjectRetain_n();
      outlined init with copy of _LazyLayout_PlacedSubview(&v178, v177);
      if (*(v18 + 16))
      {
        v19 = *(v18 + 32);
        v20 = *(v18 + 52);

        swift_bridgeObjectRelease_n();
        if (v20)
        {
          v17 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = v17;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v19 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v177[0] = v13;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v16 | (v17 << 32), v19);
      v24 = v13[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_101;
      }

      v28 = v23;
      if (v13[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v33 = v22;
      specialized _NativeDictionary.copy()();
      v22 = v33;
      v13 = *&v177[0];
      if (v28)
      {
LABEL_3:
        *(v13[7] + 8 * v22) = v11;
        outlined destroy of _LazyLayout_PlacedSubview(&v183);

        goto LABEL_4;
      }

LABEL_16:
      v13[(v22 >> 6) + 8] |= 1 << v22;
      v30 = v13[6] + 16 * v22;
      *v30 = v16;
      *(v30 + 4) = v17;
      *(v30 + 8) = v19;
      *(v13[7] + 8 * v22) = v11;
      outlined destroy of _LazyLayout_PlacedSubview(&v183);
      v31 = v13[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_102;
      }

      v13[2] = v32;
LABEL_4:
      ++v11;
      v12 += 5;
      if (v162 == v11)
      {
        goto LABEL_21;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v16 | (v17 << 32), v19);
    if ((v28 & 1) != (v29 & 1))
    {
      goto LABEL_111;
    }

LABEL_15:
    v13 = *&v177[0];
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7CC8];
LABEL_21:
  v34 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v35 = *(a4 + 16);
  if (v35 <= a1)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_111:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v36 = a4 + 32;
  v37 = (a4 + 32 + 80 * a1);
  v38 = v37[1];
  v39 = v37[3];
  v185 = v37[2];
  v186 = v39;
  v40 = v37[3];
  v187 = v37[4];
  v41 = v37[1];
  v183 = *v37;
  v184 = v41;
  v42 = *(&v185 + 1);
  v43 = *&v186;
  v180 = v185;
  v181 = v40;
  v182 = v37[4];
  v44 = *(&v186 + 1);
  v45 = *&v187;
  v178 = v183;
  v179 = v38;
  outlined init with copy of _LazyLayout_PlacedSubview(&v183, v177);
  _LazyLayout_PlacedSubview.size.getter();
  v145 = v45 - v43 * v47;
  v146 = v44 - v42 * v46;
  v180 = v185;
  v181 = v186;
  v182 = v187;
  v178 = v183;
  v179 = v184;
  _LazyLayout_PlacedSubview.size.getter();
  v143 = v49;
  v144 = v48;
  outlined destroy of _LazyLayout_PlacedSubview(&v183);
  v50 = 0;
  v161 = *MEMORY[0x1E698D3F8];
  v138 = a2 + 32;
  v132 = 0u;
  v142 = 1;
  v9 = 0.0;
  v10 = 0.0;
  v140 = 0.0;
  v159 = v35;
  v131 = v36;
LABEL_24:
  v136 = v10;
  v137 = v9;
LABEL_25:
  v51 = (v36 + 80 * v50);
  for (i = v50; i < v35; v51 += 5)
  {
    v53 = v51[3];
    v177[2] = v51[2];
    v177[3] = v53;
    v177[4] = v51[4];
    v54 = v51[1];
    v177[0] = *v51;
    v177[1] = v54;
    v50 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_100;
    }

    v55 = v51[3];
    v180 = v51[2];
    v181 = v55;
    v182 = v51[4];
    v56 = v51[1];
    v178 = *v51;
    v179 = v56;
    if (v34 == i)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(v177, &v172);
      outlined destroy of _LazyLayout_PlacedSubview(&v178);
      if (v50 == v35)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }

    v57 = *(v178 + 144);
    v58 = *(v178 + 148);
    v59 = *(v178 + 152);

    outlined init with copy of _LazyLayout_PlacedSubview(v177, &v172);
    v60 = *(v59 + 16);

    if (v60)
    {
      v61 = *(v59 + 32);
      v62 = *(v59 + 52);

      swift_bridgeObjectRelease_n();
      if (v62)
      {
        v58 = 0xFFFFFFFFLL;
      }

      else
      {
        v58 = v58;
      }

      if (!v13[2])
      {
LABEL_41:
        outlined destroy of _LazyLayout_PlacedSubview(&v178);

        v35 = v159;
        if (v50 == v159)
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v61 = 0;
      if (!v13[2])
      {
        goto LABEL_41;
      }
    }

    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v57 | (v58 << 32), v61);
    if ((v64 & 1) == 0)
    {
      goto LABEL_41;
    }

    v65 = *(v13[7] + 8 * v63);

    v66 = v51[4];
    v175 = v51[3];
    v176 = v66;
    v67 = v51[2];
    v173 = v51[1];
    v174 = v67;
    v172 = *v51;
    v68 = v172;
    v147 = v65;
    if (*(v172 + 44) == v161)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v172, &v167);
      Value = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        Value = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v172, &v167);
      Value = AGGraphGetValue();
    }

    v70 = *Value;
    v155 = *(&v172 + 1);
    v71 = v173;
    v72 = *(&v173 + 1);
    v73 = v174;
    v74 = *(&v174 + 1);
    v76 = v175;
    v75 = *&v176;
    v77 = one-time initialization token for lockAssertionsAreEnabled;

    if (v77 != -1)
    {
      swift_once();
    }

    v78 = lockAssertionsAreEnabled;
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_110;
      }
    }

    *&v167 = v155;
    BYTE8(v167) = v71;
    *&v168 = v72;
    BYTE8(v168) = v73;
    v79 = (*(*v70 + 120))(&v167);
    v81 = v80;

    if (*(v68 + 44) == v161)
    {
      v82 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v82 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v82 = AGGraphGetValue();
    }

    v83 = *v82;
    v150 = v78;
    if (v78)
    {
      v84 = one-time initialization token for _lock;

      if (v84 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_110;
      }
    }

    else
    {
    }

    v85 = *&v76 * v81;
    v86 = *(&v76 + 1) - v74 * v79;
    v87 = v75 - v85;
    *&v167 = v155;
    BYTE8(v167) = v71;
    *&v168 = v72;
    BYTE8(v168) = v73;
    v88 = (*(*v83 + 120))(&v167);
    v90 = v89;

    v91 = outlined destroy of _LazyLayout_PlacedSubview(&v172);
    v148 = v86;
    rect = v88;
    v92 = a3(v91, v146, v145, v144, v143, v86, v87, v88, v90);
    if (!(v142 & 1 | (v92 < v140)))
    {
      outlined destroy of _LazyLayout_PlacedSubview(&v178);
      v142 = 0;
      v35 = v159;
      v34 = a1;
      v36 = v131;
      if (v50 != v159)
      {
        goto LABEL_25;
      }

      goto LABEL_103;
    }

    if (v147 >= v162)
    {
      __break(1u);
      goto LABEL_108;
    }

    v93 = (v138 + 80 * v147);
    v94 = v93[4];
    v170 = v93[3];
    v171 = v94;
    v95 = v93[2];
    v168 = v93[1];
    v169 = v95;
    v167 = *v93;
    v96 = v167;
    if (*(v167 + 44) == v161)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v167, &v163);
      v97 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v97 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v167, &v163);
      v97 = AGGraphGetValue();
    }

    v98 = *v97;
    v156 = *(&v167 + 1);
    v99 = v168;
    v100 = *(&v168 + 1);
    v101 = v169;
    v102 = *(&v169 + 1);
    v104 = v170;
    v103 = *&v171;
    v105 = v150;
    if (v150)
    {
      v106 = one-time initialization token for _lock;

      if (v106 != -1)
      {
        swift_once();
      }

      v105 = v150;
      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_110;
      }
    }

    else
    {
    }

    v163 = v156;
    v164 = v99;
    v165 = v100;
    v166 = v101;
    v151 = (*(*v98 + 120))(&v163);
    v108 = v107;

    if (*(v96 + 44) == v161)
    {
      v109 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v109 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v109 = AGGraphGetValue();
    }

    v110 = *v109;
    v135 = v92;
    if (v105)
    {
      v111 = one-time initialization token for _lock;

      if (v111 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_110;
      }
    }

    else
    {
    }

    v163 = v156;
    v164 = v99;
    v165 = v100;
    v166 = v101;
    v112 = (*(*v110 + 120))(&v163);
    v114 = v113;

    outlined destroy of _LazyLayout_PlacedSubview(&v167);
    v188.origin.x = v148;
    v188.size.height = v90;
    v188.origin.y = v87;
    v188.size.width = rect;
    if (CGRectIsEmpty(v188) || (v115 = *&v104 * v108, v116 = *(&v104 + 1) - v102 * v151, v117 = v103 - v115, v189.origin.x = v116, v189.origin.y = v103 - v115, v189.size.width = v112, v189.size.height = v114, CGRectIsEmpty(v189)))
    {
      outlined destroy of _LazyLayout_PlacedSubview(&v178);
      v34 = a1;
      v35 = v159;
    }

    else
    {
      v157 = v117 - v87;
      v190.origin.x = v116;
      v190.origin.y = v117;
      v190.size.width = v112;
      v190.size.height = v114;
      Width = CGRectGetWidth(v190);
      v191.origin.x = v148;
      v191.origin.y = v87;
      v191.size.width = rect;
      v191.size.height = v90;
      v153 = Width / CGRectGetWidth(v191);
      v192.origin.x = v116;
      v192.origin.y = v117;
      v192.size.width = v112;
      v118 = v116 - v148;
      v192.size.height = v114;
      Height = CGRectGetHeight(v192);
      v193.origin.x = v148;
      v193.origin.y = v87;
      v193.size.width = rect;
      v193.size.height = v90;
      v120 = Height / CGRectGetHeight(v193);
      v123 = v144 * v153;
      if (v144 == 0.0)
      {
        v123 = 0.0;
      }

      v124 = v143 * v120;
      if (v143 == 0.0)
      {
        v124 = 0.0;
      }

      v121 = v146 + v116 - v148;
      v122 = v145 + v157;
      v194 = CGRectIntersection(*(&v123 - 2), *v134);
      IsEmpty = CGRectIsEmpty(v194);
      outlined destroy of _LazyLayout_PlacedSubview(&v178);
      v34 = a1;
      v35 = v159;
      if (IsEmpty)
      {
        v142 = 0;
        v9 = v120;
        *&v126 = v157;
        *(&v126 + 1) = v153;
        v10 = v118;
        v140 = v135;
        v132 = v126;
        v36 = v131;
        if (v50 != v159)
        {
          goto LABEL_24;
        }

        goto LABEL_104;
      }
    }

    v10 = v136;
    v9 = v137;
    if (v50 == v35)
    {
LABEL_97:

      if ((v142 & 1) == 0)
      {
        goto LABEL_105;
      }

      v128 = 0uLL;
      v10 = 0.0;
      v129 = 1;
      v9 = 0.0;
      v130 = a5;
      goto LABEL_106;
    }

LABEL_91:
    ++i;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  v118 = v10;
  v120 = v9;
  v126 = v132;
LABEL_104:
  v158 = v126;

  v9 = v120;
  v10 = v118;
  v132 = v158;
LABEL_105:
  v129 = 0;
  v130 = a5;
  v128 = v132;
LABEL_106:
  *v130 = v10;
  *(v130 + 8) = v128;
  *(v130 + 24) = v9;
  *(v130 + 32) = v129;
  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>>);
    }
  }
}

void *LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v52 = a2;
  v53 = a7;
  v12 = type metadata accessor for MinorProperties();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43[-v15];
  v17 = a1[1];
  v51 = *a1;
  v47 = v17;
  v46 = *(a1 + 16);
  v45 = a1[3];
  v44 = *(a1 + 32);
  v48 = *(a1 + 5);
  memcpy(v62, a3, sizeof(v62));
  v49 = a6;
  v50 = a5;
  v18 = type metadata accessor for _LazyStack_Cache();
  v19 = *(a4 + v18[13]);
  if (*(*(a4 + v18[15]) + 16))
  {
    v21 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v22)
    {
      v21 = 0.0;
    }

    v23 = v20 + v21;
  }

  else
  {
    v23 = 32.0;
  }

  (*(v14 + 16))(v16, a4, v13);
  v24 = (*(*(v12 - 8) + 48))(v16, 1, v12);
  result = (*(v14 + 8))(v16, v13);
  if (v24 == 1 || !*(*(a4 + v18[15]) + 16))
  {
    goto LABEL_40;
  }

  v26 = (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v27 = ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v19 >= 0.0)
  {
    v27 = 0;
    v26 = 0;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v26 = 1;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v26 = 1;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v26 = 1;
  }

  v28 = (*&v19 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v19 & 0x7FF0000000000000) == 0;
  if (v28 || v26 || v27)
  {
    goto LABEL_40;
  }

  v29 = (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v30 = ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v23 >= 0.0)
  {
    v30 = 0;
    v29 = 0;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v29 = 1;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v29 = 1;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v29 = 1;
  }

  v31 = (*&v23 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v23 & 0x7FF0000000000000) == 0;
  if (v31 || v29 || v30)
  {
    goto LABEL_40;
  }

  v32 = v19 / v23;
  if (COERCE__INT64(fabs(v19 / v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v33 = *(a4 + v18[10] + 8);
  if (__OFADD__(v33, v32))
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v34 = *(v51 + 152);
  v58 = *(a4 + v18[10] + 8);
  v59 = v33;
  v56 = 0;
  v57 = 1;
  v55[0] = 2;
  v35 = MEMORY[0x1EEE9AC00](result);
  *&v43[-48] = &v59;
  *&v43[-40] = v35;
  *&v43[-32] = v34;
  *&v43[-24] = &v56;
  *&v43[-16] = v36;

  v37 = v52;
  _LazyLayout_Subviews.apply(from:style:to:)(&v58, v55, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, &v43[-64]);

  if (v57 & 1) != 0 || (memcpy(v55, v62, 0x129uLL), result = (*(*(v49 + 8) + 112))(v60, v56, v37, v55, a4, v50), (v61))
  {
LABEL_40:
    LOBYTE(v55[0]) = 1;
    v38 = v53;
    *v53 = 0u;
    v38[1] = 0u;
    v38[2] = 0u;
    v38[3] = 0u;
    *(v38 + 64) = 1;
    return result;
  }

  v39 = v46;
  v40 = v44;
  v54 = v44;
  LOBYTE(v55[0]) = 0;
  v41 = v53;
  *v53 = v47;
  *(v41 + 8) = v39;
  *(v41 + 2) = v45;
  *(v41 + 24) = v40;
  v42 = vaddq_f64(v60[0], vmulq_f64(v48, v60[1]));
  v41[2] = v48;
  v41[3] = v42;
  *(v41 + 64) = 0;
  return result;
}

uint64_t closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)(uint64_t result, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(result + 64) == a4 && *(result + 68) == HIDWORD(a4))
  {

    LOBYTE(a5) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v13, a5);

    if (a5)
    {
      *a6 = *a3;
      *(a6 + 8) = 0;
      *a2 = 1;
      v14 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
LABEL_13:
        *a3 = v14;
        return result;
      }

      __break(1u);
    }
  }

  v15 = *a3;
  if (*a3 >= a7)
  {
    *a2 = 1;
  }

  v16 = __OFADD__(v15, 1);
  v14 = v15 + 1;
  if (!v16)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *assignWithCopy for _ShadowEffect(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t static EnvironmentalView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v42 = a2[2];
  v43 = v5;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v6 = a2[1];
  v40 = *a2;
  v41 = v6;
  v7 = v6;
  swift_beginAccess();
  v8 = EnvironmentalViewChild.init(view:env:)(v4, *(v7 + 16));
  v9 = v8;
  v11 = v10;
  v12 = HIDWORD(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v38[0] = __PAIR64__(v12, v9);
  *(&v38[0] + 1) = v11;
  v14 = type metadata accessor for EnvironmentalViewChild();

  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v38, AssociatedTypeWitness, v14, WitnessTable, &v23);
  v16 = v23;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v30 = v40;
  v31 = v41;
  v37 = v45;
  v18 = v42;
  LODWORD(v32) = 0;
  v22 = v16;
  v36[0] = v40;
  v36[1] = v41;
  v36[3] = v43;
  v36[4] = v44;
  v36[2] = v32;
  v26 = v32;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v24 = v40;
  v25 = v41;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v40, v38);
  outlined init with copy of _ViewInputs(v36, v38);
  v20(&v22, &v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  v38[2] = v26;
  v38[3] = v27;
  v38[4] = v28;
  v39 = v29;
  v38[0] = v24;
  v38[1] = v25;
  outlined destroy of _ViewInputs(v38);
  LODWORD(v32) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a3, &v30);
    AGSubgraphEndTreeElement();
  }

  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  return outlined destroy of _ViewInputs(&v24);
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1, double a2, double a3)
{
  v48 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47[-v9];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v10 = static Signpost.bodyInvoke;
    v11 = word_1ED539040;
    v12 = HIBYTE(word_1ED539040);
    v13 = byte_1ED539042;
    v14 = static os_signpost_type_t.begin.getter();
    v68 = v10;
    v69 = v11;
    LOBYTE(v70) = v12;
    HIBYTE(v70) = v13;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v58 = *(&v10 + 1);
    LODWORD(v59) = v14;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    v60 = v15;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v12)
    {
      v67 = v59;
      v65 = _signpostLog;
      v66 = &dword_18D018000;
      *&v68 = v10;
      *(&v68 + 1) = v58;
      v69 = v11;
      v62 = "%{public}@.body [in %{public}@]";
      v63 = 31;
      v64 = 2;
      v61 = v60;
      v23 = v49;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v56 + 8))(v23, v55);
LABEL_34:

      break;
    }

    if (v10 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v10) | (4 * WORD1(v10));
    v26 = v59;
    v27 = v56 + 16;
    v50 = *(v56 + 16);
    v28 = v50(v57, v49, v55);
    v29 = 0;
    LOBYTE(v62) = 1;
    v59 = v24;
    v53 = 16 * v24;
    v56 = v27;
    v54 = (v27 - 8);
    v52 = v60 + 32;
    v51 = v10;
LABEL_11:
    v58 = v47;
    MEMORY[0x1EEE9AC00](v28);
    v31 = &v47[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v32 = v31 + 8;
    v33 = v59;
    v34 = v31 + 8;
    do
    {
      *(v34 - 1) = 0;
      *v34 = 0;
      v34 += 16;
      --v33;
    }

    while (v33);
    v35 = v52 + 40 * v29;
    v36 = v59;
    while (1)
    {
      v37 = *(v60 + 16);
      if (v29 == v37)
      {
        LOBYTE(v62) = 0;
LABEL_19:
        v40 = v51;
        if (v51 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v31[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v40 != 20 && v31[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v41 = *v54;
        v42 = v57;
        v43 = v55;
        (*v54)(v57, v55);
        v44 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
        v28 = v50(v42, v44, v43);
        if ((v62 & 1) == 0)
        {
          v45 = v55;
          v41(v57, v55);
          v41(v49, v45);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v29 >= v37)
      {
        break;
      }

      ++v29;
      outlined init with copy of AnyTrackedValue(v35, &v68);
      v38 = v71;
      __swift_project_boxed_opaque_existential_1(&v68, v71);
      *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v38);
      *v32 = v39 & 1;
      v32 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v35 += 40;
      if (!--v36)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v69 = v48 & 1;
  v70 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t static VisualEffectModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v39 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 40);
  v36 = *(a2 + 24);
  v37 = v13;
  v14 = *(a2 + 15);
  v38 = *(a2 + 14);
  v15 = *(a2 + 18);
  swift_beginAccess();
  v16 = *(v12 + 16);
  LODWORD(v27) = v11;
  HIDWORD(v27) = v14;
  LODWORD(v28) = v16;
  LODWORD(v29) = 0;
  v24 = a5;
  v25 = type metadata accessor for VisualEffectModifier.Child();
  v20 = *(a2 + 76);
  v21 = *(a2 + 8);
  *(&v27 + 4) = __PAIR64__(v15, v21);
  HIDWORD(v28) = v20;
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v23, v25, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  _GraphValue.init(_:)(v22, &v22);
  v27 = v39;
  v29 = v36;
  v28 = v12;
  v30 = v37;
  v31 = v38;
  v32 = v14;
  v33 = v21;
  v34 = v15;
  v35 = v20;
  return (*(a6 + 16))(&v22, &v27, a3, a4, a5, a6);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance VisualEffectModifier<A>.Child()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for VisualEffectModifier<A>.Child(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v15;
  v22[4] = *(a2 + 64);
  v23 = *(a2 + 80);
  v16 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v16;
  v21 = v14;
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  type metadata accessor for CombinedVisualEffect();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:), a6, v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = v14;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  v18 = *(a8 + 16);

  v18(v20, v22, partial apply for closure #2 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:), v17, a6, a8);
}

uint64_t sub_18D30D654()
{

  return swift_deallocObject();
}

uint64_t ViewContentOffset.offset.getter()
{
  v1 = *v0;
  if (*(v0 + 16) != 1)
  {
    return v1;
  }

  v2 = v0[1];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = *AGGraphGetValue();
  static Update.end()();
  result = _MovableLockUnlock(v3);
  v6 = __OFADD__(v4, v2);
  v1 = v4 + v2;
  if (!v6)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for CombinedVisualEffect();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t static GeometryVisualEffect._makeVisualEffect(effect:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t), uint64_t (*a9)(_DWORD *, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *a1;
  v15 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v15;
  v19[4] = *(a2 + 64);
  v20 = *(a2 + 80);
  v16 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v16;
  v18[1] = v14;
  a7(255, a5, a6);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(a8, a5, v18);
  return a9(v18, v19, a3, a4, a5, a6);
}

uint64_t closure #1 in static GeometryVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _OpacityEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(a1, v4);
}

uint64_t closure #2 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v13;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  v17 = a3;
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  v16[3] = a9;
  type metadata accessor for CombinedVisualEffect();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:), a6, v16);
  return (*(a8 + 16))(v16, v18, a4, a5, a6, a8);
}

BOOL LazyLayoutCacheItem.AllItemsPhaseMutation.combine<A>(with:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v9 = 1;
    outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v8, &lazy cache variable for type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation?, &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation);
    return 0;
  }

  v9 = 0;
  outlined init with take of LazyLayoutCacheItem.AllItemsPhaseMutation(&v8, v10);
  Strong = swift_weakLoadStrong();
  v5 = swift_weakLoadStrong();
  outlined destroy of weak AnyGestureResponder?(v10);
  if (Strong)
  {
    if (v5)
    {

      return Strong == v5;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:

    return 0;
  }

  return 1;
}

uint64_t _ViewListOutputs.makeAttribute(viewInputs:)(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 36);
  outlined init with copy of _ViewListOutputs.Views(v1, v24);
  if (v25)
  {
    v4 = LODWORD(v24[0]);
    if (*(&v24[0] + 1))
    {
      LODWORD(v19[0]) = v24[0];
      *(&v19[0] + 1) = *(&v24[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();
      v4 = Attribute.init<A>(body:value:flags:update:)();
    }
  }

  else
  {
    outlined init with take of AnyTrackedValue(v24, v21);
    outlined init with copy of AnyTrackedValue(v21, v18);
    v5 = *(v1 + 48);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v8 = (*(v7 + 8))(v6, v7);
    if ((v3 & 0x100) != 0)
    {
      v9 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v2);
      Attribute = AGWeakAttributeGetAttribute();
      v10 = Attribute == *MEMORY[0x1E698D3F8];
      if (Attribute == *MEMORY[0x1E698D3F8])
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }

    *&v16 = 0;
    BYTE8(v16) = 0;
    outlined init with copy of AnyTrackedValue(v18, &v13);
    *(&v15 + 1) = v5 - v8;

    *&v16 = MEMORY[0x1E69E7CD0];
    BYTE8(v16) = 0;
    v17 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v9);
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    v20 = v17;
    v19[0] = v13;
    *(&v14 + 1) = &unk_1F0084288;
    *&v15 = lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
    *&v13 = swift_allocObject();
    outlined init with copy of BaseViewList(v19, v13 + 16);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v4 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList(v19);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v4;
}

uint64_t static AlignmentID.combineExplicit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v18 - v13;
  v21 = 0;
  v22 = 1;
  (*(v7 + 16))(v9, a1, a3, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v15 = 0;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v20)
    {
      break;
    }

    if ((v19 & 1) == 0)
    {
      (*(a4 + 16))(v15, &v21, v18[0], a4, *&v18[2]);
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return v21;
}

uint64_t LazySubviewPlacements.scrollPhase.getter()
{
  v1 = *(v0 + 32);
  AGGraphClearUpdate();
  if (v1 == *MEMORY[0x1E698D3F8] || (v2 = *AGGraphGetValue(), v2 == 5))
  {
    v2 = 0;
  }

  AGGraphSetUpdate();
  return v2;
}

uint64_t View.layoutValue<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _LayoutTrait();
  swift_getWitnessTable();

  return View._trait<A>(_:_:)(v5, a2, a3);
}

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

SwiftUI::LocalizedStringKey __swiftcall LocalizedStringKey.init(stringInterpolation:)(SwiftUI::LocalizedStringKey::StringInterpolation stringInterpolation)
{
  v1 = *(stringInterpolation.key._countAndFlagsBits + 8);
  v2 = *(stringInterpolation.key._countAndFlagsBits + 16);
  v3 = *stringInterpolation.key._countAndFlagsBits;
  v4 = 1;
  result.arguments._rawValue = v2;
  result.key._object = v1;
  result.key._countAndFlagsBits = v3;
  result.hasFormatting = v4;
  return result;
}

uint64_t (*AnchorGeometryTransform.value.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v6 = a2;
  v7 = HIDWORD(a1);
  v8 = HIDWORD(a2);
  type metadata accessor for AnchorGeometryTransformModifier();
  Value = AGGraphGetValue();
  v11 = *Value;
  v10 = Value[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = v7;
  *(v12 + 52) = v6;
  *(v12 + 56) = v8;

  return partial apply for closure #1 in AnchorGeometryTransform.value.getter;
}

uint64_t sub_18D30E5B8()
{

  return swift_deallocObject();
}

uint64_t (*protocol witness for Rule.value.getter in conformance AnchorGeometryTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = AnchorGeometryTransform.value.getter(v5, v4, v6, v7);
  v10 = v9;
  result = swift_allocObject();
  *(result + 2) = v6;
  *(result + 3) = v7;
  *(result + 4) = v8;
  *(result + 5) = v10;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18D30E684()
{

  return swift_deallocObject();
}

void *EnvironmentValues.accentColor.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v1);

    return v2;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(v1);
    if (result)
    {
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in AnchorGeometryTransform.value.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  v5 = *(v1 + 48);
  v6 = v3;
  return v2(a1, &v5);
}

uint64_t AnyGradient.init<A>(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GradientBox();
  (*(v4 + 16))(v6, a1, a2);
  v7 = GradientBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t GradientBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

double GeometryProxy.bounds(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeometryProxy.transform.getter(&v6);
  ViewTransform.containingSizedCoordinateSpace(name:)(a1, v7);

  result = *v7;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v8;
  return result;
}

__n128 Text.Measurements.Context.init(writingMode:textSuffix:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  outlined consume of Text.Suffix?(0, 0, 0x1FFFFFFFELL);
  result = *a2;
  *(a3 + 24) = *(a2 + 16);
  *(a3 + 8) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance UnevenRoundedRectangle@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v13 = *(v5 + 32);
  specialized Path.init(roundedRect:cornerRadii:style:)(&v13, v14, a2, a3, a4, a5, v7, v8, v9, v10);
  result = *v14;
  v12 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v12;
  *(a1 + 32) = v15;
  return result;
}

uint64_t outlined consume of Text.Suffix?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of Text.Suffix.Storage(result, a2, a3);
  }

  return result;
}

uint64_t specialized Path.init(roundedRect:cornerRadii:style:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v19 = *a1;
  result = CGRectIsNull(*&a3);
  if (result)
  {
    v21 = 0;
    v22 = 6;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 16) = 2;
    RBPathStorageInit();
    v25[0] = 0x3FF0000000000000;
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = 0x3FF0000000000000;
    v25[4] = 0;
    v25[5] = 0;
    *v24 = a3;
    *&v24[1] = a4;
    *&v24[2] = a5;
    *&v24[3] = a6;
    *&v24[4] = a7;
    *&v24[5] = a8;
    if (v19)
    {
      v23 = 11;
    }

    else
    {
      v23 = 10;
    }

    *&v24[6] = a9;
    *&v24[7] = a10;
    result = MEMORY[0x193AC35E0](v21 + 24, v23, v24, v25);
    v22 = 5;
  }

  *a2 = v21;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v22;
  return result;
}

uint64_t DisplayList.ViewUpdater.Platform.updateShapeViewAsync(layer:oldState:oldSize:oldPath:oldPaint:oldStyle:newState:newSize:newPath:newPaint:newStyle:contentsChanged:)(void **a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, double *a8, uint64_t a9, uint64_t a10, __int16 a11, char a12)
{
  v142 = *MEMORY[0x1E69E9840];
  v97 = *(a9 + 16);
  v98 = *a9;
  v96 = *(a9 + 32);
  v17 = *a4;
  v102 = *(a4 + 16);
  v103 = *(a4 + 8);
  v101 = *(a4 + 24);
  v18 = *(a4 + 32);
  v95 = *a1;
  ObjectType = swift_getObjectType();
  v105 = a3[1];
  v106 = *a3;
  v20 = *a2;
  v21 = *(*a2 + 24);
  if (ObjectType == type metadata accessor for ColorShapeLayer())
  {
    v26 = a8[1];
    v91 = (*a7 + 24);
    v27 = 0.0;
    v28 = v105;
    v29 = v106;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v92 = v26;
    v93 = *a8;
    v33 = *a8;
    if ((a12 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v89 = v18;
  v90 = v17;
  if (v18 > 2)
  {
    if (v18 == 5)
    {
      if (*(*&v17 + 16))
      {
        if (*(*&v17 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v34 = MEMORY[0x193AC3640](*&v17 + 24);
        }

        x = v34;
        y = v35;
        width = v36;
        height = v37;
      }

      else
      {
        v38 = *(*&v17 + 24);
        if (!v38)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v39 = v38;

        PathBoundingBox = CGPathGetPathBoundingBox(v39);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      outlined destroy of Path(a4);
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_67;
      }

      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else if (v18 > 1)
  {
    x = *(*&v17 + 16);
    y = *(*&v17 + 24);
    width = *(*&v17 + 32);
    height = *(*&v17 + 40);
  }

  else
  {
    x = v17;
    width = v102;
    y = v103;
    height = v101;
  }

  v144.origin.x = x;
  v144.origin.y = y;
  v144.size.width = width;
  v144.size.height = height;
  IsNull = CGRectIsNull(v144);
  if (IsNull)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = x;
  }

  if (IsNull)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = y;
  }

  if (IsNull)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = width;
  }

  if (IsNull)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = height;
  }

  v41 = type metadata accessor for PaintShapeLayer();
  v42 = a6;
  if (ObjectType == v41)
  {
    v145.size.width = v29;
    v145.size.height = v28;
    v44 = 1.0 / v21;
    v145.origin.x = v30;
    v145.origin.y = v27;
    v146 = CGRectStandardize(v145);
    v45 = v146.origin.x + v146.size.width;
    v46 = v146.origin.y + v146.size.height;
    v47 = 1.0 / v21 * 0.5;
    v48 = v47 + v146.origin.x;
    v43 = ObjectType;
    if (1.0 / v21 == 1.0)
    {
      v30 = floor(v48);
      v27 = floor(v47 + v146.origin.y);
      v29 = round(floor(v47 + v45) - v30);
      v28 = round(floor(v47 + v46) - v27);
    }

    else
    {
      v30 = v44 * floor(v48 / v44);
      v27 = v44 * floor((v47 + v146.origin.y) / v44);
      v29 = v44 * round((v44 * floor((v47 + v45) / v44) - v30) / v44);
      v28 = v44 * round((v44 * floor((v47 + v46) / v44) - v27) / v44);
    }
  }

  else
  {
    v43 = ObjectType;
  }

  v49 = *a9;
  v50 = *(a9 + 32);
  v92 = a8[1];
  v93 = *a8;
  v91 = (*a7 + 24);
  v88 = *v91;
  if (v50 > 2)
  {
    if (v50 == 5)
    {
      if (*(v49 + 16))
      {
        if (*(v49 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v51 = MEMORY[0x193AC3640](v49 + 3);
        }

        v31 = v51;
        v32 = v52;
        v33 = v53;
        v26 = v54;
        goto LABEL_51;
      }

      v55 = *(v49 + 3);
      if (v55)
      {
        patha = v55;

        v147 = CGPathGetPathBoundingBox(patha);
        v31 = v147.origin.x;
        v32 = v147.origin.y;
        v33 = v147.size.width;
        v26 = v147.size.height;

LABEL_51:
        outlined destroy of Path(a9);
        goto LABEL_52;
      }

      goto LABEL_66;
    }

    if (v50 == 6)
    {
      v31 = *MEMORY[0x1E695F050];
      v32 = *(MEMORY[0x1E695F050] + 8);
      v33 = *(MEMORY[0x1E695F050] + 16);
      v26 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_52;
    }

LABEL_67:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(a9 + 32) && v50 != 1)
  {
    v31 = v49[2];
    v32 = v49[3];
    v33 = v49[4];
    v26 = v49[5];
  }

  else
  {
    v31 = *a9;
    v32 = *(a9 + 8);
    v33 = *(a9 + 16);
    v26 = *(a9 + 24);
  }

LABEL_52:
  ObjectType = v43;
  v148.origin.x = v31;
  v148.origin.y = v32;
  v148.size.width = v33;
  v148.size.height = v26;
  if (CGRectIsNull(v148))
  {
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v26 = 0.0;
  }

  v56 = v43 == v41;
  a6 = v42;
  if (v56)
  {
    *&path = v30;
    v57 = v27;
    v58 = v28;
    v149.size.width = v33;
    v59 = 1.0 / v88;
    v149.origin.x = v31;
    v149.origin.y = v32;
    v149.size.height = v26;
    v150 = CGRectStandardize(v149);
    v60 = v150.origin.x + v150.size.width;
    v61 = v150.origin.y + v150.size.height;
    v62 = 1.0 / v88 * 0.5;
    v63 = v62 + v150.origin.x;
    v17 = v90;
    LOBYTE(v18) = v89;
    if (1.0 / v88 == 1.0)
    {
      v31 = floor(v63);
      v32 = floor(v62 + v150.origin.y);
      v26 = round(floor(v62 + v61) - v32);
      v33 = round(floor(v62 + v60) - v31);
    }

    else
    {
      v31 = v59 * floor(v63 / v59);
      v32 = v59 * floor((v62 + v150.origin.y) / v59);
      v26 = v59 * round((v59 * floor((v62 + v61) / v59) - v32) / v59);
      v33 = v59 * round((v59 * floor((v62 + v60) / v59) - v31) / v59);
    }

    v28 = v58;
    v27 = v57;
    v30 = *&path;
    if ((a12 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v17 = v90;
    LOBYTE(v18) = v89;
    if ((a12 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_61:
  v85 = v33;
  v64 = *(v20 + 24);
  v65 = *(a2 + 9);
  v131 = *(a2 + 8);
  v132 = v65;
  v133 = *(a2 + 10);
  v134 = a2[22];
  v66 = *(a2 + 5);
  v127 = *(a2 + 4);
  v128 = v66;
  v67 = *(a2 + 7);
  v129 = *(a2 + 6);
  v130 = v67;
  v68 = *(a2 + 1);
  *&v125.a = *a2;
  *&v125.c = v68;
  v69 = *(a2 + 3);
  *&v125.tx = *(a2 + 2);
  v126 = v69;
  *&v135.a = v95;
  *&v135.b = ObjectType;
  v135.c = v17;
  v135.d = v103;
  v135.tx = v102;
  v135.ty = v101;
  LOBYTE(v136) = v18;
  *(&v136 + 1) = v30;
  v104 = v27;
  *&v137 = v27;
  *(&v137 + 1) = a5;
  *&v138 = -v30;
  *(&v138 + 1) = -v27;
  *&v139 = v106;
  *(&v139 + 1) = v105;
  LOWORD(v140) = a6 & 0x101;
  *(&v140 + 1) = v64;
  v141 = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
  v70 = *v91;
  v71 = *(a7 + 144);
  v131 = *(a7 + 128);
  v132 = v71;
  v133 = *(a7 + 160);
  v134 = *(a7 + 176);
  v72 = *(a7 + 80);
  v127 = *(a7 + 64);
  v128 = v72;
  v73 = *(a7 + 112);
  v129 = *(a7 + 96);
  v130 = v73;
  v74 = *(a7 + 16);
  *&v125.a = *a7;
  *&v125.c = v74;
  v75 = *(a7 + 48);
  *&v125.tx = *(a7 + 32);
  v126 = v75;
  *&v116 = v95;
  *(&v116 + 1) = ObjectType;
  v117 = v98;
  v118 = v97;
  LOBYTE(v119) = v96;
  *(&v119 + 1) = v31;
  *&v120 = v32;
  *(&v120 + 1) = a10;
  *&v121 = -v31;
  *(&v121 + 1) = -v32;
  *&v122 = v93;
  *(&v122 + 1) = v92;
  LOWORD(v123) = a11 & 0x101;
  *(&v123 + 1) = v70;
  v124 = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
  v76 = v95;
  outlined init with copy of Path(a4, &v125);
  outlined init with copy of Path(a9, &v125);
  v77 = v76;

  if (specialized static ShapeLayerHelper.updateAsync(layer:old:new:)(a1, &v135, &v116))
  {
    v113 = v122;
    v114 = v123;
    v115 = v124;
    v109 = v118;
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v107 = v116;
    v108 = v117;
    outlined destroy of ShapeLayerHelper(&v107);
    v129 = v139;
    v130 = v140;
    LOBYTE(v131) = v141;
    v125 = v135;
    v126 = v136;
    v127 = v137;
    v128 = v138;
    outlined destroy of ShapeLayerHelper(&v125);
    v27 = v104;
    v33 = v85;
LABEL_63:
    v78 = *(a2 + 3);
    *&v125.a = *(a2 + 2);
    *&v125.c = v78;
    *&v125.tx = *(a2 + 4);
    CGAffineTransformTranslate(&v135, &v125, v30, v27);
    v79 = *&v135.c;
    v80 = *&v135.tx;
    *(a2 + 2) = *&v135.a;
    *(a2 + 3) = v79;
    *(a2 + 4) = v80;
    v81 = *(a7 + 48);
    *&v125.a = *(a7 + 32);
    *&v125.c = v81;
    *&v125.tx = *(a7 + 64);
    CGAffineTransformTranslate(&v135, &v125, v31, v32);
    v82 = *&v135.c;
    v83 = *&v135.tx;
    *(a7 + 32) = *&v135.a;
    *(a7 + 48) = v82;
    *(a7 + 64) = v83;
    *a3 = v29;
    a3[1] = v28;
    *a8 = v33;
    a8[1] = v26;
    return 1;
  }

  v113 = v122;
  v114 = v123;
  v115 = v124;
  v109 = v118;
  v110 = v119;
  v111 = v120;
  v112 = v121;
  v107 = v116;
  v108 = v117;
  outlined destroy of ShapeLayerHelper(&v107);
  v129 = v139;
  v130 = v140;
  LOBYTE(v131) = v141;
  v125 = v135;
  v126 = v136;
  v127 = v137;
  v128 = v138;
  outlined destroy of ShapeLayerHelper(&v125);
  return 0;
}

double Text.Measurements.size(of:in:context:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = *a5;
  v23 = *v7;
  Text.Measurements.cache.getter();
  v20[0] = v15;
  v16 = *(a5 + 8);
  v22 = *(a5 + 24);
  v21 = v16;
  TextSizeCache.metrics(of:in:context:)(a1, a2, a3 & 1, a4, v20, a6, a7);
  v18 = v17;

  return v18;
}

unint64_t TextSizeCache.metrics(of:in:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5, double a6, double a7)
{
  v11 = v7;
  LODWORD(v12) = a3;
  v15 = *(a5 + 1);
  v16 = *(a5 + 2);
  v17 = *(a5 + 3);
  v18 = *(a5 + 4);
  v164 = *a5;
  LOBYTE(v211) = *a5;
  v166 = v16;
  v167 = v15;
  *(&v211 + 1) = v15;
  *&v212 = v16;
  v165 = v17;
  *(&v212 + 1) = v17;
  v163 = v18;
  *&v213 = v18;

  SuffixCache.setContextUsed(_:)(&v211);

  swift_beginAccess();
  v19 = *(v7 + 32);
  v20 = *(v19 + 16);
  v178 = v12;
  v155 = v7;
  if (!v20)
  {
    goto LABEL_70;
  }

  v21 = v19 + 32;

  v23 = 0;
  v24 = a4;
  v174 = v22;
  v170 = v21;
  *&v172 = v20;
  while (1)
  {
    v25 = v21 + 120 * v23;
    v26 = *(v25 + 32);
    v27 = *(v25 + 48);
    v28 = *(v25 + 16);
    v211 = *v25;
    v212 = v28;
    v214 = v27;
    v213 = v26;
    v29 = *(v25 + 64);
    v30 = *(v25 + 80);
    v31 = *(v25 + 96);
    LOBYTE(v218) = *(v25 + 112);
    v217 = v31;
    v216 = v30;
    v215 = v29;
    v32 = *&v211;
    v33 = *(&v212 + 1);
    if (v212)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_66;
      }

      v177 = 120 * v23;
      v34 = *(*v211 + 96);
      v21 = *v211 + 96;
      outlined init with copy of TextSizeCache.Entry(&v211, v210);
      if ((v34(a1) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_66;
      }

      v177 = 120 * v23;
      if (v211 == __PAIR128__(a2, a1))
      {
        outlined init with copy of TextSizeCache.Entry(&v211, v210);
      }

      else
      {
        v32 = COERCE_DOUBLE(_stringCompareWithSmolCheck(_:_:expecting:)());
        outlined init with copy of TextSizeCache.Entry(&v211, v210);
        if ((LOBYTE(v32) & 1) == 0)
        {
          goto LABEL_65;
        }
      }
    }

    v35 = *(v33 + 16);
    if (v35 != *(v24 + 16))
    {
      goto LABEL_65;
    }

    if (v35 && v33 != v24)
    {
      break;
    }

LABEL_61:
    if (*(&v215 + 1) != a6 || *&v216 != a7)
    {
LABEL_65:
      outlined destroy of TextSizeCache.Entry(&v211);
      LOBYTE(v12) = v178;
      v22 = v174;
      v21 = v170;
      v20 = v172;
      goto LABEL_66;
    }

    v210[0] = v213;
    *&v210[8] = *(&v213 + 1);
    *&v210[16] = v214;
    *&v210[32] = v215;
    v208[0] = v164;
    *&v208[8] = v167;
    *&v208[16] = v166;
    *&v208[24] = v165;
    *&v208[32] = v163;
    outlined copy of Text.Suffix?(*(&v213 + 1), v214, *(&v214 + 1));
    v46 = specialized static Text.Measurements.Context.== infix(_:_:)(v210, v208);
    outlined consume of Text.Suffix?(*&v210[8], *&v210[16], *&v210[24]);
    outlined destroy of TextSizeCache.Entry(&v211);
    v12 = v178;
    v22 = v174;
    v47 = v177;
    v21 = v170;
    v20 = v172;
    if (v46)
    {

      swift_beginAccess();
      v125 = *(v155 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v155 + 32) = v125;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew()(v125);
      }

      if (v23 < *(v125 + 2))
      {
        v125[v177 + 144] = 1;
        *(v155 + 32) = v125;
        swift_endAccess();
        return *&v125[v177 + 136];
      }

      __break(1u);
LABEL_135:
      swift_once();
LABEL_127:
      v129 = static NSAttributedString.emptyString;
      v128 = v177;
      v127 = v172;
LABEL_128:
      v195 = v47;
      LOBYTE(v194[0]) = v23;
      *(v8 + 44) = 0;
      *(v8 + 45) = v129;
      *(v8 + 46) = v46;
      v8[376] = v47;
      *(v8 + 48) = v24;
      v8[392] = v23;
      *(v8 + 50) = v9;
      *(v8 + 408) = v127;
      v8[424] = v125;
      v8[425] = v10 != 0.0;
      v8[426] = v153;
      v130 = MEMORY[0x1E69E7CC0];
      *(v8 + 54) = MEMORY[0x1E69E7CC0];
      *(v8 + 25) = 0;
      v8[208] = 1;
      v131 = v8 + 280;
      LOBYTE(v193[0]) = 1;
      *(v8 + 312) = 0u;
      *(v8 + 328) = 0u;
      *(v8 + 280) = 0u;
      *(v8 + 296) = 0u;
      v8[344] = 1;
      *(v8 + 27) = v128;
      *(v8 + 14) = 0u;
      *(v8 + 15) = 0u;
      *(v8 + 128) = 768;
      v8[258] = v153;
      *(v8 + 130) = 0;
      *(v8 + 33) = v130;
      *(v8 + 34) = v130;
      v132 = *&v208[16];
      *(v8 + 1) = *v208;
      *(v8 + 2) = v132;
      v133 = *&v208[32];
      v134 = *&v208[48];
      v135 = *&v208[80];
      *(v8 + 5) = *&v208[64];
      *(v8 + 6) = v135;
      *(v8 + 3) = v133;
      *(v8 + 4) = v134;
      v136 = *&v208[96];
      v137 = *&v208[112];
      v138 = *&v208[128];
      v8[160] = v209;
      *(v8 + 8) = v137;
      *(v8 + 9) = v138;
      *(v8 + 7) = v136;
      if (v128)
      {
        v182 = 0uLL;
        v183 = 0uLL;
        v180 = 0uLL;
        v181 = 0uLL;
        v184 = 1;
        LOBYTE(v207[0]) = v208[104];
        *(&v207[0] + 1) = *&v208[112];
        v203 = *&v208[96];
        v204 = *&v208[112];
        v205 = *&v208[128];
        v206 = v209;
        v199 = *&v208[32];
        v200 = *&v208[48];
        v201 = *&v208[64];
        v202 = *&v208[80];
        v197 = *v208;
        v198 = *&v208[16];
        v139 = v128;
        outlined init with copy of TextLayoutProperties(v208, v185);
        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v139, &v180, &v197);
        v141 = v140;
        v143 = v142;
        v145 = v144;
        v147 = v146;

        outlined destroy of TextLayoutProperties(v208);
        v148 = v183;
        *(v8 + 312) = v182;
        *(v8 + 328) = v148;
        v8[344] = v184;
        v149 = v181;
        *v131 = v180;
        *(v8 + 296) = v149;

        *(v8 + 21) = v141;
        *(v8 + 22) = v143;
        *(v8 + 23) = v145;
        *(v8 + 24) = v147;
      }

      else
      {

        outlined destroy of TextLayoutProperties(v208);
        *v131 = 0u;
        *(v8 + 296) = 0u;
        *(v8 + 312) = 0u;
        *(v8 + 328) = 0u;
        v8[344] = 1;

        *(v8 + 184) = 0u;
        *(v8 + 168) = 0u;
      }

      goto LABEL_111;
    }

LABEL_66:
    if (++v23 == v20)
    {
      goto LABEL_69;
    }

    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_69:

      v11 = v155;
LABEL_70:
      v48 = *(v11 + 16);
      v49 = *(v11 + 24);
      v220 = v48;
      v221 = v49;
      if (v48)
      {
        v50 = *(v48 + 64);
      }

      else
      {
        v50 = 0;
      }

      v51 = *(v49 + 16);
      swift_retain_n();
      swift_retain_n();

      os_unfair_lock_lock((v51 + 16));
      *(v51 + 24) = v50;
      os_unfair_lock_unlock((v51 + 16));

      v210[0] = v164;
      *&v210[8] = v167;
      *&v210[16] = v166;
      *&v210[24] = v165;
      *&v210[32] = v163;
      *v208 = v48;
      *&v208[8] = v49;

      SuffixCache.suffix(context:environment:)(v210, v208, &v211);

      v52 = v212;
      v53 = *(&v213 + 1);
      if (v212 >> 1 != 0xFFFFFFFF || HIDWORD(*(&v213 + 1)))
      {
        v54 = v213;
        v55 = *(&v212 + 1);
        v56 = *(&v211 + 1);
        v12 = v211;
        v222[0] = v211;
        v222[1] = v212;
        v222[2] = v213;
        v223 = v214;
        outlined copy of ResolvedTextSuffix?(v211, *(&v211 + 1), v212, *(&v212 + 1), v213, *(&v213 + 1));
        swift_retain_n();
        outlined copy of ResolvedTextSuffix?(v12, v56, v52, v55, v54, v53);
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2B5(&v220, v222);

        outlined consume of ResolvedTextSuffix?(v12, v56, v52, v55, v54, v53);
        v57 = v220;
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSuffixK033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Ttg5(v48, v220);
        outlined consume of ResolvedTextSuffix?(v12, v56, v52, v55, v54, v53);
        v58 = v12;
        LOBYTE(v12) = v178;
        outlined consume of ResolvedTextSuffix?(v58, v56, v52, v55, v54, v53);

        v48 = v57;
      }

      *&v211 = v48;
      *(&v211 + 1) = v221;
      *&v197 = 64;
      *v208 = 0uLL;
      v175 = v221;

      v177 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(v210, &v211, 1, &v197, v208, a1, a2, v12 & 1, a4);

      v217 = *&v210[96];
      v218 = *&v210[112];
      *v219 = *&v210[128];
      *&v219[9] = *&v210[137];
      v213 = *&v210[32];
      v214 = *&v210[48];
      v215 = *&v210[64];
      v216 = *&v210[80];
      v211 = *v210;
      v212 = *&v210[16];
      v59 = *(a4 + 16);
      if (v59)
      {
        v60 = (a4 + 40);
        while (1)
        {
          v61 = *v60;
          v60 += 16;
          if ((v61 & 0xE0) == 0xC0)
          {
            type metadata accessor for CollapsibleTextModifier();
            if (swift_dynamicCastClass())
            {
              break;
            }
          }

          if (!--v59)
          {
            goto LABEL_82;
          }
        }

        v153 = 1;
      }

      else
      {
LABEL_82:
        v153 = 0;
      }

      v62 = *(&v214 + 1);
      v63 = v215;
      v64 = v216;
      v65 = v217;
      v66 = v218;
      v161 = v219[24];
      v171 = *(&v214 + 1);
      v173 = v216;
      v154 = v215;
      if (v175)
      {
        v67 = *(&v215 + 1);
        v68 = v177;
        v69 = v65;
        outlined copy of ResolvedTextSuffix(v62, v63, v67, v64, *(&v64 + 1), v65);
        v70 = v66;

        _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v48, v210);
        v71 = v177;

        v72 = *(&v64 + 1);
        v73 = *(&v65 + 1);
      }

      else
      {
        *v208 = v48;
        v74 = v177;
        v69 = v65;
        outlined copy of ResolvedTextSuffix(v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65);
        v70 = v66;
        v71 = v177;

        TextLayoutProperties.init(from:)(v208, v210);
        v72 = *(&v64 + 1);
        v73 = *(&v65 + 1);
        v67 = *(&v63 + 1);
      }

      *v208 = *v210;
      *&v208[10] = *&v210[10];
      v75 = v210[26];
      v76 = v210[81];
      *&v208[82] = *&v210[82];
      *&v208[98] = *&v210[98];
      *&v208[114] = *&v210[114];
      *&v208[128] = *&v210[128];
      if (v164 != 2)
      {
        v76 = v164 & 1;
      }

      if (v161 != 3)
      {
        v75 = v161;
      }

      v208[26] = v75;
      *&v208[73] = *&v210[73];
      *&v208[59] = *&v210[59];
      *&v208[43] = *&v210[43];
      *&v208[27] = *&v210[27];
      v208[81] = v76;
      v209 = v210[144] & 0xFD;
      v176 = v70;
      if ((v76 & 1) == 0 && !*(v70 + 16))
      {
        if ((v69 & 0x8000000000000000) == 0)
        {
          outlined copy of ResolvedTextSuffix(v171, v154, v67, v173, v72, v69);
          outlined consume of ResolvedTextSuffix(v171, v154, v67, v173, v72, v69);
          outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
          v71 = v177;
          goto LABEL_98;
        }

        outlined consume of ResolvedTextSuffix(v171, v154, v67, v173, v72, v69);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
        v71 = v177;
        if (v208[120] != 2)
        {
          goto LABEL_98;
        }

        type metadata accessor for ResolvedStyledText.StringDrawing();
        v8 = swift_allocObject();
        LOBYTE(v125) = v209 & 1;
        if (v209)
        {
          outlined init with copy of TextLayoutProperties(v208, &v197);
          v12 = v155;
        }

        else
        {
          v12 = v155;
          outlined init with copy of TextLayoutProperties(v208, &v197);
          if (v177)
          {
            NSAttributedString.isDynamic.getter();
          }
        }

        v46 = *v208;
        v47 = v208[8];
        v24 = *&v208[16];
        LOBYTE(v23) = v208[24];
        v127 = *&v208[88];
        v128 = v177;
        v129 = v177;
        v9 = *&v208[32];
        v10 = *&v208[72];
        if (!v177)
        {
          v172 = *&v208[88];
          if (one-time initialization token for emptyString == -1)
          {
            goto LABEL_127;
          }

          goto LABEL_135;
        }

        goto LABEL_128;
      }

LABEL_98:
      v162 = v72;
      v77 = v67;
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v8 = swift_allocObject();
      v78 = MEMORY[0x1E69E7CC0];
      *(v8 + 52) = MEMORY[0x1E69E7CC0];
      *(v8 + 424) = 0u;
      *(v8 + 440) = 0u;
      *(v8 + 456) = 0u;
      *(v8 + 472) = 0u;
      *(v8 + 244) = 512;
      if ((v208[8] & 1) != 0 || *v208 != 1)
      {
        v79 = v73;
        v80 = v69;
        if (v71)
        {
          v71 = NSAttributedString.replacingLineBreakModes(_:)(0);
        }
      }

      else
      {
        v79 = v73;
        v80 = v69;
        v81 = v71;
      }

      v82 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v83 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v82 setDelegate_];
      [v82 setUsesFontLeading_];
      v150 = v71;
      v156 = v82;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v156, v71, v207);
      v84 = v207[3];
      *(v8 + 33) = v207[2];
      *(v8 + 34) = v84;
      *(v8 + 35) = v207[4];
      v85 = v207[1];
      *(v8 + 31) = v207[0];
      *(v8 + 32) = v85;
      *(v8 + 72) = v83;
      *(v8 + 44) = v171;
      *(v8 + 45) = v154;
      *(v8 + 46) = v77;
      *(v8 + 47) = v173;
      *(v8 + 48) = v162;
      *(v8 + 49) = v80;
      v86 = v80;
      *(v8 + 50) = v79;
      *(v8 + 51) = v176;
      *(v8 + 25) = 0;
      v8[208] = 1;
      LOBYTE(v194[0]) = 1;
      *(v8 + 280) = 0u;
      *(v8 + 296) = 0u;
      *(v8 + 312) = 0u;
      *(v8 + 328) = 0u;
      v8[344] = 1;
      *(v8 + 27) = v71;
      *(v8 + 14) = 0u;
      *(v8 + 15) = 0u;
      *(v8 + 128) = 768;
      v8[258] = v153;
      *(v8 + 130) = 0;
      *(v8 + 33) = v78;
      *(v8 + 34) = v78;
      v87 = *&v208[16];
      *(v8 + 1) = *v208;
      *(v8 + 2) = v87;
      v88 = *&v208[32];
      v89 = *&v208[48];
      v90 = *&v208[80];
      *(v8 + 5) = *&v208[64];
      *(v8 + 6) = v90;
      *(v8 + 3) = v88;
      *(v8 + 4) = v89;
      v91 = *&v208[96];
      v92 = *&v208[112];
      v93 = *&v208[128];
      v8[160] = v209;
      *(v8 + 8) = v92;
      *(v8 + 9) = v93;
      *(v8 + 7) = v91;
      v152 = v77;
      if (v71)
      {
        v189 = 0uLL;
        v190 = 0uLL;
        v187 = 0uLL;
        v188 = 0uLL;
        v191 = 1;
        v195 = v208[104];
        v196 = *&v208[112];
        v203 = *&v208[96];
        v204 = *&v208[112];
        v205 = *&v208[128];
        v206 = v209;
        v199 = *&v208[32];
        v200 = *&v208[48];
        v201 = *&v208[64];
        v202 = *&v208[80];
        v197 = *v208;
        v198 = *&v208[16];
        v94 = v80;
        outlined init with copy of TextLayoutProperties(v208, v185);
        v95 = v154;
        outlined copy of ResolvedTextSuffix(v171, v154, v77, v173, v162, v94);

        v96 = v150;
        outlined init with copy of TextLayoutProperties(v208, v185);
        v97 = v83;
        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v96, &v187, &v197);
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v105 = v104;

        v106 = v190;
        *(v8 + 312) = v189;
        *(v8 + 328) = v106;
        v8[344] = v191;
        v107 = v188;
        *(v8 + 280) = v187;
        *(v8 + 296) = v107;
        *(v8 + 21) = v99;
        *(v8 + 22) = v101;
        *(v8 + 23) = v103;
        *(v8 + 24) = v105;
        v108 = v94;
      }

      else
      {
        v8[344] = 1;
        *(v8 + 168) = 0uLL;
        *(v8 + 184) = 0uLL;
        v95 = v154;
        v109 = v86;
        outlined copy of ResolvedTextSuffix(v171, v154, v77, v173, v162, v86);

        outlined init with copy of TextLayoutProperties(v208, &v197);
        v110 = v83;
        v108 = v109;
      }

      v151 = v83;
      swift_beginAccess();
      v111 = v8[97];

      v112 = _TextContainer(v111);
      [v112 setLineFragmentPadding_];
      [v156 setTextContainer_];
      if ((v108 & 0x8000000000000000) == 0)
      {
        v114 = v171;
        v113 = v173;
        v115 = v95;
        v116 = v152;
        v117 = v162;
        outlined copy of ResolvedTextSuffix(v171, v95, v152, v173, v162, v108);
        outlined consume of ResolvedTextSuffix(v171, v95, v152, v173, v162, v108);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
        goto LABEL_109;
      }

      v114 = v171;
      v113 = v173;
      v115 = v95;
      v116 = v152;
      v117 = v162;
      outlined consume of ResolvedTextSuffix(v171, v95, v152, v173, v162, v108);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
      if (*(v176 + 16))
      {
LABEL_109:
        _NSTextLayoutManagerRequiresCTLine(v156);

        outlined consume of ResolvedTextSuffix(v114, v115, v116, v113, v117, v108);
        outlined destroy of TextLayoutProperties(v208);
      }

      else
      {

        outlined destroy of TextLayoutProperties(v208);
      }

      v12 = v155;
LABEL_111:
      memset(v185, 0, sizeof(v185));
      v186 = 1;
      (*(*v8 + 264))(&v197, v185, a6, a7);
      v10 = *(&v197 + 1);
      v9 = v197;
      if (v201)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(&v200 + 1);
      }

      LOBYTE(v21) = v178 & 1;
      v192 = v178 & 1;
      swift_beginAccess();
      v32 = *(v12 + 32);
      outlined copy of Text.Suffix?(v167, v166, v165);
      outlined copy of Text.Storage(a1, a2, v178 & 1);

      v118 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 32) = v32;
      if ((v118 & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_115;
    }
  }

  v36 = 0;
  v12 = v33 + 40;
  v8 = (a4 + 40);
  while (v36 < *(v33 + 16))
  {
    if (v35 == v36)
    {
      goto LABEL_132;
    }

    v32 = *(v12 - 8);
    v37 = *v12;
    v21 = *(v8 - 1);
    v38 = *v8;
    v39 = v37 >> 5;
    if (v37 >> 5 > 3)
    {
      if (v37 >> 5 <= 5)
      {
        if (v39 == 4)
        {
          if ((v38 & 0xE0) != 0x80)
          {
            goto LABEL_65;
          }
        }

        else if ((v38 & 0xE0) != 0xA0)
        {
          goto LABEL_65;
        }

        goto LABEL_16;
      }

      if (v39 == 6)
      {
        if ((v38 & 0xE0) != 0xC0)
        {
          goto LABEL_65;
        }

        v158 = *(**&v32 + 96);
        v42 = *v8;
        outlined copy of Text.Modifier(v21, v38);
        outlined copy of Text.Modifier(*&v32, v37);
        v159 = v158(v21);
        v43 = v42;
        v24 = a4;
        outlined consume of Text.Modifier(v21, v43);
        v44 = *&v32;
        v45 = v37;
LABEL_45:
        outlined consume of Text.Modifier(v44, v45);
        if ((v159 & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_17;
      }

      if (*&v32 | v37 ^ 0xE0)
      {
        if (v38 < 0xE0 || v21 != 1)
        {
          goto LABEL_65;
        }
      }

      else if (v38 < 0xE0 || *&v21 != 0.0)
      {
        goto LABEL_65;
      }

      if (v38 != 224)
      {
        goto LABEL_65;
      }
    }

    else if (v37 >> 5 > 1)
    {
      if (v39 != 2)
      {
        if ((v38 & 0xE0) != 0x60)
        {
          goto LABEL_65;
        }

LABEL_16:
        if (v32 != *&v21)
        {
          goto LABEL_65;
        }

        goto LABEL_17;
      }

      if ((v38 & 0xE0) != 0x40)
      {
        goto LABEL_65;
      }

      if ((v37 & 1) == 0)
      {
        if (v38)
        {
          goto LABEL_65;
        }

        goto LABEL_16;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v39)
      {
        if ((v38 & 0xE0) != 0x20)
        {
          goto LABEL_65;
        }

        if (v32 != 0.0)
        {
          if (*&v21 == 0.0)
          {
            goto LABEL_65;
          }

          v160 = *(**&v32 + 112);
          v40 = *v8;
          outlined copy of Text.Modifier(v21, v38);
          outlined copy of Text.Modifier(*&v32, v37);
          v41 = v160(v21);
LABEL_44:
          v159 = v41;
          outlined consume of Text.Modifier(*&v32, v37);
          v44 = v21;
          v45 = v40;
          v24 = a4;
          goto LABEL_45;
        }
      }

      else
      {
        if (v38 >= 0x20)
        {
          goto LABEL_65;
        }

        if (v32 != 0.0)
        {
          if (*&v21 == 0.0)
          {
            goto LABEL_65;
          }

          if (*&v32 == v21)
          {
            goto LABEL_17;
          }

          v157 = *(**&v32 + 88);
          v40 = *v8;
          outlined copy of Text.Modifier(v21, v38);
          outlined copy of Text.Modifier(*&v32, v37);
          v41 = v157(v21);
          goto LABEL_44;
        }
      }

      if (*&v21 != 0.0)
      {
        goto LABEL_65;
      }

      outlined consume of Text.Modifier(0, v38);
    }

LABEL_17:
    ++v36;
    v12 += 16;
    v8 += 16;
    if (v35 == v36)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v32 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v32 + 16) + 1, 1, *&v32));
  *(v12 + 32) = v32;
LABEL_115:
  v120 = *(*&v32 + 16);
  v119 = *(*&v32 + 24);
  if (v120 >= v119 >> 1)
  {
    v32 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, *&v32));
  }

  *(*&v32 + 16) = v120 + 1;
  v121 = *&v32 + 120 * v120;
  *(v121 + 32) = a1;
  *(v121 + 40) = a2;
  *(v121 + 48) = v21;
  v122 = *(v194 + 3);
  *(v121 + 49) = v194[0];
  *(v121 + 52) = v122;
  *(v121 + 56) = a4;
  *(v121 + 64) = v164;
  v123 = v193[0];
  *(v121 + 68) = *(v193 + 3);
  *(v121 + 65) = v123;
  *(v121 + 72) = v167;
  *(v121 + 80) = v166;
  *(v121 + 88) = v165;
  *(v121 + 96) = v163;
  *(v121 + 104) = a6;
  *(v121 + 112) = a7;
  *(v121 + 120) = v9;
  *(v121 + 128) = v10;
  *(v121 + 136) = v36;
  *(v121 + 144) = 1;
  *(v12 + 32) = v32;
  swift_endAccess();

  outlined destroy of Text.ResolvedProperties(&v211);

  return v36;
}