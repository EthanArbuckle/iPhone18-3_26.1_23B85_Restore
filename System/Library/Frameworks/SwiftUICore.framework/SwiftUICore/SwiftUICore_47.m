__n128 ResolvedShadowStyle.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v8 = *v1;
  v9 = *(v1 + 24);
  v3 = *(v1 + 40);
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v8.f32[0], v8.u32[1], v8.f32[2], v8.f32[3]);
    v4 = v10;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  v6 = vmulq_f32(v4, v5);
  result = v9;
  *a1 = v6;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  return result;
}

uint64_t GraphicsContext.drawLayer(flags:content:)(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v17[3] = a3;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a4 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v16 = a2;
    v15 = RBDrawingStateGetDisplayList();
    v11 = *(a4 + 32);
    v12 = v11;
    v13 = *(a4 + 40);
    if (v11 == 1)
    {
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
    }

    v17[0] = v12;
    v17[1] = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v15, v17);
    a2 = v16;
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v8 + 48) = *(a4 + 48);
    *(v8 + 52) = *(a4 + 52);
  }

  v17[0] = v8;

  a2(v17);

  RBDrawingStateDrawLayer();
}

void *outlined consume of GraphicsContext.Filter.Storage(void *result, id a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a11 >> 27;
  if (a11 >> 27 <= 0x11)
  {
    if (a11 >> 27 > 5)
    {
      if (v11 != 6 && v11 != 8)
      {
        return result;
      }
    }

    else if (v11 != 3)
    {
      if (v11 == 5)
      {

        return outlined consume of Path.Storage(a5, a6, a7, a8, a9);
      }

      return result;
    }

    goto LABEL_14;
  }

  if (a11 >> 27 > 0x13)
  {
    if (v11 == 20)
    {
      v12 = a2 & 1;

      return outlined consume of EitherGradient(result, v12);
    }

    else if (v11 == 24)
    {
    }
  }

  else
  {
    if (v11 != 18)
    {
      if (v11 != 19)
      {
        return result;
      }

LABEL_14:
    }

    return outlined consume of GraphicsContext.Shading.Storage(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 1, a3, a4, a5, a6, a7);
}

{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 1, a3, a4, a5, a6, a7);
}

uint64_t DrawingGroupDisplayList.updateValue()()
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E698D3F8];
  if (v0[7] == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
    v3 = 0;
    v4 = *(v0 + 72);
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v2 = *(Value + 8);
    v3 = *(Value + 12);
    v4 = v7 & 1;
  }

  v8 = *(v5 + 16);
  *(v0 + 72) = v8 != 0;
  if (!v8)
  {

    *&v64 = MEMORY[0x1E69E7CC0];
    WORD4(v64) = 0;
    HIDWORD(v64) = 0;
    AGGraphSetOutputValue();
  }

  v62 = v4;
  v57 = v3;
  v58 = v2;
  v63 = v5;
  v9 = AGGraphGetValue();
  v11 = v10;
  v55 = *(v9 + 4);
  v56 = *v9;
  v54 = *(v9 + 8);
  v52 = *(v9 + 5);
  v53 = *(v9 + 12);
  type metadata accessor for CGSize(0);
  v12 = AGGraphGetValue();
  v14 = v13;
  width = *v12;
  height = v12[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v19 = v18;
  v61 = *v17;
  v20 = AGGraphGetValue();
  v22 = v21;
  v24 = *v20;
  v23 = *(v20 + 8);
  v59 = *(v20 + 16);
  v60 = *(v20 + 32);
  if (v0[6] == v1)
  {

    v25 = 512;
  }

  else
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);

    v27 = AGGraphGetValue();
    v25 = *v27 | ((v28 & 1) << 8);
  }

  if ((v11 | v14 | v62))
  {
    v29 = 1;
    if ((v19 & 1) == 0 && (v14 & 1) == 0 && (v22 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v25 & 0x300) == 0x200)
  {
    v29 = 0;
    if (((v19 | v22) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v29 = (v25 >> 8) & 1;
    if (((v19 | v22) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  LOBYTE(v69) = 1;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v68 = 1;
  *&v72 = v24;
  *(&v72 + 1) = v23;
  v73 = v61;
  v74 = vsubq_f64(v60, vsubq_f64(v61, v59));
  specialized ViewTransform.forEach(inverted:_:)(0, &v72, &v64);
  x = 0.0;
  if ((v68 & 1) != 0 || (origin = v67[1].origin, size = v67[1].size, CGRectGetWidth(v67[1]) > width) && (v78.origin = origin, v78.size = size, CGRectGetHeight(v78) > height))
  {
    y = 0.0;
  }

  else
  {
    v79.origin.x = 0.0;
    v79.origin.y = 0.0;
    v79.size.width = width;
    v79.size.height = height;
    v83.origin = origin;
    v83.size = size;
    v80 = CGRectIntersection(v79, v83);
    x = v80.origin.x;
    y = v80.origin.y;
    width = v80.size.width;
    height = v80.size.height;
  }

  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  if (!CGRectEqualToRect(v81, *(v0 + 10)))
  {
    *(v0 + 5) = x;
    *(v0 + 6) = y;
    v29 = 1;
    *(v0 + 7) = width;
    *(v0 + 8) = height;
  }

LABEL_25:
  v34 = *(v0 + 5);
  v35 = *(v0 + 6);
  v36 = *(v0 + 7);
  v37 = *(v0 + 8);
  v82.origin.x = v34;
  v82.origin.y = v35;
  v82.size.width = v36;
  v82.size.height = v37;
  if (CGRectIsEmpty(v82))
  {

    *&v64 = MEMORY[0x1E69E7CC0];
    WORD4(v64) = 0;
    HIDWORD(v64) = 0;
    AGGraphSetOutputValue();
LABEL_44:
  }

  v38 = AGGraphGetValue();
  v41 = *v38;
  v40 = v38[1];
  if (((v29 | v19) & 1) != 0 || (v39 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v42 = ++static DisplayList.Version.lastValue;
    if (v29)
    {
      if (v42)
      {
        v43 = (2 * ((33 * (v42 >> 16)) ^ v42)) | 1;
      }

      else
      {
        LOWORD(v43) = 0;
      }

      *(v0 + 16) = v43;
    }

    v44 = v61.f64[1] - v40;
    v45 = v34 + v61.f64[0] - v41;
    v46 = v35 + v44;
    if (v25 == 3 || (v25 & 0x300) == 512)
    {
      LOBYTE(v25) = v52;
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v63;
    *(v48 + 24) = v58;
    *(v48 + 28) = v57;
    *(v48 + 32) = v34;
    *(v48 + 40) = v35;
    *(v48 + 48) = v56;
    *(v48 + 52) = v55;
    *(v48 + 53) = v25;
    *(v48 + 56) = v54;
    *(v48 + 60) = v53;
    v49 = v48 | 0xB000000000000000;
    v50 = *(v0 + 16);
    v51 = *v0;
    *&v64 = v45;
    *(&v64 + 1) = v46;
    v65.f64[0] = v36;
    v65.f64[1] = v37;
    *&v66.f64[0] = v42;
    *&v66.f64[1] = v48 | 0xB000000000000000;
    v67[0].size.width = 0.0;
    v67[0].origin = v50;
    LODWORD(v67[0].size.height) = v51;
    v74 = v66;
    v75[0] = v50;
    *(v75 + 12) = *(&v67[0].origin.y + 4);
    v72 = v64;
    v73 = v65;
    outlined copy of DisplayList.Content.Value(v48 | 0xB000000000000000);
    outlined init with copy of DisplayList.Item(&v64, &v69);
    DisplayList.init(_:)(&v72, &v69);
    *&v72 = v69;
    WORD4(v72) = v70;
    HIDWORD(v72) = v71;
    AGGraphSetOutputValue();
    outlined destroy of DisplayList.Item(&v64);
    outlined consume of DisplayList.Content.Value(v49);
    goto LABEL_44;
  }
}

uint64_t sub_18D2B3D98()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for _ShadowEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for StrokeBorderShapeView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)(a1, a2[2]);
  v5 = *(v4 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 8;
  v10 = a2[3];
  v9 = a2[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v22 = *(v9 - 8);
  v13 = *(v22 + 80);
  v14 = v13 & 0xF8 | 7;
  v15 = (v13 | *(v7 + 80)) & 0xF8 | v12 | 7;
  v16 = (v5 + v15) & ~v15;
  (*(v7 + 8))(v16, AssociatedTypeWitness);
  v17 = *(v8 + 56) + 7;

  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  (*(v11 + 8))((v18 + v16) & ~v12, v10);
  v19 = *(v22 + 8);
  v20 = (v14 + (v18 & ~v12) + *(v11 + 64) + v16 + 2) & ~v14;

  return v19(v20, v9);
}

uint64_t View.transformAnchorPreference<A, B>(key:value:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v6 = type metadata accessor for _AnchorTransformModifier();
  return View.modifier<A>(_:)(v8, a5, v6);
}

uint64_t View.transformAnchorGeometry<A>(key:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = type metadata accessor for AnchorGeometryTransformModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

double static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, int *, __int128 *)@<X2>, ValueMetadata *a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = *a1;
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  v11 = *(a2 + 60);
  v14 = (a2 + 24);
  v13 = *(a2 + 24);
  v30 = *a2;
  v31 = v8;
  v32 = v13;
  v15 = *(a2 + 36);
  v33 = *(a2 + 32);
  v34 = v15;
  v35 = v9;
  v36 = v10;
  v37 = v12;
  v38 = v11;
  v39 = *(a2 + 64);
  v40 = *(a2 + 80);
  a3(&v41, a1, &v30);
  if ((v15 & 0x20) != 0)
  {
    v30 = *a2;
    v16 = *v14;
    v31 = v8;
    v32 = v16;
    v33 = *(v14 + 2);
    v34 = v15;
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = *(a2 + 64);
    v40 = *(a2 + 80);
    swift_beginAccess();
    v26 = CachedEnvironment.animatedPosition(for:)(&v30);
    v30 = *a2;
    v17 = *v14;
    v31 = v8;
    v32 = v17;
    v33 = *(v14 + 2);
    v34 = v15;
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = *(a2 + 64);
    v40 = *(a2 + 80);
    v18 = CachedEnvironment.animatedCGSize(for:)(&v30);
    v19 = swift_endAccess();
    *&v30 = v10;
    DWORD2(v30) = v12;
    MEMORY[0x1EEE9AC00](v19);
    v21[2] = v28;
    v21[3] = v29;
    v22 = v27;
    v23 = v26;
    v24 = v18;
    v25 = v11;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(&v30, v28, partial apply for implicit closure #1 in static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:), v21, v28, v29);
  }

  *a6 = v41;
  result = v42;
  a6[1] = v42;
  return result;
}

uint64_t AnyTransition.FilterVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v6 = type metadata accessor for FilteredTransition();
  v7 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = &v27 - v8;
  v9 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UncheckedSendable();
  v17 = *(v28 - 8);
  v18 = MEMORY[0x1EEE9AC00](v28);
  v20 = &v27 - v19;
  (*(v13 + 16))(v16, a1, a2, v18);
  UncheckedSendable.init(_:)(v16, a2, v20);
  v21 = *v3;
  v22 = v3[1];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;

  v24 = v27;
  closure #1 in AnyTransition.FilterVisitor.visit<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @unowned TransitionPhase) -> (), v23, a2, v27);
  (*(v9 + 32))(v12, v24, v6);
  swift_getWitnessTable();
  v25 = specialized AnyTransition.init<A>(_:)(v12, v6);

  (*(v9 + 8))(v12, v6);

  v3[2] = v25;
  return (*(v17 + 8))(v20, v28);
}

uint64_t sub_18D2B4974()
{

  return swift_deallocObject();
}

uint64_t closure #1 in AnyTransition.FilterVisitor.visit<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FilteredTransition();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  Transition.transaction(_:)(partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @in_guaranteed TransitionPhase) -> (@out ()), v11, a3, v10);

  return UncheckedSendable.init(_:)(v10, v8, a4);
}

uint64_t Image.symbolRenderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  *(v4 + 25) = 514;
  *(v4 + 27) = 1;

  return v4;
}

void type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment);
  }

  return result;
}

uint64_t specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v59);
  v8 = v59;
  v9 = v60;
  v10 = DWORD1(v60);
  v11 = *(a2 + 48);
  v55 = *(a2 + 32);
  v56 = v11;
  v57 = *(a2 + 64);
  v58 = *(a2 + 80);
  v12 = *(a2 + 16);
  v53 = *a2;
  v54 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    outlined init with copy of _ViewInputs(a2, &v59);
    _StringGuts.grow(_:)(47);

    *&v59 = 0xD00000000000002DLL;
    *(&v59 + 1) = 0x800000018DD78740;
    MEMORY[0x193ABEDD0](0x45776F646168535FLL, 0xED00007463656666);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a2 + 16);
    swift_beginAccess();
    v14 = *(v13 + 16);
    type metadata accessor for PropertyList.Tracker();
    v15 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = MEMORY[0x1E69E7CC8];
    *(v16 + 24) = 0;
    *(v16 + 32) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    *(v16 + 40) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = 0;
    *(v15 + 16) = v16;
    outlined init with copy of _ViewInputs(a2, &v59);
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v59) = v9;
    v19 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v53, v8, *(&v8 + 1), v9 | (v10 << 32), a1, v14, v15, 1, &v59);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v20 = v59;
    v28 = v60;
    v29 = *(&v59 + 1);
    v21 = BYTE8(v60);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v23 = v49;
    LODWORD(v43) = 0;
    v64 = v52;
    v62 = v50;
    v63 = v51;
    v59 = v47;
    v60 = v48;
    v61 = v43;
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v50))
    {
      LODWORD(v33[0]) = v20;
      v66[0] = v59;
      v66[1] = v60;
      v66[2] = v61;
      v65[0] = v59;
      v65[1] = v60;
      v65[2] = v61;
      outlined init with copy of _ViewInputs(&v47, &v35);
      outlined init with copy of _ViewInputs(&v59, &v35);
      outlined init with copy of _GraphInputs(v66, &v35);
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5(v33, v65);
      outlined destroy of _GraphInputs(v66);
      _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07_ShadowD0V9_ResolvedV_Tt3B5(v33[0], &v59, a3, v32);
    }

    else
    {
      v37 = v61;
      v38 = v62;
      v39 = v63;
      v40 = v64;
      v35 = v59;
      v36 = v60;
      outlined init with copy of _ViewInputs(&v47, v33);
      v24 = outlined init with copy of _ViewInputs(&v59, v33);
      a3(v32, v24, &v35);
    }

    outlined destroy of _ViewInputs(&v59);
    LODWORD(v43) = v23;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v32, &v41);
      AGSubgraphEndTreeElement();
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    outlined destroy of _ViewInputs(&v35);
    v25 = v32[0];
    v26 = v32[1];
    if ((v21 & 1) == 0)
    {
      LOBYTE(v33[0]) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v8, *(&v8 + 1), v9, v29, v28);
    }

    v33[2] = v55;
    v33[3] = v56;
    v33[4] = v57;
    v34 = v58;
    v33[0] = v53;
    v33[1] = v54;
    outlined destroy of _ViewInputs(v33);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a4 = v25;
    a4[1] = v26;
  }

  return result;
}

{
  v68 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v61);
  v7 = v61;
  v8 = v62;
  v9 = DWORD1(v62);
  v10 = *(a2 + 48);
  v57 = *(a2 + 32);
  v58 = v10;
  v59 = *(a2 + 64);
  v60 = *(a2 + 80);
  v11 = *(a2 + 16);
  v55 = *a2;
  v56 = v11;
  if (AGTypeGetKind() - 2 > 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = *(a2 + 16);
    swift_beginAccess();
    v13 = *(v12 + 16);
    type metadata accessor for PropertyList.Tracker();
    v14 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = MEMORY[0x1E69E7CC8];
    *(v15 + 24) = 0;
    *(v15 + 32) = v16;
    v17 = MEMORY[0x1E69E7CC0];
    *(v15 + 40) = v16;
    *(v15 + 48) = v17;
    *(v15 + 56) = 0;
    *(v14 + 16) = v15;
    outlined init with copy of _ViewInputs(a2, &v61);
    LOBYTE(v61) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v55, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v13, v14, 1, &v61);

    v18 = v61;
    v26 = v62;
    v27 = *(&v61 + 1);
    v19 = BYTE8(v62);
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v49 = v55;
    v50 = v56;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    outlined init with copy of _ViewInputs(&v49, &v61);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v45 = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v43 = v49;
    v44 = v50;
    v21 = v51;
    LODWORD(v45) = 0;
    v66 = v54;
    v64 = v52;
    v65 = v53;
    v61 = v49;
    v62 = v50;
    v63 = v45;
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v52))
    {
      LODWORD(v31) = v18;
      v67[0] = v61;
      v67[1] = v62;
      v67[2] = v63;
      outlined init with copy of _ViewInputs(&v49, &v37);
      outlined init with copy of _ViewInputs(&v61, &v37);
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17VariableBlurStyleV_Tt1B5(&v31, v67);
      _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA17VariableBlurStyleV_Tt3B5(v31, &v61, a3, v30);
    }

    else
    {
      v39 = v63;
      v40 = v64;
      v41 = v65;
      v42 = v66;
      v37 = v61;
      v38 = v62;
      outlined init with copy of _ViewInputs(&v49, &v31);
      v22 = outlined init with copy of _ViewInputs(&v61, &v31);
      a3(v30, v22, &v37);
    }

    outlined destroy of _ViewInputs(&v61);
    LODWORD(v45) = v21;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v30, &v43);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v49);
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    v23 = v30[0];
    v24 = v30[1];
    if (v19)
    {
      v33 = v57;
      v34 = v58;
      v35 = v59;
      v36 = v60;
      v31 = v55;
      v32 = v56;
      outlined destroy of _ViewInputs(&v31);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v31) = v8;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v27, v26);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v33 = v57;
      v34 = v58;
      v35 = v59;
      v36 = v60;
      v31 = v55;
      v32 = v56;
      result = outlined destroy of _ViewInputs(&v31);
    }

    *a4 = v23;
    a4[1] = v24;
  }

  return result;
}

{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v59);
  v8 = v59;
  v9 = v60;
  v10 = DWORD1(v60);
  v11 = *(a2 + 48);
  v55 = *(a2 + 32);
  v56 = v11;
  v57 = *(a2 + 64);
  v58 = *(a2 + 80);
  v12 = *(a2 + 16);
  v53 = *a2;
  v54 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    outlined init with copy of _ViewInputs(a2, &v59);
    _StringGuts.grow(_:)(47);

    *&v59 = 0xD00000000000002DLL;
    *(&v59 + 1) = 0x800000018DD78740;
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD787B0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a2 + 16);
    swift_beginAccess();
    v14 = *(v13 + 16);
    type metadata accessor for PropertyList.Tracker();
    v15 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = MEMORY[0x1E69E7CC8];
    *(v16 + 24) = 0;
    *(v16 + 32) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    *(v16 + 40) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = 0;
    *(v15 + 16) = v16;
    outlined init with copy of _ViewInputs(a2, &v59);
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v59) = v9;
    v19 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v53, v8, *(&v8 + 1), v9 | (v10 << 32), a1, v14, v15, 1, &v59);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v20 = v59;
    v28 = v60;
    v29 = *(&v59 + 1);
    v21 = BYTE8(v60);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v23 = v49;
    LODWORD(v43) = 0;
    v64 = v52;
    v62 = v50;
    v63 = v51;
    v59 = v47;
    v60 = v48;
    v61 = v43;
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v50))
    {
      LODWORD(v33[0]) = v20;
      v66[0] = v59;
      v66[1] = v60;
      v66[2] = v61;
      v65[0] = v59;
      v65[1] = v60;
      v65[2] = v61;
      outlined init with copy of _ViewInputs(&v47, &v35);
      outlined init with copy of _ViewInputs(&v59, &v35);
      outlined init with copy of _GraphInputs(v66, &v35);
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22_ColorMonochromeEffectV9_ResolvedV_Tt1B5(v33, v65);
      outlined destroy of _GraphInputs(v66);
      _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA016_ColorMonochromeD0V9_ResolvedV_Tt3B5(v33[0], &v59, a3, v32);
    }

    else
    {
      v37 = v61;
      v38 = v62;
      v39 = v63;
      v40 = v64;
      v35 = v59;
      v36 = v60;
      outlined init with copy of _ViewInputs(&v47, v33);
      v24 = outlined init with copy of _ViewInputs(&v59, v33);
      a3(v32, v24, &v35);
    }

    outlined destroy of _ViewInputs(&v59);
    LODWORD(v43) = v23;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v32, &v41);
      AGSubgraphEndTreeElement();
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    outlined destroy of _ViewInputs(&v35);
    v25 = v32[0];
    v26 = v32[1];
    if ((v21 & 1) == 0)
    {
      LOBYTE(v33[0]) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v8, *(&v8 + 1), v9, v29, v28);
    }

    v33[2] = v55;
    v33[3] = v56;
    v33[4] = v57;
    v34 = v58;
    v33[0] = v53;
    v33[1] = v54;
    outlined destroy of _ViewInputs(v33);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a4 = v25;
    a4[1] = v26;
  }

  return result;
}

{
  v60 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v54);
  v8 = v54;
  v9 = v55;
  v10 = DWORD1(v55);
  v11 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v11;
  v44 = *(a2 + 64);
  v45 = *(a2 + 80);
  v12 = *(a2 + 16);
  v40 = *a2;
  v41 = v12;
  outlined init with copy of _ViewInputs(a2, &v54);
  LOBYTE(v54) = v9;
  v23 = a1;
  _s7SwiftUI21EnvironmentalModifierPAAE012makeResolvedD033_A1B6966B83442495FADFE75F475ECBE28modifier6inputs6fieldsAA11_GraphValueVy0fD0QzG_AA22_DynamicPropertyBufferVSgtAJyxG_AA01_P6InputsVzAA0rS5CacheV6FieldsVtFZAA21_AlphaThresholdEffectV_Tt4B5(&v46, &v54, a1, &v40, v8, *(&v8 + 1), v9 | (v10 << 32));
  v13 = v46;
  v21 = *(&v54 + 1);
  v22 = v54;
  v14 = v55;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v54 = v40;
  v55 = v41;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v36 = v56;
  v37 = v57;
  v38 = v58;
  v39 = v59;
  v34 = v54;
  v35 = v55;
  v16 = v56;
  LODWORD(v36) = 0;
  v51 = v59;
  v49 = v57;
  v50 = v58;
  v46 = v54;
  v47 = v55;
  v48 = v36;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v57))
  {
    LODWORD(v26[0]) = v13;
    v53[0] = v46;
    v53[1] = v47;
    v53[2] = v48;
    v52[0] = v46;
    v52[1] = v47;
    v52[2] = v48;
    outlined init with copy of _ViewInputs(&v54, &v28);
    outlined init with copy of _ViewInputs(&v46, &v28);
    outlined init with copy of _GraphInputs(v53, &v28);
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21_AlphaThresholdEffectV9_ResolvedV_Tt1B5(v26, v52);
    outlined destroy of _GraphInputs(v53);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA015_AlphaThresholdD0V9_ResolvedV_Tt3B5(v26[0], &v46, a3, v25);
  }

  else
  {
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v28 = v46;
    v29 = v47;
    outlined init with copy of _ViewInputs(&v54, v26);
    v17 = outlined init with copy of _ViewInputs(&v46, v26);
    a3(v25, v17, &v28);
  }

  outlined destroy of _ViewInputs(&v46);
  LODWORD(v36) = v16;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v25, &v34);
    AGSubgraphEndTreeElement();
  }

  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  outlined destroy of _ViewInputs(&v28);
  v18 = v25[0];
  v19 = v25[1];
  if ((v14 & 1) == 0)
  {
    LOBYTE(v26[0]) = v9;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v23, v8, *(&v8 + 1), v9, v22, v21);
  }

  v26[2] = v42;
  v26[3] = v43;
  v26[4] = v44;
  v27 = v45;
  v26[0] = v40;
  v26[1] = v41;
  outlined destroy of _ViewInputs(v26);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a4 = v18;
  a4[1] = v19;
  return result;
}

{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v59);
  v8 = v59;
  v9 = v60;
  v10 = DWORD1(v60);
  v11 = *(a2 + 48);
  v55 = *(a2 + 32);
  v56 = v11;
  v57 = *(a2 + 64);
  v58 = *(a2 + 80);
  v12 = *(a2 + 16);
  v53 = *a2;
  v54 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    outlined init with copy of _ViewInputs(a2, &v59);
    _StringGuts.grow(_:)(47);

    *&v59 = 0xD00000000000002DLL;
    *(&v59 + 1) = 0x800000018DD78740;
    MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD78770);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a2 + 16);
    swift_beginAccess();
    v14 = *(v13 + 16);
    type metadata accessor for PropertyList.Tracker();
    v15 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = MEMORY[0x1E69E7CC8];
    *(v16 + 24) = 0;
    *(v16 + 32) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    *(v16 + 40) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = 0;
    *(v15 + 16) = v16;
    outlined init with copy of _ViewInputs(a2, &v59);
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v59) = v9;
    v19 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v53, v8, *(&v8 + 1), v9 | (v10 << 32), a1, v14, v15, 1, &v59);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v20 = v59;
    v28 = v60;
    v29 = *(&v59 + 1);
    v21 = BYTE8(v60);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v23 = v49;
    LODWORD(v43) = 0;
    v64 = v52;
    v62 = v50;
    v63 = v51;
    v59 = v47;
    v60 = v48;
    v61 = v43;
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v50))
    {
      LODWORD(v33[0]) = v20;
      v66[0] = v59;
      v66[1] = v60;
      v66[2] = v61;
      v65[0] = v59;
      v65[1] = v60;
      v65[2] = v61;
      outlined init with copy of _ViewInputs(&v47, &v35);
      outlined init with copy of _ViewInputs(&v59, &v35);
      outlined init with copy of _GraphInputs(v66, &v35);
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20_ColorMultiplyEffectV9_ResolvedV_Tt1B5(v33, v65);
      outlined destroy of _GraphInputs(v66);
      _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_ColorMultiplyD0V9_ResolvedV_Tt3B5(v33[0], &v59, a3, v32);
    }

    else
    {
      v37 = v61;
      v38 = v62;
      v39 = v63;
      v40 = v64;
      v35 = v59;
      v36 = v60;
      outlined init with copy of _ViewInputs(&v47, v33);
      v24 = outlined init with copy of _ViewInputs(&v59, v33);
      a3(v32, v24, &v35);
    }

    outlined destroy of _ViewInputs(&v59);
    LODWORD(v43) = v23;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v32, &v41);
      AGSubgraphEndTreeElement();
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    outlined destroy of _ViewInputs(&v35);
    v25 = v32[0];
    v26 = v32[1];
    if ((v21 & 1) == 0)
    {
      LOBYTE(v33[0]) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v8, *(&v8 + 1), v9, v29, v28);
    }

    v33[2] = v55;
    v33[3] = v56;
    v33[4] = v57;
    v34 = v58;
    v33[0] = v53;
    v33[1] = v54;
    outlined destroy of _ViewInputs(v33);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a4 = v25;
    a4[1] = v26;
  }

  return result;
}

uint64_t specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ShadowEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ShadowEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>;
LABEL_6:
      v22 = v21;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v30, v21);
      *a9 = v20;
      LODWORD(v34) = a6;
      *(&v34 + 1) = a7;
      LOBYTE(v35) = v25;
      *(&v35 + 1) = v28;
      BYTE3(v35) = v29;
      *(&v35 + 4) = __PAIR64__(v26, a5);
      *&v36 = v17;
      *(&v36 + 1) = __PAIR64__(v19, v18);
      v37 = 0;
      result = outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v34, v22);
      *(a9 + 8) = v17;
      *(a9 + 16) = v18 | (v19 << 32);
      *(a9 + 24) = 0;
      return result;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
  }

  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v24;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  return result;
}

{
  v49 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v39) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for VariableBlurEffect, &v39);
    v17 = v39;
    v18 = DWORD2(v39);
    v19 = HIDWORD(v39);
    if (HIDWORD(v39))
    {
      v28 = *(a1 + 24);
      v23 = a8 & 1;
      v32 = a6;
      v33 = a7;
      v34 = v23;
      v35 = a5;
      v36 = v28;
      v37 = v39;
      v38 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v39, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>);
      v21 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v39) = a6;
      *(&v39 + 1) = a7;
      v40 = v23;
      v41 = v30;
      v42 = v31;
      v43 = a5;
      v44 = v28;
      v45 = v17;
      v46 = v18;
      v47 = v19;
      v48 = 0;
      v22 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v39 + 1) = DWORD2(v39);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v39) = a6;
    *(&v39 + 1) = a7;
    v40 = a8 & 1;
    v43 = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v39) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for VariableBlurEffect, &v39);
    v17 = v39;
    v18 = DWORD2(v39);
    v19 = HIDWORD(v39);
    if (HIDWORD(v39))
    {
      v27 = *(a1 + 24);
      v20 = a8 & 1;
      v32 = a6;
      v33 = a7;
      v34 = v20;
      v35 = a5;
      v36 = v27;
      v37 = v39;
      v38 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v39, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>);
      v21 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v39) = a6;
      *(&v39 + 1) = a7;
      v40 = v20;
      v41 = v30;
      v42 = v31;
      v43 = a5;
      v44 = v27;
      v45 = v17;
      v46 = v18;
      v47 = v19;
      v48 = 0;
      v22 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>;
LABEL_6:
      v24 = v22;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v39, v22);
      result = outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v32, v24);
      *a9 = v21;
      *(a9 + 8) = v17;
      *(a9 + 16) = v18 | (v19 << 32);
      *(a9 + 24) = 0;
      return result;
    }

    *(&v39 + 1) = DWORD2(v39);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v39) = a6;
    *(&v39 + 1) = a7;
    v40 = a8 & 1;
    v43 = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>);
  }

  v26 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v26;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  return result;
}

{
  v38 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMonochromeEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMonochromeEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>;
LABEL_6:
      v22 = v21;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v30, v21);
      *a9 = v20;
      LODWORD(v34) = a6;
      *(&v34 + 1) = a7;
      LOBYTE(v35) = v25;
      *(&v35 + 1) = v28;
      BYTE3(v35) = v29;
      *(&v35 + 4) = __PAIR64__(v26, a5);
      *&v36 = v17;
      *(&v36 + 1) = __PAIR64__(v19, v18);
      v37 = 0;
      result = outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v34, v22);
      *(a9 + 8) = v17;
      *(a9 + 16) = v18 | (v19 << 32);
      *(a9 + 24) = 0;
      return result;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>);
  }

  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v24;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  return result;
}

{
  v38 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _AlphaThresholdEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _AlphaThresholdEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>;
LABEL_6:
      v22 = v21;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v30, v21);
      *a9 = v20;
      LODWORD(v34) = a6;
      *(&v34 + 1) = a7;
      LOBYTE(v35) = v25;
      *(&v35 + 1) = v28;
      BYTE3(v35) = v29;
      *(&v35 + 4) = __PAIR64__(v26, a5);
      *&v36 = v17;
      *(&v36 + 1) = __PAIR64__(v19, v18);
      v37 = 0;
      result = outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v34, v22);
      *(a9 + 8) = v17;
      *(a9 + 16) = v18 | (v19 << 32);
      *(a9 + 24) = 0;
      return result;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>);
  }

  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v24;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  return result;
}

{
  v38 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMultiplyEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout();
    LOBYTE(v34) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMultiplyEffect, &v34);
    v17 = v34;
    v18 = DWORD2(v34);
    v19 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      v25 = a8 & 1;
      v26 = *(a1 + 24);
      LODWORD(v30) = a6;
      *(&v30 + 1) = a7;
      LOBYTE(v31) = a8 & 1;
      *(&v31 + 4) = __PAIR64__(v26, a5);
      v32 = v34;
      v33 = 0;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v30, &v28, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>();
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
      v20 = Attribute.init<A>(body:value:flags:update:)();
      v21 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>;
LABEL_6:
      v22 = v21;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v30, v21);
      *a9 = v20;
      LODWORD(v34) = a6;
      *(&v34 + 1) = a7;
      LOBYTE(v35) = v25;
      *(&v35 + 1) = v28;
      BYTE3(v35) = v29;
      *(&v35 + 4) = __PAIR64__(v26, a5);
      *&v36 = v17;
      *(&v36 + 1) = __PAIR64__(v19, v18);
      v37 = 0;
      result = outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v34, v22);
      *(a9 + 8) = v17;
      *(a9 + 16) = v18 | (v19 << 32);
      *(a9 + 24) = 0;
      return result;
    }

    *(&v34 + 1) = DWORD2(v34);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v34) = a6;
    *(&v34 + 1) = a7;
    LOBYTE(v35) = a8 & 1;
    DWORD1(v35) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
  }

  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v24;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  return result;
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ShadowEffect>, &type metadata for _ShadowEffect, &protocol witness table for _ShadowEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
    }
  }
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07_ShadowD0V9_ResolvedV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ShadowEffect._Resolved>, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>();
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

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ShadowEffect._Resolved>, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList()
{
  result = lazy protocol witness table cache variable for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList;
  if (!lazy protocol witness table cache variable for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList);
  }

  return result;
}

uint64_t Image.SymbolRenderingOptionsProvider.resolve(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  outlined init with copy of ImageResolutionContext(a1, v6);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6[*(v4 + 32) + 1] = v9;
    if ((v11 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6[*(v4 + 32)] = v8;
  if ((v11 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v11 & 4) != 0)
  {
LABEL_4:
    v6[*(v4 + 32) + 2] = v10;
  }

LABEL_5:
  (*(*v7 + 80))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

void type metadata accessor for TransitionBox<IdentityTransition>()
{
  if (!lazy cache variable for type metadata for TransitionBox<IdentityTransition>)
  {
    v0 = type metadata accessor for TransitionBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransitionBox<IdentityTransition>);
    }
  }
}

uint64_t static StrokeBorderShapeView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a2 + 48);
  v52 = *(a2 + 32);
  v53 = v12;
  v54 = *(a2 + 64);
  v55 = *(a2 + 80);
  v13 = *(a2 + 16);
  v50 = *a2;
  v51 = v13;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v23[1] = v11;
  *&v46 = a7;
  *(&v46 + 1) = a8;
  type metadata accessor for StrokeBorderShapeView();
  type metadata accessor for _GraphValue();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *&v44 = type metadata accessor for _StrokedShape();
  *(&v44 + 1) = a4;
  *&v45 = swift_getWitnessTable();
  *(&v45 + 1) = a7;
  v14 = type metadata accessor for _ShapeView();
  v15 = type metadata accessor for _BackgroundModifier();
  v16 = type metadata accessor for ModifiedContent();
  _GraphValue.subscript.getter(partial apply for closure #1 in static StrokeBorderShapeView._makeView(view:inputs:), v16, v23);
  v17 = v23[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v36 = v50;
  v37 = v51;
  v43 = v55;
  v19 = v52;
  LODWORD(v38) = 0;
  v22 = v17;
  v42[0] = v50;
  v42[1] = v51;
  v42[3] = v53;
  v42[4] = v54;
  v42[2] = v38;
  v32 = v38;
  v33 = v53;
  v34 = v54;
  v35 = v55;
  v30 = v50;
  v31 = v51;
  outlined init with copy of _ViewInputs(&v50, &v44);
  outlined init with copy of _ViewInputs(v42, &v44);
  static ModifiedContent<>._makeView(view:inputs:)(&v22, &v30, v14, v15, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _BackgroundModifier<A>, a9);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v44 = v30;
  v45 = v31;
  outlined destroy of _ViewInputs(&v44);
  LODWORD(v38) = v19;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v36);
    AGSubgraphEndTreeElement();
  }

  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  return outlined destroy of _ViewInputs(&v30);
}

uint64_t getEnumTagSinglePayload for Canvas(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 14))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

_BYTE *partial apply for closure #1 in View.symbolVariant(_:)(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result |= *(v1 + 16);
  v3 = result[1];
  if (v2 != 3)
  {
    v3 = v2;
  }

  result[1] = v3;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>);
    }
  }
}

uint64_t *specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, char a8)
{
  v93 = *MEMORY[0x1E69E9840];
  v73 = type metadata accessor for OSSignpostID();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v62 - v17;
  result = AGGraphGetValue();
  v20 = *result;
  v21 = result[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v19 & 1) == 0)
  {
    return result;
  }

  if ((a8 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v23 = swift_retain_n();
  v24 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v23);

  if (v24)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v20)
    {
      v22 = *(v20 + 64);
    }

    else
    {
      v22 = 0;
    }

    v25 = *(a7 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v25 + 16));
    *(v25 + 24) = v22;
    os_unfair_lock_unlock((v25 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v26 = static Signpost.bodyInvoke;
    v27 = word_1ED539040;
    v28 = HIBYTE(word_1ED539040);
    v29 = byte_1ED539042;
    v30 = static os_signpost_type_t.begin.getter();
    v84 = v26;
    v85 = v27;
    v86 = v28;
    v87 = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v76) = v30;
    v62[1] = v21;
    v63 = v20;
    v64 = a1;
    v65 = a7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4C0;
    v32 = AGTypeID.description.getter();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v36 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v37 = specialized static Tracing.libraryName(defining:)();
    *(v31 + 96) = v35;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    if (one-time initialization token for _signpostLog == -1)
    {
      v39 = v76;
      if (v28)
      {
LABEL_17:
        v80 = v39;
        v78 = _signpostLog;
        v79 = &dword_18D018000;
        v84 = v26;
        v85 = v27;
        v81 = "%{public}@.body [in %{public}@]";
        v82 = 31;
        v83 = 2;
        v77 = v31;
        v40 = v66;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v74 + 8))(v40, v73);
LABEL_46:

        a7 = v65;
        a1 = v64;
        v20 = v63;
LABEL_47:
        AGGraphClearUpdate();
        v81 = v20;
        v82 = a7;
        (*(*a1 + 120))(&v84, &v81);
        v88 = *&a3;
        v89 = a4;
        v90 = a5;
        v91 = 1056964608;
        v92 = 0;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();
      }
    }

    else
    {
      swift_once();
      v39 = v76;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    if (v26 == 20)
    {
      v41 = 3;
    }

    else
    {
      v41 = 4;
    }

    v42 = bswap32(v26) | (4 * WORD1(v26));
    v43 = v39;
    v44 = v74 + 16;
    v67 = *(v74 + 16);
    v45 = v67(v75, v66, v73);
    v46 = 0;
    LOBYTE(v81) = 1;
    v71 = 16 * v41;
    v74 = v44;
    v72 = (v44 - 8);
    v70 = v31 + 32;
    v69 = v26;
    v68 = v41;
    do
    {
      v76 = v62;
      MEMORY[0x1EEE9AC00](v45);
      v48 = v62 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = v48 + 8;
      v50 = v41;
      v51 = v48 + 8;
      do
      {
        *(v51 - 1) = 0;
        *v51 = 0;
        v51 += 16;
        --v50;
      }

      while (v50);
      v52 = v70 + 40 * v46;
      while (1)
      {
        v53 = *(v31 + 16);
        if (v46 == v53)
        {
          break;
        }

        if (v46 >= v53)
        {
          __break(1u);
        }

        ++v46;
        outlined init with copy of AnyTrackedValue(v52, &v84);
        v54 = v88;
        __swift_project_boxed_opaque_existential_1(&v84, v88);
        *(v49 - 1) = CVarArg.kdebugValue(_:)(v42 | v43, v54);
        *v49 = v55 & 1;
        v49 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v84);
        v52 += 40;
        if (!--v41)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v81) = 0;
LABEL_31:
      v56 = v69;
      if (v69 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v48[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v48[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v48[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v56 != 20 && v48[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v57 = *v72;
      v58 = v75;
      v59 = v73;
      (*v72)(v75, v73);
      v60 = __swift_project_value_buffer(v59, static OSSignpostID.continuation);
      v45 = v67(v58, v60, v59);
      v41 = v68;
    }

    while ((v81 & 1) != 0);
    v61 = v73;
    v57(v75, v73);
    v57(v66, v61);
    goto LABEL_46;
  }
}

void GraphicsContext.addFilter(_:options:)(__int128 *a1, int a2)
{
  v148 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v143 = *a1;
  *v144 = v3;
  v4 = a1[3];
  *&v144[16] = a1[2];
  v145 = v4;
  v5 = a1[4];
  v146 = v5;
  v147 = *(a1 + 10);
  v6 = *(&v143 + 9) | (BYTE11(v143) << 16);
  v7 = *&v144[16];
  v8 = HIDWORD(v4);
  v9 = v5;
  v10 = v2;
  switch((*(&v147 + 1) >> 19) & 0x1F)
  {
    case 1uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddRotationStyle();
      return;
    case 2uLL:
      GraphicsContext.copyOnWrite()();
      RBDrawingStateAddRotation3DStyle();
      return;
    case 3uLL:
      v30 = v144[20];

      GraphicsContext.copyOnWrite()();
      v31 = *v2;
      v32 = *(*v2 + 32);
      if (v32 == 1)
      {
        v33 = *(v31 + 16);
        v34 = *(v33 + 48);
        v35 = *(v33 + 56);
      }

      else
      {
        v35 = *(v31 + 40);
        v34 = v32;
      }

      *&v137 = v34;
      *(&v137 + 1) = v35;
      v79 = *(*(v143 | (DWORD1(v143) << 32)) + 112);
      outlined init with copy of GraphicsContext.Filter.Storage(&v143, &v134);
      outlined copy of EnvironmentValues?(v32);
      v79(&v137);
      outlined destroy of GraphicsContext.Filter.Storage(&v143);

      if (*(*(v31 + 16) + 64) != 2)
      {
        RBColorFromLinear();
      }

      specialized RBShadowFlags.init(_:)(v30);
      RBDrawingStateAddShadowStyle();
      goto LABEL_127;
    case 4uLL:
      v11 = BYTE8(v4);
      GraphicsContext.copyOnWrite()();
      if (*(*(*v2 + 16) + 64) != 2)
      {
        RBColorFromLinear();
      }

      specialized RBShadowFlags.init(_:)(v11);

      RBDrawingStateAddShadowStyle3();
      return;
    case 5uLL:
      v137 = *&v144[16];
      v138 = v4;
      LOBYTE(v139) = v5;
      outlined copy of Path.Storage(*&v144[16], *&v144[24], v145, *(&v145 + 1), v5);
      GraphicsContext.copyOnWrite()();
      Path.retainRBPath()();
      v134 = 0x3FF0000000000000uLL;
      *&v135 = 0;
      *(&v135 + 1) = 0x3FF0000000000000;
      *v136 = 0uLL;
      RBDrawingStateAddPathProjectionStyle();
      RBPathRelease();
      goto LABEL_127;
    case 6uLL:
      v52 = *(*v2 + 32);
      v53 = a2;
      if (v52 == 1)
      {
        v54 = *(*v2 + 16);
        v55 = *(v54 + 48);
        v56 = *(v54 + 56);
      }

      else
      {
        v56 = *(*v2 + 40);
        v55 = *(*v2 + 32);
      }

      v140 = v55;
      v141 = v56;
      v90 = *(*(v143 | (DWORD1(v143) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v143, &v134);
      outlined copy of EnvironmentValues?(v52);
      v90(&v137, &v140);

      GraphicsContext.copyOnWrite()();
      v91 = *v2;
      v92 = *(*(*v2 + 16) + 64);
      v94 = DWORD1(v137);
      v93 = v137;
      v96 = HIDWORD(v137);
      v95 = DWORD2(v137);
      if (v92 == 2)
      {
        v97 = v138;
        v98 = (v53 & 1) == 0;
LABEL_84:
        v99 = 1;
        goto LABEL_111;
      }

      RBColorFromLinear();
      v92 = *(*(v91 + 16) + 64);
      v97 = v138;
      v98 = (v53 & 1) == 0;
      if (v92 == 2)
      {
        goto LABEL_84;
      }

      v99 = 2;
LABEL_111:
      if (v98)
      {
        v113 = v99;
      }

      else
      {
        v113 = 1;
      }

      goto LABEL_114;
    case 7uLL:
      v36 = a2;
      v14 = DWORD1(v143);
      v13 = v143;
      v15 = BYTE8(v143) | (v6 << 8);
      v16 = HIDWORD(v143);
      GraphicsContext.copyOnWrite()();
      v37 = *v2;
      v18 = *(*(*v2 + 16) + 64);
      if (v18 == 2)
      {
        v19 = *v144;
        v38 = (v36 & 1) == 0;
LABEL_77:
        v84 = 1;
        goto LABEL_102;
      }

      RBColorFromLinear();
      v13 = v80;
      v14 = v81;
      v15 = v82;
      v16 = v83;
      v18 = *(*(v37 + 16) + 64);
      v19 = *v144;
      v38 = (v36 & 1) == 0;
      if (v18 == 2)
      {
        goto LABEL_77;
      }

      v84 = 2;
LABEL_102:
      if (v38)
      {
        v111 = v84;
      }

      else
      {
        v111 = 1;
      }

      goto LABEL_100;
    case 8uLL:
      v58 = *(*v2 + 32);
      v59 = a2;
      if (v58 == 1)
      {
        v60 = *(*v2 + 16);
        v61 = *(v60 + 48);
        v62 = *(v60 + 56);
      }

      else
      {
        v62 = *(*v2 + 40);
        v61 = *(*v2 + 32);
      }

      v140 = v61;
      v141 = v62;
      v100 = *(*(v143 | (DWORD1(v143) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v143, &v134);
      outlined copy of EnvironmentValues?(v58);
      v100(&v137, &v140);

      GraphicsContext.copyOnWrite()();
      v101 = *v2;
      v92 = *(*(*v2 + 16) + 64);
      v94 = DWORD1(v137);
      v93 = v137;
      v96 = HIDWORD(v137);
      v95 = DWORD2(v137);
      if (v92 == 2)
      {
        v97 = v138;
        v102 = (v59 & 1) == 0;
LABEL_89:
        v103 = 1;
        goto LABEL_116;
      }

      RBColorFromLinear();
      v92 = *(*(v101 + 16) + 64);
      v97 = v138;
      v102 = (v59 & 1) == 0;
      if (v92 == 2)
      {
        goto LABEL_89;
      }

      v103 = 2;
LABEL_116:
      if (v102)
      {
        v113 = v103;
      }

      else
      {
        v113 = 1;
      }

LABEL_114:
      *&v134 = __PAIR64__(v94, v93);
      *(&v134 + 1) = __PAIR64__(v96, v95);
      *&v135 = __PAIR64__(v97, v92);
      DWORD2(v135) = v113;
      RBDrawingStateAddStyle();
      goto LABEL_127;
    case 9uLL:
      v12 = a2;
      v14 = DWORD1(v143);
      v13 = v143;
      v15 = BYTE8(v143) | (v6 << 8);
      v16 = HIDWORD(v143);
      GraphicsContext.copyOnWrite()();
      v17 = *v2;
      v18 = *(*(*v2 + 16) + 64);
      if (v18 == 2)
      {
        v19 = *v144;
        v20 = (v12 & 1) == 0;
LABEL_71:
        v78 = 1;
        goto LABEL_97;
      }

      RBColorFromLinear();
      v13 = v74;
      v14 = v75;
      v15 = v76;
      v16 = v77;
      v18 = *(*(v17 + 16) + 64);
      v19 = *v144;
      v20 = (v12 & 1) == 0;
      if (v18 == 2)
      {
        goto LABEL_71;
      }

      v78 = 2;
LABEL_97:
      if (v20)
      {
        v111 = v78;
      }

      else
      {
        v111 = 1;
      }

LABEL_100:
      *&v134 = __PAIR64__(v14, v13);
      *(&v134 + 1) = __PAIR64__(v16, v15);
      *&v135 = __PAIR64__(LODWORD(v19), v18);
      DWORD2(v135) = v111;
      RBDrawingStateAddStyle();
      return;
    case 0xAuLL:
      *&v134 = v143;
      BYTE8(v134) = BYTE8(v143);
      *(&v134 + 9) = *(&v143 + 9);
      BYTE11(v134) = BYTE2(v6);
      HIDWORD(v134) = HIDWORD(v143);
      v135 = *v144;
      *v136 = *&v144[16];
      *&v136[16] = v4;
      *&v136[32] = v5;
      GraphicsContext.copyOnWrite()();
      RBDrawingStateAddColorMatrixFilter();
      return;
    case 0xBuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddHueRotationFilter();
      return;
    case 0xCuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddSaturationFilter();
      return;
    case 0xDuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddBrightnessFilter();
      return;
    case 0xEuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddContrastFilter();
      return;
    case 0xFuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddColorInvertFilter();
      return;
    case 0x10uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddGrayscaleFilter();
      return;
    case 0x11uLL:
      if (COERCE_DOUBLE(v143 | (DWORD1(v143) << 32)) > 0.0)
      {
        GraphicsContext.copyOnWrite()();

        RBDrawingStateAddBlurFilter();
      }

      return;
    case 0x12uLL:
      *&v57 = v143 | (DWORD1(v143) << 32);
      if (v57 > 0.0)
      {
        LOBYTE(v134) = BYTE8(v143);
        *(&v134 + 1) = *(&v143 + 9);
        BYTE3(v134) = BYTE2(v6);
        DWORD1(v134) = HIDWORD(v143);
        *(&v134 + 1) = *v144;
        v135 = *&v144[8];
        *v136 = *&v144[24];
        *&v136[8] = v4;
        *&v136[24] = v9;
        v136[40] = v147;
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v134, (2 * (a2 & 1)) | ((*(&v147 + 1) | ((*(&v147 + 5) | (HIBYTE(v147) << 16)) << 32)) >> 24), v57);
      }

      return;
    case 0x13uLL:
      v63 = *(&v143 + 1);
      v64 = *(*v2 + 32);
      v65 = v143;
      if (v64 == 1)
      {
        v66 = *(*v2 + 16);
        v67 = *(v66 + 48);
        v68 = *(v66 + 56);
      }

      else
      {
        v68 = *(*v2 + 40);
        v67 = *(*v2 + 32);
      }

      v140 = v67;
      v141 = v68;
      v104 = *(*(BYTE8(v143) | ((*&v6 & 0xFFFFFFLL) << 8) | (HIDWORD(v143) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v143, &v134);
      outlined copy of EnvironmentValues?(v64);
      v104(&v137, &v140);

      GraphicsContext.copyOnWrite()();
      if (v63 >= 1.0)
      {
        v63 = INFINITY;
      }

      v105 = *v2;
      v106 = *(*(*v2 + 16) + 64);
      v108 = DWORD1(v137);
      v107 = v137;
      v110 = HIDWORD(v137);
      v109 = DWORD2(v137);
      if (v106 != 2)
      {
        RBColorFromLinear();
        v106 = *(*(v105 + 16) + 64);
      }

      LOBYTE(v134) = 3;
      *(&v134 + 4) = __PAIR64__(LODWORD(v63), v65);
      HIDWORD(v134) = v107;
      *&v135 = __PAIR64__(v109, v108);
      *(&v135 + 1) = __PAIR64__(v106, v110);
      *v136 = v138;
      RBDrawingStateAddStyle();
      goto LABEL_127;
    case 0x14uLL:
      outlined copy of EitherGradient(v143, BYTE8(v143) & 1);
      v40 = v2;
      GraphicsContext.copyOnWrite()();
      if (BYTE8(v143))
      {
        goto LABEL_67;
      }

      v41 = *((v143 | (DWORD1(v143) << 32)) + 0x10);
      if (v41 == 1)
      {
        v42 = ((v143 | (DWORD1(v143) << 32)) + 32);
LABEL_120:
        v114 = *v42;
        v115 = *v40;
        v116 = *(*v40 + 32);
        if (v116 == 1)
        {
          v117 = *(v115 + 16);
          v118 = *(v117 + 48);
          v119 = *(v117 + 56);
        }

        else
        {
          v119 = *(v115 + 40);
          v118 = v116;
        }

        *&v134 = v118;
        *(&v134 + 1) = v119;
        v120 = *(*v114 + 120);

        outlined copy of EnvironmentValues?(v116);
        v120(&v140, &v134);

        v121 = *(*(v115 + 16) + 64);
        v123 = HIDWORD(v140);
        v122 = v140;
        v125 = HIDWORD(v141);
        v124 = v141;
        if (v121 != 2)
        {
          RBColorFromLinear();
          v121 = *(*(v115 + 16) + 64);
        }

        *&v137 = __PAIR64__(v123, v122);
        *(&v137 + 1) = __PAIR64__(v125, v124);
        *&v138 = __PAIR64__(v123, v122);
        *(&v138 + 1) = __PAIR64__(v125, v124);
        LOBYTE(v134) = 3;
        *(&v134 + 4) = 0x3F80000000000000;
        *&v135 = 2;
        *(&v135 + 1) = &v137;
        *v136 = __PAIR64__(v142, v121);
        *&v136[16] = 0;
        RBDrawingStateAddStyle();
        goto LABEL_126;
      }

      if (!v41)
      {
        if (one-time initialization token for clear != -1)
        {
          swift_once();
        }

        v42 = &static Color.clear;
        goto LABEL_120;
      }

LABEL_67:
      *&v137 = v143 | (DWORD1(v143) << 32);
      BYTE8(v137) = BYTE8(v143) & 1;
      v69 = *(*v2 + 32);
      v70 = *(*v40 + 16);
      v71 = v69;
      v72 = *(*v40 + 40);
      if (v69 == 1)
      {
        v71 = *(v70 + 48);
        v72 = *(v70 + 56);
      }

      *&v134 = v71;
      *(&v134 + 1) = v72;
      v73 = *(v70 + 64);
      outlined copy of EnvironmentValues?(v69);
      specialized withGradient(_:in:colorSpace:do:)(&v137, &v134, v73, v40, a2);

LABEL_126:

LABEL_127:
      outlined destroy of GraphicsContext.Filter.Storage(&v143);
      return;
    case 0x15uLL:
      v43 = a2;
      v45 = DWORD1(v143);
      v44 = v143;
      v46 = BYTE8(v143) | (v6 << 8);
      v47 = HIDWORD(v143);
      GraphicsContext.copyOnWrite()();
      v48 = *v2;
      v49 = *(*(*v2 + 16) + 64);
      if (v49 == 2)
      {
        v50 = *v144;
        v51 = (v43 & 1) == 0;
LABEL_79:
        v89 = 1;
        goto LABEL_106;
      }

      RBColorFromLinear();
      v44 = v85;
      v45 = v86;
      v46 = v87;
      v47 = v88;
      v49 = *(*(v48 + 16) + 64);
      v50 = *v144;
      v51 = (v43 & 1) == 0;
      if (v49 == 2)
      {
        goto LABEL_79;
      }

      v89 = 2;
LABEL_106:
      if (v51)
      {
        v112 = v89;
      }

      else
      {
        v112 = 1;
      }

      *&v134 = *&v144[4];
      *(&v134 + 1) = __PAIR64__(v45, v44);
      *&v135 = __PAIR64__(v47, v46);
      *(&v135 + 1) = __PAIR64__(LODWORD(v50), v49);
      *v136 = v112;
      RBDrawingStateAddStyle();
      return;
    case 0x16uLL:
      GraphicsContext.copyOnWrite()();
      *&v134 = v143;
      DWORD2(v134) = BYTE8(v143) | (v6 << 8);
      HIDWORD(v134) = HIDWORD(v143);
      RBDrawingStateAddLuminanceCurveFilter();
      return;
    case 0x17uLL:
      v131 = v4;
      v133 = DWORD1(v4);
      v127 = DWORD2(v4);
      GraphicsContext.copyOnWrite()();
      *&v134 = v143;
      DWORD2(v134) = BYTE8(v143) | (v6 << 8);
      HIDWORD(v134) = HIDWORD(v143);
      v135 = *v144;
      *v136 = *&v144[16];
      *&v136[16] = __PAIR64__(v133, v131);
      *&v136[24] = __PAIR64__(v8, v127);
      RBDrawingStateAddRGBACurvesFilter();
      return;
    case 0x18uLL:
      v128 = *&v144[24];
      v129 = *&v144[28];
      v126 = DWORD2(v4);
      v130 = v4;
      v132 = DWORD1(v4);
      v21 = v143 | (DWORD1(v143) << 32);
      v22 = *v144 | (*&v144[4] << 32);
      v23 = *(*v2 + 32);
      v24 = v23;
      v25 = *(*v10 + 40);
      if (v23 == 1)
      {
        v26 = *(*v10 + 16);
        v24 = *(v26 + 48);
        v25 = *(v26 + 56);

        v21 = v143 | (DWORD1(v143) << 32);
        v22 = *v144 | (*&v144[4] << 32);
        v7 = *&v144[16];
      }

      *&v137 = v21;
      BYTE8(v137) = BYTE8(v143);
      *(&v137 + 9) = *(&v143 + 9);
      BYTE11(v137) = BYTE2(v6);
      HIDWORD(v137) = HIDWORD(v143);
      *&v138 = v22;
      *(&v138 + 1) = *&v144[8] | (*&v144[12] << 32);
      v139 = v7;
      v140 = v24;
      v141 = v25;
      v27 = v7;
      outlined init with copy of GraphicsContext.Filter.Storage(&v143, &v134);
      outlined copy of EnvironmentValues?(v23);
      v28 = Shader.makeRBShader(in:)(&v140);
      outlined consume of EnvironmentValues?(v140);
      if (!v28)
      {
        goto LABEL_127;
      }

      v29 = v28;
      GraphicsContext.copyOnWrite()();
      v134 = 0uLL;
      *&v135 = v126 | (v8 << 32);
      *(&v135 + 1) = v9;
      *&v137 = v28;
      *(&v137 + 1) = v128 | (v129 << 32);
      *&v138 = v130 | (v132 << 32);
      DWORD2(v138) = v27;
      Shader.ResolvedShader.rbFilterFlags.getter();
      RBDrawingStateAddShaderFilter();

      outlined destroy of GraphicsContext.Filter.Storage(&v143);
      return;
    case 0x19uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddLuminanceToAlphaFilter();
      return;
    default:
      *&v134 = v143;
      BYTE8(v134) = BYTE8(v143);
      *(&v134 + 9) = *(&v143 + 9);
      BYTE11(v134) = BYTE2(v6);
      HIDWORD(v134) = HIDWORD(v143);
      v135 = *v144;
      *v136 = *&v144[16];
      *&v136[16] = v4;
      *&v136[32] = v5;
      GraphicsContext.copyOnWrite()();
      RBDrawingState.addProjectionTransform(_:)();
      return;
  }
}

void GraphicsContext.Storage.Shared.setShading(_:in:)(__int128 *a1, uint64_t *a2)
{
  v3 = v2;
  v75 = *MEMORY[0x1E69E9840];
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v9);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[1];
  v71 = *a1;
  v72 = v15;
  v16 = a1[3];
  v73 = a1[2];
  *v74 = v16;
  *&v74[9] = *(a1 + 57);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(&v71 + 9) | (BYTE11(v71) << 16);
  v20 = v73;
  HIDWORD(v21) = *&v74[20];
  if (v74[24] > 3u)
  {
    if (v74[24] > 5u)
    {
      if (v74[24] != 6)
      {
        v54 = v10;
        if (v74[24] == 7)
        {
          v53 = v71 | (DWORD1(v71) << 32);
          *&v37 = BYTE8(v71) | ((*&v19 & 0xFFFFFFLL) << 8) | (HIDWORD(v71) << 32);
          v38 = v72;
          v39 = v73;
          v40 = *v74;
          v41 = type metadata accessor for Text.Style(0);
          v42 = *(*(v41 - 8) + 56);
          v42(v8, 1, 1, v41);
          v51 = *MEMORY[0x1E698D3F8];
          v14[2] = 0;
          v52 = v3;
          v43 = v54;
          v50 = v54[6];
          v42(v14 + v50, 1, 1, v41);
          v44 = v43[7];
          v45 = v14 + v43[8];
          *v45 = 520;
          v45[2] = 2;
          *(v14 + v43[9]) = 3;
          v46 = v43[10];
          *(v14 + v46) = 1;
          *v14 = v17;
          v14[1] = v18;
          outlined init with copy of GraphicsContext.Shading.Storage(&v71, &v62);

          outlined assign with take of Text.Style?(v8, v14 + v50);
          *(v14 + v44) = v51;
          *(v14 + v46) = 0;
          v47 = v52;
          (*(*v53 + 80))(&v62, v14);
          outlined init with copy of GraphicsImage(&v62, &v67);
          outlined destroy of Image.Resolved(&v62);
          v60 = v65[1];
          v61[0] = v66[0];
          *(v61 + 12) = *(v66 + 12);
          *v58 = v62;
          *&v58[16] = v63;
          v59[0] = v64;
          v59[1] = v65[0];
          RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(v58, *(v47 + 64), v37, *&v38, *(&v40 + 1), *(&v38 + 1), *&v39, *(&v39 + 1), *&v40);
          outlined destroy of GraphicsContext.Shading.Storage(&v71);
          v69[2] = v60;
          v70[0] = v61[0];
          *(v70 + 12) = *(v61 + 12);
          v67 = *v58;
          v68 = *&v58[16];
          v69[0] = v59[0];
          v69[1] = v59[1];
          outlined destroy of GraphicsImage(&v67);
          *(v47 + 272) = 0;

          _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v14, type metadata accessor for ImageResolutionContext);
          return;
        }

        goto LABEL_32;
      }

      *&v67 = v71;
      BYTE8(v67) = BYTE8(v71);
      *(&v67 + 9) = *(&v71 + 9);
      BYTE11(v67) = BYTE2(v19);
      HIDWORD(v67) = HIDWORD(v71);
      v68 = v72;
      v69[0] = v73;
      *&v69[1] = *v74;
      WORD4(v69[1]) = *&v74[8];
      v55 = v17;
      v56 = v18;
      v31 = *(**v74 + 120);
      v32 = a1[1];
      v62 = *a1;
      v63 = v32;
      v33 = a1[3];
      v64 = a1[2];
      v65[0] = v33;
      *(v65 + 9) = *(a1 + 57);
      outlined init with copy of MeshGradient(&v62, v58);
      v31(v57, &v55);
      *v58 = v67;
      *&v58[16] = v68;
      v59[0] = v69[0];
      *(v59 + 10) = *(v69 + 10);
      v55 = v17;
      v56 = v18;

      specialized MeshGradient.withResolvedColors(in:_:)(&v55, v58, v57, v3, &v67);
      outlined destroy of GraphicsContext.Shading.Storage(&v71);
LABEL_27:

      return;
    }

    if (v74[24] != 5)
    {
      goto LABEL_32;
    }

    v67 = v72;
    v68 = v73;
    v69[0] = *v74;
    LOBYTE(v69[1]) = v74[16];
    v35 = *(v3 + 64);
    if ((BYTE8(v71) & 1) == 0)
    {
      v36 = *((v71 | (DWORD1(v71) << 32)) + 0x10);
      if (v36 == 1)
      {
        outlined init with copy of GraphicsContext.Shading.Storage(&v71, &v62);
LABEL_30:

        *&v62 = v17;
        *(&v62 + 1) = v18;
        GraphicsContext.Storage.Shared.setColor(_:in:)(v49, &v62);
        outlined destroy of GraphicsContext.Shading.Storage(&v71);
        goto LABEL_27;
      }

      if (!v36)
      {
        outlined copy of EitherGradient(v71, 0);
        if (one-time initialization token for clear != -1)
        {
          swift_once();
        }

        goto LABEL_30;
      }
    }

    v48 = HIDWORD(*&v74[16]);
    *v58 = v71 | (DWORD1(v71) << 32);
    v58[8] = BYTE8(v71) & 1;
    *&v62 = v17;
    *(&v62 + 1) = v18;

    specialized withGradient(_:in:colorSpace:do:)(v58, &v62, v35, v3, &v67, v48);
    goto LABEL_27;
  }

  if (v74[24] > 2u)
  {
    *v58 = *(&v73 + 1);
    *&v58[8] = *v74;
    *&v58[24] = *&v74[16];
    *&v67 = v71 | (DWORD1(v71) << 32);
    BYTE8(v67) = BYTE8(v71);
    BYTE11(v67) = BYTE2(v19);
    *(&v67 + 9) = *(&v71 + 9);
    HIDWORD(v67) = HIDWORD(v71);
    v68 = v72;
    LODWORD(v69[0]) = v73;
    v57[0] = v17;
    v57[1] = v18;
    outlined init with copy of GraphicsContext.Shading.Storage(&v71, &v62);

    v34 = Shader.makeRBShader(in:)(v57);
    outlined consume of EnvironmentValues?(v57[0]);
    [*(v3 + 40) setShader:v34 bounds:v58 flags:v20 & 1];

LABEL_13:
    outlined destroy of GraphicsContext.Shading.Storage(&v71);
    return;
  }

  if (v74[24] != 1)
  {
    if (v74[24] == 2)
    {
      LODWORD(v16) = DWORD1(v71);
      LODWORD(v21) = v71;
      LODWORD(v11) = BYTE8(v71) | (v19 << 8);
      LODWORD(v12) = HIDWORD(v71);
      [*(v3 + 40) setColor:1 colorSpace:{v21, *&v16, v11, v12}];
      *(v3 + 272) = 0;

      return;
    }

LABEL_32:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22 = v71 | (DWORD1(v71) << 32);
  v23 = *(v3 + 272);
  if (!v23 || v23 != v22)
  {
    v24 = *(v3 + 40);
    *&v67 = v17;
    *(&v67 + 1) = v18;
    v25 = *(*v22 + 120);
    outlined init with copy of GraphicsContext.Shading.Storage(&v71, &v62);

    v25(&v62, &v67);
    LODWORD(v27) = DWORD1(v62);
    LODWORD(v26) = v62;
    LODWORD(v29) = HIDWORD(v62);
    LODWORD(v28) = DWORD2(v62);
    if (*(v3 + 64) != 2)
    {
      RBColorFromLinear();
    }

    [v24 setColor_];
    LODWORD(v30) = v63;
    [v24 setHeadroom_];
    *(v3 + 272) = v22;

    goto LABEL_13;
  }
}

uint64_t static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a3;
  *(a4 + 68) = a2;
  *(a4 + 72) = 5;
}

{
  *a4 = a1;
  *(a4 + 8) = 1;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a3;
  *(a4 + 68) = a2;
  *(a4 + 72) = 5;
}

void specialized withGradient(_:in:colorSpace:do:)(uint64_t a1, double *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v10 = *a1;
  v12 = *a2;
  v11 = *(a2 + 1);
  if (*(a1 + 8))
  {
    v78 = *a2;
    v79 = v11;
    v13 = *(*v10 + 112);

    v13(&v72, &v78);
    v78 = v72;
    LOBYTE(v79) = v73;
    HIDWORD(v79) = HIDWORD(v73);
    LOBYTE(v80) = v74;

    specialized withGradient(_:in:do:)(&v78, a3, a4, a5, a6, closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)partial apply, partial apply for closure #1 in withGradient(_:in:do:), partial apply for closure #2 in withGradient(_:in:do:));

    return;
  }

  v14 = v10[2];
  v66 = 0.0;
  v67 = 1;
  MEMORY[0x1EEE9AC00](a1);
  v56[8] = v10;
  *&v56[9] = v12;
  v56[10] = v11;
  v57 = a3;
  v58 = &v66;
  MEMORY[0x1EEE9AC00](v15);
  v56[2] = partial apply for closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:);
  v56[3] = &v68;
  v56[4] = v14;
  v56[5] = v17;
  if (v14)
  {
    v65 = v16;
    v64 = v59;
    if (!(v14 >> 59))
    {
      v18 = a3;
      v61 = a6;
      v62 = a5;

      if ((16 * v14) >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v53 = swift_slowAlloc();
          closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v53, v14, v14, 1, partial apply for closure #1 in withGradient(_:in:colorSpace:do:), v65, partial apply for closure #2 in withGradient(_:in:colorSpace:do:), v56);
          MEMORY[0x193AC4820](v53, -1, -1);
LABEL_27:

          return;
        }
      }

      v63 = v56;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      if (v14 >= 0x81)
      {
        v54 = v56 - v21;
        v20 = swift_stdlib_isStackAllocationSafe();
        if ((v20 & 1) == 0)
        {
          v55 = swift_slowAlloc();
          closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v55, v14, v14, partial apply for closure #1 in withGradient(_:in:colorSpace:do:), v65, v54, v14, 1, partial apply for closure #2 in withGradient(_:in:colorSpace:do:));
          MEMORY[0x193AC4820](v55, -1, -1);
          goto LABEL_27;
        }
      }

      MEMORY[0x1EEE9AC00](v20);
      v65 = v56 - v24;
      if (v14 <= v10[2])
      {
        v59[1] = v22;
        v60 = a4;
        v25 = 0;
        v26 = v10 + 5;
        v59[0] = v23;
        v27 = (v23 + 8);
        do
        {
          v28 = *(v26 - 1);
          v72 = v12;
          v73 = v11;
          v29 = *(*v28 + 120);

          v29(&v78, &v72);

          v31 = HIDWORD(v78);
          v30 = LODWORD(v78);
          v33 = HIDWORD(v79);
          v32 = v79;
          if (v18 != 2)
          {
            RBColorFromLinear();
          }

          *(v27 - 2) = v30;
          *(v27 - 1) = v31;
          *v27 = v32;
          v27[1] = v33;
          v34 = v80;
          if ((v67 & 1) == 0 && v66 > v80)
          {
            v34 = v66;
          }

          v66 = v34;
          v67 = 0;
          v35 = *v26;
          v26 += 2;
          *(v65 + 8 * v25) = v35;
          v27 += 4;
          ++v25;
        }

        while (v14 != v25);
        v36 = v66;
        v37 = RBGradientFlags.union(_:)(v61, 0);
        v38 = *v62;
        v39 = *(v62 + 8);
        v40 = *(v62 + 16);
        v41 = *(v62 + 24);
        v42 = *(v62 + 32);
        v43 = *(v62 + 40);
        v44 = *(v62 + 48);
        v45 = v60;
        v46 = *(v60 + 40);
        if (v44 > 2)
        {
          if (v44 == 3)
          {
            v48 = *v62;
            v49 = *(v62 + 8);
            v50 = *(v62 + 16);
            [*(v60 + 40) setRadialGradientCenter:v14 startRadius:v59[0] endRadius:v65 stopCount:v37 colors:0.0 locations:0.0 flags:{*(v62 + 32), *(v62 + 40)}];
            v82.origin.x = v48;
            v82.origin.y = v49;
            v82.size.width = v50;
            v82.size.height = v41;
            Width = CGRectGetWidth(v82);
            v83.origin.x = v48;
            v83.origin.y = v49;
            v83.size.width = v50;
            v83.size.height = v41;
            Height = CGRectGetHeight(v83);
            v72 = Width;
            v73 = 0;
            v74 = 0;
            v75 = Height;
            v76 = v48;
            v77 = v49;
            [v46 concat_];
          }

          else if (v44 == 4)
          {
            [*(v60 + 40) setConicGradientCenter:v14 angle:v59[0] stopCount:v65 colors:v37 locations:v38 flags:{v39, v40}];
          }

          else
          {
            [*(v60 + 40) setAngularGradientCenter:v14 startAngle:v59[0] endAngle:0 stopCount:v65 colors:v37 colorSpace:v38 locations:v39 flags:{v40, *(v62 + 24), v42, v43}];
          }
        }

        else if (*(v62 + 48))
        {
          if (v44 == 1)
          {
            [*(v60 + 40) setRadialGradientCenter:v14 startRadius:v59[0] endRadius:v65 stopCount:v37 colors:v38 locations:v39 flags:{v40, *(v62 + 24), v42, v43}];
          }

          else
          {
            [*(v60 + 40) setRadialGradientStartCenter:v14 startRadius:v59[0] endCenter:v65 endRadius:v37 stopCount:v38 colors:v39 locations:v40 flags:{*(v62 + 24), v42, v43}];
          }
        }

        else
        {
          [*(v60 + 40) setAxialGradientStartPoint:v14 endPoint:v59[0] stopCount:v65 colors:v37 locations:v38 flags:{v39, v40, *(v62 + 24), v42, v43}];
        }

        *&v47 = v36;
        [v46 setHeadroom_];
        *(v45 + 272) = 0;

        goto LABEL_27;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t outlined consume of EitherGradient(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t View.drawingGroup(opaque:colorMode:)(char a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  if (one-time initialization token for defaultFlags != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v8 = -1;
  if (a1)
  {
    v5 = static RasterizationOptions.Flags.defaultFlags | 3;
  }

  else
  {
    v5 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFC) + 1;
  }

  v9 = v4;
  v10 = 3;
  v11 = v5;
  v12 = 3;
  return View.modifier<A>(_:)(&v8, a3, &type metadata for _DrawingGroupEffect);
}

uint64_t initializeWithCopy for StrokeBorderShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)();
  v7 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 16;
  v30 = a3[3];
  v11 = *(v30 - 8);
  v12 = *(v11 + 80);
  v32 = a3[4];
  v13 = *(v32 - 8);
  v14 = *(v13 + 80);
  v15 = v14 & 0xF8 | 7;
  v16 = (v14 | *(v9 + 80)) & 0xF8 | v12 | 7;
  v17 = v7 + v16;
  v18 = (v7 + v16 + a1) & ~v16;
  v19 = (v17 + a2) & ~v16;
  (*(v9 + 16))(v18, v19, AssociatedTypeWitness);
  v20 = *(v10 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 12) = *(v22 + 12);
  *(v21 + 16) = *(v22 + 16);
  *(v21 + 24) = *(v22 + 24);
  *(v21 + 32) = *(v22 + 32);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  v24 = *(v11 + 16);

  v24((v23 + v18) & ~v12, (v23 + v19) & ~v12, v30);
  v25 = *(v11 + 64);
  *(v25 + ((v23 + v18) & ~v12)) = *(v25 + ((v23 + v19) & ~v12));
  v26 = (v23 & ~v12) + v25 + v15 + 2;
  v27 = (v26 + v18) & ~v15;
  v28 = (v26 + v19) & ~v15;
  (*(v13 + 16))(v27, v28, v32);
  *((*(v13 + 64) + 7 + v27) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 64) + 7 + v28) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t implicit closure #1 in static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v5[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v8 = type metadata accessor for AnchorGeometryTransform();
  WitnessTable = swift_getWitnessTable();
  v2 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.init<A>(_:), v6, v8, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return AssociatedTypeWitness;
}

uint64_t AnyTransition.animation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v8[0] = partial apply for closure #1 in AnyTransition.animation(_:);
  v8[1] = v4;
  v9 = 0;
  v5 = *(*a2 + 80);

  result = v5(v8, &unk_1F00ACE08, &protocol witness table for AnyTransition.FilterVisitor);
  v7 = v9;
  if (v9)
  {

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18D2B9E54()
{

  return swift_deallocObject();
}

uint64_t static TupleView._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v7 = a2[1];
  v19 = *a2;
  v20 = v7;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a3, v17);
  v8 = *(*v17 + 16);
  if (v8 == 1)
  {
    *&v17[40] = v21;
    *&v17[56] = v22;
    *&v17[72] = v23;
    *&v17[8] = v19;
    *&v17[24] = v20;
    *&v17[88] = v24;
    *v17 = v5;
    v18 = 0uLL;
    outlined init with copy of _ViewInputs(&v19, v16);
    Unary = type metadata accessor for TupleView.MakeUnary();
    result = TypeConformance<>.visitType<A>(visitor:)(v17, Unary, &protocol witness table for TupleView<A>.MakeUnary);
    v12 = v18;
    if (v18)
    {
      v13 = DWORD2(v18);
      v14 = HIDWORD(*(&v18 + 1));

      *a4 = v12;
      *(a4 + 8) = v13;
      *(a4 + 12) = v14;
      v16[4] = *&v17[64];
      v16[5] = *&v17[80];
      v16[6] = v18;
      v16[0] = *v17;
      v16[1] = *&v17[16];
      v16[2] = *&v17[32];
      v16[3] = *&v17[48];
      return (*(*(Unary - 8) + 8))(v16, Unary);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v8)
  {

    v15 = type metadata accessor for TupleView();
    LODWORD(v16[0]) = v5;
    *&v17[32] = v21;
    *&v17[48] = v22;
    *&v17[64] = v23;
    *&v17[80] = v24;
    *v17 = v19;
    *&v17[16] = v20;
    return static View.makeImplicitRoot(view:inputs:)(v16, v17, v15, &protocol witness table for TupleView<A>, a4);
  }

  else
  {

    *a4 = MEMORY[0x1E69E7CC0];
    v10 = *MEMORY[0x1E698D3F8];
    *(a4 + 8) = 0;
    *(a4 + 12) = v10;
  }

  return result;
}

void *static AsymmetricTransition.properties.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  (*(a2 + 32))(&v9 + 1);
  v7 = BYTE1(v9);
  result = (*(a3 + 32))(&v9, a1, a3);
  *a4 = (v7 | v9) & 1;
  return result;
}

uint64_t static _DrawingGroupEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, void, void)@<X2>, void *a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v60 = *a2;
  v61 = v5;
  v6 = *(a2 + 48);
  v62 = *(a2 + 32);
  v63 = v6;
  v7 = *(a2 + 48);
  v64 = *(a2 + 64);
  v56 = *(a2 + 32);
  v57 = v7;
  v58 = *(a2 + 64);
  v8 = *(a2 + 16);
  v54 = *a2;
  v55 = v8;
  v50 = v62;
  v51 = v6;
  v52 = *(a2 + 64);
  v37 = *a1;
  v65 = *(a2 + 80);
  v9 = v60;
  v10 = v5;
  v11 = WORD2(v62);
  v59 = *(a2 + 80);
  v53 = *(a2 + 80);
  v48 = v60;
  v49 = v5;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v60, v46);
  v12 = CachedEnvironment.animatedPosition(for:)(&v48);
  swift_endAccess();
  *&v48 = __PAIR64__(HIDWORD(v63), v12);
  v38 = HIDWORD(v63);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v14 = v56;
  HIDWORD(v57) = v13;
  LODWORD(v56) = v56 | 4;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v15 = *(swift_dynamicCastClassUnconditional() + 248);

  LODWORD(v58) = v15;
  DWORD1(v58) = v15;
  v16 = v64;
  v17 = DWORD2(v64);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v18 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18);
  swift_endAccess();
  *&v48 = __PAIR64__(v17, v16);
  DWORD2(v48) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  DWORD2(v58) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v56) = v14 | 0x1C;
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v9) & 1) == 0)
  {
    v36 = a3;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(&v54, 1);

    LODWORD(v48) = *(v10 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment();
    v20 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v46[0]) = 1;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v21;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 256;
    *(v23 + 88) = v22;

    *&v55 = v23;
    if ((v14 & 0x20) == 0)
    {
      LODWORD(v56) = v14 | 0x3C;
    }

    a3 = v36;
  }

  v46[2] = v56;
  v46[3] = v57;
  v46[4] = v58;
  v47 = v59;
  v46[0] = v54;
  v46[1] = v55;
  *v44 = v56;
  *&v44[16] = v57;
  *&v44[32] = v58;
  v45 = v59;
  v42 = v54;
  v43 = v55;
  v24 = outlined init with copy of _ViewInputs(v46, &v48);
  a3(v40, v24, &v42);
  v50 = *v44;
  v51 = *&v44[16];
  v52 = *&v44[32];
  v53 = v45;
  v48 = v42;
  v49 = v43;
  outlined destroy of _ViewInputs(&v48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v63) & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = ++lastIdentity;
  if ((v11 & 0x100) == 0)
  {
    v26 = *MEMORY[0x1E698D3F8];
LABEL_10:
    *&v42 = __PAIR64__(*(v10 + 16), v37);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange();
    v27 = Attribute.init<A>(body:value:flags:update:)();
    *v44 = v62;
    *&v44[16] = v63;
    *&v44[32] = v64;
    v45 = v65;
    v42 = v60;
    v43 = v61;
    swift_beginAccess();
    v28 = CachedEnvironment.animatedPosition(for:)(&v42);
    *v44 = v62;
    *&v44[16] = v63;
    *&v44[32] = v64;
    v45 = v65;
    v42 = v60;
    v43 = v61;
    v29 = CachedEnvironment.animatedCGSize(for:)(&v42);
    swift_endAccess();
    v30 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    v31 = *(MEMORY[0x1E695F040] + 16);
    *&v44[8] = *MEMORY[0x1E695F040];
    if ((v30 & 0x100000000) != 0)
    {
      v32 = v26;
    }

    else
    {
      v32 = v30;
    }

    *&v42 = __PAIR64__(v37, v25);
    *(&v42 + 1) = __PAIR64__(v29, v28);
    *&v43 = __PAIR64__(DWORD1(v64), v38);
    *(&v43 + 1) = __PAIR64__(v32, v27);
    *v44 = 0;
    *&v44[24] = v31;
    v44[40] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList();
    v33 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v42) = 0;
    PreferencesOutputs.subscript.setter(v33, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_14:
    *v44 = v56;
    *&v44[16] = v57;
    *&v44[32] = v58;
    v45 = v59;
    v42 = v54;
    v43 = v55;
    result = outlined destroy of _ViewInputs(&v42);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v42);
  result = AGWeakAttributeGetAttribute();
  v26 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v41[0] = v25;
    v35 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v41);
    v35(&v42, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ShadowEffect@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v13 = 0;
    v12 = 0u;
    v11 = 0u;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShadowEffect._Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange()
{
  result = lazy protocol witness table cache variable for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange;
  if (!lazy protocol witness table cache variable for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange);
  }

  return result;
}

uint64_t LayoutPriorityLayout.spacing(in:child:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == *MEMORY[0x1E698D3F8])
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

  v3 = *InputValue;
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
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
    (*(*v3 + 112))();
  }

  return result;
}

uint64_t static _ForegroundStyleModifier2.graphInputsSemantics.getter()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  return static Semantics.v4;
}

uint64_t static _ForegroundStyleModifier2._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a2 + 16);
  swift_beginAccess();
  v12 = *(v11 + 16);
  v16[0] = v10;
  v16[1] = v12;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v18 = type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in Attribute.init<A>(_:)partial apply, v17, v18, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  return _GraphInputs.environment.setter(v20);
}

uint64_t one-time initialization function for accessibilityShowButtonShapes()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.accessibilityShowButtonShapes = result;
  return result;
}

id protocol witness for PlatformDrawable.options.setter in conformance RBDrawingLayer(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return RBDrawingLayer.options.setter(&v5);
}

id RBDrawingLayer.options.setter(int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[2];
  v7 = *(a1 + 12);
  v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
  v9 = *v8;
  v10 = *(v8 + 2);
  v11 = *(v8 + 2);
  v12 = v8[12];
  *v8 = *a1;
  v8[4] = v4;
  v8[5] = v5;
  *(v8 + 2) = v6;
  v8[12] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  result = specialized static RasterizationOptions.== infix(_:_:)(&v22, &v17);
  if ((result & 1) == 0)
  {
    [v2 setOpaque_];
    v14 = *(v8 + 2);
    v15 = *(v8 + 2);
    v16 = v8[12];
    v22 = *v8;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    return PlatformDrawableOptions.update(rbLayer:)();
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Rectangle._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset()
{
  result = lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset;
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset;
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset;
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }

  return result;
}

uint64_t type metadata completion function for FormatStyleBox()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for Date.FormatStyle(uint64_t a1)
{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GraphicsContext.blendMode.setter(uint64_t result)
{
  if (*(*v1 + 52) != result)
  {
    v2 = result;
    result = GraphicsContext.copyOnWrite()();
    *(*v1 + 52) = v2;
  }

  return result;
}

uint64_t ShapeStylePair._apply(to:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return result;
    }

    if (v5 != 4)
    {
      if (!(v4 | v3 | v2))
      {
        v11 = result;
        result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
        *(v11 + 32) = 1;
        *(v11 + 40) = 4;
      }

      return result;
    }

    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
LABEL_17:
    *(result + 24) = v5;
    if (v2 > 0)
    {
      return (*(*(a2 + 40) + 32))();
    }

    goto LABEL_26;
  }

  if (!*(result + 24))
  {
    if (v2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 16) = 0;
      return (*(*(a2 + 40) + 32))();
    }

LABEL_26:
    v15 = *(*(a2 + 32) + 32);

    return v15();
  }

  if (v5 != 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(v5) = 2;
    goto LABEL_17;
  }

  if (v3 != v4)
  {
    if (v4 > 1)
    {
      *result = *result;
      *(result + 8) = xmmword_18DD85550;
      *(result + 24) = 1;
      v6 = a2;
      v7 = result;
      (*(*(a2 + 40) + 32))();
      v16 = v2;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      if (*(v7 + 40) == 1)
      {
        v9 = *(v7 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v10, 1u);
        *(v7 + 32) = 0;
        *(v7 + 40) = 5;
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v16, v8);
      v12 = v7;
      v13 = *(v7 + 32);
      v14 = *(v12 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v13, v14);
      *(v12 + 32) = v9;
      *(v12 + 40) = 1;

      result = v12;
      a2 = v6;
    }

    if (v3 < 1 && v4 >= 1)
    {
      *result = v2;
      *(result + 8) = xmmword_18DD85550;
      *(result + 24) = 1;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t outlined copy of _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a9 >> 28) & 3;
  if (v9 == 1)
  {
  }

  if (!v9)
  {
    return outlined copy of DisplayList.Item.Value(a6, a7, a8, a9);
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

void DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(uint64_t a1, unsigned int a2, unint64_t *a3, double a4, double a5, double a6, double a7)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v92 = *a3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    v8 = *a1;
    v95 = *(*a1 + 16);
    if (v95)
    {
      v89 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_60;
      }

      while (*(v8 + 2))
      {
        v13 = 0;
        v96 = 0;
        v14 = 0;
        v94 = v8 + 32;
        if (v92)
        {
          v15 = 2 * ((33 * (v92 >> 16)) ^ v92) + 1;
        }

        else
        {
          LOWORD(v15) = 0;
        }

        v84 = v15;
        v16 = 1;
        v90 = v8;
        while (1)
        {
          v17 = v14;
          v14 = v16;
          v18 = &v94[80 * v17];
          v19 = *(v18 + 8);
          if ((v19 >> 30) - 2 < 2)
          {
            goto LABEL_27;
          }

          v93 = v13;
          v20 = *(v18 + 5);
          v21 = *(v18 + 6);
          v22 = *(v18 + 7);
          if (v19 >> 30)
          {
            v40 = HIDWORD(v21);
            *&v101[0] = *(v18 + 7);
            WORD4(v101[0]) = v19;
            HIDWORD(v101[0]) = HIDWORD(v19);
            v41 = *v18 + a4;
            v42 = *(v18 + 1) + a5;
            v98 = v92;
            outlined copy of DisplayList.Effect(v20, v21, SBYTE4(v21));

            v43 = DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v101, a2, &v98, v41, v42, a6, a7);
            if (BYTE4(v21) == 7)
            {
              v44 = *(v20 + 16);
              v45 = *(v20 + 28);
              v46 = *(v20 + 32);
              v99 = *(v20 + 24);
              v100 = v45;
              v97 = v92;
              v98 = v44;

              v43 |= DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v98, a2, &v97, v41, v42, a6, a7);
              v47 = swift_allocObject();
              v48 = v99;
              v49 = v100;
              *(v47 + 16) = v98;
              *(v47 + 24) = v48;
              *(v47 + 28) = v49;
              *(v47 + 32) = v46;
              outlined consume of DisplayList.Effect(v20, v21, 7);
              LODWORD(v21) = 0;
              v20 = v47;
              LOBYTE(v40) = 7;
            }

            else if (BYTE4(v21) == 18)
            {
              if (v20 == v89)
              {
                v50 = *v18;
                v51 = *(v18 + 1);
                v52 = *(v18 + 2);
                v53 = *(v18 + 3);
                v98 = v92;
                v54 = (*(*v89 + 136))(v21, v101, a2, &v98, v50, v51, v52, v53, v41, v42, a6, a7);
                outlined consume of DisplayList.Effect(v20, v21, 18);
                v20 = 0;
                LODWORD(v21) = 0;
                v43 |= v54;
                LOBYTE(v40) = 20;
              }

              else
              {
                LOBYTE(v40) = 18;
              }
            }

            v55 = *&v101[0];
            v56 = WORD4(v101[0]) | (HIDWORD(v101[0]) << 32) | 0x40000000;
            v57 = *(v18 + 5);
            v58 = *(v18 + 6);
            v59 = *(v18 + 7);
            v60 = *(v18 + 8);
            *(v18 + 5) = v20;
            *(v18 + 6) = v21 | (v40 << 32);
            *(v18 + 7) = v55;
            *(v18 + 8) = v56;
            outlined consume of DisplayList.Item.Value(v57, v58, v59, v60);
            v8 = v90;
            v13 = v93;
            if (v43)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v20 >> 60 != 11)
            {
              v13 = v93;
              goto LABEL_27;
            }

            v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v24 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v25 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v26 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v88 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v87 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v85 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v86 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            *&v101[0] = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            WORD4(v101[0]) = v23;
            HIDWORD(v101[0]) = v24;
            v27 = *v18 + a4;
            v28 = *(v18 + 1) + a5;
            v98 = v92;
            outlined copy of DisplayList.Item.Value(v20, v21, v22, v19);
            outlined copy of DisplayList.Item.Value(v20, v21, v22, v19);

            v29 = DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v101, a2, &v98, v27, v28, a6, a7);
            v30 = swift_allocObject();
            v31 = WORD4(v101[0]);
            v32 = HIDWORD(v101[0]);
            *(v30 + 16) = *&v101[0];
            *(v30 + 24) = v31;
            *(v30 + 28) = v32;
            *(v30 + 32) = v25;
            *(v30 + 40) = v26;
            *(v30 + 48) = v88;
            *(v30 + 52) = v87;
            *(v30 + 56) = v86;
            *(v30 + 60) = v85;
            outlined consume of DisplayList.Item.Value(v20, v21, v22, v19);
            v33 = v29 & 1;
            v34 = v84;
            if (!v33)
            {
              v34 = v21;
            }

            v35 = v30 | 0xB000000000000000;
            v8 = v90;
            v36 = *(v18 + 5);
            v37 = *(v18 + 6);
            v38 = *(v18 + 7);
            v39 = *(v18 + 8);
            *(v18 + 5) = v35;
            *(v18 + 6) = v34;
            *(v18 + 7) = 0;
            *(v18 + 8) = 0;
            outlined consume of DisplayList.Item.Value(v36, v37, v38, v39);
            outlined consume of DisplayList.Item.Value(v20, v21, v22, v19);
            v13 = v93;
            if (v33)
            {
LABEL_26:
              *(v18 + 4) = v92;
            }
          }

LABEL_27:
          if (v17 >= *(v8 + 2))
          {
            break;
          }

          v61 = *(v18 + 3);
          v101[2] = *(v18 + 2);
          v102[0] = v61;
          *(v102 + 12) = *(v18 + 60);
          v62 = *(v18 + 1);
          v101[0] = *v18;
          v101[1] = v62;
          DisplayList.Item.features.getter(&v98);
          v63 = *(v8 + 2);
          if (v17 >= v63)
          {
            goto LABEL_59;
          }

          v13 |= v98;
          v64 = *(v18 + 5);
          v65 = *(v18 + 8);
          v66 = v65 >> 30;
          if (v65 >> 30 > 1)
          {
            if (v66 != 2)
            {
              goto LABEL_9;
            }

            v68 = *(v64 + 16);
            if (v68)
            {
              if (v68 > 7)
              {
                v69 = v68 & 0x7FFFFFFFFFFFFFF8;
                v73 = (v64 + 188);
                v74 = 0uLL;
                v75 = v68 & 0x7FFFFFFFFFFFFFF8;
                v76 = 0uLL;
                do
                {
                  v77.i32[0] = *(v73 - 30);
                  v77.i32[1] = *(v73 - 20);
                  v77.i32[2] = *(v73 - 10);
                  v77.i32[3] = *v73;
                  v78.i32[0] = v73[10];
                  v78.i32[1] = v73[20];
                  v78.i32[2] = v73[30];
                  v78.i32[3] = v73[40];
                  v74 = vorrq_s8(v77, v74);
                  v76 = vorrq_s8(v78, v76);
                  v73 += 80;
                  v75 -= 8;
                }

                while (v75);
                v79 = vorrq_s8(v76, v74);
                *v79.i8 = vorr_s8(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
                v67 = v79.i32[0] | v79.i32[1];
                if (v68 == v69)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v67 = 0;
                v69 = 0;
              }

              v80 = v68 - v69;
              v81 = (v64 + 40 * v69 + 68);
              do
              {
                v82 = *v81;
                v81 += 10;
                v67 |= v82;
                --v80;
              }

              while (v80);
            }

            else
            {
              v67 = 0;
            }
          }

          else if (v66)
          {
            v70 = *(v18 + 6);
            if (BYTE4(v70) == 2)
            {
              outlined copy of DisplayList.Effect(*(v18 + 5), *(v18 + 6), 2);
              v72 = v64;
            }

            else
            {
              v71 = *(v18 + 7);
              if (BYTE4(v70) == 7)
              {
                v72 = *(v64 + 28);
                outlined copy of DisplayList.Item.Value(*(v18 + 5), *(v18 + 6), *(v18 + 7), *(v18 + 8));
                outlined consume of DisplayList.Effect(v64, v70, 7);
              }

              else if (BYTE4(v70) == 18)
              {
                (*(*v64 + 120))(v101);
                outlined copy of DisplayList.Item.Value(v64, v70, v71, v65);
                outlined consume of DisplayList.Effect(v64, v70, 18);

                v72 = v101[0];
              }

              else
              {
                outlined copy of DisplayList.Effect(*(v18 + 5), *(v18 + 6), SBYTE4(v70));

                outlined consume of DisplayList.Effect(v64, v70, SBYTE4(v70));

                v72 = 0;
              }

              v8 = v90;
            }

            v67 = v72 | HIDWORD(v65);
          }

          else
          {
            if (v64 >> 60 != 6 && v64 >> 60 != 11)
            {
LABEL_9:
              if (v14 == v95)
              {
                goto LABEL_56;
              }

              goto LABEL_10;
            }

            v67 = *((v64 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

LABEL_54:
          v96 |= v67;
          if (v14 == v95)
          {
LABEL_56:
            *a1 = v8;
            *(a1 + 12) = v96;
            *(a1 + 8) = v13;
            return;
          }

          v63 = *(v8 + 2);
LABEL_10:
          v16 = v14 + 1;
          if (v14 >= v63)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

LABEL_61:
      __break(1u);
    }
  }
}

uint64_t sub_18D2BBF88()
{

  return swift_deallocObject();
}

uint64_t sub_18D2BBFC0()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>();
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
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018TintAdjustmentModeI033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for TintAdjustmentMode?, &type metadata for TintAdjustmentMode, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v19);
        outlined init with take of AnyTrackedValue(v19, v20);
        v10 = v21;
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (v11[1])(v19, MEMORY[0x1E69E6370], v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(a1);
        if (v14)
        {
          v15 = *(v14 + 72);
        }

        else
        {
          v15 = 1;
        }

        LOBYTE(v19[0]) = v15;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnabledKey>>();
        v21 = v16;
        v22 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v20[0]) = v15;
        specialized Dictionary.subscript.setter(v20, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(a1);
  if (v13)
  {
    v12 = *(v13 + 72);
  }

  LOBYTE(v19[0]) = v12;
LABEL_14:
  v17 = LOBYTE(v19[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v17;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnabledKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnabledKey>>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.symbolRenderingMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
  if (!v4 || (v5 = *(v4 + 36), v6 = *(v4 + 74), v14 = a2, v15 = BYTE2(a2), v12 = v5, v13 = v6, result = specialized static SymbolRenderingOptions.== infix(_:_:)(&v14, &v12), (result & 1) == 0))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>();
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 74) = BYTE2(a2);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintKey>>);
    }
  }
}

uint64_t _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ForegroundStyleModifier2();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

void type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI13ShapeStyleBox33_C5308685324599C90E2F7A588812BB29LLCyAA0cD4PairVyAA03AnycD0VAHGGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ShapeStyleBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t GraphicsContext.addFilter(_:in:)(__int128 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v112 = *MEMORY[0x1E69E9840];
  v10 = a1[5];
  v107 = a1[4];
  v108 = v10;
  v109[0] = a1[6];
  v11 = v109[0];
  *(v109 + 12) = *(a1 + 108);
  v12 = a1[1];
  v103 = *a1;
  v104 = v12;
  v13 = a1[3];
  v105 = a1[2];
  v106 = v13;
  *(v111 + 12) = *(v109 + 12);
  v110[5] = v10;
  v111[0] = v11;
  v110[3] = v13;
  v110[4] = v107;
  v110[1] = v12;
  v110[2] = v105;
  v110[0] = v103;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v110))
  {
    case 1u:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      if (*result > 0.0)
      {
        v47 = result;
        GraphicsContext.copyOnWrite()();
        v48 = *(v47 + 120);
        if (*(v47 + 8) == 1)
        {
          if (*(v47 + 9))
          {
            if (v48 >> 30)
            {
              return RBDrawingStateAddBlurFilter();
            }
          }

          else if (v48 >> 30)
          {
            return RBDrawingStateAddBlurFilter();
          }
        }

        else if (v48 >> 30)
        {
          return RBDrawingStateAddBlurFilter();
        }

        v75 = *(v47 + 112);
        v76 = *(*v5 + 16);
        v77 = *(v76 + 40);
        v78 = *(v47 + 32);
        v84 = *(v47 + 16);
        v85 = v78;
        v79 = *(v47 + 64);
        v86 = *(v47 + 48);
        v87 = v79;
        v80 = *(v47 + 96);
        v88 = *(v47 + 80);
        v89 = v80;
        v90 = v75;
        v91 = v48;
        v81 = *(v76 + 64);
        outlined init with copy of GraphicsFilter(&v103, &v96);
        v82 = v77;
        RBFill.setImage(_:destRect:in:)(&v84, v81, a2, a3, a4, a5);

        RBDrawingStateAddVariableBlurFilter();
        return outlined destroy of GraphicsFilter(&v103);
      }

      return result;
    case 2u:
    case 3u:
    case 0xFu:
    case 0x14u:
    case 0x15u:
    case 0x16u:
      return _s7SwiftUI14GraphicsFilterOWOj6_(v110);
    case 4u:
      v36 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v110) + 52);
      v37 = v36 & 2;
      if (v36)
      {
        if ((v36 & 2) == 0)
        {
          if ((v36 & 0x10) != 0)
          {
            v37 = 37;
          }

          else
          {
            v37 = 5;
          }

LABEL_62:
          GraphicsContext.copyOnWrite()();
          if (*(*(*v5 + 16) + 64) != 2)
          {
            RBColorFromLinear();
          }

          specialized RBShadowFlags.init(_:)(v37);
          return RBDrawingStateAddShadowStyle3();
        }

        if ((v36 & 4) != 0)
        {
          v37 = 6;
        }

        else
        {
          v37 = 5;
        }

        if ((v36 & 4) != 0)
        {
          v38 = 38;
        }

        else
        {
          v38 = 37;
        }

        if ((v36 & 0x10) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v36 & 2) != 0)
        {
          v38 = 34;
        }

        else
        {
          v38 = 32;
        }

        if ((v36 & 0x10) == 0)
        {
          goto LABEL_62;
        }
      }

      v37 = v38;
      goto LABEL_62;
    case 5u:
      v46 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v97 = *(v46 + 16);
      v98 = *(v46 + 32);
      v99 = *(v46 + 48);
      *&v100 = *(v46 + 64);
      v96 = *v46;
      GraphicsContext.copyOnWrite()();
      return RBDrawingState.addProjectionTransform(_:)();
    case 6u:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v96 = *v22;
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[4];
      v99 = v22[3];
      v100 = v25;
      v97 = v23;
      v98 = v24;
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddColorMatrixFilter();
    case 7u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v51 = *v49;
      v50 = *(v49 + 4);
      v53 = *(v49 + 8);
      v52 = *(v49 + 12);
      v54 = *(v49 + 16);
      GraphicsContext.copyOnWrite()();
      v55 = *v5;
      v56 = *(*(*v5 + 16) + 64);
      if (v56 == 2)
      {
        v57 = v54;
LABEL_43:
        v70 = 1;
        goto LABEL_59;
      }

      RBColorFromLinear();
      v51 = v66;
      v50 = v67;
      v53 = v68;
      v52 = v69;
      v56 = *(*(v55 + 16) + 64);
      v57 = v54;
      if (v56 == 2)
      {
        goto LABEL_43;
      }

      v70 = 2;
      goto LABEL_59;
    case 8u:
      v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v51 = *v58;
      v50 = *(v58 + 4);
      v53 = *(v58 + 8);
      v52 = *(v58 + 12);
      v59 = *(v58 + 16);
      GraphicsContext.copyOnWrite()();
      v60 = *v5;
      v56 = *(*(*v5 + 16) + 64);
      if (v56 == 2)
      {
        v57 = v59;
      }

      else
      {
        RBColorFromLinear();
        v51 = v71;
        v50 = v72;
        v53 = v73;
        v52 = v74;
        v56 = *(*(v60 + 16) + 64);
        v57 = v59;
        if (v56 != 2)
        {
          v70 = 2;
LABEL_59:
          *&v96 = __PAIR64__(v50, v51);
          *(&v96 + 1) = __PAIR64__(v52, v53);
          *&v97 = __PAIR64__(LODWORD(v57), v56);
          DWORD2(v97) = v70;
          return RBDrawingStateAddStyle();
        }
      }

      v70 = 1;
      goto LABEL_59;
    case 9u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddHueRotationFilter();
    case 0xAu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddSaturationFilter();
    case 0xBu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddBrightnessFilter();
    case 0xCu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddContrastFilter();
    case 0xDu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddGrayscaleFilter();
    case 0xEu:
      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v28 = *v26;
      v27 = *(v26 + 4);
      v30 = *(v26 + 8);
      v29 = *(v26 + 12);
      v31 = *(v26 + 16);
      v32 = *(v26 + 20);
      GraphicsContext.copyOnWrite()();
      v33 = *v5;
      v34 = *(*(*v5 + 16) + 64);
      if (v34 == 2)
      {
        v35 = v31;
LABEL_38:
        v65 = 1;
        goto LABEL_47;
      }

      RBColorFromLinear();
      v28 = v61;
      v27 = v62;
      v30 = v63;
      v29 = v64;
      v34 = *(*(v33 + 16) + 64);
      v35 = v31;
      if (v34 == 2)
      {
        goto LABEL_38;
      }

      v65 = 2;
LABEL_47:
      *&v96 = v32;
      *(&v96 + 1) = __PAIR64__(v27, v28);
      *&v97 = __PAIR64__(v29, v30);
      *(&v97 + 1) = __PAIR64__(LODWORD(v35), v34);
      LODWORD(v98) = v65;
      return RBDrawingStateAddStyle();
    case 0x10u:
      v83 = *_s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      v96 = v83;
      return RBDrawingStateAddLuminanceCurveFilter();
    case 0x11u:
      v19 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      v20 = v19[1];
      v96 = *v19;
      v97 = v20;
      v21 = v19[3];
      v98 = v19[2];
      v99 = v21;
      return RBDrawingStateAddRGBACurvesFilter();
    case 0x12u:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v39 = *result;
      if (*result)
      {
        v41 = *(result + 32);
        v40 = *(result + 40);
        v42 = *(result + 24);
        v44 = *(result + 8);
        v43 = *(result + 16);
        v100 = v107;
        v101 = v108;
        *v102 = v109[0];
        *&v102[12] = *(v109 + 12);
        v96 = v103;
        v97 = v104;
        v98 = v105;
        v99 = v106;
        v45 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v96);
        GraphicsContext.copyOnWrite()();
        v84 = 0uLL;
        *&v85 = v41;
        *(&v85 + 1) = v40;
        v92 = v39;
        v93 = v44;
        v94 = v43;
        v95 = v42;
        Shader.ResolvedShader.rbFilterFlags.getter();
        RBDrawingStateAddShaderFilter();
        return outlined destroy of GraphicsFilter(&v103);
      }

      return result;
    case 0x13u:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v16 = *(v15 + 16);
      v17 = *(v15 + 20);
      type metadata accessor for ColorBox<ResolvedColorProvider>();
      v18 = swift_allocObject();
      *(v18 + 16) = *v15;
      *(v18 + 32) = v16;
      *&v84 = v17 | 0x3F80000000000000;
      *(&v84 + 1) = v18;
      *&v89 = 2550136832;
      GraphicsContext.addFilter(_:options:)(&v84, 0);
      v98 = v86;
      v99 = v87;
      v100 = v88;
      *&v101 = v89;
      v96 = v84;
      v97 = v85;
      return outlined destroy of GraphicsContext.Filter(&v96);
    case 0x17u:
      return RBDrawingStateAddBlurFilter();
    case 0x18u:
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddLuminanceToAlphaFilter();
    case 0x19u:
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddColorInvertFilter();
    default:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      if (*result <= 0.0)
      {
        return result;
      }

      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddBlurFilter();
  }
}

uint64_t specialized RBShadowFlags.init(_:)(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v1 = 0;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 2;
    if ((a1 & 4) != 0)
    {
LABEL_4:
      v1 = v1 | 4;
    }
  }

LABEL_5:
  if ((a1 & 8) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 = v1 | 0x10;
    if ((a1 & 0x20) == 0)
    {
      return v1;
    }

    return v1 | 0x20;
  }

  v1 = v1 | 8;
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x20) != 0)
  {
    return v1 | 0x20;
  }

  return v1;
}

uint64_t DisplayList.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 16);
  if (v4)
  {

    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 80 * v7++ + 32;
      while (1)
      {
        v9 = *(v2 + v8 + 16);
        v10 = *(v2 + v8 + 48);
        v38 = *(v2 + v8 + 32);
        *v39 = v10;
        *&v39[12] = *(v2 + v8 + 60);
        v11 = *(v2 + v8 + 16);
        v37[0] = *(v2 + v8);
        v37[1] = v11;
        v12 = *(v2 + v8 + 48);
        v35[2] = v38;
        v36[0] = v12;
        *(v36 + 12) = *(v2 + v8 + 60);
        v35[0] = v37[0];
        v35[1] = v9;
        outlined init with copy of DisplayList.Item(v37, v34);
        DisplayList.Item.features.getter(v34);
        v5 |= v34[0];
        v13 = *(&v38 + 1);
        v14 = *&v39[20];
        v15 = *&v39[16] >> 30;
        if (*&v39[16] >> 30)
        {
          break;
        }

        if (*(&v38 + 1) >> 60 == 6 || *(&v38 + 1) >> 60 == 11)
        {
          v18 = *((*(&v38 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          goto LABEL_17;
        }

        outlined destroy of DisplayList.Item(v37);
        if (v4 == v7)
        {
          goto LABEL_38;
        }

        v8 += 80;
        if (v7++ >= *(v2 + 16))
        {
          goto LABEL_37;
        }
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          outlined destroy of DisplayList.Item(v37);
          goto LABEL_35;
        }

        v17 = *(*(&v38 + 1) + 16);
        if (v17)
        {
          if (v17 > 7)
          {
            v19 = v17 & 0x7FFFFFFFFFFFFFF8;
            v22 = (*(&v38 + 1) + 188);
            v23 = 0uLL;
            v24 = v17 & 0x7FFFFFFFFFFFFFF8;
            v25 = 0uLL;
            do
            {
              v26.i32[0] = *(v22 - 30);
              v26.i32[1] = *(v22 - 20);
              v26.i32[2] = *(v22 - 10);
              v26.i32[3] = *v22;
              v27.i32[0] = v22[10];
              v27.i32[1] = v22[20];
              v27.i32[2] = v22[30];
              v27.i32[3] = v22[40];
              v23 = vorrq_s8(v26, v23);
              v25 = vorrq_s8(v27, v25);
              v22 += 80;
              v24 -= 8;
            }

            while (v24);
            v28 = vorrq_s8(v25, v23);
            v29 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
            v18 = v29.i32[0] | v29.i32[1];
            if (v17 == v19)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          v30 = v17 - v19;
          v31 = (*(&v38 + 1) + 40 * v19 + 68);
          do
          {
            v32 = *v31;
            v31 += 10;
            v18 |= v32;
            --v30;
          }

          while (v30);
        }

        else
        {
          v18 = 0;
        }

LABEL_17:
        outlined destroy of DisplayList.Item(v37);
        goto LABEL_34;
      }

      v33 = a2;
      switch(v39[4])
      {
        case 2:

          v21 = v13;
          break;
        case 7:
          v21 = *(*(&v38 + 1) + 28);
          outlined consume of DisplayList.Effect(*(&v38 + 1), v39[0], 7);

          break;
        case 0x12:
          v20 = v39[0];
          (*(**(&v38 + 1) + 120))(v35);
          outlined consume of DisplayList.Effect(v13, v20, 18);

          v21 = v35[0];
          break;
        default:
          outlined consume of DisplayList.Effect(*(&v38 + 1), v39[0], v39[4]);

          v21 = 0;
          break;
      }

      v18 = v21 | v14;
      a2 = v33;
LABEL_34:
      v6 |= v18;
LABEL_35:
      if (v4 == v7)
      {
        goto LABEL_38;
      }
    }

    while (v7 < *(v2 + 16));
LABEL_37:
    __break(1u);
LABEL_38:
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  return result;
}

uint64_t closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, double a6, double a7, double a8, double a9)
{
  v10 = *(result + 56);
  v11 = *(result + 64);
  v9 = (result + 56);
  if ((v11 >> 30) - 2 < 2)
  {
    return result;
  }

  v17 = result;
  v18 = *(result + 40);
  v19 = *(result + 48);
  if (!(v11 >> 30))
  {
    if (v18 >> 60 != 11)
    {
      return result;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
    v22 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v23 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v57 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v56 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
    v54 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
    v55 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v64 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v65 = v20;
    v66 = v21;
    v24 = *result + a6;
    v25 = *(result + 8) + a7;
    v61 = a4;
    outlined copy of DisplayList.Item.Value(v18, v19, v10, v11);
    outlined copy of DisplayList.Item.Value(v18, v19, v10, v11);

    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v64, a3, &v61, v24, v25, a8, a9);
    v27 = v26;
    v28 = swift_allocObject();
    v29 = v65;
    v30 = v66;
    *(v28 + 16) = v64;
    *(v28 + 24) = v29;
    *(v28 + 28) = v30;
    *(v28 + 32) = v22;
    *(v28 + 40) = v23;
    *(v28 + 48) = v57;
    *(v28 + 52) = v56;
    *(v28 + 56) = v55;
    *(v28 + 60) = v54;
    outlined consume of DisplayList.Item.Value(v18, v19, v10, v11);
    LOWORD(v31) = v19;
    if (v27)
    {
      if (a4)
      {
        v31 = (2 * ((33 * (a4 >> 16)) ^ a4)) | 1;
      }

      else
      {
        LOWORD(v31) = 0;
      }
    }

    v53 = v31;
    outlined consume of DisplayList.Item.Value(*(v17 + 5), *(v17 + 6), *(v17 + 7), *(v17 + 8));
    result = outlined consume of DisplayList.Item.Value(v18, v19, v10, v11);
    *(v17 + 5) = v28 | 0xB000000000000000;
    *(v17 + 6) = v53;
    *v9 = 0;
    v9[1] = 0;
    *a5 = (v27 | *a5) & 1;
    if ((v27 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    *(v17 + 4) = a4;
    return result;
  }

  v32 = HIDWORD(v19);
  v64 = *(result + 56);
  v65 = v11;
  v66 = HIDWORD(v11);
  v33 = *result;
  v34 = *(result + 8);
  v35 = *result + a6;
  v36 = v34 + a7;
  v61 = a4;
  outlined copy of DisplayList.Effect(v18, v19, SBYTE4(v19));

  DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v64, a3, &v61, v35, v36, a8, a9);
  v38 = v37;
  if (BYTE4(v19) == 7)
  {
    v39 = *(v18 + 16);
    v40 = *(v18 + 24);
    v41 = *(v18 + 28);
    v42 = *(v18 + 32);
    v60 = a4;
    v61 = v39;
    v62 = v40;
    v63 = v41;

    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v61, a3, &v60, v35, v36, a8, a9);
    v38 |= v43;
    LOBYTE(v32) = 7;
    v44 = swift_allocObject();
    v45 = v62;
    v46 = v63;
    *(v44 + 16) = v61;
    *(v44 + 24) = v45;
    *(v44 + 28) = v46;
    *(v44 + 32) = v42;
    outlined consume of DisplayList.Effect(v18, v19, 7);
    LODWORD(v19) = 0;
    v18 = v44;
  }

  else if (BYTE4(v19) == 18)
  {
    if (v18 == a2)
    {
      v47 = v17[2];
      v48 = v17[3];
      v61 = a4;
      v49 = (*(*a2 + 136))(v19, &v64, a3, &v61, v33, v34, v47, v48, v35, v36, a8, a9);
      outlined consume of DisplayList.Effect(v18, v19, 18);
      v18 = 0;
      LODWORD(v19) = 0;
      v38 |= v49;
      LOBYTE(v32) = 20;
    }

    else
    {
      LOBYTE(v32) = 18;
    }
  }

  v50 = v64;
  v51 = v19 | (v32 << 32);
  v52 = v65 | (v66 << 32) | 0x40000000;
  result = outlined consume of DisplayList.Item.Value(*(v17 + 5), *(v17 + 6), *(v17 + 7), *(v17 + 8));
  *(v17 + 5) = v18;
  *(v17 + 6) = v51;
  *(v17 + 7) = v50;
  *(v17 + 8) = v52;
  *a5 = (v38 | *a5) & 1;
  if (v38)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Image.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnvironmentValues.symbolRenderingMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v11);

    v6 = v11[1];
    v7 = v11[2];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = *(v8 + 73);
      v7 = *(v8 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
      v7 = byte_1ED52FC63;
    }
  }

  v9 = v3 | (v6 << 8) | (v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
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
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintKey>>();
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
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t assignWithCopy for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 4) = *(v11 + 4);
  *(v10 + 5) = *(v11 + 5);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 12) = *(v11 + 12);
  *(v10 + 13) = *(v11 + 13);
  return a1;
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.OpacityColor(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

uint64_t _ShapeStyle_Shape.stylePack.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    outlined consume of _ShapeStyle_Shape.Result(v4, v5);
    *(v3 + 32) = v2;
    *(v3 + 40) = 1;
  }
}

uint64_t _ForegroundStyleModifier2.ForegroundStyleEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a5;
  v39 = *(a3 - 8);
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v20 = type metadata accessor for _ForegroundStyleModifier2();
  v34 = v20;
  v37 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  MaterialView.ChildEnvironment.environment.getter(a6);
  _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter(v22);
  (*(v12 + 16))(v15, v22, a2);
  v36 = *(v37 + 8);
  v36(v22, v20);
  v23 = a6[1];
  v42 = *a6;
  v43 = v23;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v41);

  v37 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v41, &v42, 0, a2, a4);

  (*(v12 + 8))(v15, a2);
  v24 = v35;
  _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter(v22);
  v25 = v34;
  v27 = v38;
  v26 = v39;
  (*(v39 + 16))(v38, &v22[*(v34 + 52)], a3);
  v36(v22, v25);
  v28 = *a6;
  v29 = a6[1];
  v42 = *a6;
  v43 = v29;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v41);

  v30 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v41, &v42, 0, a3, v24);

  v31 = v37;
  (*(v26 + 8))(v27, a3);
  _s7SwiftUI13ShapeStyleBox33_C5308685324599C90E2F7A588812BB29LLCyAA0cD4PairVyAA03AnycD0VAHGGMaTm_0(0, &lazy cache variable for type metadata for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>, type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  swift_retain_n();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a6, v32);

  if (v29)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v28, *a6);
  }
}

uint64_t static IDView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(a4 + 40))(v7);
}

uint64_t AttributedStringTextStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *assignWithCopy for CodableOptional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t ForEachState.EditsBuilder.removeInserts(afterOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 72);
  v5 = (v4 + *(type metadata accessor for IndexSetBuilder(0) + 20));
  if ((v5[2] & 1) == 0)
  {
    v6 = *v5;
    if (*v5 >= a1)
    {
      *v5 = 0;
      v5[1] = 0;
LABEL_6:
      *(v5 + 16) = v6 >= a1;
      return IndexSet.remove(integersIn:)();
    }

    if (v5[1] >= a1)
    {
      v5[1] = a1;
      goto LABEL_6;
    }
  }

  return IndexSet.remove(integersIn:)();
}

uint64_t (*_ShapeStyle_Shape.stylePack.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 40) == 1)
  {
    v3 = *(v1 + 32);

    outlined consume of _ShapeStyle_Shape.Result(v4, 1u);
    *(v1 + 32) = 0;
    *(v1 + 40) = 5;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  return _ShapeStyle_Shape.stylePack.modify;
}

uint64_t outlined consume of _SymbolEffect.Storage(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined consume of _SymbolEffect.Trigger?(result);
  }

  return result;
}

float _SymbolEffect.Phase.init(previously:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  *v16 = a1[2];
  *&v16[14] = *(a1 + 46);
  outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v14);
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 12) = BYTE12(v14);
  *(a2 + 8) = 0;
  v4 = DWORD1(v15);
  v5 = BYTE8(v15);
  v6 = HIDWORD(v15);
  v7 = v16[0];
  *(a2 + 16) = v15;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  *(a2 + 32) = v7;
  v8 = v16[8];
  LOBYTE(v6) = v16[9];
  *(a2 + 36) = *&v16[4];
  *(a2 + 40) = v8;
  *(a2 + 41) = v6;
  *(a2 + 42) = 0;
  result = *&v16[12];
  v10 = *&v16[16];
  v11 = v16[20];
  v12 = *&v16[24];
  v13 = v16[28];
  *(a2 + 44) = *&v16[12];
  *(a2 + 48) = v10;
  *(a2 + 52) = v11;
  *(a2 + 56) = v12;
  *(a2 + 60) = v13;
  return result;
}

uint64_t outlined init with copy of _SymbolEffect.Phase(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v4;
  v5 = *(a1 + 36);
  *(a2 + 39) = *(a1 + 39);
  *(a2 + 36) = v5;
  v6 = *(a1 + 44);
  *(a2 + 60) = *(a1 + 60);
  *(a2 + 44) = v6;
  *(a2 + 61) = *(a1 + 61);

  return a2;
}

void type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>)
  {
    type metadata accessor for RBSymbolAnimationOptionKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey, type metadata accessor for RBSymbolAnimationOptionKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey()
{
  result = lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey;
  if (!lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey)
  {
    type metadata accessor for RBSymbolAnimationOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey);
  }

  return result;
}

void ViewGraph.NextUpdate.maxVelocity(_:)(double a1)
{
  if (a1 >= 160.0 && a1 < 320.0)
  {
    v3 = 0.0125;
  }

  else
  {
    if (a1 < 320.0)
    {
      return;
    }

    v3 = 0.00833333333;
  }

  v4 = _HighFrameRateReasonMake(0);
  v5 = *(v1 + 8);
  if (v3 < v5)
  {
    v5 = v3;
  }

  if ((*(v1 + 16) & (v5 > 0.0166666667)) != 0)
  {
    v5 = INFINITY;
  }

  *(v1 + 8) = v5;
  specialized Set._Variant.insert(_:)(&v6, v4);
}

unsigned __int16 *DisplayList.Item.addDrawingGroup(contentSeed:)(unsigned __int16 *result)
{
  v2 = v1;
  v3 = *result;
  if ((~*(v1 + 64) & 0xC0000000) != 0 || (*(v1 + 64) == 3221225472 ? (v4 = (*(v1 + 48) | *(v1 + 56) | *(v1 + 40)) == 0) : (v4 = 0), !v4))
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v36.origin = *MEMORY[0x1E695F050];
    v36.size = v5;
    v6 = *(v1 + 16);
    v7 = *(v1 + 48);
    v39 = *(v1 + 32);
    v40[0] = v7;
    *(v40 + 12) = *(v1 + 60);
    v8 = *(v1 + 16);
    v37 = *v1;
    v38 = v8;
    v9 = *(v1 + 48);
    v34 = v39;
    *v35 = v9;
    *&v35[12] = *(v1 + 60);
    v32 = v37;
    v33 = v6;
    outlined init with copy of DisplayList.Item(&v37, v41);
    DisplayList.Item.addExtent(to:)(&v36.origin.x);
    v41[2] = v34;
    v42[0] = *v35;
    *(v42 + 12) = *&v35[12];
    v41[0] = v32;
    v41[1] = v33;
    outlined destroy of DisplayList.Item(v41);
    origin = v36.origin;
    size = v36.size;
    IsNull = CGRectIsNull(v36);
    height = 0.0;
    if (IsNull)
    {
      x = 0.0;
    }

    else
    {
      x = origin.x;
    }

    if (IsNull)
    {
      y = 0.0;
    }

    else
    {
      y = origin.y;
    }

    if (IsNull)
    {
      width = 0.0;
    }

    else
    {
      width = size.width;
    }

    if (!IsNull)
    {
      height = size.height;
    }

    v17 = v37;
    v18 = v38;
    v43 = CGRectIntegral(*(&height - 3));
    v19 = v43.origin.x;
    v20 = v43.origin.y;
    v21 = v43.size.width;
    v22 = v43.size.height;
    v23 = *(v1 + 48);
    v24 = *(v2 + 7);
    v25 = *(v2 + 8);
    v26 = v43.origin.x - *&v17;
    v27 = v43.origin.y - *(&v17 + 1);
    v29 = *(v2 + 4);
    v28 = *(v2 + 5);
    outlined copy of DisplayList.Item.Value(v28, *(v2 + 6), v24, v25);
    if (one-time initialization token for defaultFlags != -1)
    {
      swift_once();
    }

    v30 = static RasterizationOptions.Flags.defaultFlags | 1;
    *v2 = v19;
    v2[1] = v20;
    v2[2] = v21;
    v2[3] = v22;
    v31 = swift_allocObject();
    v32 = 0uLL;
    v33 = v18;
    *&v34 = v29;
    *(&v34 + 1) = v28;
    *v35 = v23;
    *&v35[8] = v24;
    *&v35[16] = v25;
    *&v35[24] = 0;
    DisplayList.init(_:)(&v32, v31 + 16);
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = -1;
    *(v31 + 52) = 768;
    *(v31 + 56) = v30;
    *(v31 + 60) = 3;
    result = outlined consume of DisplayList.Item.Value(*(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8));
    *(v2 + 5) = v31 | 0xB000000000000000;
    *(v2 + 6) = v3;
    v2[7] = 0.0;
    v2[8] = 0.0;
  }

  return result;
}

uint64_t sub_18D2BF11C()
{

  return swift_deallocObject();
}

void DisplayList.Item.addExtent(to:)(CGFloat *a1)
{
  a = v1->a;
  b = v1->b;
  v13 = *&v1->ty;
  v14 = *&v1[1].a;
  v16 = *&v1[1].b;
  c = v1[1].c;
  v17 = LODWORD(c) >> 30;
  if (LODWORD(c) >> 30 > 1)
  {
    if (v17 != 2)
    {
      return;
    }

    path = v1->a;
    v185 = v1->b;
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    b = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 24);
    v29 = *(v13 + 16);
    if (!v29)
    {
      v53 = *(MEMORY[0x1E695F050] + 16);
      v52 = *(MEMORY[0x1E695F050] + 24);
LABEL_27:
      v54 = path + v27;
      v55 = v185 + v28;
      v56 = *a1;
      v57 = *(a1 + 1);
      v58 = *(a1 + 2);
      v59 = *(a1 + 3);
      v60 = v53;
      v61 = v52;
      goto LABEL_64;
    }

    v172 = *&v1[1].b;
    v174 = *&v1[1].c;
    v177 = *&v1[1].a;
    v16 = v13 + 32;

    v30 = 0;
    LOBYTE(v14) = 40;
    v31 = v27;
    v32 = v28;
    v33 = b;
    v34 = y;
    while (v30 < *(v13 + 16))
    {
      v5 = *(v16 + 40 * v30 + 24);
      v186 = v27;
      v187 = v28;
      v188 = b;
      v189 = y;
      v3 = *(v5 + 2);
      v38 = y;
      v37 = b;
      v36 = v28;
      v35 = v27;
      if (v3)
      {
        a = v31;
        x = v32;
        v39 = v34;
        v40 = v33;

        v41 = *(v5 + 3);
        v42 = *(v5 + 5);
        *&v190.tx = *(v5 + 4);
        *v191 = v42;
        *&v191[12] = *(v5 + 92);
        *&v190.a = *(v5 + 2);
        *&v190.c = v41;
        v1 = &v190;
        DisplayList.Item.addExtent(to:)(&v186);
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v3 = (v5 + 112);
          do
          {
            *&v190.c = v3[1];
            *&v190.tx = v3[2];
            *v191 = v3[3];
            *&v191[12] = *(v3 + 60);
            v43 = *v3;
            v3 += 5;
            *&v190.a = v43;
            v1 = &v190;
            DisplayList.Item.addExtent(to:)(&v186);
            --v4;
          }

          while (v4);
        }

        v35 = v186;
        v36 = v187;
        v37 = v188;
        v38 = v189;
        v33 = v40;
        v34 = v39;
        v32 = x;
        v31 = a;
      }

      ++v30;
      *&v31 = CGRectUnion(*&v31, *&v35);
      if (v30 == v29)
      {
        v52 = v34;
        v53 = v33;
        v28 = v32;
        v27 = v31;
        outlined consume of DisplayList.Item.Value(v13, v177, v172, v174);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  if (v17)
  {
    v4 = HIDWORD(v14);
    v9 = *MEMORY[0x1E695F050];
    v44 = *(MEMORY[0x1E695F050] + 8);
    v46 = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v186 = *MEMORY[0x1E695F050];
    v187 = v44;
    v188 = v46;
    v189 = height;
    p_tx = *(v16 + 16);
    if (p_tx)
    {
      outlined copy of DisplayList.Effect(v13, v14, SBYTE4(v14));

      v47 = *(v16 + 48);
      v48 = *(v16 + 80);
      *&v190.tx = *(v16 + 64);
      *v191 = v48;
      *&v191[12] = *(v16 + 92);
      *&v190.a = *(v16 + 32);
      *&v190.c = v47;
      DisplayList.Item.addExtent(to:)(&v186);
      p_tx = (p_tx - 1);
      if (p_tx)
      {
        v5 = (v16 + 112);
        do
        {
          *&v190.c = *(v5 + 1);
          *&v190.tx = *(v5 + 2);
          *v191 = *(v5 + 3);
          *&v191[12] = *(v5 + 60);
          v49 = *v5;
          v5 += 80;
          *&v190.a = v49;
          DisplayList.Item.addExtent(to:)(&v186);
          p_tx = (p_tx - 1);
        }

        while (p_tx);
      }

      x = v186;
      y = v187;
      v50 = v188;
      v51 = v189;
    }

    else
    {
      outlined copy of DisplayList.Effect(v13, v14, SBYTE4(v14));
      v51 = height;
      v50 = v46;
      y = v44;
      x = v9;
    }

    if (BYTE4(v14) > 7u)
    {
      switch(BYTE4(v14))
      {
        case 8u:
          v163.origin.x = x;
          v163.origin.y = y;
          v163.size.width = v50;
          v163.size.height = v51;
          *&pathb = a;
          v184 = b;
          v179 = v14;
          v159 = *(v13 + 24);
          v160 = *(v13 + 16);
          v1 = *(v13 + 32);
          v14 = *&v1->c;

          if (v14)
          {
            v6 = 0;
            p_tx = &v1->tx;
            v169 = height;
            v171 = v46;
            v173 = v44;
            v176 = v9;
            while (v6 < *&v1->c)
            {
              v111 = *(p_tx + 6);
              v113 = *(p_tx + 1);
              v112 = *(p_tx + 2);
              *&v190.a = *p_tx;
              *&v190.c = v113;
              *&v190.tx = v112;
              *v191 = v111;
              v16 = *&v190.a;
              if (v112 > 2u)
              {
                if (v112 == 5)
                {
                  if (*(*&v190.a + 16))
                  {
                    if (*(*&v190.a + 16) == 1)
                    {
                      v5 = *(*&v190.a + 24);
                      outlined init with copy of PathSet.Element(&v190, &v186);
                      RBPathGetBoundingRect();
                    }

                    else
                    {
                      outlined init with copy of PathSet.Element(&v190, &v186);
                      v114 = MEMORY[0x193AC3640](v16 + 24);
                    }

                    x = v114;
                    y = v115;
                    width = v116;
                    a = v117;
                  }

                  else
                  {
                    v118 = *(*&v190.a + 24);
                    if (!v118)
                    {
                      goto LABEL_153;
                    }

                    v5 = v118;
                    outlined init with copy of PathSet.Element(&v190, &v186);
                    outlined init with copy of PathSet.Element(&v190, &v186);
                    PathBoundingBox = CGPathGetPathBoundingBox(v5);
                    x = PathBoundingBox.origin.x;
                    y = PathBoundingBox.origin.y;
                    width = PathBoundingBox.size.width;
                    a = PathBoundingBox.size.height;

                    outlined destroy of PathSet.Element(&v190);
                  }
                }

                else
                {
                  y = v173;
                  x = v176;
                  a = v169;
                  width = v171;
                  if (v112 != 6)
                  {
                    goto LABEL_128;
                  }
                }
              }

              else if (v112 < 2u)
              {
                x = v190.a;
                y = v190.b;
                width = v190.c;
                a = v190.d;
              }

              else
              {
                x = *(*&v190.a + 16);
                y = *(*&v190.a + 24);
                width = *(*&v190.a + 32);
                a = *(*&v190.a + 40);
                outlined init with copy of PathSet.Element(&v190, &v186);
              }

              ++v6;
              v199.origin.x = v9;
              v199.origin.y = v44;
              v199.size.width = v46;
              v199.size.height = height;
              v211.origin.x = x;
              v211.origin.y = y;
              v211.size.width = width;
              v211.size.height = a;
              v200 = CGRectUnion(v199, v211);
              v9 = v200.origin.x;
              v44 = v200.origin.y;
              v46 = v200.size.width;
              height = v200.size.height;
              outlined destroy of PathSet.Element(&v190);
              p_tx += 7;
              if (v14 == v6)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_151;
          }

LABEL_91:
          v212.origin.x = v9 - v160;
          v212.origin.y = v44 - v159;
          v212.size.width = v46;
          v212.size.height = height;
          v202 = CGRectUnion(v163, v212);
          x = v202.origin.x;
          y = v202.origin.y;
          v124 = v202.size.width;
          v125 = v202.size.height;

          v50 = v124;
          v51 = v125;
          LOBYTE(v14) = v179;
          a = *&pathb;
          b = v184;
          break;
        case 9u:
          if (!*(v13 + 88))
          {
            v119 = *(v13 + 32);
            *&v190.a = *(v13 + 16);
            *&v190.c = v119;
            *&v190.tx = *(v13 + 48);
            v120 = x;
            *&v119 = y;
            v121 = v50;
            v122 = v51;
            v194 = CGRectApplyAffineTransform(*(&v119 - 8), &v190);
            goto LABEL_146;
          }

          break;
        case 0xAu:
          v62 = *(v13 + 96);
          *&v191[16] = *(v13 + 80);
          v63 = *(v13 + 112);
          v192 = v62;
          v193[0] = v63;
          *(v193 + 12) = *(v13 + 124);
          v64 = *(v13 + 32);
          *&v190.a = *(v13 + 16);
          *&v190.c = v64;
          v65 = *(v13 + 64);
          *&v190.tx = *(v13 + 48);
          *v191 = v65;
          *&v63 = x;
          *&v65 = y;
          v66 = v50;
          v67 = v51;
          v194 = GraphicsFilter.domainOfDefinition(for:)(*&v63);
LABEL_146:
          x = v194.origin.x;
          y = v194.origin.y;
          v50 = v194.size.width;
          v51 = v194.size.height;
          break;
      }

LABEL_147:
      v157 = a + x;
      v158 = b + y;
      v209 = CGRectUnion(*a1, *(&v50 - 2));
      v102 = v209.origin.x;
      v103 = v209.origin.y;
      v104 = v209.size.width;
      v105 = v209.size.height;
      outlined consume of DisplayList.Effect(v13, v14, v4);
      goto LABEL_148;
    }

    if (BYTE4(v14) != 6)
    {
      if (BYTE4(v14) != 7 || (*(v13 + 32) & 1) != 0)
      {
        goto LABEL_147;
      }

      v68 = *(v13 + 16);
      v186 = v9;
      v187 = v44;
      v188 = v46;
      v189 = height;
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = v50;
        v71 = v51;
        v72 = *(v68 + 48);
        v73 = *(v68 + 80);
        *&v190.tx = *(v68 + 64);
        *v191 = v73;
        *&v191[12] = *(v68 + 92);
        *&v190.a = *(v68 + 32);
        *&v190.c = v72;
        DisplayList.Item.addExtent(to:)(&v186);
        v74 = v69 - 1;
        if (v74)
        {
          v75 = (v68 + 112);
          do
          {
            *&v190.c = v75[1];
            *&v190.tx = v75[2];
            *v191 = v75[3];
            *&v191[12] = *(v75 + 60);
            v76 = *v75;
            v75 += 5;
            *&v190.a = v76;
            DisplayList.Item.addExtent(to:)(&v186);
            --v74;
          }

          while (v74);
        }

        v9 = v186;
        v44 = v187;
        v51 = v71;
        height = v189;
        v50 = v70;
        v46 = v188;
      }

      goto LABEL_145;
    }

    if (*(v13 + 52))
    {
      goto LABEL_147;
    }

    v16 = *(v13 + 16);
    v5 = *(v13 + 24);
    v3 = *(v13 + 32);
    v1 = *(v13 + 40);
    v123 = *(v13 + 48);
    if (v123 <= 2)
    {
      if (*(v13 + 48) && v123 != 1)
      {
        v9 = *(v16 + 16);
        v44 = *(v16 + 24);
        v46 = *(v16 + 32);
        height = *(v16 + 40);
      }

      else
      {
        v9 = *(v13 + 16);
        v44 = *(v13 + 24);
        v46 = *(v13 + 32);
        height = *(v13 + 40);
      }

      goto LABEL_145;
    }

    if (v123 != 5)
    {
      if (v123 != 6)
      {
        goto LABEL_128;
      }

      goto LABEL_145;
    }

    v164 = v50;
    v166 = v51;
    if (*(v16 + 16))
    {
      if (*(v16 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v144 = MEMORY[0x193AC3640](v16 + 24);
      }

      v9 = v144;
      v44 = v145;
      v46 = v146;
      height = v147;
LABEL_144:
      outlined consume of Path.Storage(v16, v5, v3, v1, 5u);
      v50 = v164;
      v51 = v166;
LABEL_145:
      v208.origin.x = x;
      v208.origin.y = y;
      v208.size.width = v50;
      v208.size.height = v51;
      v215.origin.x = v9;
      v215.origin.y = v44;
      v215.size.width = v46;
      v215.size.height = height;
      v194 = CGRectIntersection(v208, v215);
      goto LABEL_146;
    }

LABEL_140:
    v155 = *(v16 + 24);
    if (!v155)
    {
LABEL_156:
      __break(1u);
      return;
    }

    v156 = v155;

    v207 = CGPathGetPathBoundingBox(v156);
    v9 = v207.origin.x;
    v44 = v207.origin.y;
    v46 = v207.size.width;
    height = v207.size.height;

    goto LABEL_144;
  }

  v18 = v13 >> 60;
  if (v13 >> 60 == 7)
  {
    v4 = *&v1[1].b;
    v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v6 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v96 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v9 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    y = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
    x = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    LOBYTE(p_tx) = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
    v184 = b;
    if (v96 <= 2)
    {
      v97 = a;
      if (v96 >= 2)
      {
        v101 = v1->c;
        d = v1->d;
        tx = v1->tx;
        ty = v1->ty;
      }

      else
      {
        ty = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        tx = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        d = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v101 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      goto LABEL_104;
    }

    if (v96 == 5)
    {
      if (LOBYTE(v1->c))
      {
        v97 = a;
        v126 = LODWORD(c);
        if (LOBYTE(v1->c) == 1)
        {
          outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
          outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
          outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          v127 = MEMORY[0x193AC3640](&v1->d);
        }

        v101 = v127;
        d = v128;
        tx = v129;
        ty = v130;
        v149 = v1;
        v150 = v5;
        v151 = v16;
        goto LABEL_135;
      }

      goto LABEL_129;
    }

    if (v96 == 6)
    {
      v97 = a;
      v101 = *MEMORY[0x1E695F050];
      d = *(MEMORY[0x1E695F050] + 8);
      tx = *(MEMORY[0x1E695F050] + 16);
      ty = *(MEMORY[0x1E695F050] + 24);
LABEL_104:
      v126 = LODWORD(c);
      outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
LABEL_105:
      v136 = 0.0;
      if (p_tx)
      {
        v137 = 0.0;
      }

      else
      {
        v137 = v9 * -2.8 + x;
      }

      if (p_tx)
      {
        v138 = 0.0;
      }

      else
      {
        v138 = v9 * -2.8 + y;
      }

      if (p_tx)
      {
        v139 = 0.0;
      }

      else
      {
        v139 = v9 * -2.8 - x;
      }

      if ((p_tx & 1) == 0)
      {
        v136 = v9 * -2.8 - y;
      }

      v140 = CGRect.inset(by:)(v137, v138, v139, v136, v101, d, tx, ty);
      v213.size.width = v141;
      v213.size.height = v142;
      v213.origin.x = v97 + v140;
      v213.origin.y = v184 + v143;
      v203 = CGRectUnion(*a1, v213);
      v102 = v203.origin.x;
      v103 = v203.origin.y;
      v104 = v203.size.width;
      v105 = v203.size.height;
      v106 = v13;
      v107 = v14;
      v109 = v4;
      v108 = v126;
      goto LABEL_121;
    }

LABEL_128:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_129:
    v148 = v1->d;
    if (v148 != 0.0)
    {
      v126 = LODWORD(c);
      v97 = a;
      pathc = *&v148;
      outlined copy of DisplayList.Item.Value(v13, v14, v4, v126);
      outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
      v205 = CGPathGetPathBoundingBox(pathc);
      v101 = v205.origin.x;
      d = v205.origin.y;
      tx = v205.size.width;
      ty = v205.size.height;

      v149 = v1;
      v150 = v5;
      v151 = v16;
LABEL_135:
      outlined consume of Path.Storage(v149, v150, v151, v6, 5u);
      goto LABEL_105;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v18 != 5)
  {
    if (v18 == 4)
    {
      v19 = *&v1[1].b;
      v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v20 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (v20 <= 2)
      {
        v21 = a;
        v22 = b;
        if (v20 >= 2)
        {
          v26 = v1->c;
          v25 = v1->d;
          v24 = v1->tx;
          v23 = v1->ty;
        }

        else
        {
          v23 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v24 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v26 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        }

        goto LABEL_119;
      }

      if (v20 == 5)
      {
        if (LOBYTE(v1->c))
        {
          v21 = a;
          v22 = b;
          v131 = LODWORD(c);
          if (LOBYTE(v1->c) == 1)
          {
            outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
            outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
            outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
            v132 = MEMORY[0x193AC3640](&v1->d);
          }

          v26 = v132;
          v25 = v133;
          v24 = v134;
          v23 = v135;
          goto LABEL_138;
        }

        v152 = v1->d;
        if (v152 != 0.0)
        {
          v131 = LODWORD(c);
          v21 = a;
          v22 = b;
          v153 = v14;
          v154 = *&v152;
          outlined copy of DisplayList.Item.Value(v13, v153, v19, v131);
          outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          v206 = CGPathGetPathBoundingBox(v154);
          v26 = v206.origin.x;
          v25 = v206.origin.y;
          v24 = v206.size.width;
          v23 = v206.size.height;

          v14 = v153;
LABEL_138:
          outlined consume of Path.Storage(v1, v5, v16, v6, 5u);
          goto LABEL_120;
        }

        goto LABEL_155;
      }

      if (v20 == 6)
      {
        v21 = a;
        v22 = b;
        v26 = *MEMORY[0x1E695F050];
        v25 = *(MEMORY[0x1E695F050] + 8);
        v24 = *(MEMORY[0x1E695F050] + 16);
        v23 = *(MEMORY[0x1E695F050] + 24);
LABEL_119:
        v131 = LODWORD(c);
        outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
LABEL_120:
        v214.origin.x = v21 + v26;
        v214.origin.y = v22 + v25;
        v214.size.width = v24;
        v214.size.height = v23;
        v204 = CGRectUnion(*a1, v214);
        v102 = v204.origin.x;
        v103 = v204.origin.y;
        v104 = v204.size.width;
        v105 = v204.size.height;
        v106 = v13;
        v107 = v14;
        v109 = v19;
        v108 = v131;
        goto LABEL_121;
      }

      goto LABEL_128;
    }

    v60 = v1->c;
    v61 = v1->d;
    v56 = *a1;
    v57 = *(a1 + 1);
    v58 = *(a1 + 2);
    v59 = *(a1 + 3);
    v54 = v1->a;
    v55 = v1->b;
LABEL_64:
    *a1 = CGRectUnion(*&v56, *&v54);
    return;
  }

  patha = v1->a;
  v184 = v1->b;
  v161 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v162 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v4 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  v78 = *MEMORY[0x1E695F050];
  v77 = *(MEMORY[0x1E695F050] + 8);
  a = *(MEMORY[0x1E695F050] + 16);
  v79 = *(MEMORY[0x1E695F050] + 24);
  v80 = v14;
  v14 = *&v1->c;
  v175 = LODWORD(c);
  v178 = v80;
  outlined copy of DisplayList.Item.Value(v13, v80, v16, LODWORD(c));

  if (v14)
  {
    v5 = 0;
    p_tx = &v1->tx;
    v165 = v79;
    v167 = a;
    v168 = v77;
    v170 = v78;
    while (v5 < *&v1->c)
    {
      v85 = *(p_tx + 6);
      v87 = *(p_tx + 1);
      v86 = *(p_tx + 2);
      *&v190.a = *p_tx;
      *&v190.c = v87;
      *&v190.tx = v86;
      *v191 = v85;
      v6 = *&v190.a;
      if (v86 > 2u)
      {
        if (v86 == 5)
        {
          if (*(*&v190.a + 16))
          {
            if (*(*&v190.a + 16) == 1)
            {
              v4 = v16;
              outlined init with copy of PathSet.Element(&v190, &v186);
              RBPathGetBoundingRect();
            }

            else
            {
              outlined init with copy of PathSet.Element(&v190, &v186);
              v89 = MEMORY[0x193AC3640](v6 + 24);
            }

            v81 = v89;
            v82 = v90;
            v83 = v91;
            v84 = v92;
          }

          else
          {
            v93 = *(*&v190.a + 24);
            if (!v93)
            {
              goto LABEL_152;
            }

            v4 = v16;
            v94 = v93;
            outlined init with copy of PathSet.Element(&v190, &v186);
            outlined init with copy of PathSet.Element(&v190, &v186);
            v197 = CGPathGetPathBoundingBox(v94);
            y = v197.origin.x;
            x = v197.origin.y;
            v9 = v197.size.width;
            v95 = v197.size.height;

            outlined destroy of PathSet.Element(&v190);
            v84 = v95;
            v83 = v9;
            v82 = x;
            v81 = y;
            v16 = v4;
          }
        }

        else
        {
          v82 = v168;
          v81 = v170;
          v84 = v165;
          v83 = v167;
          if (v86 != 6)
          {
            goto LABEL_128;
          }
        }
      }

      else if (v86 < 2u)
      {
        v81 = v190.a;
        v82 = v190.b;
        v83 = v190.c;
        v84 = v190.d;
      }

      else
      {
        y = *(*&v190.a + 16);
        x = *(*&v190.a + 24);
        v9 = *(*&v190.a + 32);
        v88 = *(*&v190.a + 40);
        outlined init with copy of PathSet.Element(&v190, &v186);
        v84 = v88;
        v83 = v9;
        v82 = x;
        v81 = y;
      }

      ++v5;
      v195.origin.x = v78;
      v195.origin.y = v77;
      v195.size.width = a;
      v195.size.height = v79;
      v196 = CGRectUnion(v195, *&v81);
      v78 = v196.origin.x;
      v77 = v196.origin.y;
      a = v196.size.width;
      v79 = v196.size.height;
      outlined destroy of PathSet.Element(&v190);
      p_tx += 7;
      if (v14 == v5)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_65:
  v210.origin.x = patha + v78 - v162;
  v210.origin.y = v184 + v77 - v161;
  v210.size.width = a;
  v210.size.height = v79;
  v198 = CGRectUnion(*a1, v210);
  v102 = v198.origin.x;
  v103 = v198.origin.y;
  v104 = v198.size.width;
  v105 = v198.size.height;

  v106 = v13;
  v108 = v175;
  v107 = v178;
  v109 = v16;
LABEL_121:
  outlined consume of DisplayList.Item.Value(v106, v107, v109, v108);
LABEL_148:
  *a1 = v102;
  a1[1] = v103;
  a1[2] = v104;
  a1[3] = v105;
}

__C::CGRect __swiftcall GraphicsFilter.domainOfDefinition(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = v1[5];
  v40[4] = v1[4];
  v40[5] = v6;
  v41[0] = v1[6];
  *(v41 + 12) = *(v1 + 108);
  v7 = v1[1];
  v40[0] = *v1;
  v40[1] = v7;
  v8 = v1[3];
  v40[2] = v1[2];
  v40[3] = v8;
  v9 = _s7SwiftUI14GraphicsFilterOWOg(v40);
  switch(v9)
  {
    case 18:
      v31 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      v11 = -fabs(*(v31 + 8));
      v16 = -fabs(*(v31 + 16));
      v12 = x;
      v13 = y;
      v14 = width;
      v15 = height;
      goto LABEL_18;
    case 4:
      v17 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      v18 = *(v17 + 52);
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      if ((v18 & 1) == 0)
      {
        v24 = *(v17 + 32);
        v23 = *(v17 + 40);
        v25 = *(v17 + 24) * -2.8;
        v19 = v23 + v25;
        v20 = v24 + v25;
        v21 = v25 - v23;
        v22 = v25 - v24;
      }

      v36 = v22;
      v37 = v21;
      v38 = v20;
      v39 = v19;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v26 = x;
      v27 = y;
      v28 = width;
      v29 = height;
      if (!CGRectIsNull(v42))
      {
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v44 = CGRectStandardize(v43);
        if (v38 == v36)
        {
          v30 = v36;
        }

        else
        {
          v30 = v38;
        }

        v26 = v30 + v44.origin.x;
        v27 = v39 + v44.origin.y;
        v28 = v44.size.width - (v38 + v36);
        v29 = v44.size.height - (v39 + v37);
        v45.origin.x = v30 + v44.origin.x;
        v45.origin.y = v39 + v44.origin.y;
        v45.size.width = v28;
        v45.size.height = v29;
        if (CGRectGetWidth(v45) < 0.0 || (v46.origin.x = v26, v46.origin.y = v27, v46.size.width = v28, v46.size.height = v29, CGRectGetHeight(v46) < 0.0))
        {
          v26 = *MEMORY[0x1E695F050];
          v27 = *(MEMORY[0x1E695F050] + 8);
          v28 = *(MEMORY[0x1E695F050] + 16);
          v29 = *(MEMORY[0x1E695F050] + 24);
        }
      }

      if ((v18 & 2) != 0)
      {
        x = v26;
        y = v27;
        width = v28;
        height = v29;
        break;
      }

      v47.origin.x = v26;
      v47.origin.y = v27;
      v47.size.width = v28;
      v47.size.height = v29;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v48 = CGRectUnion(v47, v50);
      goto LABEL_19;
    case 0:
      v10 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      if ((*(v10 + 8) & 1) == 0)
      {
        v11 = *v10 * -2.8;
        v12 = x;
        v13 = y;
        v14 = width;
        v15 = height;
        v16 = v11;
LABEL_18:
        v48 = CGRectInset(*&v12, v11, v16);
LABEL_19:
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
      }

      break;
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

uint64_t initializeWithCopy for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of GraphicsBlendMode(v5, v6);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Effect(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v2;
  *(result + 32) = *(a2 + 32);
  *(result + 46) = *(a2 + 46);
  *(result + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 64);
    v5 = v3 & 1;
    v6 = result;
    outlined copy of GraphicsBlendMode(v4, v3 & 1);
    result = v6;
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
  }

  return result;
}

uint64_t _ShapeStyle_RenderedShape.render(shadow:style:above:below:opaqueFill:mayAdjustItem:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v7 = v6;
  v166 = *a1;
  v167 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 2);
  v164 = *(a1 + 1);
  v165 = v10;
  v11 = *(a1 + 12);
  v12 = *(a1 + 52);
  v138 = *(a2 + 85);
  v13 = *(a2 + 88);
  v14 = *(a2 + 104);
  v142 = *(a2 + 96);
  if ((a5 & 1) == 0)
  {
    v134 = *(a2 + 8);
    v135 = *(a2 + 16);
    v136 = *a2;
    v141 = *(a2 + 104);
    v32 = (v12 >> 3) & 1;
    goto LABEL_10;
  }

  v12 &= 0xE7u;
  if (*a6 != 1 || (v15 = *(v7 + 264), (v15 & 2) != 0))
  {
    v134 = *(a2 + 8);
    v135 = *(a2 + 16);
    v136 = *a2;
    v141 = *(a2 + 104);
    v32 = 1;
LABEL_10:
    v33 = *(v7 + 80);
    v162 = *(v7 + 64);
    v163[0] = v33;
    *(v163 + 12) = *(v7 + 92);
    v34 = *(v7 + 16);
    v158 = *v7;
    v159 = v34;
    v35 = *(v7 + 32);
    v161 = *(v7 + 48);
    v160 = v35;
    v36 = *(v7 + 128);
    v37 = *(v7 + 136);
    v38 = *(v7 + 192);
    v39 = *(v7 + 108);
    v40 = *(v7 + 236);
    v41 = *(v7 + 240);
    *&v157[9] = 0;
    DWORD2(v157[9]) = 0;
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v158, __src);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    *(&v157[15] + 1) = static GraphicsBlendMode.normal;
    v42 = v9 * v13;
    LOBYTE(v157[16]) = byte_1ED52F818;
    DWORD1(v157[16]) = 1065353216;
    BYTE8(v157[16]) = 0;
    v157[4] = v162;
    v157[5] = v163[0];
    *(&v157[5] + 12) = *(v163 + 12);
    v157[0] = v158;
    v157[1] = v159;
    v157[3] = v161;
    v157[2] = v160;
    WORD6(v157[6]) = v39;
    v157[7] = 0uLL;
    *&v157[8] = v36;
    *(&v157[8] + 1) = v37;
    v157[10] = 0uLL;
    *&v157[11] = v36;
    *(&v157[11] + 1) = v37;
    v157[12] = v38;
    v157[13] = 0uLL;
    *&v157[14] = 3221225472;
    DWORD2(v157[14]) = 0;
    BYTE12(v157[14]) = v40;
    LODWORD(v157[15]) = v41;
    if (v32)
    {
      v43 = *(v7 + 16);
      __src[0] = *v7;
      __src[1] = v43;
      *(&__src[5] + 12) = *(v7 + 92);
      v44 = *(v7 + 80);
      __src[4] = *(v7 + 64);
      __src[5] = v44;
      v45 = *(v7 + 48);
      __src[2] = *(v7 + 32);
      __src[3] = v45;
      if (!(DWORD2(__src[6]) >> 29) && (v12 & 1) == 0)
      {
        v137 = __src[1];
        v139 = __src[0];
        v46 = __src[2];
        v47 = static GraphicsBlendMode.normal;
        v48 = byte_1ED52F818;
        v49 = swift_allocObject();
        *(v49 + 16) = v139;
        *(v49 + 32) = v137;
        *(v49 + 48) = v46;
        *(v49 + 56) = *a1;
        *(v49 + 64) = *(a1 + 2);
        *(v49 + 68) = v42;
        v50 = *(a1 + 2);
        *(v49 + 72) = *(a1 + 1);
        *(v49 + 88) = v50;
        *(v49 + 104) = v11;
        v51 = v49 | 0x7000000000000000;
        *(v49 + 108) = v12;
        outlined copy of GraphicsBlendMode(v47, v48);
        outlined init with copy of _ShapeStyle_RenderedShape.Shape(__src, __dst);
        outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
        *(&v157[12] + 1) = v51;
        v157[13] = v39;
        v52 = v11 != 0.5;
        *&v157[14] = 0;
LABEL_26:
        v66 = v141;
LABEL_59:
        _ShapeStyle_RenderedShape.commitItem()(__dst);
        if (v12)
        {
          __src[2] = __dst[2];
          __src[3] = __dst[3];
          *(&__src[3] + 12) = *(&__dst[3] + 12);
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          if (v66 == 255)
          {
            v123 = static GraphicsBlendMode.normal;
            v124 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          }

          else
          {
            v123 = v142;
            v124 = v66;
          }

          *&v143[0] = v123;
          BYTE8(v143[0]) = v124 & 1;
          outlined copy of GraphicsBlendMode?(v142, v66);
          v125 = 1;
        }

        else
        {
          __src[2] = __dst[2];
          __src[3] = __dst[3];
          *(&__src[3] + 12) = *(&__dst[3] + 12);
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          if (v66 == 255)
          {
            v121 = static GraphicsBlendMode.normal;
            v122 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          }

          else
          {
            v121 = v142;
            v122 = v66;
          }

          *&v143[0] = v121;
          BYTE8(v143[0]) = v122 & 1;
          outlined copy of GraphicsBlendMode?(v142, v66);
          v125 = v52;
        }

        CompositedItemAccumulator.add(item:blend:needsDrawingGroup:)(__src, v143, v125);
        outlined consume of GraphicsBlendMode(*&v143[0], SBYTE8(v143[0]));
        outlined destroy of DisplayList.Item(__dst);
        memcpy(__src, v157, 0x109uLL);
        return outlined destroy of _ShapeStyle_RenderedShape(__src);
      }

      v53 = (v12 & 0x10) == 0;
      v54 = ~v12 & 2 | v12 & 0xEF;
    }

    else
    {
      v53 = (v12 & 0x10) == 0;
      v54 = ~v12 & 2 | v12 & 0xEF | ~v12 & 4;
      if ((v12 & 1) == 0)
      {
        if (v138 == 1)
        {
          v78 = *(*v136 + 104);
          v79 = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          if ((v78(v79) & 1) == 0)
          {
            _ShapeStyle_RenderedShape.render(paint:)(v136);
LABEL_24:
            v60 = swift_allocObject();
            *&v150 = v166;
            *(&v150 + 1) = __PAIR64__(LODWORD(v42), v167);
            v151 = v164;
            v152 = v165;
            *&v153 = v11;
            BYTE4(v153) = v54;
            _s7SwiftUI14GraphicsFilterOWOi3_(&v150);
            v61 = v155;
            v60[5] = v154;
            v60[6] = v61;
            v60[7] = v156[0];
            *(v60 + 124) = *(v156 + 12);
            v62 = v151;
            v60[1] = v150;
            v60[2] = v62;
            v63 = v153;
            v60[3] = v152;
            v60[4] = v63;
            __src[0] = 0uLL;
            __src[1] = v157[11];
            __src[2] = v157[12];
            __src[3] = v157[13];
            *&__src[4] = *&v157[14];
            DWORD2(__src[4]) = 0;
            outlined copy of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);

            DisplayList.init(_:)(__src, __dst);
            v64 = *&__dst[0];
            v65 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
            outlined consume of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);
            *(&v157[12] + 1) = v60;
            *&v157[13] = 0xA00000000;
            *(&v157[13] + 1) = v64;
            *&v157[14] = v65;
            LOBYTE(__src[0]) = BYTE12(v157[14]);
            DisplayList.Item.canonicalize(options:)(__src);

            if (v32 & v53)
            {
              v52 = 1;
              LOBYTE(v12) = v54;
              goto LABEL_26;
            }

            if ((v54 & 1) == 0)
            {
              v67 = 1;
              goto LABEL_49;
            }

            memcpy(__dst, v7, 0x109uLL);
            _ShapeStyle_RenderedShape.bounds.getter();
            y = v180.origin.y;
            x = v180.origin.x;
            height = v180.size.height;
            width = v180.size.width;
            IsNull = CGRectIsNull(v180);
            *v69.i64 = x;
            *&v69.i64[1] = y;
            *v70.i64 = width;
            *&v70.i64[1] = height;
            if (IsNull)
            {
              v71 = -1;
            }

            else
            {
              v71 = 0;
            }

            v72 = vdupq_n_s64(v71);
            v73 = 0x10000;
            v74 = *(v7 + 192);
            if (IsNull)
            {
              v73 = 65542;
            }

            v75 = *(v7 + 108);
            v76 = *(v7 + 236);
            *&__src[9] = 0;
            DWORD2(__src[9]) = 0;
            *(&__src[15] + 1) = static GraphicsBlendMode.normal;
            LOBYTE(__src[16]) = byte_1ED52F818;
            DWORD1(__src[16]) = 1065353216;
            BYTE8(__src[16]) = 0;
            __src[0] = vbicq_s8(v69, v72);
            __src[1] = vbicq_s8(v70, v72);
            *&__src[2] = v73;
            *&__src[4] = 0;
            DWORD2(__src[6]) = 0;
            WORD6(__src[6]) = v75;
            __src[7] = 0u;
            *&__src[8] = v36;
            *(&__src[8] + 1) = v37;
            __src[10] = 0u;
            *&__src[11] = v36;
            *(&__src[11] + 1) = v37;
            *&__src[12] = v74;
            *(&__src[13] + 1) = 0;
            *(&__src[12] + 8) = 0u;
            *&__src[14] = 3221225472;
            DWORD2(__src[14]) = 0;
            BYTE12(__src[14]) = v76;
            LODWORD(__src[15]) = v41;
            if ((v54 & 8) == 0)
            {
              if (v138 == 1)
              {
                v81 = *(*v136 + 104);
                v82 = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
                if ((v81(v82) & 1) == 0)
                {
                  _ShapeStyle_RenderedShape.render(paint:)(v136);
LABEL_48:
                  _ShapeStyle_RenderedShape.background(_:)(__src);
                  memcpy(v143, __src, 0x109uLL);
                  outlined destroy of _ShapeStyle_RenderedShape(v143);
                  v67 = 0;
LABEL_49:
                  v84 = *(v7 + 16);
                  v143[0] = *v7;
                  v143[1] = v84;
                  *(&v143[5] + 12) = *(v7 + 92);
                  v85 = *(v7 + 48);
                  v143[2] = *(v7 + 32);
                  v143[3] = v85;
                  v86 = *(v7 + 80);
                  v143[4] = *(v7 + 64);
                  v143[5] = v86;
                  if (DWORD2(v143[6]) >> 29)
                  {
                    v94 = *(v7 + 48);
                    v95 = *(v7 + 80);
                    v147 = *(v7 + 64);
                    v148[0] = v95;
                    *(v148 + 12) = *(v7 + 92);
                    v96 = *(v7 + 16);
                    *&v145.a = *v7;
                    *&v145.c = v96;
                    v97 = *(v7 + 48);
                    v99 = *v7;
                    v98 = *(v7 + 16);
                    *&v145.tx = *(v7 + 32);
                    v146 = v97;
                    v100 = *(v7 + 80);
                    __dst[4] = v147;
                    __dst[5] = v100;
                    *(&__dst[5] + 12) = *(v7 + 92);
                    __dst[0] = v99;
                    __dst[1] = v98;
                    v101 = *(v7 + 192);
                    v102 = *(v7 + 108);
                    v103 = *(v7 + 236);
                    *&__dst[9] = 0;
                    DWORD2(__dst[9]) = 0;
                    v104 = static GraphicsBlendMode.normal;
                    v105 = byte_1ED52F818;
                    *(&__dst[15] + 1) = static GraphicsBlendMode.normal;
                    LOBYTE(__dst[16]) = byte_1ED52F818;
                    DWORD1(__dst[16]) = 1065353216;
                    BYTE8(__dst[16]) = 0;
                    __dst[2] = *&v145.tx;
                    __dst[3] = v94;
                    WORD6(__dst[6]) = v102;
                    *&__dst[7] = -*&v157[10];
                    *(&__dst[7] + 1) = -*(&v157[10] + 1);
                    *&__dst[8] = v36;
                    *(&__dst[8] + 1) = v37;
                    *&__dst[10] = -*&v157[10];
                    *(&__dst[10] + 1) = -*(&v157[10] + 1);
                    *&__dst[11] = v36;
                    *(&__dst[11] + 1) = v37;
                    __dst[12] = v101;
                    __dst[13] = 0uLL;
                    *&__dst[14] = 3221225472;
                    DWORD2(__dst[14]) = 0;
                    BYTE12(__dst[14]) = v103;
                    LODWORD(__dst[15]) = v41;
                    __asm { FMOV            V0.4S, #1.0 }

                    v173 = _Q0;
                    LODWORD(v174) = 2143289344;
                    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v145, __src);
                    outlined copy of GraphicsBlendMode(v104, v105);
                    _ShapeStyle_RenderedShape.render(color:)(&v173);
                    _ShapeStyle_RenderedShape.commitItem()(__src);
                    DisplayList.init(_:)(__src, &v168);
                    v107 = v168;
                    v108 = v169;
                    v109 = HIDWORD(v169);
                    v110 = swift_allocObject();
                    *(v110 + 16) = v107;
                    *(v110 + 24) = v108;
                    *(v110 + 28) = v109;
                    *(v110 + 32) = v67;
                    __src[0] = 0uLL;
                    __src[1] = v157[11];
                    __src[2] = v157[12];
                    __src[3] = v157[13];
                    *&__src[4] = *&v157[14];
                    DWORD2(__src[4]) = 0;
                    outlined copy of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);

                    DisplayList.init(_:)(__src, &v168);
                    v111 = v168;
                    v112 = v169 | (HIDWORD(v169) << 32) | 0x40000000;
                    outlined consume of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);
                    *(&v157[12] + 1) = v110;
                    *&v157[13] = 0x700000000;
                    *(&v157[13] + 1) = v111;
                    *&v157[14] = v112;
                    LOBYTE(v168) = BYTE12(v157[14]);
                    DisplayList.Item.canonicalize(options:)(&v168);

                    memcpy(__src, __dst, 0x109uLL);
                    outlined destroy of _ShapeStyle_RenderedShape(__src);
                    v66 = v141;
                    if ((v54 & 1) == 0)
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v140 = v54;
                    v88 = *(&v143[0] + 1);
                    v87 = *&v143[0];
                    v90 = *(&v143[1] + 1);
                    v89 = *&v143[1];
                    v91 = v143[2];
                    v92 = BYTE1(v143[2]);
                    v93 = BYTE2(v143[2]);
                    v173 = v143[0];
                    v174 = v143[1];
                    v175 = v143[2];
                    if (*&v157[10] == 0.0 && *(&v157[10] + 1) == 0.0)
                    {
                      outlined copy of Path.Storage(*&v143[0], *(&v143[0] + 1), *&v143[1], *(&v143[1] + 1), v143[2]);
                      outlined copy of Path.Storage(v87, v88, v89, v90, v91);
                    }

                    else
                    {
                      CGAffineTransformMakeTranslation(&v145, -*&v157[10], -*(&v157[10] + 1));
                      outlined copy of Path.Storage(v87, v88, v89, v90, v143[2]);
                      Path.applying(_:)(&v145.a, &v168);
                      v87 = v168;
                      v88 = v169;
                      v89 = v170;
                      v90 = v171;
                      v91 = v172;
                    }

                    v113 = swift_allocObject();
                    *(v113 + 16) = v87;
                    *(v113 + 24) = v88;
                    *(v113 + 32) = v89;
                    *(v113 + 40) = v90;
                    *(v113 + 48) = v91;
                    *(v113 + 49) = v92 & 1;
                    *(v113 + 50) = v93 & 1;
                    *(v113 + 52) = v67;
                    v114 = v157[13];
                    v115 = v157[14];
                    v116 = *(&v157[12] + 1);
                    __src[0] = 0uLL;
                    __src[1] = v157[11];
                    __src[2] = v157[12];
                    __src[3] = v157[13];
                    *&__src[4] = *&v157[14];
                    DWORD2(__src[4]) = 0;
                    outlined copy of Path.Storage(v87, v88, v89, v90, v91);
                    outlined copy of DisplayList.Item.Value(v116, v114, *(&v114 + 1), v115);

                    DisplayList.init(_:)(__src, __dst);
                    v117 = *&__dst[0];
                    v118 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
                    outlined consume of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);
                    *(&v157[12] + 1) = v113;
                    *&v157[13] = 0x600000000;
                    *(&v157[13] + 1) = v117;
                    *&v157[14] = v118;
                    LOBYTE(__src[0]) = BYTE12(v157[14]);
                    DisplayList.Item.canonicalize(options:)(__src);

                    outlined destroy of _ShapeStyle_RenderedShape.Shape(v143);
                    outlined consume of Path.Storage(v87, v88, v89, v90, v91);
                    v54 = v140;
                    v66 = v141;
                    if ((v140 & 1) == 0)
                    {
                      goto LABEL_58;
                    }
                  }

                  __src[0] = 0uLL;
                  __src[1] = v157[11];
                  __src[2] = v157[12];
                  __src[3] = v157[13];
                  *&__src[4] = *&v157[14];
                  DWORD2(__src[4]) = 0;
                  outlined copy of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);
                  DisplayList.init(_:)(__src, __dst);
                  v119 = *&__dst[0];
                  v120 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
                  outlined consume of DisplayList.Item.Value(*(&v157[12] + 1), *&v157[13], *(&v157[13] + 1), v157[14]);
                  *(&v157[12] + 8) = xmmword_18DDD08E0;
                  *(&v157[13] + 1) = v119;
                  *&v157[14] = v120;
                  LOBYTE(__src[0]) = BYTE12(v157[14]);
                  DisplayList.Item.canonicalize(options:)(__src);
LABEL_58:
                  v52 = 1;
                  LOBYTE(v12) = v54;
                  goto LABEL_59;
                }
              }

              else
              {
                if (!v138)
                {
                  *&v176 = v136;
                  *(&v176 + 1) = v134;
                  v177 = v135;
                  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_47:
                  _ShapeStyle_RenderedShape.render(color:)(&v176);
                  goto LABEL_48;
                }

                outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
              }

              __asm { FMOV            V0.4S, #1.0 }

              v176 = _Q0;
              v177 = 2143289344;
              goto LABEL_47;
            }

            __asm { FMOV            V0.4S, #1.0 }

            v176 = _Q0;
            v177 = 2143289344;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            goto LABEL_47;
          }
        }

        else
        {
          if (!v138)
          {
            *&v178 = v136;
            *(&v178 + 1) = v134;
            v179 = v135;
LABEL_22:
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_23:
            _ShapeStyle_RenderedShape.render(color:)(&v178);
            goto LABEL_24;
          }

          outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        }

        __asm { FMOV            V0.4S, #1.0 }

        v178 = _Q0;
        v179 = 2143289344;
        goto LABEL_23;
      }
    }

    __asm { FMOV            V0.4S, #1.0 }

    v178 = _Q0;
    v179 = 2143289344;
    goto LABEL_22;
  }

  *a6 = 0;
  v16 = swift_allocObject();
  *&v157[0] = *a1;
  DWORD2(v157[0]) = *(a1 + 2);
  v17 = *(a1 + 2);
  v157[1] = *(a1 + 1);
  v157[2] = v17;
  *(v157 + 3) = v9;
  *&v157[3] = v11;
  BYTE4(v157[3]) = v12;
  _s7SwiftUI14GraphicsFilterOWOi3_(v157);
  v18 = v157[5];
  v16[5] = v157[4];
  v16[6] = v18;
  v16[7] = v157[6];
  *(v16 + 124) = *(&v157[6] + 12);
  v19 = v157[1];
  v16[1] = v157[0];
  v16[2] = v19;
  v20 = v157[3];
  v16[3] = v157[2];
  v16[4] = v20;
  v21 = *(v7 + 208);
  v22 = *(v7 + 216);
  v23 = *(v7 + 224);
  v25 = *(v7 + 192);
  v24 = *(v7 + 200);
  __src[0] = 0uLL;
  __src[1] = *(v7 + 176);
  *&__src[2] = v25;
  *(&__src[2] + 1) = v24;
  *&__src[3] = v21;
  *(&__src[3] + 1) = v22;
  *&__src[4] = v23;
  DWORD2(__src[4]) = 0;
  outlined copy of DisplayList.Item.Value(v24, v21, v22, v23);

  DisplayList.init(_:)(__src, __dst);
  v26 = *&__dst[0];
  v27 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(v7 + 200), *(v7 + 208), *(v7 + 216), *(v7 + 224));
  *(v7 + 200) = v16;
  *(v7 + 208) = 0xA00000000;
  *(v7 + 216) = v26;
  *(v7 + 224) = v27;
  LOBYTE(__src[0]) = *(v7 + 236);
  DisplayList.Item.canonicalize(options:)(__src);

  if (v12 || v11 != 0.5)
  {
    goto LABEL_88;
  }

  if (v14 == 255)
  {
    v29 = v142;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v30 = static GraphicsBlendMode.normal;
    v31 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v29 = v142;
    v30 = v142;
    v31 = v14;
  }

  outlined copy of GraphicsBlendMode?(v29, v14);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v126 = static GraphicsBlendMode.normal;
  v127 = byte_1ED52F818;
  if (v31)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v30, 1);
      result = outlined consume of GraphicsBlendMode(v126, 1);
      if (v30 != v126)
      {
LABEL_88:
        if ((v15 & 1) == 0)
        {
          *(v7 + 264) = v15 | 1;
        }

        return result;
      }

      goto LABEL_81;
    }

    swift_unknownObjectRetain();
LABEL_87:
    outlined copy of GraphicsBlendMode(v126, v127);
    outlined consume of GraphicsBlendMode(v30, v31 & 1);
    outlined consume of GraphicsBlendMode(v126, v127);
    result = outlined consume of GraphicsBlendMode(v30, v31 & 1);
    goto LABEL_88;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_87;
  }

  outlined consume of GraphicsBlendMode(v30, 0);
  result = outlined consume of GraphicsBlendMode(v126, 0);
  if (v30 != v126)
  {
    goto LABEL_88;
  }

LABEL_81:
  v128 = *(v7 + 104);
  if (v128 >> 29)
  {
    if (v128 >> 29 != 5)
    {
      goto LABEL_88;
    }

    if (v128 != -1610612736)
    {
      goto LABEL_88;
    }

    v129 = vorrq_s8(vorrq_s8(vorrq_s8(*(v7 + 40), *(v7 + 72)), vorrq_s8(*(v7 + 56), *(v7 + 88))), vorrq_s8(*(v7 + 8), *(v7 + 24)));
    if (*&vorr_s8(*v129.i8, *&vextq_s8(v129, v129, 8uLL)) | *v7)
    {
      goto LABEL_88;
    }
  }

  return result;
}

unint64_t *assignWithCopy for ScrapeableAttachmentViewModifier(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v4 == 0xF000000000000007)
    {
      outlined destroy of ScrapeableContent.Content(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of ScrapeableContent.Content(*a2);
      v6 = *a1;
      *a1 = v3;
      outlined consume of ScrapeableContent.Content(v6);
    }
  }

  else
  {
    if (v4 != 0xF000000000000007)
    {
      outlined copy of ScrapeableContent.Content(*a2);
    }

    *a1 = v3;
  }

  return a1;
}

uint64_t Font.feature(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>, lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>);
    }
  }
}

uint64_t destroy for _ShapeStyle_Pack.Effect(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 != 255)
  {
    return outlined consume of GraphicsBlendMode(*(result + 64), v1 & 1);
  }

  return result;
}

uint64_t *CompositedItemAccumulator.add(item:blend:needsDrawingGroup:)(__int128 *a1, uint64_t a2, char a3)
{
  *(v47 + 12) = *(a1 + 60);
  v6 = a1[3];
  v46[2] = a1[2];
  v47[0] = v6;
  v7 = a1[1];
  v46[0] = *a1;
  v46[1] = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  if (!*(*(v3 + 24) + 16))
  {
    goto LABEL_11;
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  if (v11)
  {
    if (*(a2 + 8))
    {
      outlined copy of GraphicsBlendMode(*a2, 1);
      outlined copy of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v8, 1);
      if (v10 == v8)
      {
        goto LABEL_12;
      }

LABEL_11:
      CompositedItemAccumulator.commitPendingItems()();
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      outlined copy of GraphicsBlendMode(v8, v9);
      outlined consume of GraphicsBlendMode(v12, v13);
      *(v3 + 32) = v8;
      *(v3 + 40) = v9;
      goto LABEL_12;
    }

    swift_unknownObjectRetain_n();
LABEL_10:
    outlined copy of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v10, v11);
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v10, v11);
    goto LABEL_11;
  }

  if (*(a2 + 8))
  {
    goto LABEL_10;
  }

  outlined consume of GraphicsBlendMode(*(v3 + 32), 0);
  outlined consume of GraphicsBlendMode(v8, 0);
  if (v10 != v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  v14 = a1[3];
  v39 = a1[2];
  v40 = v14;
  v41 = *(a1 + 8);
  v15 = a1[1];
  v37 = *a1;
  v38 = v15;
  v44 = v39;
  *v45 = v14;
  *&v45[16] = v41;
  v42 = v37;
  v43 = v15;
  *&v45[24] = 0;
  v16 = *(v3 + 24);
  outlined init with copy of DisplayList.Item(v46, &v31);
  outlined init with copy of DisplayList.Item(&v42, &v31);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[80 * v18];
  *(v19 + 2) = v42;
  v20 = v43;
  v21 = v44;
  v22 = *v45;
  *(v19 + 92) = *&v45[12];
  *(v19 + 4) = v21;
  *(v19 + 5) = v22;
  *(v19 + 3) = v20;
  *(v3 + 24) = v16;
  if (*(v3 + 41) != 1)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v25 = static GraphicsBlendMode.normal;
    if (v9)
    {
      if (byte_1ED52F818)
      {
        outlined copy of GraphicsBlendMode(v8, 1);
        outlined copy of GraphicsBlendMode(v25, 1);
        outlined consume of GraphicsBlendMode(v8, 1);
        outlined consume of GraphicsBlendMode(v25, 1);
        v26 = v8 == v25;
        goto LABEL_28;
      }

      v29 = swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v29, 1);
      v27 = v25;
      v28 = 0;
    }

    else
    {
      if ((byte_1ED52F818 & 1) == 0)
      {
        outlined consume of GraphicsBlendMode(v8, 0);
        outlined consume of GraphicsBlendMode(v25, 0);
        v26 = v8 == v25;
LABEL_28:
        v30 = v26;
        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v8, 0);
      v27 = v25;
      v28 = 1;
    }

    outlined consume of GraphicsBlendMode(v27, v28);
    v30 = 0;
LABEL_31:
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    v36 = 0;
    result = outlined destroy of DisplayList.Item(&v31);
    v24 = v30 ^ 1;
    goto LABEL_32;
  }

  v33 = v39;
  v34 = v40;
  v35 = v41;
  v31 = v37;
  v32 = v38;
  v36 = 0;
  result = outlined destroy of DisplayList.Item(&v31);
  v24 = 1;
LABEL_32:
  *(v3 + 41) = v24;
  *(v3 + 42) = (*(v3 + 42) | a3) & 1;
  return result;
}

void CompositedItemAccumulator.commitPendingItems()()
{
  v1 = v0;
  v2 = v0 + 3;
  v3 = v0[3];
  v4 = *(v3 + 2);
  if (!v4)
  {
    return;
  }

  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  v7 = *(v3 + 6);
  v8 = *(v3 + 7);

  v9 = v4 - 1;
  if (v9)
  {
    v14 = v3 + 136;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    do
    {
      *&v10 = CGRectUnion(*&v10, *(v14 - 24));
      v14 += 80;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
  }

  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;

  v19 = *(v3 + 2);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v20 = (v3 + 40);
    do
    {
      v21 = *v20 - v17;
      *(v20 - 1) = *(v20 - 1) - v18;
      *v20 = v21;
      v20 += 10;
      --v19;
    }

    while (v19);
    *v2 = v3;
  }

  DisplayList.init(_:)(v22, &v49);
  v23 = *v1;
  *&v53 = v18;
  *(&v53 + 1) = v17;
  *&v54 = v16;
  *(&v54 + 1) = v15;
  *&v55[8] = xmmword_18DDA6ED0;
  *&v55[24] = v49;
  *&v55[32] = WORD4(v49) | (HIDWORD(v49) << 32) | 0x40000000;
  *&v55[40] = 0;
  *v55 = v23;
  LOBYTE(v49) = *(v1 + 10);
  DisplayList.Item.canonicalize(options:)(&v49);
  if (*(v1 + 42) == 1)
  {
    LOWORD(v49) = *(v1 + 4);
    DisplayList.Item.addDrawingGroup(contentSeed:)(&v49);
    *(v1 + 42) = 0;
  }

  v24 = v1[4];
  v25 = *(v1 + 40);
  outlined copy of GraphicsBlendMode(v24, v25);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v26 = static GraphicsBlendMode.normal;
  v27 = byte_1ED52F818;
  if (v25)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v24, 1);
      outlined consume of GraphicsBlendMode(v26, 1);
      if (v24 == v26)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    swift_unknownObjectRetain();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(v24, 0);
    outlined consume of GraphicsBlendMode(v26, 0);
    if (v24 == v26)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  outlined copy of GraphicsBlendMode(v26, v27);
  outlined consume of GraphicsBlendMode(v24, v25);
  outlined consume of GraphicsBlendMode(v26, v27);
  outlined consume of GraphicsBlendMode(v24, v25);
LABEL_25:
  v28 = v53;
  v53 = 0uLL;
  v47 = *v55;
  v48[0] = *&v55[16];
  *(v48 + 12) = *&v55[28];
  v45 = 0uLL;
  v46 = v54;
  v40[2] = *v55;
  v41[0] = *&v55[16];
  *(v41 + 12) = *&v55[28];
  v29 = v1[4];
  v30 = *(v1 + 40);
  v40[0] = 0uLL;
  v40[1] = v54;
  outlined copy of GraphicsBlendMode(v29, v30);
  outlined init with copy of DisplayList.Item(&v45, &v49);
  DisplayList.init(_:)(v40, &v42);
  v51 = *v55;
  v52[0] = *&v55[16];
  *(v52 + 12) = *&v55[28];
  v49 = v53;
  v50 = v54;
  outlined destroy of DisplayList.Item(&v49);
  v31 = *v1;
  v53 = v28;
  *v55 = v31;
  *&v55[8] = v29;
  *&v55[16] = v30 | 0x500000000;
  *&v55[24] = v42;
  *&v55[32] = v43 | (v44 << 32) | 0x40000000;
  *&v55[40] = 0;
LABEL_26:
  v51 = *v55;
  v52[0] = *&v55[16];
  *(v52 + 12) = *&v55[28];
  v49 = v53;
  v50 = v54;
  v32 = v1[2];
  outlined init with copy of DisplayList.Item(&v49, &v45);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[80 * v34];
  *(v35 + 2) = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52[0];
  *(v35 + 92) = *(v52 + 12);
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  *(v35 + 3) = v36;
  v1[2] = v32;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(*v2 + 16));
    v47 = *v55;
    v48[0] = *&v55[16];
    *(v48 + 12) = *&v55[28];
    v45 = v53;
    v46 = v54;
    outlined destroy of DisplayList.Item(&v45);
  }

  else
  {
    v39 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11DisplayListV4ItemV_Tt1g5(0, *(*v2 + 24) >> 1);
    v47 = *v55;
    v48[0] = *&v55[16];
    *(v48 + 12) = *&v55[28];
    v45 = v53;
    v46 = v54;
    outlined destroy of DisplayList.Item(&v45);

    *v2 = v39;
  }
}

uint64_t *push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(uint64_t **a1, char a2, uint64_t a3)
{
  result = *a1;
  if (result[2])
  {

    DisplayList.init(_:)(v6, v20);
    v7 = *(a3 + 192);
    v8 = *(a3 + 128);
    v13 = *(a3 + 112);
    v14 = v8;
    *&v15[8] = xmmword_18DDA6ED0;
    *&v15[24] = *&v20[0];
    *&v15[32] = WORD4(v20[0]) | (HIDWORD(v20[0]) << 32) | 0x40000000;
    *&v15[40] = 0;
    *v15 = v7;
    LOBYTE(v20[0]) = *(a3 + 236);
    DisplayList.Item.canonicalize(options:)(v20);
    v16[2] = *v15;
    v17[0] = *&v15[16];
    *(v17 + 12) = *&v15[28];
    v16[0] = v13;
    v16[1] = v14;
    v11 = *v15;
    v12[0] = *&v15[16];
    *(v12 + 12) = *&v15[28];
    v9 = v13;
    v10 = v14;
    outlined init with copy of DisplayList.Item(v16, v20);
    DisplayList.Item.composite(_:above:)(&v9, a2 & 1);
    v18[2] = v11;
    v19[0] = v12[0];
    *(v19 + 12) = *(v12 + 12);
    v18[0] = v9;
    v18[1] = v10;
    outlined destroy of DisplayList.Item(v18);
    v20[2] = *v15;
    v21[0] = *&v15[16];
    *(v21 + 12) = *&v15[28];
    v20[0] = v13;
    v20[1] = v14;
    return outlined destroy of DisplayList.Item(v20);
  }

  return result;
}

double DisplayList.Item.composite(_:above:)(uint64_t a1, char a2)
{
  *&v68[12] = *(a1 + 60);
  v4 = *(a1 + 48);
  v67 = *(a1 + 32);
  *v68 = v4;
  v5 = *(a1 + 16);
  v65 = *a1;
  v66 = v5;
  if ((~*&v68[16] & 0xC0000000) != 0 || *&v68[16] != 3221225472 || *v68 | *&v68[8] | *(&v67 + 1))
  {
    if ((~*(v2 + 64) & 0xC0000000) == 0 && *(v2 + 64) == 3221225472 && !(*(v2 + 48) | *(v2 + 56) | *(v2 + 40)))
    {
      v6 = *(v2 + 48);
      v58 = *(v2 + 32);
      *v59 = v6;
      *&v59[12] = *(v2 + 60);
      v7 = *(v2 + 16);
      v56 = *v2;
      v57 = v7;
      outlined init with copy of DisplayList.Item(&v65, v53);
      outlined destroy of DisplayList.Item(&v56);
      v8 = *v68;
      *(v2 + 32) = v67;
      *(v2 + 48) = v8;
      *(v2 + 60) = *&v68[12];
      v5 = v66;
      *v2 = v65;
      *(v2 + 16) = v5;
      return *&v5;
    }

    v9 = *(a1 + 32);
    v61 = *(a1 + 16);
    v62 = v9;
    v63 = *(a1 + 48);
    v64 = *(a1 + 64);
    v10 = vsubq_f64(v65, *v2);
    v60 = MEMORY[0x1E69E7CC0];
    v42 = v10;
    if (a2)
    {
      outlined init with copy of DisplayList.Item(&v65, &v56);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = *(a1 + 16);
      v13 = *(a1 + 32);
      v56 = v10;
      v57 = v12;
      v14 = *(a1 + 48);
      v58 = v13;
      *v59 = v14;
      *&v59[16] = *(a1 + 64);
      *&v59[24] = 0;
      outlined init with copy of DisplayList.Item(&v65, v53);
      outlined init with copy of DisplayList.Item(&v56, v53);
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0], &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[80 * v16];
      *(v17 + 2) = v56;
      v18 = v57;
      v19 = v58;
      v20 = *v59;
      *(v17 + 92) = *&v59[12];
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
      v60 = v11;
    }

    if ((*(v2 + 64) & 0xC0000000) == 0x40000000)
    {
      v21 = *(v2 + 40);
      v23 = *(v2 + 48);
      v22 = *(v2 + 52);
      if (v22 == 20 && !v21 && !v23)
      {
        outlined copy of DisplayList.Effect(0, 0, 20);

        specialized Array.append<A>(contentsOf:)(v24);
        v11 = v60;
        if ((a2 & 1) == 0)
        {
LABEL_30:
          DisplayList.init(_:)(v11, v53);
          v56 = v42;
          v57 = v61;
          v58 = v62;
          *v59 = v63;
          *&v59[16] = v64;
          *&v59[24] = 0;
          outlined destroy of DisplayList.Item(&v56);
          v39 = *&v53[0];
          v40 = WORD4(v53[0]) | (HIDWORD(v53[0]) << 32) | 0x40000000;
          outlined consume of DisplayList.Item.Value(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
          *&v5 = 0;
          *(v2 + 40) = xmmword_18DDA6ED0;
          *(v2 + 56) = v39;
          *(v2 + 64) = v40;
          return *&v5;
        }

LABEL_25:
        v56 = v42;
        v57 = v61;
        v58 = v62;
        *v59 = v63;
        *&v59[16] = v64;
        *&v59[24] = 0;
        outlined init with copy of DisplayList.Item(&v56, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
        }

        v34 = *(v11 + 2);
        v33 = *(v11 + 3);
        if (v34 >= v33 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
        }

        *(v11 + 2) = v34 + 1;
        v35 = &v11[80 * v34];
        *(v35 + 2) = v56;
        v36 = v57;
        v37 = v58;
        v38 = *v59;
        *(v35 + 92) = *&v59[12];
        *(v35 + 4) = v37;
        *(v35 + 5) = v38;
        *(v35 + 3) = v36;
        v60 = v11;
        goto LABEL_30;
      }

      outlined copy of DisplayList.Effect(*(v2 + 40), *(v2 + 48), *(v2 + 52));

      outlined consume of DisplayList.Effect(v21, v23, v22);
    }

    v25 = *(v2 + 48);
    v54 = *(v2 + 32);
    v55[0] = v25;
    *(v55 + 12) = *(v2 + 60);
    v26 = *(v2 + 16);
    v53[0] = *v2;
    v53[1] = v26;
    v49 = v26;
    v50 = v54;
    v51 = v25;
    v52 = *(v2 + 64);
    v56 = 0uLL;
    *&v59[16] = v52;
    v58 = v54;
    *v59 = v25;
    v57 = v26;
    *&v59[24] = 0;
    outlined init with copy of DisplayList.Item(v53, v43);
    outlined init with copy of DisplayList.Item(&v56, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v28 = *(v11 + 2);
    v27 = *(v11 + 3);
    if (v28 >= v27 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v43[0] = 0;
    v43[1] = 0;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v48 = 0;
    outlined destroy of DisplayList.Item(v43);
    *(v11 + 2) = v28 + 1;
    v29 = &v11[80 * v28];
    *(v29 + 2) = v56;
    v31 = v58;
    v30 = *v59;
    v32 = v57;
    *(v29 + 92) = *&v59[12];
    *(v29 + 4) = v31;
    *(v29 + 5) = v30;
    *(v29 + 3) = v32;
    v60 = v11;
    if ((a2 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  return *&v5;
}

uint64_t destroy for CompositedItemAccumulator(uint64_t a1)
{

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t initializeWithTake for _ConditionalContent(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

uint64_t assignWithCopy for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithTake for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v8 | v7;
  v9 = *a2;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2B5(a2, v11);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013OpenURLActionK0VG_Ttg5(v9, *a2);
  }

  return outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>();
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>);
    }
  }
}

uint64_t initializeWithTake for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}