uint64_t initializeWithCopy for AnyDynamicItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for AnyDynamicItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for AnyDynamicItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t partial apply for closure #1 in AnyDynamicChild.matchesIdentifier<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for SegmentedControlStyle.body(configuration:) in conformance AnySegmentedControlStyle@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t StyleBox.body(configuration:)(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v3 + 24))(a1, v4, v3, v6);
  swift_getAssociatedConformanceWitness();
  return AnyView.init<A>(_:)();
}

uint64_t View.focusedValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a2, a3, a4);
  v11[1] = a5;
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  View.focusedValue<A>(_:_:)(KeyPath, v11, a2, a4);
}

uint64_t CubicGradientProvider.resolve(in:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  if (!a3)
  {
    v6 = *(a2 + 16);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_23:
    result = default argument 1 of ResolvedGradient.init(stops:colorSpace:headroom:)();
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = v20;
    *(a4 + 12) = 0;
    *(a4 + 16) = 1;
    return result;
  }

  if (*(a3 + 16) <= v5)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = *(a3 + 16);
  }

  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_6:
  v19 = *a1;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, MEMORY[0x1E69E7CC0]);
  v8 = 0;
  v9 = 0.0;
  v10 = 1;
  do
  {
    if (v8 >= v5)
    {
      v11 = NAN;
    }

    else
    {
      v20 = v19;

      dispatch thunk of AnyColorBox.resolveHDR(in:)();
      v11 = v22;
    }

    ResolvedGradient.Stop.init(color:location:interpolation:)();
    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    ++v8;
    *(v7 + 2) = v13 + 1;
    v14 = &v7[48 * v13];
    *(v14 + 57) = *&v21[9];
    *(v14 + 2) = v20;
    *(v14 + 3) = *v21;
    if (v10)
    {
      v15 = v11;
    }

    else
    {
      v15 = v9;
    }

    v16 = v9;
    if (v9 <= v11)
    {
      v16 = v11;
    }

    if (v10)
    {
      v9 = v15;
    }

    else
    {
      v9 = v16;
    }

    v10 = 0;
  }

  while (v6 != v8);
  result = default argument 1 of ResolvedGradient.init(stops:colorSpace:headroom:)();
  *a4 = v7;
  *(a4 + 8) = v20;
  *(a4 + 12) = v9;
  *(a4 + 16) = 0;
  return result;
}

void CubicGradientProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  MEMORY[0x18D00F6F0](v8);
  if (v8)
  {
    v9 = a2 + 32;
    do
    {
      v9 += 8;

      dispatch thunk of AnyColorBox.hash(into:)();

      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, a3);
    if (!a4)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (!a4)
    {
      return;
    }
  }

  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = (a4 + 44);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v12));
      if (v13 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v13;
      }

      Hasher._combine(_:)(LODWORD(v16));
      if (v14 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      Hasher._combine(_:)(LODWORD(v17));
      if (v15 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v15;
      }

      Hasher._combine(_:)(LODWORD(v18));
      v11 += 4;
      --v10;
    }

    while (v10);
  }
}

uint64_t protocol witness for GradientProvider.tag.getter in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CubicGradientProvider()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  CubicGradientProvider.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CubicGradientProvider()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  CubicGradientProvider.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t specialized CodableByProxy.serialize(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  CubicGradientProvider.codingProxy.getter(a2, a3, a4);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance CubicGradientProvider@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = specialized static CubicGradientProvider.unwrap(codingProxy:)(v4, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return v2;
}

void closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    static Update.dispatchImmediately<A>(reason:_:)();
  }

  else
  {
    a1();
  }
}

id PlatformViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharingPickerSource.id.getter()
{
  v1 = *(v0 + 112);
  v35[6] = *(v0 + 96);
  v35[7] = v1;
  v36 = *(v0 + 128);
  v2 = *(v0 + 48);
  v35[2] = *(v0 + 32);
  v35[3] = v2;
  v3 = *(v0 + 80);
  v35[4] = *(v0 + 64);
  v35[5] = v3;
  v4 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v4;
  v5 = _s7SwiftUI19SharingPickerSourceOWOg(v35);
  v6 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v35);
  if (v5 == 1)
  {
    return *(v6 + 24);
  }

  v8 = *(v6 + 80);
  v41 = *(v6 + 64);
  v42 = v8;
  v9 = *(v6 + 112);
  v43 = *(v6 + 96);
  v44 = v9;
  v10 = *(v6 + 16);
  v37 = *v6;
  v38 = v10;
  v11 = *(v6 + 48);
  v39 = *(v6 + 32);
  v40 = v11;
  v24 = v41;
  v25 = v8;
  v26 = v43;
  v27 = v9;
  v20 = v37;
  v21 = v10;
  v22 = v39;
  v23 = v11;
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v28);
  if (*(&v32 + 1) == 1)
  {
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    outlined destroy of SharingPickerHostModifier.Model?(&v13, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    return 0;
  }

  else
  {
    v12 = v28;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    outlined destroy of SharingPickerHostModifier.Model?(&v13, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    return v12;
  }
}

uint64_t View.sharingPickerModifier(source:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  v17 = a1[6];
  v18 = v6;
  *&v19 = *(a1 + 16);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v8 = a1[5];
  v15 = a1[4];
  v16 = v8;
  v9 = a1[1];
  v11 = *a1;
  v12 = v9;
  *(&v19 + 1) = static Anchor.Source<A>.bounds.getter();
  outlined init with copy of SharingPickerSource(a1, v20);
  MEMORY[0x18D00A570](&v11, a2, &type metadata for SharingActivityPickerModifier, a3);
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v20[0] = v11;
  v20[1] = v12;
  return outlined destroy of SharingActivityPickerModifier(v20);
}

uint64_t View.sharingPicker<A, B, C, D>(isPresented:link:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  specialized AnyIdentifiableShareConfiguration.init<A, B, C, D>(_:)(a4, a6, a7, a8, a9, a11, a12, a13, v27 + 8, a14, a15);
  *&v26 = a1;
  *(&v26 + 1) = a2;
  LOBYTE(v27[0]) = a3;
  v35 = v27[5];
  v36 = v27[6];
  v37 = v28;
  v31 = v27[1];
  v32 = v27[2];
  v33 = v27[3];
  v34 = v27[4];
  v29 = v26;
  v30 = v27[0];
  _s7SwiftUI19SharingPickerSourceOWOi0_(&v29);
  v24[6] = v35;
  v24[7] = v36;
  v25 = v37;
  v24[2] = v31;
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[0] = v29;
  v24[1] = v30;
  View.sharingPickerModifier(source:)(v24, a5, a10);
  return outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(&v26, type metadata accessor for (Binding<Bool>, AnyIdentifiableShareConfiguration));
}

uint64_t View.sharingPicker<A, B, C>(isPresented:item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20)
{
  v54 = a9;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v41 = a4;
  v51 = a3;
  v49 = a1;
  v50 = a2;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v55 = a13;
  v53 = a15;
  v38 = a14;
  v40 = a19;
  v52 = a18;
  v39 = *(&a17 + 1);
  v61 = a17;
  v62 = a20;
  v20 = type metadata accessor for SharePreview();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v41, a16, v25);
  (*(v21 + 16))(v23, v38, v20);
  v36 = v23;
  v30 = v45;
  v29 = v46;
  v32 = v47;
  v31 = v48;
  v34 = v43;
  v33 = v44;
  LOBYTE(v23) = v42;
  AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(v27, v45, v46, v47, v48, v44, v43, v42, v58, v55, v36, a16, a17, v39, v40, a20, *(&a20 + 1));
  *(&v60[3] + 7) = v58[3];
  *(&v60[4] + 7) = v58[4];
  *(&v60[5] + 7) = v58[5];
  *(&v60[6] + 7) = v59;
  *(v60 + 7) = v58[0];
  *(&v60[1] + 7) = v58[1];
  *(&v60[2] + 7) = v58[2];
  *&v57[57] = v60[3];
  *&v57[73] = v60[4];
  *&v57[89] = v60[5];
  *&v57[104] = *(&v60[5] + 15);
  *&v57[25] = v60[1];
  *&v57[41] = v60[2];
  *&v56 = 0;
  *(&v56 + 1) = v49;
  *v57 = v50;
  v57[8] = v51;
  *&v57[9] = v60[0];
  outlined copy of Text?(v30, v29, v32, v31);
  outlined copy of Text?(v33, v34, v23, v55);

  MEMORY[0x18D00A570](&v56, v53, &unk_1EFFA8E08, v52);
  v67 = *&v57[80];
  v68 = *&v57[96];
  v69 = *&v57[112];
  v63 = *&v57[16];
  v64 = *&v57[32];
  v65 = *&v57[48];
  v66 = *&v57[64];
  v61 = v56;
  v62 = *v57;
  return outlined destroy of UnidentifiedSharingPickerModifier(&v61);
}

uint64_t View.sharingPicker(isPresented:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a9;
  *(&v27 + 1) = a7;
  v28 = a8;
  *&v27 = a6;
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v29 = a13;
  v30 = a14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a4, v16, v18);
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  *(v21 + 56) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  (*(v17 + 32))(boxed_opaque_existential_1, v20, v16);
  *&v32 = 0;
  *(&v32 + 1) = v24;
  *&v33 = v25;
  BYTE8(v33) = v26;
  *(&v33 + 9) = *v41;
  HIDWORD(v33) = *&v41[3];
  v34 = v21;
  v35 = 0uLL;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = a5;
  v37 = v27;
  *&v38 = v28;
  *(&v38 + 1) = a10;
  v39 = a11;
  v40 = a12;
  outlined copy of Text?(a5, v27, SBYTE8(v27), v28);
  outlined copy of Text?(a10, a11, SBYTE8(a11), a12);

  MEMORY[0x18D00A570](&v32, v29, &unk_1EFFA8E08, v30);
  v42[6] = v38;
  v42[7] = v39;
  v43 = v40;
  v42[2] = v34;
  v42[3] = v35;
  v42[4] = v36;
  v42[5] = v37;
  v42[0] = v32;
  v42[1] = v33;
  return outlined destroy of UnidentifiedSharingPickerModifier(v42);
}

unint64_t lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier()
{
  result = lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier;
  if (!lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier);
  }

  return result;
}

uint64_t assignWithTake for SharingPickerHostModifier(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 112);
  if (*(a1 + 112) == 1)
  {
    goto LABEL_4;
  }

  v5 = (a2 + 112);
  v6 = *(a2 + 112);
  if (v6 != 1)
  {
    if (*(a1 + 72) == 1)
    {
LABEL_9:
      v13 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v13;
      *(a1 + 96) = *(a2 + 96);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
      v15 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v15;
      goto LABEL_10;
    }

    v12 = *(a2 + 72);
    if (v12 == 1)
    {
      outlined destroy of AnyIdentifiableShareConfiguration(a1);
      goto LABEL_9;
    }

    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    v24 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v24;
    *(a1 + 32) = v18;
    v25 = *(a1 + 40);
    *(a1 + 40) = v19;
    outlined consume of AnyShareConfiguration.Storage(v20, v21, v22, v23, v25);
    if (*(a1 + 72))
    {
      if (v12)
      {
        v26 = *(a2 + 64);
        v27 = *(a1 + 48);
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v26;
        outlined consume of Text.Storage(v27, v28, v29);
        *(a1 + 72) = v12;

        goto LABEL_22;
      }

      outlined destroy of Text(a1 + 48);
    }

    v30 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v30;
LABEL_22:
    if (*(a1 + 104))
    {
      v31 = *(a2 + 104);
      if (v31)
      {
        v32 = *(a2 + 96);
        v33 = *(a1 + 80);
        v34 = *(a1 + 88);
        v35 = *(a1 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v32;
        outlined consume of Text.Storage(v33, v34, v35);
        *(a1 + 104) = v31;

        goto LABEL_10;
      }

      outlined destroy of Text(a1 + 80);
    }

    v36 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v36;
LABEL_10:
    if (*v4)
    {
      if (v6)
      {
        v16 = *(a2 + 120);
        *(a1 + 112) = v6;
        *(a1 + 120) = v16;

        goto LABEL_5;
      }
    }

    else if (v6)
    {
      v17 = *(a2 + 120);
      *(a1 + 112) = v6;
      *(a1 + 120) = v17;
      goto LABEL_5;
    }

    *v4 = *v5;
    goto LABEL_5;
  }

  outlined destroy of SharingPickerHostModifier.Model(a1);
LABEL_4:
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
LABEL_5:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for SharingPickerHostModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t storeEnumTagSinglePayload for SharingPickerHostModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

void destroy for SharingPickerHostModifier.Model(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != 1)
  {
    outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    if (v2)
    {
      outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
    }

    if (*(a1 + 104))
    {
      outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    }
  }

  if (*(a1 + 112))
  {
  }
}

uint64_t initializeWithCopy for SharingPickerHostModifier.Model(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4 == 1)
  {
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    goto LABEL_8;
  }

  v8 = *(a2 + 8);
  *a1 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v8, v9, v10, v11, v12);
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  if (v4)
  {
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    outlined copy of Text.Storage(v13, v14, v15);
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a1 + 72) = v4;

    v16 = *(a2 + 104);
    if (v16)
    {
LABEL_5:
      v17 = *(a2 + 80);
      v18 = *(a2 + 88);
      v19 = *(a2 + 96);
      outlined copy of Text.Storage(v17, v18, v19);
      *(a1 + 80) = v17;
      *(a1 + 88) = v18;
      *(a1 + 96) = v19;
      *(a1 + 104) = v16;

      goto LABEL_8;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v20;
    v16 = *(a2 + 104);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v21 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v21;
LABEL_8:
  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = *(a2 + 120);
    *(a1 + 112) = v22;
    *(a1 + 120) = v23;
  }

  else
  {
    *(a1 + 112) = *(a2 + 112);
  }

  return a1;
}

uint64_t assignWithCopy for SharingPickerHostModifier.Model(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 9);
  if (*(a1 + 72) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      v6 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v6;
      *a1 = v5;
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v9;
      *(a1 + 48) = v7;
      *(a1 + 64) = v8;
      goto LABEL_24;
    }

    *a1 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v17 = *(a2 + 3);
    v18 = *(a2 + 4);
    v19 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v15, v16, v17, v18, v19);
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    if (*(a2 + 9))
    {
      v20 = *(a2 + 6);
      v21 = *(a2 + 7);
      v22 = *(a2 + 64);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = *(a2 + 9);

      if (*(a2 + 13))
      {
LABEL_8:
        v23 = *(a2 + 10);
        v24 = *(a2 + 11);
        v25 = *(a2 + 96);
        outlined copy of Text.Storage(v23, v24, v25);
        *(a1 + 80) = v23;
        *(a1 + 88) = v24;
        *(a1 + 96) = v25;
        *(a1 + 104) = *(a2 + 13);

        goto LABEL_24;
      }
    }

    else
    {
      v43 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v43;
      if (*(a2 + 13))
      {
        goto LABEL_8;
      }
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    outlined destroy of AnyIdentifiableShareConfiguration(a1);
    v11 = a2[1];
    v10 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = v10;
    v12 = a2[6];
    v14 = a2[3];
    v13 = a2[4];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v12;
    *(a1 + 48) = v14;
    *(a1 + 64) = v13;
    goto LABEL_24;
  }

  *a1 = *a2;
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *(a2 + 3);
  v29 = *(a2 + 4);
  v30 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v26, v27, v28, v29, v30);
  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v29;
  v35 = *(a1 + 40);
  *(a1 + 40) = v30;
  outlined consume of AnyShareConfiguration.Storage(v31, v32, v33, v34, v35);
  v36 = *(a2 + 9);
  if (*(a1 + 72))
  {
    if (v36)
    {
      v37 = *(a2 + 6);
      v38 = *(a2 + 7);
      v39 = *(a2 + 64);
      outlined copy of Text.Storage(v37, v38, v39);
      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v42 = *(a1 + 64);
      *(a1 + 48) = v37;
      *(a1 + 56) = v38;
      *(a1 + 64) = v39;
      outlined consume of Text.Storage(v40, v41, v42);
      *(a1 + 72) = *(a2 + 9);
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v47 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v47;
    }
  }

  else if (v36)
  {
    v44 = *(a2 + 6);
    v45 = *(a2 + 7);
    v46 = *(a2 + 64);
    outlined copy of Text.Storage(v44, v45, v46);
    *(a1 + 48) = v44;
    *(a1 + 56) = v45;
    *(a1 + 64) = v46;
    *(a1 + 72) = *(a2 + 9);
  }

  else
  {
    v48 = a2[4];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = v48;
  }

  v49 = *(a2 + 13);
  if (!*(a1 + 104))
  {
    if (v49)
    {
      goto LABEL_8;
    }

LABEL_22:
    v56 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v56;
    goto LABEL_24;
  }

  if (v49)
  {
    v50 = *(a2 + 10);
    v51 = *(a2 + 11);
    v52 = *(a2 + 96);
    outlined copy of Text.Storage(v50, v51, v52);
    v53 = *(a1 + 80);
    v54 = *(a1 + 88);
    v55 = *(a1 + 96);
    *(a1 + 80) = v50;
    *(a1 + 88) = v51;
    *(a1 + 96) = v52;
    outlined consume of Text.Storage(v53, v54, v55);
    *(a1 + 104) = *(a2 + 13);
  }

  else
  {
    outlined destroy of Text(a1 + 80);
    v57 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v57;
  }

LABEL_24:
  v58 = *(a2 + 14);
  if (!*(a1 + 112))
  {
    if (v58)
    {
      v60 = *(a2 + 15);
      *(a1 + 112) = v58;
      *(a1 + 120) = v60;

      return a1;
    }

LABEL_30:
    *(a1 + 112) = a2[7];
    return a1;
  }

  if (!v58)
  {

    goto LABEL_30;
  }

  v59 = *(a2 + 15);
  *(a1 + 112) = v58;
  *(a1 + 120) = v59;

  return a1;
}

uint64_t assignWithTake for SharingPickerHostModifier.Model(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 72);
  if (v4 == 1)
  {
    outlined destroy of AnyIdentifiableShareConfiguration(a1);
LABEL_4:
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    goto LABEL_5;
  }

  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  *(a1 + 32) = v11;
  v18 = *(a1 + 40);
  *(a1 + 40) = v12;
  outlined consume of AnyShareConfiguration.Storage(v13, v14, v15, v16, v18);
  if (!*(a1 + 72))
  {
LABEL_18:
    v24 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v24;
    if (!*(a1 + 104))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    outlined destroy of Text(a1 + 48);
    goto LABEL_18;
  }

  v19 = *(a2 + 64);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v19;
  outlined consume of Text.Storage(v20, v21, v22);
  *(a1 + 72) = v4;

  if (!*(a1 + 104))
  {
    goto LABEL_22;
  }

LABEL_19:
  v25 = *(a2 + 104);
  if (v25)
  {
    v26 = *(a2 + 96);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v26;
    outlined consume of Text.Storage(v27, v28, v29);
    *(a1 + 104) = v25;

    goto LABEL_5;
  }

  outlined destroy of Text(a1 + 80);
LABEL_22:
  v30 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v30;
LABEL_5:
  v8 = *(a2 + 112);
  if (!*(a1 + 112))
  {
    if (v8)
    {
      v10 = *(a2 + 120);
      *(a1 + 112) = v8;
      *(a1 + 120) = v10;
      return a1;
    }

LABEL_15:
    *(a1 + 112) = *(a2 + 112);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_15;
  }

  v9 = *(a2 + 120);
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;

  return a1;
}

uint64_t assignWithCopy for PresentSharingPickerAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 128);
  v5 = (a1 + 16);
  v7 = (a2 + 128);
  v6 = *(a2 + 128);
  v8 = (a2 + 16);
  if (*(a1 + 128) != 1)
  {
    if (v6 == 1)
    {
      outlined destroy of SharingPickerHostModifier.Model(a1 + 16);
      v15 = *(a2 + 64);
      v17 = *v8;
      v16 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v15;
      *v5 = v17;
      *(a1 + 32) = v16;
      v18 = *(a2 + 128);
      v20 = *(a2 + 80);
      v19 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v18;
      *(a1 + 80) = v20;
      *(a1 + 96) = v19;
      return a1;
    }

    v26 = *(a2 + 88);
    if (*(a1 + 88) == 1)
    {
      if (v26 == 1)
      {
        v27 = *v8;
        v28 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v28;
        *v5 = v27;
        v29 = *(a2 + 64);
        v30 = *(a2 + 80);
        v31 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v31;
        *(a1 + 64) = v29;
        *(a1 + 80) = v30;
        goto LABEL_38;
      }

      *(a1 + 16) = *(a2 + 16);
      v48 = *(a2 + 24);
      v49 = *(a2 + 32);
      v50 = *(a2 + 40);
      v51 = *(a2 + 48);
      v52 = *(a2 + 56);
      outlined copy of AnyShareConfiguration.Storage(v48, v49, v50, v51, v52);
      *(a1 + 24) = v48;
      *(a1 + 32) = v49;
      *(a1 + 40) = v50;
      *(a1 + 48) = v51;
      *(a1 + 56) = v52;
      if (*(a2 + 88))
      {
        v53 = *(a2 + 64);
        v54 = *(a2 + 72);
        v55 = *(a2 + 80);
        outlined copy of Text.Storage(v53, v54, v55);
        *(a1 + 64) = v53;
        *(a1 + 72) = v54;
        *(a1 + 80) = v55;
        *(a1 + 88) = *(a2 + 88);

        if (*(a2 + 120))
        {
LABEL_18:
          v56 = *(a2 + 96);
          v57 = *(a2 + 104);
          v58 = *(a2 + 112);
          outlined copy of Text.Storage(v56, v57, v58);
          *(a1 + 96) = v56;
          *(a1 + 104) = v57;
          *(a1 + 112) = v58;
          *(a1 + 120) = *(a2 + 120);

          goto LABEL_38;
        }
      }

      else
      {
        v79 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v79;
        if (*(a2 + 120))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v26 == 1)
      {
        outlined destroy of AnyIdentifiableShareConfiguration(a1 + 16);
        v44 = *(a2 + 32);
        v43 = *(a2 + 48);
        *v5 = *v8;
        *(a1 + 32) = v44;
        *(a1 + 48) = v43;
        v45 = *(a2 + 112);
        v47 = *(a2 + 64);
        v46 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v45;
        *(a1 + 64) = v47;
        *(a1 + 80) = v46;
        goto LABEL_38;
      }

      *(a1 + 16) = *(a2 + 16);
      v59 = *(a2 + 24);
      v60 = *(a2 + 32);
      v61 = *(a2 + 40);
      v62 = *(a2 + 48);
      v63 = *(a2 + 56);
      outlined copy of AnyShareConfiguration.Storage(v59, v60, v61, v62, v63);
      v64 = *(a1 + 24);
      v65 = *(a1 + 32);
      v66 = *(a1 + 40);
      v67 = *(a1 + 48);
      *(a1 + 24) = v59;
      *(a1 + 32) = v60;
      *(a1 + 40) = v61;
      *(a1 + 48) = v62;
      v68 = *(a1 + 56);
      *(a1 + 56) = v63;
      outlined consume of AnyShareConfiguration.Storage(v64, v65, v66, v67, v68);
      v69 = *(a2 + 88);
      if (*(a1 + 88))
      {
        if (v69)
        {
          v70 = *(a2 + 64);
          v71 = *(a2 + 72);
          v72 = *(a2 + 80);
          outlined copy of Text.Storage(v70, v71, v72);
          v73 = *(a1 + 64);
          v74 = *(a1 + 72);
          v75 = *(a1 + 80);
          *(a1 + 64) = v70;
          *(a1 + 72) = v71;
          *(a1 + 80) = v72;
          outlined consume of Text.Storage(v73, v74, v75);
          *(a1 + 88) = *(a2 + 88);
        }

        else
        {
          outlined destroy of Text(a1 + 64);
          v83 = *(a2 + 80);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v83;
        }
      }

      else if (v69)
      {
        v80 = *(a2 + 64);
        v81 = *(a2 + 72);
        v82 = *(a2 + 80);
        outlined copy of Text.Storage(v80, v81, v82);
        *(a1 + 64) = v80;
        *(a1 + 72) = v81;
        *(a1 + 80) = v82;
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        v84 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v84;
      }

      v85 = *(a2 + 120);
      if (*(a1 + 120))
      {
        if (v85)
        {
          v86 = *(a2 + 96);
          v87 = *(a2 + 104);
          v88 = *(a2 + 112);
          outlined copy of Text.Storage(v86, v87, v88);
          v89 = *(a1 + 96);
          v90 = *(a1 + 104);
          v91 = *(a1 + 112);
          *(a1 + 96) = v86;
          *(a1 + 104) = v87;
          *(a1 + 112) = v88;
          outlined consume of Text.Storage(v89, v90, v91);
          *(a1 + 120) = *(a2 + 120);
        }

        else
        {
          outlined destroy of Text(a1 + 96);
          v93 = *(a2 + 112);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 112) = v93;
        }

LABEL_38:
        v78 = *v7;
        if (*v4)
        {
          if (v78)
          {
            v94 = *(a2 + 136);
            *(a1 + 128) = v78;
            *(a1 + 136) = v94;

            return a1;
          }
        }

        else if (v78)
        {
          goto LABEL_42;
        }

LABEL_44:
        *v4 = *v7;
        return a1;
      }

      if (v85)
      {
        goto LABEL_18;
      }
    }

    v92 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v92;
    goto LABEL_38;
  }

  if (v6 != 1)
  {
    if (*(a2 + 88) == 1)
    {
      v21 = *v8;
      v22 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v22;
      *v5 = v21;
      v23 = *(a2 + 64);
      v24 = *(a2 + 80);
      v25 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v25;
      *(a1 + 64) = v23;
      *(a1 + 80) = v24;
      goto LABEL_24;
    }

    *(a1 + 16) = *(a2 + 16);
    v32 = *(a2 + 24);
    v33 = *(a2 + 32);
    v34 = *(a2 + 40);
    v35 = *(a2 + 48);
    v36 = *(a2 + 56);
    outlined copy of AnyShareConfiguration.Storage(v32, v33, v34, v35, v36);
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    *(a1 + 48) = v35;
    *(a1 + 56) = v36;
    if (*(a2 + 88))
    {
      v37 = *(a2 + 64);
      v38 = *(a2 + 72);
      v39 = *(a2 + 80);
      outlined copy of Text.Storage(v37, v38, v39);
      *(a1 + 64) = v37;
      *(a1 + 72) = v38;
      *(a1 + 80) = v39;
      *(a1 + 88) = *(a2 + 88);

      if (*(a2 + 120))
      {
LABEL_13:
        v40 = *(a2 + 96);
        v41 = *(a2 + 104);
        v42 = *(a2 + 112);
        outlined copy of Text.Storage(v40, v41, v42);
        *(a1 + 96) = v40;
        *(a1 + 104) = v41;
        *(a1 + 112) = v42;
        *(a1 + 120) = *(a2 + 120);

        goto LABEL_24;
      }
    }

    else
    {
      v76 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v76;
      if (*(a2 + 120))
      {
        goto LABEL_13;
      }
    }

    v77 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v77;
LABEL_24:
    v78 = *v7;
    if (!*v7)
    {
      goto LABEL_44;
    }

LABEL_42:
    v95 = *(a2 + 136);
    *(a1 + 128) = v78;
    *(a1 + 136) = v95;

    return a1;
  }

  v9 = *v8;
  v10 = *(a2 + 32);
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  *v5 = v9;
  *(a1 + 32) = v10;
  v12 = *(a2 + 80);
  v13 = *(a2 + 96);
  v14 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v14;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  return a1;
}

uint64_t assignWithTake for PresentSharingPickerAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 128);
  v5 = (a1 + 16);
  v6 = *(a2 + 128);
  v7 = (a2 + 16);
  if (*(a1 + 128) == 1)
  {
    goto LABEL_4;
  }

  if (v6 != 1)
  {
    if (*(a1 + 88) == 1)
    {
LABEL_9:
      v14 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v14;
      *(a1 + 112) = *(a2 + 112);
      v15 = *(a2 + 32);
      *v5 = *v7;
      *(a1 + 32) = v15;
      v16 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v16;
      goto LABEL_10;
    }

    v13 = *(a2 + 88);
    if (v13 == 1)
    {
      outlined destroy of AnyIdentifiableShareConfiguration(a1 + 16);
      goto LABEL_9;
    }

    v19 = *(a2 + 48);
    v20 = *(a2 + 56);
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v25;
    *(a1 + 48) = v19;
    v26 = *(a1 + 56);
    *(a1 + 56) = v20;
    outlined consume of AnyShareConfiguration.Storage(v21, v22, v23, v24, v26);
    if (*(a1 + 88))
    {
      if (v13)
      {
        v27 = *(a2 + 80);
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        v30 = *(a1 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v27;
        outlined consume of Text.Storage(v28, v29, v30);
        *(a1 + 88) = v13;

        goto LABEL_22;
      }

      outlined destroy of Text(a1 + 64);
    }

    v31 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v31;
LABEL_22:
    if (*(a1 + 120))
    {
      v32 = *(a2 + 120);
      if (v32)
      {
        v33 = *(a2 + 112);
        v34 = *(a1 + 96);
        v35 = *(a1 + 104);
        v36 = *(a1 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v33;
        outlined consume of Text.Storage(v34, v35, v36);
        *(a1 + 120) = v32;

        goto LABEL_10;
      }

      outlined destroy of Text(a1 + 96);
    }

    v37 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v37;
LABEL_10:
    if (*v4)
    {
      if (v6)
      {
        v17 = *(a2 + 136);
        *(a1 + 128) = v6;
        *(a1 + 136) = v17;

        return a1;
      }
    }

    else if (v6)
    {
      v18 = *(a2 + 136);
      *(a1 + 128) = v6;
      *(a1 + 136) = v18;
      return a1;
    }

    *v4 = *(a2 + 128);
    return a1;
  }

  outlined destroy of SharingPickerHostModifier.Model(a1 + 16);
LABEL_4:
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  v10 = *(a2 + 32);
  *v5 = *v7;
  *(a1 + 32) = v10;
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  return a1;
}

void destroy for UnidentifiedSharingPickerModifier(uint64_t a1)
{

  outlined consume of AnyShareConfiguration.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  if (*(a1 + 128))
  {
    outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
  }
}

uint64_t initializeWithCopy for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);

  outlined copy of AnyShareConfiguration.Storage(v5, v6, v7, v8, v9);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = *(a2 + 96);
  if (!v10)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    v14 = *(a2 + 128);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  outlined copy of Text.Storage(v11, v12, v13);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v10;

  v14 = *(a2 + 128);
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  outlined copy of Text.Storage(v15, v16, v17);
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v17;
  *(a1 + 128) = v14;

  return a1;
}

uint64_t assignWithCopy for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v13 = *(a1 + 64);
  *(a1 + 64) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v14)
    {
      v15 = *(a2 + 72);
      v16 = *(a2 + 80);
      v17 = *(a2 + 88);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      v20 = *(a1 + 88);
      *(a1 + 72) = v15;
      *(a1 + 80) = v16;
      *(a1 + 88) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v24 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 72);
    v22 = *(a2 + 80);
    v23 = *(a2 + 88);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 72) = v21;
    *(a1 + 80) = v22;
    *(a1 + 88) = v23;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v25 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v25;
  }

  v26 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if (v26)
    {
      v27 = *(a2 + 104);
      v28 = *(a2 + 112);
      v29 = *(a2 + 120);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 104);
      v31 = *(a1 + 112);
      v32 = *(a1 + 120);
      *(a1 + 104) = v27;
      *(a1 + 112) = v28;
      *(a1 + 120) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      outlined destroy of Text(a1 + 104);
      v36 = *(a2 + 120);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 104);
    v34 = *(a2 + 112);
    v35 = *(a2 + 120);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 104) = v33;
    *(a1 + 112) = v34;
    *(a1 + 120) = v35;
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v37 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v37;
  }

  return a1;
}

uint64_t assignWithTake for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  v11 = *(a1 + 64);
  *(a1 + 64) = v5;
  outlined consume of AnyShareConfiguration.Storage(v6, v7, v8, v9, v11);
  if (*(a1 + 96))
  {
    v12 = *(a2 + 96);
    if (v12)
    {
      v13 = *(a2 + 88);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 96) = v12;

      if (!*(a1 + 128))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  if (!*(a1 + 128))
  {
LABEL_10:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

LABEL_7:
  v17 = *(a2 + 128);
  if (!v17)
  {
    outlined destroy of Text(a1 + 104);
    goto LABEL_10;
  }

  v18 = *(a2 + 120);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v18;
  outlined consume of Text.Storage(v19, v20, v21);
  *(a1 + 128) = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for UnidentifiedSharingPickerModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for UnidentifiedSharingPickerModifier(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 EnvironmentValues.presentSharingPicker.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  a1[6] = v10;
  a1[7] = v11;
  a1[8] = v12;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

__n128 protocol witness for ViewModifier.body(content:) in conformance UnidentifiedSharingPickerModifier@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 112);
  v20[4] = *(v1 + 96);
  v20[5] = v6;
  v21 = *(v1 + 128);
  v7 = *(v1 + 48);
  v20[0] = *(v1 + 32);
  v20[1] = v7;
  v8 = *(v1 + 80);
  v20[2] = *(v1 + 64);
  v20[3] = v8;

  v9 = Namespace.wrappedValue.getter();
  v10 = *(v1 + 112);
  v28 = *(v1 + 96);
  v29 = v10;
  v30 = *(v1 + 128);
  v11 = *(v1 + 48);
  v24 = *(v1 + 32);
  v25 = v11;
  v12 = *(v1 + 64);
  v27 = *(v1 + 80);
  v26 = v12;
  *&v22 = v3;
  *(&v22 + 1) = v4;
  v23.n128_u8[0] = v5;
  v23.n128_u64[1] = v9;
  _s7SwiftUI19SharingPickerSourceOWOi0_(&v22);
  outlined init with copy of AnyShareConfiguration(v20, v19);
  v13 = static Anchor.Source<A>.bounds.getter();
  v14 = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v14;
  v15 = v30;
  v16 = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = v16;
  v17 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v17;
  result = v23;
  *a1 = v22;
  *(a1 + 16) = result;
  *(a1 + 128) = v15;
  *(a1 + 136) = v13;
  return result;
}

uint64_t closure #1 in SharingPickerHostModifier.body(content:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 112);
  v16 = *(a3 + 96);
  v17 = v4;
  v18 = *(a3 + 128);
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for State<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v5 = v14;
  v15[0] = v7;
  v15[1] = v8;
  v15[5] = v12;
  v16 = v13;
  v15[3] = v10;
  v15[4] = v11;
  v15[2] = v9;
  v17 = v14;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v15) == 1)
  {
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
  }

  else
  {
    if (v14)
    {
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;

      outlined destroy of SharingPickerHostModifier.Model?(&v7, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
      (v5)(v3);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
    *&v14 = 0;
  }

  *(&v14 + 1) = *(&v5 + 1);
  return outlined destroy of SharingPickerHostModifier.Model?(&v7, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
}

uint64_t protocol witness for Projection.get(base:) in conformance ToBool@<X0>(_OWORD *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[5];
  v11 = a1[4];
  v12 = v3;
  v4 = a1[7];
  v13 = a1[6];
  v14 = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  result = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v10);
  v9 = result != 1 && *(&v11 + 1) != 1;
  *a2 = v9;
  return result;
}

void protocol witness for Projection.set(base:newValue:) in conformance ToBool(_OWORD *a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = a1[5];
    v11[4] = a1[4];
    v11[5] = v3;
    v4 = a1[7];
    v11[6] = a1[6];
    v11[7] = v4;
    v5 = a1[1];
    v11[0] = *a1;
    v11[1] = v5;
    v6 = a1[3];
    v11[2] = a1[2];
    v11[3] = v6;
    outlined destroy of SharingPickerHostModifier.Model?(v11, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
    _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v12);
    v7 = v12[5];
    a1[4] = v12[4];
    a1[5] = v7;
    v8 = v12[7];
    a1[6] = v12[6];
    a1[7] = v8;
    v9 = v12[1];
    *a1 = v12[0];
    a1[1] = v9;
    v10 = v12[3];
    a1[2] = v12[2];
    a1[3] = v10;
  }
}

uint64_t protocol witness for Projection.get(base:) in conformance ToConfiguration@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  result = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(&v16);
  if (result == 1)
  {
    v8 = xmmword_18CD633F0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    result = outlined init with copy of AnyIdentifiableShareConfiguration?(&v16, &v15);
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v8 = v20;
    v13 = v21;
    v14 = v22;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v8;
  a2[5] = v13;
  a2[6] = v14;
  return result;
}

__n128 protocol witness for Projection.set(base:newValue:) in conformance ToConfiguration(__n128 *a1, __n128 *a2)
{
  v3 = a2[5];
  v24 = a2[4];
  v25 = v3;
  v26 = a2[6];
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v5 = a2[3];
  v22 = a2[2];
  v23 = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v27[2] = a1[2];
  v27[3] = v8;
  v27[0] = v6;
  v27[1] = v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[7];
  v27[6] = a1[6];
  v27[7] = v11;
  v27[4] = v9;
  v27[5] = v10;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v27) != 1)
  {
    v13 = a1[5];
    v19[4] = a1[4];
    v19[5] = v13;
    v19[6] = a1[6];
    v14 = a1[1];
    v19[0] = *a1;
    v19[1] = v14;
    v15 = a1[3];
    v19[2] = a1[2];
    v19[3] = v15;
    outlined init with copy of AnyIdentifiableShareConfiguration?(&v20, &v18);
    outlined destroy of SharingPickerHostModifier.Model?(v19, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    v16 = v25;
    a1[4] = v24;
    a1[5] = v16;
    a1[6] = v26;
    v17 = v21;
    *a1 = v20;
    a1[1] = v17;
    result = v23;
    a1[2] = v22;
    a1[3] = result;
  }

  return result;
}

uint64_t outlined init with copy of AnyIdentifiableShareConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (Binding<Bool>, AnyIdentifiableShareConfiguration)()
{
  if (!lazy cache variable for type metadata for (Binding<Bool>, AnyIdentifiableShareConfiguration))
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Binding<Bool>, AnyIdentifiableShareConfiguration));
    }
  }
}

uint64_t assignWithCopy for SharingPickerSource(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v26 = a2[9];
  v27 = a2[10];
  v28 = a2[11];
  v29 = a2[12];
  v30 = a2[13];
  v31 = a2[14];
  v32 = a2[15];
  v33 = a2[16];
  outlined copy of SharingPickerSource(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31, v32, v33);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 128);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  outlined consume of SharingPickerSource(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
  return a1;
}

uint64_t assignWithTake for SharingPickerSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 128);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  v20 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v20;
  *(a1 + 128) = v3;
  outlined consume of SharingPickerSource(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingPickerSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 136))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SharingPickerSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<UnidentifiedSharingPickerModifier>, lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier, &unk_1EFFA8E08);
    lazy protocol witness table accessor for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<UnidentifiedSharingPickerModifier>, lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier, &unk_1EFFA8E08, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata completion function for ReferenceFileDocumentCreationStrategy()
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *FileDocumentCreationStrategy.init(contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v29 = type metadata accessor for UUID();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FileDocumentCreationStrategy();
  v12 = v11[9];
  v28 = v12;
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  v31 = (a6 + v11[10]);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v35 = 0x3A49557466697753;
  v36 = 0xE800000000000000;
  v14 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v14);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD43500);
  v16 = v35;
  v15 = v36;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v8 + 8))(v10, v29);
  v35 = v16;
  v36 = v15;

  MEMORY[0x18D00C9B0](v17, v19);

  v20 = v36;
  *a6 = v35;
  a6[1] = v20;
  v21 = v32;
  outlined assign with copy of UTType?(v32, a6 + v28);
  v22 = v30;
  v23 = (*(v30 + 16))(a4);
  outlined destroy of URL?(v21, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *(a6 + v11[11]) = v23;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = v22;
  v25 = v34;
  result[4] = v33;
  result[5] = v25;
  v26 = v31;
  *v31 = &async function pointer to partial apply for closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  v26[1] = result;
  return result;
}

uint64_t closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for Optional();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = *(a4 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

uint64_t closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = **(v0 + 16);
  type metadata accessor for FileDocumentBox();
  *(v0 + 112) = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  v3 = *(v0 + 80);

  return v5(v3);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v2 = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0 + 11;
  v2 = v0[11];
  v3 = v0[10];
  v5 = v0 + 5;
  v4 = v0[5];
  v6 = (*(v2 + 48))(v3, 1, v4);
  v7 = v0[12];
  if (v6 == 1)
  {
    v1 = v0 + 8;
    v5 = v0 + 7;
    v8 = v3;
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];
    v15 = v0[7];
    (*(v2 + 32))(v7, v3, v4);
    (*(v2 + 16))(v9, v7, v4);
    (*(v2 + 56))(v9, 0, 1, v4);
    specialized FileDocumentBox.base.setter(v9);
    (*(v10 + 8))(v9, v15);
    v8 = v0[12];
  }

  v11 = *v5;
  v12 = *v1;
  swift_unknownObjectRelease();
  (*(v12 + 8))(v8, v11);

  v13 = v0[1];

  return v13();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance FileDocumentCreationStrategy<A>(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, a2, a3);
  return v6;
}

void *ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v29 = *v3;
  v5 = v29;
  v30 = type metadata accessor for UUID();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  v31 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = (v4 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider);
  *v11 = 0;
  v11[1] = 0;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v35 = 0x3A49557466697753;
  v36 = 0xE800000000000000;
  v12 = *(v5 + 80);
  v13 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v13);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD43500);
  v14 = v35;
  v15 = v36;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v6 + 8))(v8, v30);
  v35 = v14;
  v36 = v15;

  MEMORY[0x18D00C9B0](v16, v18);

  v19 = v36;
  v4[2] = v35;
  v4[3] = v19;
  v20 = v31;
  swift_beginAccess();
  v21 = v32;
  outlined assign with copy of UTType?(v32, v4 + v20);
  swift_endAccess();
  v22 = *(v29 + 88);
  v23 = (*(v22 + 32))(v12, v22);
  outlined destroy of URL?(v21, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *(v4 + direct field offset for ReferenceFileDocumentCreationStrategy.allowedContentTypes) = v23;
  v24 = swift_allocObject();
  v24[2] = v12;
  v24[3] = v22;
  v25 = v34;
  v24[4] = v33;
  v24[5] = v25;
  v26 = *v11;
  *v11 = &async function pointer to partial apply for closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  v11[1] = v24;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
  return v4;
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = **(v0 + 16);
  type metadata accessor for ReferenceFileDocumentBox();
  *(v0 + 64) = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);

  return v4();
}

{
  if (*(v0 + 80))
  {
    swift_unknownObjectRetain();
    specialized ReferenceFileDocumentBox.base.setter();
    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v4 = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t ReferenceFileDocumentCreationStrategy.deinit()
{

  outlined destroy of URL?(v0 + direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider));

  return v0;
}

uint64_t ReferenceFileDocumentCreationStrategy.__deallocating_deinit()
{
  ReferenceFileDocumentCreationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DocumentCreationStrategy.id.getter in conformance ReferenceFileDocumentCreationStrategy<A>()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for DocumentCreationStrategy.preferredContentType.getter in conformance ReferenceFileDocumentCreationStrategy<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  swift_beginAccess();
  return outlined init with copy of UTType?(v3 + v4, a1, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance ReferenceFileDocumentCreationStrategy<A>()
{
  v1 = *(*v0 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider);
  outlined copy of AppIntentExecutor?(v1);
  return v1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance ReferenceFileDocumentCreationStrategy<A>@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:), 0, 0);
}

uint64_t closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v42 = v0[12];
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v44._object = 0x800000018CD43470;
  v5.value._countAndFlagsBits = 0x746E656D75636F44;
  v6._countAndFlagsBits = 0x64656C7469746E55;
  v6._object = 0xE800000000000000;
  v5.value._object = 0xE900000000000073;
  v7._countAndFlagsBits = 0x64656C7469746E55;
  v7._object = 0xE800000000000000;
  v44._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v44);

  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v10 = [v9 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:conformingTo:)();

  v11 = [v8 defaultManager];
  static UTType.package.getter();
  v12 = UTType.conforms(to:)();
  (*(v1 + 8))(v2, v42);
  if (v12)
  {
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v0[7] = 0;
    v16 = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v0 + 7];

    v17 = v0[7];
    v18 = v0[18];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    if (v16)
    {
      v22 = v17;
    }

    else
    {
      v37 = v17;
      v38 = _convertNSErrorToError(_:)();

      swift_willThrow();
      _StringGuts.grow(_:)(47);
      v0[5] = 0;
      v0[6] = 0xE000000000000000;
      MEMORY[0x18D00C9B0](0xD00000000000002DLL, 0x800000018CD434B0);
      v0[8] = v38;
      type metadata accessor for Error();
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x18D009810](v0[5], v0[6]);
    }

    v39 = *(v19 + 8);
    v39(v20, v21);
    v39(v18, v21);
  }

  else
  {
    v23 = URL.path.getter();
    v24 = MEMORY[0x18D00C850](v23);

    v25 = [v11 createFileAtPath:v24 contents:0 attributes:0];

    if ((v25 & 1) == 0)
    {
      _StringGuts.grow(_:)(33);

      v26 = URL.path.getter();
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D009810](0xD00000000000001FLL, 0x800000018CD43490);
    }

    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];
    v30 = v0[9];

    v31 = *(v27 + 8);
    v31(v28, v29);
    v32 = *v30;
    if (object_getClass(*v30) == _TtC7SwiftUI14URLDocumentBox && v32)
    {
      if (object_getClass(v32) != _TtC7SwiftUI14URLDocumentBox)
      {
        __break(1u);
      }

      v33 = v0[15];
      v34 = v0[16];
      v35 = v0[11];
      (*(v34 + 32))(v35, v0[18], v33);
      (*(v34 + 56))(v35, 0, 1, v33);
      v36 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
      swift_beginAccess();
      outlined assign with take of URL?(v35, v32 + v36);
      swift_endAccess();
    }

    else
    {
      v31(v0[18], v0[15]);
    }
  }

  v40 = v0[1];

  return v40();
}

uint64_t URLDocumentCreationStrategy.init(contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v37 = a1;
  v5 = type metadata accessor for UTType();
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E8450];
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLDocumentCreationStrategy(0);
  v15 = *(v14 + 20);
  (*(v6 + 56))(a4 + v15, 1, 1, v5);
  v41 = v14;
  v16 = (a4 + *(v14 + 24));
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v17, v19);
  v20 = v37;

  v21 = v43;
  *a4 = v42;
  a4[1] = v21;
  v38 = a4;
  v22 = a4 + v15;
  v24 = v34;
  v23 = v35;
  outlined assign with copy of UTType?(v20, v22);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 16) = v39;
  *(v25 + 24) = v26;
  *v16 = &async function pointer to partial apply for closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  v16[1] = v25;
  outlined init with copy of UTType?(v20, v23, &lazy cache variable for type metadata for UTType?, v36);
  if ((*(v6 + 48))(v23, 1, v24) == 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = *(v6 + 32);
    v29 = v33;
    v28(v33, v23, v24);
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18CD63400;
    v28((v27 + v30), v29, v24);
  }

  result = outlined destroy of URL?(v20, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *(v38 + *(v41 + 28)) = v27;
  return result;
}

uint64_t closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

__objc2_class *closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  v1 = v0[5];
  v2 = *v1;
  v0[13] = *v1;
  if (object_getClass(v2) != _TtC7SwiftUI14URLDocumentBox || v2 == 0)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    result = object_getClass(v2);
    if (result == _TtC7SwiftUI14URLDocumentBox)
    {
      v6 = v0[6];
      swift_unknownObjectRetain();
      v9 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[14] = v7;
      *v7 = v0;
      v7[1] = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
      v8 = v0[9];

      return v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v2 = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of URL?(v3, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[8];
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    v7(v6, v5, v1);
    (*(v2 + 56))(v6, 0, 1, v1);
    v8 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
    swift_beginAccess();
    outlined assign with take of URL?(v6, v4 + v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContentTypeDocumentCreationStrategy.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v28 = a1;
  v22 = type metadata accessor for UUID();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
  v7 = *(v6 + 20);
  v8 = v6;
  v27 = v6;
  v9 = type metadata accessor for UTType();
  v25 = *(v9 - 8);
  v26 = v9 - 8;
  v10 = v25;
  v23 = *(v25 + 56);
  v23(a2 + v7, 1, 1, v9);
  v24 = (a2 + *(v8 + 24));
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v22);
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v11, v13);

  v14 = v30;
  *a2 = v29;
  a2[1] = v14;
  v15 = MEMORY[0x1E69E8450];
  outlined destroy of URL?(a2 + v7, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v16 = v28;
  (*(v10 + 16))(a2 + v7, v28, v9);
  v23(a2 + v7, 0, 1, v9);
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, v15, MEMORY[0x1E69E6F90]);
  v17 = v24;
  *v24 = 0;
  v17[1] = 0;
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18CD63400;
  result = (*(v10 + 32))(v19 + v18, v16, v9);
  *(a2 + *(v27 + 28)) = v19;
  return result;
}

uint64_t DefaultDocumentCreationStrategy.init()@<X0>(unint64_t *a1@<X8>)
{
  v18 = type metadata accessor for UUID();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DefaultDocumentCreationStrategy(0);
  v6 = v5[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v16 = *(v8 + 56);
  v17 = v8 + 56;
  v16(a1 + v6, 1, 1, v7);
  v9 = (a1 + v5[6]);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v2 + 8))(v4, v18);
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v10, v12);

  v13 = v20;
  *a1 = v19;
  a1[1] = v13;
  outlined destroy of URL?(a1 + v6, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  result = (v16)(a1 + v6, 1, 1, v7);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v5[7]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance URLDocumentCreationStrategy(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  outlined copy of AppIntentExecutor?(v2);
  return v2;
}

uint64_t URLDocumentBox.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

void type metadata completion function for URLDocumentBox()
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for FileDocumentCreationStrategy()
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[9];
    v9 = type metadata accessor for UTType();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v14 = a3[10];
    v15 = &v4[v14];
    v16 = &a2[v14];
    if (*v16)
    {
      v17 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v17;
    }

    else
    {
      *v15 = *v16;
    }

    *&v4[a3[11]] = *&a2[a3[11]];
  }

  return v4;
}

uint64_t destroy for FileDocumentCreationStrategy(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 36);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  if (*(a1 + *(a2 + 40)))
  {
  }
}

char *initializeWithCopy for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[9];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[10];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (*v14)
  {
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  else
  {
    *v13 = *v14;
  }

  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *assignWithCopy for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[9];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = a3[10];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a1[v13];
  v17 = *&a2[v13];
  if (!v16)
  {
    if (v17)
    {
      v19 = *(v15 + 1);
      *v14 = v17;
      *(v14 + 1) = v19;

      goto LABEL_14;
    }

LABEL_13:
    *v14 = *v15;
    goto LABEL_14;
  }

  if (!v17)
  {
    outlined destroy of AsyncNewDocumentProvider(v14);
    goto LABEL_13;
  }

  v18 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v18;

LABEL_14:
  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *initializeWithTake for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[9];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithTake for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[9];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = a3[10];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (!*&a1[v14])
  {
LABEL_11:
    *v15 = *v16;
    goto LABEL_12;
  }

  if (!*v16)
  {
    outlined destroy of AsyncNewDocumentProvider(v15);
    goto LABEL_11;
  }

  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 8) = v17;

LABEL_12:
  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *initializeBufferWithCopyOfBuffer for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = type metadata accessor for UTType();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v14 = a3[6];
    v15 = &v4[v14];
    v16 = &a2[v14];
    if (*v16)
    {
      v17 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v17;
    }

    else
    {
      *v15 = *v16;
    }

    *&v4[a3[7]] = *&a2[a3[7]];
  }

  return v4;
}

char *initializeWithCopy for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[6];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (*v14)
  {
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  else
  {
    *v13 = *v14;
  }

  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

char *assignWithCopy for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a1[v13];
  v17 = *&a2[v13];
  if (!v16)
  {
    if (v17)
    {
      v19 = *(v15 + 1);
      *v14 = v17;
      *(v14 + 1) = v19;

      goto LABEL_14;
    }

LABEL_13:
    *v14 = *v15;
    goto LABEL_14;
  }

  if (!v17)
  {
    outlined destroy of AsyncNewDocumentProvider(v14);
    goto LABEL_13;
  }

  v18 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v18;

LABEL_14:
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

char *initializeWithTake for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithTake for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = a3[6];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (!*&a1[v14])
  {
LABEL_11:
    *v15 = *v16;
    goto LABEL_12;
  }

  if (!*v16)
  {
    outlined destroy of AsyncNewDocumentProvider(v15);
    goto LABEL_11;
  }

  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 8) = v17;

LABEL_12:
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

void type metadata completion function for URLDocumentCreationStrategy()
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t destroy for URLDocumentCreationStrategy(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  if (*(a1 + *(a2 + 24)))
  {
  }
}

uint64_t protocol witness for DocumentBaseBox.base.getter in conformance URLDocumentBox@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
  swift_beginAccess();
  return outlined init with copy of UTType?(v1 + v3, a1, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
}

uint64_t protocol witness for DocumentBaseBox.base.setter in conformance URLDocumentBox(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t instantiation function for generic protocol witness table for URLDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ReferenceFileDocumentCreationStrategy<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FileDocumentCreationStrategy<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ContentTypeDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for DefaultDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UTType?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of UTType?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v7, v6, v4, v5);
}

uint64_t partial apply for closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v7, v6, v4, v5);
}

uint64_t GestureState.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  GestureState.init(wrappedValue:resetTransaction:)(v9, 0, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

uint64_t Gesture.updating<A>(_:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  v22[0] = a2;
  v22[1] = a5;
  v12 = type metadata accessor for GestureState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v7, a4, v17);
  (*(v13 + 16))(v15, a1, v12);
  GestureStateGesture.init(base:state:body:)(v19, v15, v22[0], a3, a4, a6);
}

uint64_t GestureState.init(wrappedValue:resetTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  State.init(wrappedValue:)();
  v11 = *(v8 + 32);
  v11(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  v11((v13 + v12), &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = type metadata accessor for GestureState();
  v15 = (a4 + *(result + 28));
  *v15 = partial apply for closure #1 in GestureState.init(wrappedValue:resetTransaction:);
  v15[1] = v13;
  return result;
}

uint64_t closure #1 in GestureState.init(wrappedValue:resetTransaction:)()
{
  v0 = type metadata accessor for Binding();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  Binding.transaction(_:)();
  specialized Binding.wrappedValue.setter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t GestureState.init(wrappedValue:reset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v12);
  State.init(wrappedValue:)();
  v14 = *(v10 + 32);
  v14(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  v14(v16 + v15, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  result = type metadata accessor for GestureState();
  v18 = (a5 + *(result + 28));
  *v18 = partial apply for closure #1 in GestureState.init(wrappedValue:reset:);
  v18[1] = v16;
  return result;
}

uint64_t closure #1 in GestureState.init(wrappedValue:reset:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v12 + 16))(&v17 - v14, a1, v11, v13);
  MEMORY[0x18D00ACC0](v11);
  a2(v10, v15);
  (*(v8 + 8))(v10, a5);
  specialized Binding.wrappedValue.setter();
  return (*(v12 + 8))(v15, v11);
}

uint64_t GestureState.wrappedValue.getter()
{
  type metadata accessor for State();

  return State.wrappedValue.getter();
}

uint64_t GestureState<A>.init(resetTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  return GestureState.init(wrappedValue:resetTransaction:)(v7, a1, a2, a3);
}

uint64_t GestureState<A>.init(reset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  return GestureState.init(wrappedValue:reset:)(v9, a1, a2, a3, a4);
}

uint64_t GestureStateGesture.init(base:state:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for GestureStateGesture();
  v11 = *(v10 + 44);
  v12 = type metadata accessor for GestureState();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  v14 = (a6 + *(v10 + 48));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t GestureStateGesture.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for GestureState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GestureStateGesture.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for GestureState();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t key path getter for GestureStateGesture.body : <A, B>GestureStateGesture<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = (a1 + *(type metadata accessor for GestureStateGesture() + 48));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  *(v11 + 5) = v10;
  *(v11 + 6) = v9;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Gesture.Value, @inout B, @inout Transaction) -> ();
  a4[1] = v11;
}

uint64_t key path setter for GestureStateGesture.body : <A, B>GestureStateGesture<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 4) = v7;
  *(v10 + 5) = v9;
  *(v10 + 6) = v8;
  v11 = (a2 + *(type metadata accessor for GestureStateGesture() + 48));

  *v11 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Gesture.Value, @inout B, @inout Transaction) -> (@out ());
  v11[1] = v10;
  return result;
}

uint64_t GestureStateGesture.body.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t GestureStateGesture.body.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t static GestureStateGesture._makeGesture(gesture:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2[5];
  v6 = a2[3];
  v57 = a2[4];
  v58 = v5;
  v7 = a2[5];
  *v59 = a2[6];
  *&v59[12] = *(a2 + 108);
  v8 = a2[1];
  v54[0] = *a2;
  v54[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v55 = a2[2];
  v56 = v9;
  v46 = v57;
  v47 = v7;
  v48 = a2[6];
  v42 = v11;
  v43 = v10;
  v22 = v59[24];
  v49 = *(a2 + 14);
  v44 = v55;
  v45 = v6;
  v12 = *&v59[24] | 0x20;
  v23 = *&v59[24] | 0x20;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  outlined init with copy of _GestureInputs(v54, &v35);
  type metadata accessor for GestureStateGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  *&v32[16] = v49;
  v31[5] = v47;
  *v32 = v48;
  v31[0] = v42;
  v31[1] = v43;
  v31[2] = v44;
  v31[3] = v45;
  v31[4] = v46;
  *&v32[24] = v12;
  v39 = v46;
  v40 = v47;
  *v41 = v48;
  *&v41[12] = *&v32[12];
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  outlined init with copy of _GestureInputs(v31, v33);
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v33[4] = v39;
  v33[5] = v40;
  *v34 = *v41;
  *&v34[12] = *&v41[12];
  v33[0] = v35;
  v33[1] = v36;
  v33[2] = v37;
  v33[3] = v38;
  outlined destroy of _GestureInputs(v33);
  v13 = v50;
  v14 = DWORD1(v50);
  v15 = *(&v50 + 1);
  v16 = v51;
  v17 = _GraphValue.value.getter();
  *&v35 = __PAIR64__(v14, v13);
  *(&v35 + 1) = v15;
  LODWORD(v36) = v16;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v50 = __PAIR64__(_GestureOutputs.phase.getter(), v17);
  DWORD2(v50) = *&v59[16];
  BYTE12(v50) = (v22 & 0x10) != 0;
  LODWORD(v51) = 0;
  v53 = 0;
  v52 = 0;
  v35 = v50;
  v36 = v51;
  *&v37 = 0;
  v25 = type metadata accessor for GesturePhase();
  v18 = type metadata accessor for GestureStatePhase();
  v26 = v18;
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v24, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(*(v18 - 8) + 8))(&v50, v18);
  AGGraphGetFlags();
  AGGraphSetFlags();
  _GestureOutputs.withPhase<A>(_:)();
  v39 = v46;
  v40 = v47;
  *v41 = v48;
  *&v41[16] = v49;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  *&v41[24] = v23;
  outlined destroy of _GestureInputs(&v35);
}

uint64_t closure #1 in static GestureStateGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for GestureStateGesture();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t GestureStatePhase.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GestureStateGesture();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t GestureStatePhase.phase.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t GestureStatePhase.updateValue()(void *a1)
{
  v2 = v1;
  v104 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v96 = a1[3];
  v94 = type metadata accessor for GestureStateGesture();
  v90 = *(v94 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v71 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v71 - v15;
  v91 = v16;
  v17 = type metadata accessor for GesturePhase();
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v23 = *(v1 + 16);
    v102[0] = *v1;
    v102[1] = v23;
    v103 = *(v1 + 32);
    GestureStatePhase.phase.getter(v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        GestureStatePhase.resetPhase(mayDefer:)(0);
LABEL_14:
        v62 = v98;
        goto LABEL_15;
      }

      GestureStatePhase.resetPhase(mayDefer:)(1);
    }

    else if (EnumCaseMultiPayload)
    {
      v84 = v17;
      LODWORD(v83) = BYTE12(v102[0]);
      v25 = *(v93 + 32);
      v81 = v93 + 32;
      v80 = v25;
      v25(v92, v21, v91);
      AGGraphClearUpdate();
      v26 = v95;
      closure #1 in GestureStatePhase.updateValue()(v1, v95);
      AGGraphSetUpdate();
      type metadata accessor for Binding();
      v85 = swift_allocBox();
      v82 = v27;
      v87 = v5;
      v28 = v94;
      v86 = *(v94 + 44);
      type metadata accessor for State();
      State.projectedValue.getter();
      v86 = v4;
      v29 = v90;
      v30 = *(v90 + 16);
      v75 = v90 + 16;
      v74 = v30;
      v30(v9, v26, v28);
      v31 = *(v29 + 80);
      v32 = (v31 + 40) & ~v31;
      v76 = v31;
      v79 = v31 | 7;
      v33 = swift_allocObject();
      v34 = v96;
      *(v33 + 2) = v86;
      *(v33 + 3) = v34;
      *(v33 + 4) = v87;
      v35 = *(v29 + 32);
      v78 = v29 + 32;
      v77 = v35;
      v35(&v33[v32], v9, v28);
      *&v33[(v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v85;
      v36 = *(*(a1 - 1) + 8);

      v36(v102, a1);
      v37 = v96;
      *(v2 + 24) = partial apply for closure #2 in GestureStatePhase.updateValue();
      *(v2 + 32) = v33;
      v38 = swift_allocBox();
      v40 = v39;
      LOBYTE(v99) = 17;
      MEMORY[0x1EEE9AC00](v38);
      *(&v71 - 4) = v86;
      *(&v71 - 3) = v37;
      v41 = v82;
      *(&v71 - 2) = v87;
      *(&v71 - 1) = v41;
      static Update.dispatchImmediately<A>(reason:_:)();
      swift_beginAccess();
      Transaction.tracksVelocity.setter();
      swift_endAccess();
      if (v83)
      {
        v42 = v76;
        v72 = ~v76;
        type metadata accessor for GraphHost();
        v43 = MEMORY[0x18D00B7D0]();
        type metadata accessor for GestureGraph();
        v82 = v43;
        v73 = swift_dynamicCastClassUnconditional();
        v44 = v89;
        v45 = v94;
        v74(v89, v95, v94);
        v83 = v38;
        v46 = v93 + 16;
        v47 = v88;
        v48 = v91;
        (*(v93 + 16))(v88, v92, v91);
        v49 = (v42 + 56) & v72;
        v50 = *(v46 + 64);
        v51 = v83;
        v52 = (v49 + v6 + v50) & ~v50;
        v53 = swift_allocObject();
        v54 = v96;
        *(v53 + 2) = v86;
        *(v53 + 3) = v54;
        v55 = v85;
        *(v53 + 4) = v87;
        *(v53 + 5) = v55;
        *(v53 + 6) = v51;
        v77(&v53[v49], v44, v45);
        v80(&v53[v52], v47, v48);
        v56 = v73;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v57 = *(v56 + 200);
          ObjectType = swift_getObjectType();
          v59 = *(v57 + 8);

          v60 = ObjectType;
          v61 = v91;
          v59(partial apply for closure #4 in GestureStatePhase.updateValue(), v53, v60, v57);

          swift_unknownObjectRelease();
        }

        else
        {
          v61 = v48;
        }

        v17 = v84;
        (*(v93 + 8))(v92, v61);
        (*(v90 + 8))(v95, v45);
      }

      else
      {
        v63 = *(v95 + *(v94 + 48));
        swift_beginAccess();
        v64 = v92;
        v63(v92, v40, v41);
        swift_endAccess();
        LOBYTE(v99) = 17;
        v65 = swift_allocObject();
        v65[2] = v86;
        v65[3] = v37;
        v66 = v85;
        v65[4] = v87;
        v65[5] = v66;
        v65[6] = v38;

        static Update.enqueueAction(reason:_:)();

        (*(v93 + 8))(v64, v91);
        (*(v90 + 8))(v95, v94);

        v17 = v84;
      }

      goto LABEL_14;
    }

    v62 = v98;
    (*(v98 + 8))(v21, v17);
LABEL_15:
    v67 = *(v2 + 16);
    v99 = *v2;
    v100 = v67;
    v101 = *(v2 + 32);
    v68 = v97;
    v69 = GestureStatePhase.phase.getter(v97);
    MEMORY[0x1EEE9AC00](v69);
    *(&v71 - 2) = a1;
    *(&v71 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v68, partial apply for closure #1 in StatefulRule.value.setter, (&v71 - 4), v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v70);
    return (*(v62 + 8))(v68, v17);
  }

  return result;
}

uint64_t closure #1 in GestureStatePhase.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  outlined copy of AppIntentExecutor?(*(&v3 + 1));
  v4 = type metadata accessor for GestureStatePhase();
  GestureStatePhase.gesture.getter(a2);
  return (*(*(v4 - 8) + 8))(v6, v4);
}

uint64_t closure #2 in GestureStatePhase.updateValue()(uint64_t a1)
{
  v2 = type metadata accessor for Binding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  v7 = a1 + *(type metadata accessor for GestureStateGesture() + 44);
  v8 = *(v7 + *(type metadata accessor for GestureState() + 28));
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v8(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in GestureStatePhase.updateValue()(uint64_t a1)
{
  v2 = type metadata accessor for Binding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1, v2);
  MEMORY[0x18D00ACC0](v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #4 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a3;
  v19 = a4;
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = swift_projectBox();
  v15 = swift_projectBox();
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  swift_beginAccess();
  (*(v7 + 16))(v9, v15, a6);
  v16 = type metadata accessor for GestureStateGesture();
  (*(v18 + *(v16 + 48)))(v19, v9, v13);
  specialized Binding.wrappedValue.setter();
  (*(v7 + 8))(v9, a6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #5 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v12 = swift_projectBox();
  v13 = swift_projectBox();
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v13, a4);
  specialized Binding.wrappedValue.setter();
  (*(v5 + 8))(v7, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t GestureStatePhase.resetPhase(mayDefer:)(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if ((result & 1) != 0 && *(v1 + 12) == 1)
    {
      type metadata accessor for GraphHost();

      MEMORY[0x18D00B7D0](v4);
      type metadata accessor for GestureGraph();
      v5 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 200);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v2, v3, ObjectType, v6);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
        swift_unknownObjectRelease();
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
      }
    }

    else
    {

      static Update.enqueueAction(reason:_:)();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
    }

    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t static GestureStatePhase.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  type metadata accessor for GestureStatePhase();
  return GestureStatePhase.resetPhase(mayDefer:)(0);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GestureStatePhase<A, B>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata completion function for GestureState()
{
  result = type metadata accessor for State();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GestureState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  return v3;
}

uint64_t destroy for GestureState(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v8 & 0xFFFFFFFFFFFFFFF8);
  *v12 = v10;
  v12[1] = v11;

  return a1;
}

uint64_t assignWithCopy for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v6;
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

    v17 = *((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
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

  return v6 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for GestureState(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v19 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = a2 - 1;
        }
      }

      else if (v7 >= a2)
      {
        v23 = *(v5 + 56);

        v23();
      }

      else if (v9 != -8)
      {
        v20 = ~v7 + a2;
        v21 = a1;
        bzero(a1, v19);
        *v21 = v20;
      }

      return;
    }
  }

  if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for GestureStateGesture()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GestureState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GestureStateGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v8 | *(v4 + 80);
  if ((v12 & 0x1000F8) != 0 || ((v5 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7)) + v11 + 16 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v3 = (v14 + (((v12 & 0xF8 | 7u) + 16) & ~(v12 & 0xF8 | 7u)));
  }

  else
  {
    v15 = v10 + 8;
    (*(v4 + 16))(a1);
    v17 = v3 + v5 + 7;
    v18 = a2 + v5 + 7;
    (*(v7 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v18 & 0xFFFFFFFFFFFFFFF8, v6);
    *(((v17 | 7) + v9) & 0xFFFFFFFFFFFFFFF8) = *(((v18 | 7) + v9) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v15 + v17) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v15 + v18) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v11 + v17) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v11 + v18) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
  }

  return v3;
}

uint64_t destroy for GestureStateGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 80) & 0xF8 | 7;
  (*(v5 + 8))((*(v4 + 56) + a1 + v6) & ~v6);
}

uint64_t initializeWithCopy for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 8 + v12);
  v16 = (v14 + 8 + v13);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = (v18 + v12);
  v20 = (v18 + v13);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t assignWithCopy for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);

  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 8 + v12);
  v16 = (v14 + 8 + v13);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = (v18 + v12);
  v20 = (v18 + v13);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t initializeWithTake for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v14 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8 + v12) = *(v14 + 8 + v13);
  *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v12) = *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v13);
  return a1;
}

uint64_t assignWithTake for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);

  v14 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8 + v12) = *(v14 + 8 + v13);

  *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v12) = *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v13);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureStateGesture(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v7 + 80) & 0xF8 | 7;
  v12 = *(*(*(a3 + 16) - 8) + 64) + v11;
  v13 = (*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + (v12 & ~v11) + 32;
  v15 = a2 - v10;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if (v5 >= v9)
    {
      return (*(v4 + 48))();
    }

    v24 = (a1 + v12) & ~v11;
    if (v8 >= 0x7FFFFFFF)
    {
      return (*(v7 + 48))(v24, v8, v6);
    }

    v25 = *(v13 + 8 + v24);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v10 + (v23 | v22) + 1;
}

void storeEnumTagSinglePayload for GestureStateGesture(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v7 + 80) & 0xF8 | 7;
  v14 = v9 + v13;
  v15 = (*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v9 + v13) & ~v13) + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v16 > 3)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    if (((v9 + v13) & ~v13) + ((v15 + 15) & 0xFFFFFFF8) + 16 != -16)
    {
      if (v16 <= 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = ~v12 + a2;
      }

      v24 = a1;
      bzero(a1, v16);
      a1 = v24;
      *v24 = v23;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v16) = v22;
      }

      else
      {
        *(a1 + v16) = v22;
      }
    }

    else if (v20)
    {
      *(a1 + v16) = v22;
    }

    return;
  }

  v17 = a3 - v12;
  if (v16 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = a2 - v12;
  if (a2 > v12)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v16) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v20)
  {
    goto LABEL_41;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v6 >= v11)
  {
    v29 = *(v5 + 56);

    v29();
  }

  else
  {
    v25 = ((a1 + v14) & ~v13);
    if (v11 >= a2)
    {
      v30 = v15 + 8;
      if (v8 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = (v25 + v30);
          *v33 = a2 & 0x7FFFFFFF;
          v33[1] = 0;
        }

        else
        {
          *(v25 + v30) = a2 - 1;
        }
      }

      else if (v10 >= a2)
      {
        v31 = *(v7 + 56);
        v32 = (a1 + v14) & ~v13;

        v31(v32);
      }

      else if (v15 != -8)
      {
        v26 = ~v10 + a2;
        v27 = ((a1 + v14) & ~v13);
        v28 = v15 + 8;
        goto LABEL_46;
      }
    }

    else if (((v15 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v11 + a2;
      v27 = ((a1 + v14) & ~v13);
      v28 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
LABEL_46:
      bzero(v27, v28);
      *v25 = v26;
    }
  }
}

__n128 initializeWithCopy for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
  }

  else
  {
    result = *v2;
    *(a1 + 24) = *v2;
  }

  return result;
}

uint64_t assignWithCopy for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;

  return a1;
}

__n128 assignWithTake for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;

      return result;
    }
  }

  else if (v4)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
    return result;
  }

  result = *v5;
  *v3 = *v5;
  return result;
}

uint64_t partial apply for closure #2 in GestureStatePhase.updateValue()()
{
  v1 = *(type metadata accessor for GestureStateGesture() - 8);
  v2 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #2 in GestureStatePhase.updateValue()(v2);
}

uint64_t partial apply for closure #4 in GestureStatePhase.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for GestureStateGesture() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #4 in GestureStatePhase.updateValue()(v7, v8, v0 + v4, v9, v1, v2);
}

uint64_t specialized ModifiedContent<>.accessibilitySetValueAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  v10 = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>();
  *(v9 + 56) = v11;
  *(v9 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v12 = swift_allocObject();
  *(v9 + 32) = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 2;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 88) = partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:);
  *(v12 + 96) = v8;
  *(v12 + 104) = v10;
  *(v9 + 72) = 0;
  v22 = v4[9];
  swift_beginAccess();
  v21 = v9;

  outlined init with copy of AccessibilityAttachmentModifier(&v22, &v20);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v20);
  v20 = v21;
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  outlined destroy of AccessibilityAttachmentModifier(&v22);
  v13 = v4[7];
  a3[6] = v4[6];
  a3[7] = v13;
  v14 = v4[9];
  a3[8] = v4[8];
  a3[9] = v14;
  v15 = v4[3];
  a3[2] = v4[2];
  a3[3] = v15;
  v16 = v4[5];
  a3[4] = v4[4];
  a3[5] = v16;
  v17 = v4[1];
  *a3 = *v4;
  a3[1] = v17;
  return outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v4, v19);
}

uint64_t Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, __int128 *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v176 = a8;
  *&v174 = a7;
  LODWORD(v160) = a6;
  v158 = a5;
  v157 = a4;
  v164 = a3;
  v165 = a2;
  v166 = a1;
  v173 = a21;
  *&v177 = a15;
  LODWORD(v175) = a12;
  v162 = a11;
  v163 = a10;
  v161 = a14;
  v151 = *(*(*(*(a22 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v149 = &v147 - v23;
  v24 = type metadata accessor for Optional();
  v169 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v147 - v25;
  v27 = *(a19 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v153 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a13;
  v155 = a13[1];
  v156 = v30;
  v167 = a17;
  v168 = a18;
  v178 = a17;
  v179 = a18;
  v171 = a20;
  v180 = a20;
  v181 = v173;
  v154 = type metadata accessor for Slider();
  v31 = (a9 + *(v154 + 96));
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = type metadata accessor for Binding();
  v159 = a22;
  type metadata accessor for Clamping();
  swift_getWitnessTable();
  v152 = v32;
  Binding.projecting<A>(_:)();
  v33 = v179;
  v34 = v180;
  *a9 = v178;
  a9[1] = v33;
  v172 = a9;
  a9[2] = v34;
  v35 = *(v169 + 16);
  v170 = v24;
  v35(v26, v164, v24);
  v36 = *(v27 + 48);
  if (v36(v26, 1, a19) == 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    if (v36(v26, 1, a19) != 1)
    {
      (*(v169 + 8))(v26, v170);
    }
  }

  else
  {
    (*(v27 + 32))(v153, v26, a19);
  }

  lazy protocol witness table accessor for type Double and conformance Double();
  v37 = v159;
  BinaryFloatingPoint.init<A>(_:)();
  v38 = v171;
  v39 = v172;
  v172[3] = v178;
  v40 = v158;
  v39[4] = v157;
  v39[5] = v40;
  *(v39 + 48) = v160 & 1;
  v42 = v167;
  v41 = v168;
  v43 = v173;
  v44 = closure #1 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(v165, v167, v168, a19);
  v39[10] = v44;
  MEMORY[0x1EEE9AC00](v44);
  *(&v147 - 6) = v42;
  *(&v147 - 5) = v41;
  *(&v147 - 4) = a19;
  *(&v147 - 3) = v38;
  *(&v147 - 2) = v43;
  *(&v147 - 1) = v37;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v147 - 8), MEMORY[0x1E69E73E0], MEMORY[0x1E69E63B0], v45, &v178);
  v160 = 0;
  v46 = *&v178;
  if (v179)
  {
    v46 = 0.1;
  }

  v47 = v154;
  v48 = *(v154 + 88);
  *(v39 + 9) = v46;
  v49 = v176;
  v39[7] = v174;
  v39[8] = v49;
  v50 = v47[20];
  v158 = *(v41 - 8);
  v51 = *(v158 + 16);
  v51(v39 + v50, v163, v41);
  v51(v39 + v47[21], v162, v41);
  *(v39 + v48) = v175 & 1;
  outlined consume of AccessibilityBoundedNumber?(*v31, v31[1], v31[2], v31[3]);
  v52 = v155;
  *v31 = v156;
  *(v31 + 1) = v52;
  v53 = v47[23];
  v157 = *(v42 - 8);
  v54 = (*(v157 + 16))(v39 + v53, v161, v42);
  if (v177)
  {
    v178 = v177;
    MEMORY[0x1EEE9AC00](v54);
    *(&v147 - 6) = v42;
    *(&v147 - 5) = v41;
    v55 = v171;
    *(&v147 - 4) = v56;
    *(&v147 - 3) = v55;
    *(&v147 - 2) = v173;
    *(&v147 - 1) = v37;
    v149 = v56;
    type metadata accessor for SliderMark();
    v57 = type metadata accessor for Array();
    type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
    v59 = v58;
    WitnessTable = swift_getWitnessTable();
    v61 = v57;
    v62 = v160;
    v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v147 - 8), v61, v59, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v63);

    v178 = v64;

    specialized MutableCollection<>.sort(by:)(&v178);
    if (v62)
    {
      goto LABEL_89;
    }

    v160 = 0;

    v65 = v178[2];
    v176 = v178;

    v66 = MEMORY[0x1E69E7CC0];
    if (v65)
    {
      v67 = 0.0;
      v154 = 0;
      v153 = 0;
      v151 = 0;
      v68 = 0;
      v69 = 0;
      AssociatedTypeWitness = (MEMORY[0x1E69E7CC0] + 32);
      v147 = v65 - 1;
      v175 = 1;
      v174 = xmmword_18CD63400;
      v70 = v176 + 8;
      v148 = v176 + 8;
      while (1)
      {
        *&v156 = v69;
        *&v155 = v66;
        v71 = &v70[5 * v68];
        while (1)
        {
          if (v68 >= v176[2])
          {
            __break(1u);
            goto LABEL_82;
          }

          v72 = *(v71 - 4);
          v73 = *(v71 - 3);
          v62 = *(v71 - 1);
          v74 = v68 + 1;
          v75 = *v71;
          v76 = v72;
          v77 = v73;
          *&v177 = *(v71 - 2);
          outlined copy of Text?(v72, v73, v177, v62);
          if (v175 == 1 || v75 != v67)
          {
            break;
          }

          static os_log_type_t.fault.getter();
          v78 = static Log.runtimeIssuesLog.getter();
          type metadata accessor for _ContiguousArrayStorage<CVarArg>();
          v79 = swift_allocObject();
          *(v79 + 16) = v174;
          *(v79 + 56) = MEMORY[0x1E69E63B0];
          *(v79 + 64) = MEMORY[0x1E69E6438];
          *(v79 + 32) = v75;
          os_log(_:dso:log:_:_:)();

          outlined consume of Text?(v76, v77, v177, v62);
          v71 += 5;
          ++v68;
          if (v65 == v74)
          {
            v94 = v151;
            v95 = v153;
            v96 = v154;
            v62 = v175;
            v66 = v155;
            v69 = v156;
            goto LABEL_41;
          }
        }

        outlined consume of SliderMark<Double>?(v151, v153, v154, v175);
        v80 = v156;
        if (!v156)
        {
          break;
        }

        outlined copy of Text?(v76, v77, v177, v62);
        v66 = v155;
LABEL_35:
        v90 = __OFSUB__(v80, 1);
        v69 = v80 - 1;
        v70 = v148;
        if (v90)
        {
          goto LABEL_83;
        }

        v67 = v75;
        v91 = AssociatedTypeWitness;
        *AssociatedTypeWitness = v76;
        v91[1] = v77;
        v92 = v177;
        v91[2] = v177;
        v91[3] = v62;
        *(v91 + 4) = v75;
        AssociatedTypeWitness = v91 + 5;
        v175 = v62;
        v154 = v92;
        v153 = v77;
        v151 = v76;
        v93 = v147 == v68++;
        v94 = v76;
        v95 = v77;
        v96 = v92;
        if (v93)
        {
          goto LABEL_41;
        }
      }

      v81 = v155;
      v82 = *(v155 + 24);
      if (((v82 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_87;
      }

      v83 = v82 & 0xFFFFFFFFFFFFFFFELL;
      if (v83 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v83;
      }

      type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>, &lazy cache variable for type metadata for SliderMark<Double>, type metadata accessor for SliderMark);
      v85 = swift_allocObject();
      v86 = (_swift_stdlib_malloc_size_1(v85) - 32) / 40;
      v85[2] = v84;
      v85[3] = 2 * v86;
      v87 = v81[2];
      v88 = v81[3] >> 1;
      AssociatedTypeWitness = &v85[5 * v88 + 4];
      *&v156 = (v86 & 0x7FFFFFFFFFFFFFFFLL) - v88;
      if (!v87)
      {
        outlined copy of Text?(v76, v77, v177, v62);
LABEL_34:

        v66 = v85;
        v80 = v156;
        goto LABEL_35;
      }

      v175 = (v81 + 4);
      if (v85 < v81 || v85 + 4 >= &v81[5 * v88 + 4])
      {
        outlined copy of Text?(v76, v77, v177, v62);
      }

      else
      {
        outlined copy of Text?(v76, v77, v177, v62);
        if (v85 == v81)
        {
          goto LABEL_33;
        }
      }

      memmove(v85 + 4, v175, 40 * v88);
LABEL_33:
      *(v155 + 16) = 0;
      goto LABEL_34;
    }

    v69 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v62 = 1;
LABEL_41:

    outlined consume of SliderMark<Double>?(v94, v95, v96, v62);
    v97 = v66[3];
    v42 = v167;
    v41 = v168;
    v37 = v159;
    if (v97 >= 2)
    {
      v98 = v97 >> 1;
      v90 = __OFSUB__(v98, v69);
      v99 = v98 - v69;
      if (v90)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v66[2] = v99;
    }
  }

  else
  {
    v66 = 0;
  }

  v172[11] = v66;
  if (!a16)
  {
    (*(v157 + 8))(v161, v42);
    v135 = *(v158 + 8);
    v135(v162, v41);
    v135(v163, v41);
    v136 = v170;
    v137 = *(v169 + 8);
    v137(v164, v170);
    v137(v165, v136);
    result = (*(*(v152 - 8) + 8))(v166);
    v109 = 0;
    goto LABEL_80;
  }

  v178 = a16;
  MEMORY[0x1EEE9AC00](v54);
  *(&v147 - 6) = v42;
  *(&v147 - 5) = v41;
  v100 = v171;
  *(&v147 - 4) = v101;
  *(&v147 - 3) = v100;
  *(&v147 - 2) = v173;
  *(&v147 - 1) = v37;
  type metadata accessor for SliderTick();
  v102 = type metadata accessor for Array();
  type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
  v104 = v103;
  v105 = swift_getWitnessTable();
  v62 = v160;
  v107 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v147 - 8), v102, v104, MEMORY[0x1E69E73E0], v105, MEMORY[0x1E69E7410], v106);

  v178 = v107;

  specialized MutableCollection<>.sort(by:)(&v178);
  if (!v62)
  {

    v62 = v178;
    v108 = v178[2];

    v109 = MEMORY[0x1E69E7CC0];
    if (v108)
    {
      v110 = 0.0;
      v111 = 0;
      v176 = 0;
      *&v174 = MEMORY[0x1E69E7CC0] + 32;
      v171 = v108 - 1;
      v112 = 1;
      v177 = xmmword_18CD63400;
      v113 = v62 + 40;
      v173 = v62 + 40;
LABEL_49:
      v175 = v109;
      v114 = (v113 + 16 * v111);
      while (v111 < *(v62 + 16))
      {
        v115 = *(v114 - 1);
        v116 = *v114;
        v117 = v111 + 1;

        if (v112 == 1 || v116 != v110)
        {
          outlined consume of ListItemTint?(v112);
          v120 = v176;
          if (v176)
          {

            v109 = v175;
          }

          else
          {
            v121 = v175;
            v122 = *(v175 + 24);
            if (((v122 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_88;
            }

            v123 = v122 & 0xFFFFFFFFFFFFFFFELL;
            if (v123 <= 1)
            {
              v124 = 1;
            }

            else
            {
              v124 = v123;
            }

            type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>, &lazy cache variable for type metadata for SliderTick<Double>, type metadata accessor for SliderTick);
            v125 = swift_allocObject();
            v126 = _swift_stdlib_malloc_size_1(v125);
            v127 = v126 - 32;
            if (v126 < 32)
            {
              v127 = v126 - 17;
            }

            v128 = v127 >> 4;
            *(v125 + 2) = v124;
            *(v125 + 3) = 2 * (v127 >> 4);
            v129 = v125 + 32;
            v130 = *(v121 + 16);
            v131 = *(v121 + 24) >> 1;
            *&v174 = &v125[16 * v131 + 32];
            v120 = ((v128 & 0x7FFFFFFFFFFFFFFFLL) - v131);
            if (v130)
            {
              v132 = (v121 + 32);
              if (v125 != v121 || v129 >= &v132[16 * v131])
              {
                memmove(v129, v132, 16 * v131);
              }

              *(v121 + 16) = 0;
            }

            else
            {
            }

            v109 = v125;
          }

          v90 = __OFSUB__(v120, 1);
          v133 = (v120 - 1);
          v113 = v173;
          if (v90)
          {
            goto LABEL_84;
          }

          v176 = v133;
          v110 = v116;
          v134 = v174;
          *v174 = v115;
          *(v134 + 8) = v116;
          *&v174 = v134 + 16;
          v112 = v115;
          v93 = v171 == v111++;
          if (v93)
          {
            goto LABEL_76;
          }

          goto LABEL_49;
        }

        static os_log_type_t.fault.getter();
        v118 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>();
        v119 = swift_allocObject();
        *(v119 + 16) = v177;
        *(v119 + 56) = MEMORY[0x1E69E63B0];
        *(v119 + 64) = MEMORY[0x1E69E6438];
        *(v119 + 32) = v116;
        os_log(_:dso:log:_:_:)();

        v114 += 2;
        ++v111;
        if (v108 == v117)
        {
          v115 = v112;
          v109 = v175;
          goto LABEL_76;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v176 = 0;
    v115 = 1;
LABEL_76:

    outlined consume of ListItemTint?(v115);
    v139 = v109[3];
    v140 = v167;
    v141 = v168;
    if (v139 >= 2)
    {
      v142 = v139 >> 1;
      v90 = __OFSUB__(v142, v176);
      v143 = v142 - v176;
      if (v90)
      {
        goto LABEL_86;
      }

      v109[2] = v143;
    }

    (*(v157 + 8))(v161, v140);
    v144 = *(v158 + 8);
    v144(v162, v141);
    v144(v163, v141);
    v145 = v170;
    v146 = *(v169 + 8);
    v146(v164, v170);
    v146(v165, v145);
    result = (*(*(v152 - 8) + 8))(v166);
LABEL_80:
    v172[12] = v109;
    return result;
  }

LABEL_89:

  __break(1u);
  return result;
}

uint64_t closure #1 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  if ((*(v10 + 48))(v9, 1, a4) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v10 + 32))(v17, v9, a4);
  (*(v10 + 16))(v13, v17, a4);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v19 = round(1.0 / v20[1]);
  result = (*(v10 + 8))(v17, a4);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  lazy protocol witness table accessor for type Double and conformance Double();
  return BinaryFloatingPoint.init<A>(_:)();
}

double closure #3 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SliderMark();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return SliderMark<>.init<A>(_:)(v11, a2, a3, a4);
}

double closure #5 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v6 = type metadata accessor for SliderTick();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return SliderTick<>.init<A>(_:)(v9, a2, a3);
}

uint64_t Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v166 = a8;
  v140 = a7;
  v139 = a6;
  v167 = a5;
  v168 = a4;
  v175 = a3;
  v176 = a1;
  v138 = a9;
  v143 = a21;
  v170 = a20;
  v178 = a19;
  v177 = a18;
  v171 = a16;
  v173 = a15;
  v135 = a13;
  v165 = a12;
  v163 = *(a15 - 1);
  v164 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v161 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v25 = *(v24 + 24);
  v174 = type metadata accessor for ClosedRange();
  v162 = type metadata accessor for Optional();
  v137 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v131 = v124 - v26;
  v160 = *(a16 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v155 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v154 = v124 - v30;
  v159 = type metadata accessor for Optional();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v129 = v124 - v31;
  v145 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = type metadata accessor for Binding();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v150 = v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v153 = v124 - v34;
  v172 = type metadata accessor for Optional();
  v152 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v148 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v147 = v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v124 - v39;
  v146 = *(v24 + 8);
  *&v192 = a17;
  *(&v192 + 1) = v146;
  *&v193 = v25;
  *(&v193 + 1) = a21;
  v151 = type metadata accessor for Normalizing();
  v136 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v42 = v124 - v41;
  v149 = *(a17 - 8);
  v43 = v149;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = v124 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v124 - v51;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = v124 - v55;
  v57 = *(v43 + 16);
  v57(v124 - v55, a2, a17, v54);
  v58 = *(v174 + 36);
  v169 = a2;
  v59 = a2 + v58;
  v60 = v143;
  (v57)(v52, v59, a17);
  (v57)(v49, v56, a17);
  v141 = v52;
  (v57)(v46, v52, a17);
  v61 = *(v152 + 16);
  v124[1] = v152 + 16;
  v124[0] = v61;
  v61(v40, v175, v172);
  v128 = v49;
  v130 = v40;
  Normalizing.init(min:max:stride:)(v49, v46, v40, a17, v146, v145, v60, v42);
  v62 = type metadata accessor for Binding();
  swift_getWitnessTable();
  v63 = v153;
  v146 = v62;
  v64 = v149;
  Binding.projecting<A>(_:)();
  v65 = v63;
  v66 = AssociatedTypeWitness;
  (*(v156 + 16))(v150, v65, v157);
  v180 = v173;
  v181 = v171;
  v182 = a17;
  v183 = v177;
  v184 = v178;
  v185 = v170;
  v186 = v60;
  v187 = v42;
  v67 = v158;
  v133 = v42;
  v68 = v159;
  v69 = v129;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), v179, MEMORY[0x1E69E73E0], v66, v70, v147);
  (*(v67 + 16))(v69, v168, v68);
  v71 = 1;
  v72 = (*(v64 + 48))(v69, 1, a17);
  v132 = v56;
  if (v72 == 1)
  {
    v73 = v67;
    v74 = v68;
    v75 = v170;
    v76 = v148;
    v77 = v143;
  }

  else
  {
    v76 = v148;
    v75 = v170;
    v77 = v143;
    BinaryFloatingPoint<>.normalize(min:max:)(v56, v141, a17, v170, v143);
    v71 = 0;
    v73 = v64;
    v74 = a17;
  }

  v142 = a14;
  (*(v73 + 8))(v69, v74);
  v78 = (*(*(v66 - 8) + 56))(v76, v71, 1, v66);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v173;
  v80 = v171;
  v116 = v173;
  v117 = v171;
  v118 = a17;
  v119 = v177;
  v120 = v178;
  v121 = v75;
  v122 = v77;
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), &v115, MEMORY[0x1E69E73E0], v81, v82, v190);
  v127 = v190[0];
  v126 = v190[1];
  v125 = v191;
  v83 = *(v160 + 16);
  v83(v154, v166, v80);
  v83(v155, v164, v80);
  MEMORY[0x18D00ACC0](v146);
  v84 = v174;
  v85 = *(v174 - 8);
  v86 = v131;
  v87 = v169;
  v85[2](v131, v169, v174);
  v129 = v85;
  (v85[7])(v86, 0, 1, v84);
  (v124[0])(v130, v175, v172);
  AccessibilityBoundedNumber.init<A>(for:in:by:)();
  v189[0] = v192;
  v189[1] = v193;
  v88 = (*(v163 + 16))(v161, v165, v79);
  v134 = a17;
  if (v135)
  {
    v131 = v124;
    v188 = v135;
    MEMORY[0x1EEE9AC00](v88);
    v116 = v79;
    v117 = v80;
    v118 = a17;
    v119 = v177;
    v120 = v178;
    v121 = v170;
    v122 = v77;
    v123 = v87;
    type metadata accessor for SliderMark();
    v89 = type metadata accessor for Array();
    v90 = AssociatedTypeWitness;
    v91 = v77;
    v92 = type metadata accessor for SliderMark();
    WitnessTable = swift_getWitnessTable();
    v145 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), &v115, v89, v92, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v94);
  }

  else
  {
    v90 = AssociatedTypeWitness;
    v91 = v77;
    v145 = 0;
  }

  v95 = a11;
  if (v142)
  {
    v131 = v124;
    v188 = v142;
    LODWORD(v135) = a11;
    MEMORY[0x1EEE9AC00](v88);
    v130 = 0;
    v128 = &v115;
    v96 = v173;
    v97 = v171;
    v116 = v173;
    v117 = v171;
    v98 = v134;
    v99 = v177;
    v118 = v134;
    v119 = v177;
    v120 = v178;
    v121 = v100;
    v101 = v91;
    v102 = v169;
    v122 = v91;
    v123 = v169;
    type metadata accessor for SliderTick();
    v103 = type metadata accessor for Array();
    v104 = type metadata accessor for SliderTick();
    v105 = swift_getWitnessTable();
    v106 = v103;
    v107 = v98;
    v109 = v102;
    v110 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), v128, v106, v104, MEMORY[0x1E69E73E0], v105, MEMORY[0x1E69E7410], v108);

    v95 = v135;
    v111 = v178;
  }

  else
  {
    v110 = 0;
    v97 = v171;
    v109 = v169;
    v96 = v173;
    v101 = v91;
    v111 = v178;
    v99 = v177;
    v107 = v134;
  }

  Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(v150, v147, v148, v127, v126, v125, v139, v140, v138, v154, v155, v95 & 1, v189, v161, v145, v110, v96, v97, v90, v99, v111, v101);
  (*(v163 + 8))(v165, v96);
  v112 = *(v160 + 8);
  v112(v164, v97);
  v112(v166, v97);
  (*(v137 + 8))(v167, v162);
  (*(v158 + 8))(v168, v159);
  (*(v152 + 8))(v175, v172);
  (*(*(v146 - 8) + 8))(v176);
  (*(v156 + 8))(v153, v157);
  v113 = *(v149 + 8);
  v113(v141, v107);
  v113(v132, v107);
  (*(v136 + 8))(v133, v151);
  return (*(v129 + 1))(v109, v174);
}

uint64_t Normalizing.init(min:max:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a5;
  v80 = a2;
  v77 = a3;
  v81 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = *(v67 + 16);
  v66 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v58 - v13;
  v64 = type metadata accessor for FloatingPointRoundingRule();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v74 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = v58 - v23;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v70 = v58 - v26;
  v27 = *(a4 - 8);
  v28 = *(v27 + 16);
  v28(a8, v81, a4, v25);
  v82 = a4;
  v83 = v79;
  v76 = a6;
  v84 = a6;
  v85 = a7;
  v29 = v15;
  v30 = v74;
  v65 = a7;
  v31 = type metadata accessor for Normalizing();
  v32 = a8 + *(v31 + 52);
  v79 = a4;
  (v28)(v32, v80, a4);
  v72 = v31;
  v33 = *(v31 + 56);
  v34 = *(v30 + 16);
  v78 = a8;
  v35 = a8 + v33;
  v36 = v77;
  v34(v35, v77, v29);
  v34(v17, v36, v29);
  v37 = v75;
  v38 = (*(v75 + 48))(v17, 1, AssociatedTypeWitness);
  v71 = v29;
  if (v38 == 1)
  {
    v39 = *(v30 + 8);
    v39(v17, v29);
    v40 = v72;
    v41 = v79;
    v43 = v80;
    v42 = v81;
    dispatch thunk of Strideable.distance(to:)();
    v39(v36, v71);
    v44 = *(v27 + 8);
    v44(v43, v41);
    v44(v42, v41);
    return (*(v37 + 56))(v78 + *(v40 + 60), 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v59 = v27;
    v46 = *(v37 + 32);
    v58[1] = v37 + 32;
    v58[0] = v46;
    v46(v70, v17, AssociatedTypeWitness);
    v47 = v60;
    dispatch thunk of Strideable.distance(to:)();
    v48 = v63;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v49 = *(v37 + 8);
    v49(v47, AssociatedTypeWitness);
    v50 = v62;
    v51 = v61;
    v52 = v64;
    (*(v62 + 104))(v61, *MEMORY[0x1E69E7048], v64);
    dispatch thunk of FloatingPoint.rounded(_:)();
    (*(v50 + 8))(v51, v52);
    v49(v48, AssociatedTypeWitness);
    v53 = v78;
    dispatch thunk of static Numeric.* infix(_:_:)();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    swift_getAssociatedConformanceWitness();
    v54 = dispatch thunk of static Comparable.> infix(_:_:)();
    v49(v48, AssociatedTypeWitness);
    if (v54)
    {
      (*(v74 + 8))(v77, v71);
      v55 = *(v59 + 8);
      v56 = v79;
      v55(v80, v79);
      v55(v81, v56);
      v49(v70, AssociatedTypeWitness);
      v57 = *(v72 + 60);
      (v58[0])(v53 + v57, v73, AssociatedTypeWitness);
      return (*(v75 + 56))(v53 + v57, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Normalizing();
  return dispatch thunk of static FloatingPoint./ infix(_:_:)();
}

uint64_t BinaryFloatingPoint<>.normalize(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v8, AssociatedTypeWitness);
  return (v12)(v11, AssociatedTypeWitness);
}

uint64_t closure #2 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a1, v11, v7);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v12 = v18;
  v13 = type metadata accessor for ClosedRange();
  (v10)(v9, a1 + *(v13 + 36), a2);
  result = BinaryFloatingPoint.init<A>(_:)();
  v15 = v17;
  if (v12 > v17)
  {
    __break(1u);
  }

  else
  {
    *a3 = v12;
    a3[1] = v15;
  }

  return result;
}

uint64_t Slider.init<>(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v20 = a1[6];
  v21 = v3;
  v22 = a1[8];
  v4 = a1[3];
  v16 = a1[2];
  v17 = v4;
  v5 = a1[5];
  v18 = a1[4];
  v19 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v7 = *(&v14 + 1);
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v17;
  v9 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 72) = *(&v18 + 1);
  v10 = v18;
  *(a2 + 56) = *(&v17 + 1);
  *(a2 + 64) = v10;
  *(a2 + 106) = BYTE8(v20);
  *(a2 + 104) = 1;
  v12 = *(&v19 + 1);
  v11 = v20;
  *(a2 + 80) = v19;
  *(a2 + 88) = v11;

  result = outlined destroy of SliderStyleConfiguration(&v14);
  *(a2 + 96) = v12;
  return result;
}

uint64_t Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v91 = v4;
  *&v104 = *(a1 + 16);
  *&v103 = *(a1 + 32);
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v94 = type metadata accessor for ModifiedContent();
  v96 = lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label();
  v158 = v103;
  v159 = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v92 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  *&v146 = &type metadata for SliderStyleConfiguration.Label;
  *(&v146 + 1) = v94;
  *&v147 = v96;
  *(&v147 + 1) = WitnessTable;
  type metadata accessor for StaticSourceWriter();
  v88 = type metadata accessor for ModifiedContent();
  v101 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v69 - v5;
  v6 = *(a1 + 24);
  v81 = *(a1 + 40);
  v7 = v81;
  v82 = v6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel();
  v95 = v9;
  v156 = v7;
  v157 = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v10 = swift_getWitnessTable();
  *&v146 = &type metadata for SliderStyleConfiguration.MinimumValueLabel;
  *(&v146 + 1) = v8;
  v83 = v10;
  v84 = v8;
  *&v147 = v9;
  *(&v147 + 1) = v10;
  v11 = v10;
  type metadata accessor for StaticSourceWriter();
  v89 = type metadata accessor for ModifiedContent();
  v100 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v69 - v12;
  v97 = lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel();
  *&v146 = &type metadata for SliderStyleConfiguration.MaximumValueLabel;
  *(&v146 + 1) = v8;
  *&v147 = v97;
  *(&v147 + 1) = v11;
  type metadata accessor for StaticSourceWriter();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v98 = v13;
  v99 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v69 - v17;
  v105 = v2;
  v18 = *v2;
  v19 = v2[1];
  v20 = v2[2];
  v21 = v2[3];
  v22 = v2[4];
  v73 = v2[5];
  v74 = v22;
  v23 = *(v2 + 48);
  v24 = v2[7];
  v69 = v2[8];
  v25 = v2[9];
  v27 = v2[11];
  v26 = v2[12];
  v71 = v2[10];
  v70 = *(v2 + *(a1 + 88));
  v28 = v2 + *(a1 + 96);
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v72 = v23;
  LOBYTE(v146) = v23;
  *&v184 = v18;
  *(&v184 + 1) = v19;
  *&v185 = v20;
  *(&v185 + 1) = v21;
  *&v186 = v22;
  *(&v186 + 1) = v73;
  LOBYTE(v187) = v23;
  *(&v187 + 1) = v24;
  v78 = v24;
  v79 = v27;
  *&v188 = v69;
  *(&v188 + 1) = v25;
  *&v189 = v71;
  *(&v189 + 1) = v26;
  v80 = v26;
  *&v190 = v27;
  BYTE8(v190) = v70;
  *&v191 = v30;
  *(&v191 + 1) = v29;
  *&v192 = v31;
  *(&v192 + 1) = v32;

  if (v30)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  v76 = v34;
  v77 = v33;
  *&v160 = v18;
  *(&v160 + 1) = v19;
  if (v30)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  v75 = v35;
  v161 = v20;
  v162 = v21;
  v163 = v74;
  v164 = v73;
  v165 = v72;
  v166 = v24;
  v36 = v69;
  v167 = v69;
  v168 = v25;
  v169 = v71;
  v170 = v26;
  v171 = v27;
  v172 = v70;
  v173 = v30;
  v174 = v29;
  v175 = v31;
  v176 = v32;
  v37 = swift_allocObject();
  v38 = v191;
  v37[7] = v190;
  v37[8] = v38;
  v37[9] = v192;
  v39 = v187;
  v37[3] = v186;
  v37[4] = v39;
  v40 = v189;
  v37[5] = v188;
  v37[6] = v40;
  v41 = v185;
  v37[1] = v184;
  v37[2] = v41;
  v42 = swift_allocObject();
  v43 = v191;
  v42[7] = v190;
  v42[8] = v43;
  v42[9] = v192;
  v44 = v187;
  v42[3] = v186;
  v42[4] = v44;
  v45 = v189;
  v42[5] = v188;
  v42[6] = v45;
  v46 = v185;
  v42[1] = v184;
  v42[2] = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v30;
  *(v47 + 24) = v29;
  *(v47 + 32) = v31;
  *(v47 + 40) = v32;
  v48 = v191;
  *(v47 + 144) = v190;
  *(v47 + 160) = v48;
  *(v47 + 176) = v192;
  v49 = v187;
  *(v47 + 80) = v186;
  *(v47 + 96) = v49;
  v50 = v189;
  *(v47 + 112) = v188;
  *(v47 + 128) = v50;
  v51 = v185;
  *(v47 + 48) = v184;
  *(v47 + 64) = v51;
  *&v128 = v30;
  *(&v128 + 1) = v77;
  *&v129 = v76;
  *(&v129 + 1) = v75;
  LOBYTE(v130) = 1;
  *(&v130 + 1) = partial apply for closure #2 in AccessibilitySliderModifier.init(_:value:);
  *&v131 = v37;
  *(&v131 + 1) = partial apply for closure #3 in AccessibilitySliderModifier.init(_:value:);
  *&v132 = v42;
  *(&v132 + 1) = partial apply for closure #4 in AccessibilitySliderModifier.init(_:value:);
  *&v133 = v47;
  *(&v133 + 1) = v78;
  v134 = v36;
  v183 = v36;
  v181 = v132;
  v182 = v133;
  v177 = v128;
  v178 = v129;
  v180 = v131;
  v179 = v130;
  outlined init with copy of SliderStyleConfiguration(&v184, &v146);
  outlined init with copy of SliderStyleConfiguration(&v184, &v146);
  outlined init with copy of SliderStyleConfiguration(&v184, &v146);
  outlined copy of AccessibilityBoundedNumber?(v30, v29, v31, v32);
  outlined init with copy of SliderStyleConfiguration(&v184, &v146);
  outlined copy of AccessibilityBoundedNumber?(v30, v29, v31, v32);

  outlined copy of AccessibilityBoundedNumber?(v30, v29, v31, v32);

  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128, &v146, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration, type metadata accessor for AccessibilityAdjustableModifier.Configuration);
  specialized AccessibilityAdjustableModifier.body(content:)(&v160, &v146);
  outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128);
  outlined destroy of SliderStyleConfiguration(&v184);
  outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128);
  v141 = v152;
  v142 = v153;
  v143 = v154;
  v144 = v155;
  v137 = v148;
  v138 = v149;
  v139 = v150;
  v140 = v151;
  v135 = v146;
  v136 = v147;
  v145[6] = v152;
  v145[7] = v153;
  v145[8] = v154;
  v145[9] = v155;
  v145[1] = v147;
  v145[2] = v148;
  v145[3] = v149;
  v145[4] = v150;
  v145[5] = v151;
  v145[0] = v146;
  outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(&v135, &v118);
  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v145);
  v124 = v141;
  v125 = v142;
  v126 = v143;
  v127 = v144;
  v120 = v137;
  v121 = v138;
  v122 = v139;
  v123 = v140;
  v118 = v135;
  v119 = v136;
  *&v52 = v104;
  *(&v52 + 1) = v82;
  *&v53 = v103;
  *(&v53 + 1) = v81;
  v103 = v53;
  v104 = v52;
  v110[1] = v52;
  v110[2] = v53;
  v54 = v105;
  v111 = v105;
  v55 = lazy protocol witness table accessor for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v56 = v85;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.Label, partial apply for closure #1 in Slider.body.getter, v110, v91, &type metadata for SliderStyleConfiguration.Label, v94, v55);
  v152 = v124;
  v153 = v125;
  v154 = v126;
  v155 = v127;
  v148 = v120;
  v149 = v121;
  v150 = v122;
  v151 = v123;
  v146 = v118;
  v147 = v119;
  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(&v146);
  v108[1] = v104;
  v108[2] = v103;
  v109 = v54;
  v116 = v55;
  v117 = &protocol witness table for StaticSourceWriter<A, B>;
  v57 = v88;
  v58 = swift_getWitnessTable();
  v59 = v86;
  v60 = v84;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.MinimumValueLabel, partial apply for closure #2 in Slider.body.getter, v108, v57, &type metadata for SliderStyleConfiguration.MinimumValueLabel, v84, v58);
  (*(v101 + 8))(v56, v57);
  v106[1] = v104;
  v106[2] = v103;
  v107 = v105;
  v114 = v58;
  v115 = &protocol witness table for StaticSourceWriter<A, B>;
  v61 = v89;
  v62 = swift_getWitnessTable();
  v63 = v87;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.MaximumValueLabel, partial apply for closure #3 in Slider.body.getter, v106, v61, &type metadata for SliderStyleConfiguration.MaximumValueLabel, v60, v62);
  outlined destroy of SliderStyleConfiguration(&v184);
  (*(v100 + 8))(v59, v61);
  v112 = v62;
  v113 = &protocol witness table for StaticSourceWriter<A, B>;
  v64 = v98;
  v65 = swift_getWitnessTable();
  v66 = v93;
  static ViewBuilder.buildExpression<A>(_:)(v63, v64, v65);
  v67 = *(v99 + 8);
  v67(v63, v64);
  static ViewBuilder.buildExpression<A>(_:)(v66, v64, v65);
  return (v67)(v66, v64);
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

uint64_t closure #1 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[0] = a1;
  v24[1] = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v24[7] = a5;
  type metadata accessor for Slider();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a4, v17, v18);
  v19 = type metadata accessor for AccessibilityLabelModifier();
  WitnessTable = swift_getWitnessTable();
  v24[2] = a4;
  v24[3] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v21 = swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(v21, a2, v19, a4, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, v21);
  v22 = *(v11 + 8);
  v22(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t closure #2 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[0] = a1;
  v24[1] = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v24[7] = a5;
  type metadata accessor for Slider();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a5, v17, v18);
  v19 = type metadata accessor for AccessibilityLabelModifier();
  WitnessTable = swift_getWitnessTable();
  v24[2] = a5;
  v24[3] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v21 = swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(v21, a3, v19, a5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, v21);
  v22 = *(v11 + 8);
  v22(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t closure #3 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[0] = a1;
  v24[1] = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v24[7] = a5;
  type metadata accessor for Slider();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a5, v17, v18);
  v19 = type metadata accessor for AccessibilityLabelModifier();
  WitnessTable = swift_getWitnessTable();
  v24[2] = a5;
  v24[3] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v21 = swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(v21, a3, v19, a5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, v21);
  v22 = *(v11 + 8);
  v22(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t Slider.init<A>(value:in:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73 = a8;
  v74 = a7;
  v64 = a5;
  v76 = a3;
  v77 = a4;
  v79 = a2;
  v60 = a1;
  v75 = a9;
  v69 = a6;
  v70 = a16;
  v62 = a11;
  v71 = a10;
  v72 = a13;
  v68 = a14;
  v66 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v53 - v22;
  v23 = type metadata accessor for ClosedRange();
  v24 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v53 - v25;
  v54 = &v53 - v25;
  v27 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v53 - v28;
  v55 = &v53 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v53 - v32;
  v57 = &v53 - v32;
  v34 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v53 - v36;
  v58 = &v53 - v36;
  v59 = type metadata accessor for Binding();
  v61 = *(v59 - 8);
  v38 = MEMORY[0x1EEE9AC00](v59);
  v40 = &v53 - v39;
  (*(v41 + 16))(&v53 - v39, a1, v38);
  v42 = *(v34 + 16);
  v56 = v23;
  v42(v37, v79, v23);
  (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1, AssociatedTypeWitness);
  (*(*(a12 - 8) + 56))(v29, 1, 1, a12);
  (*(v34 + 56))(v26, 1, 1, v23);
  v43 = *(v78 + 16);
  v44 = v63;
  v45 = v64;
  v46 = v62;
  v43(v63, v64, v62);
  v47 = v65;
  v48 = v69;
  v49 = (v43)(v65, v69, v46);
  v50 = v67;
  v74(v49);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v40, v58, v57, v55, v54, v76, v77, v44, v75, v47, 1u, v50, 0, 0, v71, v46, a12, v72, v68, v66, v70);
  v51 = *(v78 + 8);
  v51(v48, v46);
  v51(v45, v46);
  (*(v34 + 8))(v79, v56);
  return (*(v61 + 8))(v60, v59);
}

uint64_t Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, void *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v74 = a8;
  v73 = a7;
  v72 = a6;
  v77 = a5;
  v76 = a4;
  v80 = a3;
  v91 = a1;
  v75 = a9;
  v90 = a14;
  v88 = a15;
  v89 = a17;
  v83 = a16;
  v71 = a10;
  v87 = a11;
  v85 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v60 - v23;
  v24 = type metadata accessor for ClosedRange();
  v25 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v86 = &v60 - v26;
  v27 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v66 = &v60 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v81 = &v60 - v30;
  v78 = v24;
  v79 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v84 = &v60 - v32;
  v33 = type metadata accessor for Binding();
  v64 = v33;
  v65 = *(v33 - 8);
  v34 = v65;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v60 - v35;
  v61 = &v60 - v35;
  v37 = type metadata accessor for StrideThrough();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v60 - v39;
  v63 = a2;
  v41 = v80;
  stride<A>(from:through:by:)();
  v92 = v87;
  v93 = v85;
  v94 = a13;
  v95 = v90;
  v96 = v88;
  v97 = v83;
  v98 = v89;
  type metadata accessor for SliderTick();
  swift_getWitnessTable();
  v62 = Sequence.compactMap<A>(_:)();
  (*(v38 + 8))(v40, v37);
  (*(v34 + 16))(v36, v91, v33);
  v42 = v79;
  v43 = v78;
  (*(v79 + 16))(v84, a2, v78);
  v44 = *(AssociatedTypeWitness - 8);
  v45 = v81;
  v46 = v41;
  v47 = AssociatedTypeWitness;
  (*(v44 + 16))(v81, v46);
  (*(v44 + 56))(v45, 0, 1, v47);
  v60 = a13;
  v48 = v66;
  (*(*(a13 - 8) + 56))(v66, 1, 1, a13);
  (*(v42 + 56))(v86, 1, 1, v43);
  v49 = v67;
  v50 = *(v67 + 16);
  v51 = v68;
  v52 = v72;
  v53 = v85;
  v50(v68, v72, v85);
  v54 = v69;
  v55 = v73;
  v56 = (v50)(v69, v73, v53);
  v57 = v70;
  v74(v56);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v61, v84, v81, v48, v86, v76, v77, v51, v75, v54, 1u, v57, 0, v62, v87, v53, v60, v90, v88, v83, v89);
  v58 = *(v49 + 8);
  v58(v55, v53);
  v58(v52, v53);
  (*(v44 + 8))(v80, AssociatedTypeWitness);
  (*(v79 + 8))(v63, v78);
  return (*(v65 + 8))(v91, v64);
}

uint64_t Slider<>.init<A>(value:in:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a5;
  v48 = a7;
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = a1;
  v49 = a9;
  v45 = a12;
  v46 = a6;
  v43 = a11;
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClosedRange();
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v40 - v23;
  v40 = &v40 - v23;
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v40 - v27;
  v41 = type metadata accessor for Binding();
  v29 = *(v41 - 8);
  v30 = MEMORY[0x1EEE9AC00](v41);
  v32 = &v40 - v31;
  (*(v29 + 16))(&v40 - v31, v53, v30);
  (*(v25 + 16))(v28, v52, v14);
  (*(*(AssociatedTypeWitness - 8) + 56))(v24, 1, 1, AssociatedTypeWitness);
  v33 = v20;
  (*(*(a8 - 8) + 56))(v20, 1, 1, a8);
  v34 = v17;
  v35 = (*(v25 + 56))(v17, 1, 1, v14);
  v36 = v42;
  v47(v35);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v32, v28, v40, v33, v34, v50, v51, v37, v49, v39, 0, v36, 0, 0, v48, MEMORY[0x1E6981E70], a8, v44, MEMORY[0x1E6981E60], v43, v45);
  (*(v25 + 8))(v52, v14);
  return (*(v29 + 8))(v53, v41);
}

uint64_t Slider<>.init<A>(value:in:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v59 = a7;
  v60 = a6;
  v62 = a4;
  v63 = a5;
  v66 = a2;
  v67 = a1;
  v61 = a9;
  v69 = a8;
  v70 = a11;
  v68 = a13;
  v65 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClosedRange();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = &v47 - v17;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v56 = &v47 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v47 - v21;
  v47 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v53 = &v47 - v23;
  v24 = type metadata accessor for Binding();
  v51 = v24;
  v52 = *(v24 - 8);
  v25 = v52;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - v26;
  v49 = &v47 - v26;
  v28 = type metadata accessor for StrideThrough();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v47 - v30;
  v32 = v66;
  v48 = a3;
  stride<A>(from:through:by:)();
  v71 = v69;
  v72 = a10;
  v73 = v70;
  v74 = v65;
  v75 = v68;
  type metadata accessor for SliderTick();
  swift_getWitnessTable();
  v50 = Sequence.compactMap<A>(_:)();
  (*(v29 + 8))(v31, v28);
  (*(v25 + 16))(v27, v67, v24);
  v33 = v54;
  v34 = v53;
  v35 = v47;
  (*(v54 + 16))(v53, v32, v47);
  v36 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = v64;
  (*(v37 + 16))(v64, a3, AssociatedTypeWitness);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = v56;
  (*(*(a10 - 8) + 56))(v56, 1, 1, a10);
  v40 = v33;
  v41 = v57;
  v42 = (*(v33 + 56))(v57, 1, 1, v35);
  v43 = v58;
  v60(v42);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v49, v34, v64, v39, v41, v62, v63, v44, v61, v46, 0, v43, 0, v50, v69, MEMORY[0x1E6981E70], a10, v70, MEMORY[0x1E6981E60], v65, v68);
  (*(v37 + 8))(v48, v36);
  (*(v40 + 8))(v66, v35);
  return (*(v52 + 8))(v67, v51);
}

__n128 Slider<>.init<A>(value:in:onEditingChanged:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v41 = a6;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v11 = type metadata accessor for ClosedRange();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v37 - v13;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = &v37 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v37 = &v37 - v18;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v38 = type metadata accessor for Binding();
  v24 = *(v38 - 8);
  v25 = MEMORY[0x1EEE9AC00](v38);
  v27 = &v37 - v26;
  (*(v24 + 16))(&v37 - v26, v45, v25);
  (*(v20 + 16))(v23, a2, v11);
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
  v28 = v39;
  (*(*(a5 - 8) + 56))(v39, 1, 1, a5);
  v29 = v40;
  (*(v20 + 56))(v40, 1, 1, v11);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v27, v23, v37, v28, v29, v43, v44, v30, v46, v35, 0, v36, 0, 0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a5, MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], v41, v42);
  (*(v20 + 8))(a2, v11);
  (*(v24 + 8))(v45, v38);
  v31 = v46[7];
  *(a8 + 96) = v46[6];
  *(a8 + 112) = v31;
  *(a8 + 128) = v46[8];
  v32 = v46[3];
  *(a8 + 32) = v46[2];
  *(a8 + 48) = v32;
  v33 = v46[5];
  *(a8 + 64) = v46[4];
  *(a8 + 80) = v33;
  result = v46[1];
  *a8 = v46[0];
  *(a8 + 16) = result;
  return result;
}

__n128 Slider<>.init<A>(value:in:step:onEditingChanged:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v42 = a7;
  v45 = a5;
  v44 = a4;
  v47 = a3;
  v48 = a2;
  v46 = a1;
  v11 = type metadata accessor for ClosedRange();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = &v38 - v13;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v38 = &v38 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v38 - v19;
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v39 = &v38 - v23;
  v40 = type metadata accessor for Binding();
  v25 = *(v40 - 8);
  v26 = MEMORY[0x1EEE9AC00](v40);
  v28 = &v38 - v27;
  (*(v25 + 16))(&v38 - v27, v46, v26);
  (*(v21 + 16))(v24, v48, v11);
  v29 = *(AssociatedTypeWitness - 8);
  (*(v29 + 16))(v20, v47, AssociatedTypeWitness);
  (*(v29 + 56))(v20, 0, 1, AssociatedTypeWitness);
  (*(*(a6 - 8) + 56))(v16, 1, 1, a6);
  v30 = v41;
  (*(v21 + 56))(v41, 1, 1, v11);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v28, v39, v20, v38, v30, v44, v45, v31, v49, v36, 0, v37, 0, 0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a6, MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], v42, v43);
  (*(v29 + 8))(v47, AssociatedTypeWitness);
  (*(v21 + 8))(v48, v11);
  (*(v25 + 8))(v46, v40);
  v32 = v49[7];
  *(a9 + 96) = v49[6];
  *(a9 + 112) = v32;
  *(a9 + 128) = v49[8];
  v33 = v49[3];
  *(a9 + 32) = v49[2];
  *(a9 + 48) = v33;
  v34 = v49[5];
  *(a9 + 64) = v49[4];
  *(a9 + 80) = v34;
  result = v49[1];
  *a9 = v49[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t Normalizing.get(base:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t Normalizing.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v69 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v68 = v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v64 = v53 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v60 = v53 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v62 = v53 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v65 = v53 - v31;
  v32 = *(*(v8 - 8) + 8);
  v66 = v8;
  v67 = a1;
  v32(a1, v8, v30);
  v33 = a3;
  v34 = *(a3 + 56);
  v61 = v11;
  v35 = *(v11 + 16);
  v36 = v3;
  v35(v15, v3 + v34, v10);
  v70 = v16;
  v37 = *(v16 + 48);
  if (v37(v15, 1, AssociatedTypeWitness) == 1)
  {
    v38 = v15;
    v39 = v70;
  }

  else
  {
    v53[0] = *(v70 + 32);
    (v53[0])(v62, v15, AssociatedTypeWitness);
    v40 = *(v33 + 60);
    v53[1] = v36;
    v38 = v59;
    v35(v59, v36 + v40, v10);
    if (v37(v38, 1, AssociatedTypeWitness) != 1)
    {
      (v53[0])(v60, v38, AssociatedTypeWitness);
      v44 = v70;
      (*(v70 + 16))(v54, v63, AssociatedTypeWitness);
      v45 = v55;
      dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
      v63 = *(swift_getAssociatedConformanceWitness() + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v43 = *(v44 + 8);
      v43(v45, AssociatedTypeWitness);
      v46 = v56;
      v47 = v57;
      v48 = v58;
      (*(v57 + 104))(v56, *MEMORY[0x1E69E7038], v58);
      v49 = v64;
      v50 = v68;
      dispatch thunk of FloatingPoint.rounded(_:)();
      (*(v47 + 8))(v46, v48);
      v43(v50, AssociatedTypeWitness);
      v42 = v65;
      v51 = v62;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v43(v49, AssociatedTypeWitness);
      v43(v60, AssociatedTypeWitness);
      v43(v51, AssociatedTypeWitness);
      goto LABEL_7;
    }

    v39 = v70;
    (*(v70 + 8))(v62, AssociatedTypeWitness);
  }

  (*(v61 + 8))(v38, v10);
  (*(v39 + 16))(v68, v63, AssociatedTypeWitness);
  v41 = v64;
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  swift_getAssociatedConformanceWitness();
  v42 = v65;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v43 = *(v39 + 8);
  v43(v41, AssociatedTypeWitness);
LABEL_7:
  dispatch thunk of Strideable.advanced(by:)();
  return (v43)(v42, AssociatedTypeWitness);
}

uint64_t static Normalizing.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v44 - v12;
  v53 = v13;
  v14 = type metadata accessor for Optional();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v50 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = v56;
  v23 = type metadata accessor for Normalizing();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = a5;
  v47 = v23;
  v24 = *(v23 + 56);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v54 + 16);
  v48 = a1;
  v26(v22, a1 + v24, v14);
  v56 = a2;
  v26(&v22[v25], a2 + v24, v14);
  v27 = *(v55 + 48);
  v28 = v53;
  if (v27(v22, 1, v53) != 1)
  {
    v26(v18, v22, v14);
    if (v27(&v22[v25], 1, v28) != 1)
    {
      v45 = v27;
      (*(v55 + 32))(v51, &v22[v25], v28);
      swift_getAssociatedConformanceWitness();
      LODWORD(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v55 + 8);
      v30(v51, v28);
      v30(v18, v28);
      v29 = *(v54 + 8);
      v29(v22, v14);
      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    (*(v55 + 8))(v18, v28);
LABEL_8:
    (*(v52 + 8))(v22, TupleTypeMetadata2);
    goto LABEL_16;
  }

  if (v27(&v22[v25], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  v45 = v27;
  v29 = *(v54 + 8);
  v29(v22, v14);
LABEL_10:
  v44 = v29;
  v31 = *(v47 + 60);
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = v50;
  v26(v50, v48 + v31, v14);
  v26(&v33[v32], v56 + v31, v14);
  v34 = v45;
  if (v45(v33, 1, v28) == 1)
  {
    if (v34(&v33[v32], 1, v28) == 1)
    {
      v44(v33, v14);
      swift_getAssociatedConformanceWitness();
LABEL_19:
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }

    goto LABEL_15;
  }

  v35 = v49;
  v26(v49, v33, v14);
  if (v34(&v33[v32], 1, v28) == 1)
  {
    (*(v55 + 8))(v35, v28);
LABEL_15:
    (*(v52 + 8))(v33, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v38 = v33;
  v39 = v55;
  v40 = v51;
  (*(v55 + 32))(v51, &v38[v32], v28);
  swift_getAssociatedConformanceWitness();
  v41 = v35;
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v39 + 8);
  v43(v40, v28);
  v43(v41, v28);
  v44(v38, v14);
  if (v42)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t Normalizing.hash(into:)()
{
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  Optional<A>.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Normalizing.hashValue.getter()
{
  Hasher.init(_seed:)();
  Normalizing.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Normalizing<A>()
{
  Hasher.init(_seed:)();
  Normalizing.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  SliderTick.init(_:)(v7, a2, a3);
  v9 = type metadata accessor for SliderTick();
  return (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
}

uint64_t closure #1 in Slider<>.init<A>(value:in:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  SliderTick.init(_:)(v7, a2, a3);
  v9 = type metadata accessor for SliderTick();
  return (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
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
      type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
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

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[5 * i + 8];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 5);
          v16 = *v13;
          *(v13 + 3) = *(v13 - 1);
          *(v13 + 5) = v16;
          v13[7] = v13[2];
          *(v13 - 1) = v14;
          *v13 = v15;
          *(v13 + 2) = v11;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
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
      type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

void specialized AccessibilityAdjustableModifier.body(content:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = v2[5];
  v31 = v2[4];
  v32 = v6;
  v33 = *(v2 + 12);
  v7 = v2[1];
  v27 = *v2;
  v28 = v7;
  v8 = v2[3];
  v29 = v2[2];
  v30 = v8;
  v9 = v5 & 1;
  v34[0] = v27;
  v34[1] = v7;
  v35 = v33;
  v34[2] = v29;
  v34[3] = v8;
  v34[4] = v31;
  v34[5] = v6;
  v10 = swift_allocObject();
  v11 = v2[5];
  *(v10 + 80) = v2[4];
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v2 + 12);
  v12 = v2[1];
  *(v10 + 16) = *v2;
  *(v10 + 32) = v12;
  v13 = v2[3];
  *(v10 + 48) = v2[2];
  *(v10 + 64) = v13;
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  v15 = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>();
  *(v14 + 56) = v16;
  *(v14 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v17 = swift_allocObject();
  *(v14 + 32) = v17;
  *(v17 + 16) = v9;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 2;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  *(v17 + 96) = partial apply for specialized closure #1 in AccessibilityAdjustableModifier.body(content:);
  *(v17 + 104) = v10;
  *(v17 + 112) = v15;
  *(v14 + 72) = 0;
  v24[0] = v14;
  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(v34, __src, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>, type metadata accessor for AccessibilityAdjustableModifier);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(v26, v24);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v26);
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0x128uLL);
  v19 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v19;
  *(a2 + 128) = a1[8];
  v20 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v20;
  v21 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v21;
  v22 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v22;
  *(a2 + 144) = v18;
  *(a2 + 152) = 0;
  outlined init with copy of ResolvedSliderStyle(a1, __src);

  v23[2] = a2;
  v23[3] = &v27;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI24AccessibilitySliderValueV_s5NeverOytTB5(partial apply for specialized closure #2 in AccessibilityAdjustableModifier.body(content:), v23, v27, *(&v27 + 1), v28, *(&v28 + 1));
}

uint64_t specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(void *a1, void *a2, void *a3, void *a4, _OWORD *a5, uint64_t a6)
{
  v12 = a5[7];
  v38[6] = a5[6];
  v38[7] = v12;
  v13 = a5[9];
  v38[8] = a5[8];
  v39 = v13;
  v14 = a5[3];
  v38[2] = a5[2];
  v38[3] = v14;
  v15 = a5[5];
  v38[4] = a5[4];
  v38[5] = v15;
  v16 = a5[1];
  v38[0] = *a5;
  v38[1] = v16;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v38, v51);
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  AccessibilityValueStorage.init<A>(_:description:)();
  v40 = v39;
  v21 = v39;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v51, &v41);
  outlined init with copy of AccessibilityAttachmentModifier(&v40, v37);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v21 + 80, &v41);
  outlined destroy of AccessibilityValueStorage?(v21 + 80);
  outlined init with copy of AccessibilityValueStorage(&v41, v21 + 80);
  outlined destroy of AccessibilityValueStorage(&v41);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v51);
  outlined destroy of AccessibilityAttachmentModifier(&v40);
  v22 = swift_allocObject();
  v23 = *(a6 + 80);
  *(v22 + 80) = *(a6 + 64);
  *(v22 + 96) = v23;
  *(v22 + 112) = *(a6 + 96);
  v24 = *(a6 + 16);
  *(v22 + 16) = *a6;
  *(v22 + 32) = v24;
  v25 = *(a6 + 48);
  *(v22 + 48) = *(a6 + 32);
  *(v22 + 64) = v25;
  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(a6, v51, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>, type metadata accessor for AccessibilityAdjustableModifier);
  specialized ModifiedContent<>.accessibilitySetValueAction(_:)(partial apply for specialized closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:), v22, &v41);

  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v38);
  v26 = a5[7];
  v51[6] = a5[6];
  v51[7] = v26;
  v27 = a5[9];
  v51[8] = a5[8];
  v51[9] = v27;
  v28 = a5[3];
  v51[2] = a5[2];
  v51[3] = v28;
  v29 = a5[5];
  v51[4] = a5[4];
  v51[5] = v29;
  v30 = a5[1];
  v51[0] = *a5;
  v51[1] = v30;
  v31 = v48;
  a5[6] = v47;
  a5[7] = v31;
  v32 = v50;
  a5[8] = v49;
  a5[9] = v32;
  v33 = v44;
  a5[2] = v43;
  a5[3] = v33;
  v34 = v46;
  a5[4] = v45;
  a5[5] = v34;
  v35 = v42;
  *a5 = v41;
  a5[1] = v35;
  return outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v51);
}

id outlined copy of AccessibilityBoundedNumber?(id result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v5 = result;
    v6 = a4;
    v7 = v5;
    v8 = a2;

    return a3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue()
{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1)
{
  type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(0, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration, type metadata accessor for AccessibilityAdjustableModifier.Configuration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for Slider()
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

uint64_t *initializeBufferWithCopyOfBuffer for Slider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a3 + 16;
  v4 = *(a3 + 16);
  v5 = *(v6 + 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v9 + v8;
  v11 = *(v4 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64) + 7;
  v14 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v14 != 0 || ((v13 + ((v12 + v9 + ((v9 + v8 + ((v8 + 104) & ~v8)) & ~v8) + 1) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v18 = v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16));
  }

  else
  {
    v56 = ~v8;
    v57 = v13;
    v58 = a1;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    v20 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
    v25 = ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v21 + 39) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26[1];
    *v25 = *v26;
    v25[1] = v27;
    v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = *v33;
    v33 += 15;
    *v32 = v34;
    v35 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = (v33 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v35++ = *(v33 & 0xFFFFFFFFFFFFFFF8);
    v53 = *(v7 + 16);
    v54 = v9;
    v55 = v4;

    v53(v35, v36, v5);
    v37 = (v35 + v10) & v56;
    v38 = (v10 + v36) & v56;
    v53(v37, v38, v5);
    *(v37 + v54) = *(v38 + v54);
    v39 = (v37 + v54 + v12 + 1) & ~v12;
    v40 = (v38 + v54 + v12 + 1) & ~v12;
    (*(v11 + 16))(v39, v40, v55);
    v41 = (v57 + v39) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v57 + v40) & 0xFFFFFFFFFFFFFFF8;
    v43 = *v42;
    if (*v42 < 0xFFFFFFFFuLL)
    {
      v51 = *(v42 + 16);
      *v41 = *v42;
      *(v41 + 16) = v51;
    }

    else
    {
      *v41 = v43;
      v44 = *(v42 + 8);
      *(v41 + 8) = v44;
      v45 = *(v42 + 16);
      *(v41 + 16) = v45;
      v46 = *(v42 + 24);
      *(v41 + 24) = v46;
      v47 = v43;
      v48 = v44;
      v49 = v45;
      v50 = v46;
    }

    return v58;
  }

  return v18;
}

void destroy for Slider(uint64_t a1, uint64_t a2)
{

  v4 = (((((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = *(v6 + 80);
  v10 = (v4 + v9 + 8) & ~v9;
  v7(v10, v5);
  v11 = *(v8 + 56);
  v12 = (v11 + v9 + v10) & ~v9;
  v7(v12, v5);
  v13 = *(*(a2 + 16) - 8);
  v14 = v13 + 8;
  v15 = (v11 + *(v13 + 80) + v12 + 1) & ~*(v13 + 80);
  (*(v13 + 8))(v15);
  v16 = (*(v14 + 56) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 >= 0xFFFFFFFFuLL)
  {

    v17 = *(v16 + 24);
  }
}

void *initializeWithCopy for Slider(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  v4 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 16) = *(v7 + 16);
  *v6 = v8;
  v9 = ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v4 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(*(v20 - 8) + 16);
  v22 = *(v20 - 8) + 16;
  v23 = *(*(v20 - 8) + 80);
  v24 = (v18 + v23 + 8) & ~v23;
  v25 = (v19 + v23 + 8) & ~v23;

  v21(v24, v25, v20);
  v26 = *(v22 + 48);
  v27 = (v26 + v23 + v24) & ~v23;
  v28 = (v26 + v23 + v25) & ~v23;
  v21(v27, v28, v20);
  *(v27 + v26) = *(v28 + v26);
  v29 = *(*(a3 + 16) - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = (v31 + 1 + v27 + v26) & ~v31;
  v33 = (v31 + 1 + v28 + v26) & ~v31;
  (*(v29 + 16))(v32, v33);
  v34 = *(v30 + 48) + 7;
  v35 = (v34 + v32) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + v33) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    v45 = *(v36 + 16);
    *v35 = *v36;
    *(v35 + 16) = v45;
  }

  else
  {
    *v35 = v37;
    v38 = *(v36 + 8);
    *(v35 + 8) = v38;
    v39 = *(v36 + 16);
    *(v35 + 16) = v39;
    v40 = *(v36 + 24);
    *(v35 + 24) = v40;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v40;
  }

  return a1;
}

void *assignWithCopy for Slider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  v11 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v17 += 15;
  *v16 = v18;
  v16 += 15;
  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v20 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;

  v20 &= 0xFFFFFFFFFFFFFFF8;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  v21 = *(a3 + 24);
  v22 = *(v21 - 8);
  v23 = *(v22 + 24);
  v24 = v22 + 24;
  v25 = *(v22 + 80);
  v26 = (v25 + 8 + v20) & ~v25;
  v27 = (v25 + 8 + v19) & ~v25;
  v23(v26, v27, v21);
  v28 = *(v24 + 40);
  v29 = (v28 + v25 + v26) & ~v25;
  v30 = (v28 + v25 + v27) & ~v25;
  v23(v29, v30, v21);
  v31 = (v29 + v28);
  *v31 = *(v30 + v28);
  v32 = *(*(a3 + 16) - 8);
  v33 = v32 + 24;
  v34 = *(v32 + 80);
  v35 = &v31[v34 + 1] & ~v34;
  v36 = (v34 + 1 + v30 + v28) & ~v34;
  (*(v32 + 24))(v35, v36);
  v37 = *(v33 + 40) + 7;
  v38 = (v37 + v35) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + v36) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v38;
  v41 = *v39;
  if (*v38 < 0xFFFFFFFFuLL)
  {
    if (v41 >= 0xFFFFFFFF)
    {
      *v38 = v41;
      v52 = *(v39 + 8);
      *(v38 + 8) = v52;
      v53 = *(v39 + 16);
      *(v38 + 16) = v53;
      v54 = *(v39 + 24);
      *(v38 + 24) = v54;
      v55 = v41;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      return a1;
    }

LABEL_7:
    v59 = *(v39 + 16);
    *v38 = *v39;
    *(v38 + 16) = v59;
    return a1;
  }

  if (v41 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v38 = v41;
  v42 = v41;

  v43 = *(v38 + 8);
  v44 = *(v39 + 8);
  *(v38 + 8) = v44;
  v45 = v44;

  v46 = *(v38 + 16);
  v47 = *(v39 + 16);
  *(v38 + 16) = v47;
  v48 = v47;

  v49 = *(v38 + 24);
  v50 = *(v39 + 24);
  *(v38 + 24) = v50;
  v51 = v50;

  return a1;
}

uint64_t initializeWithTake for Slider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 16) = *(v8 + 16);
  *v7 = v9;
  v10 = ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 32);
  v23 = v21 + 32;
  v24 = *(v21 + 80);
  v25 = (v18 + v24 + 8) & ~v24;
  v26 = (v19 + v24 + 8) & ~v24;
  v22(v25, v26, v20);
  v27 = *(v23 + 32);
  v28 = (v27 + v24 + v25) & ~v24;
  v29 = (v27 + v24 + v26) & ~v24;
  v22(v28, v29, v20);
  v30 = (v28 + v27);
  *v30 = *(v29 + v27);
  v31 = *(*(a3 + 16) - 8);
  v32 = v31 + 32;
  v33 = *(v31 + 80);
  v34 = &v30[v33 + 1] & ~v33;
  v35 = (v33 + 1 + v29 + v27) & ~v33;
  (*(v31 + 32))(v34, v35);
  v36 = *(v32 + 32) + 7;
  v37 = ((v36 + v34) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + v35) & 0xFFFFFFFFFFFFFFF8);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;
  return a1;
}

void *assignWithTake for Slider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 15;
  v9 = *v7;
  v7 += 39;
  *v6 = v9;
  v10 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *v8;
  *(v10 + 16) = *(v8 + 16);
  *v10 = v11;
  v12 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = (v7 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v12 = *(v7 & 0xFFFFFFFFFFFFFFF8);

  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *(v13 & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v16 += 15;
  *v15 = v17;
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v18 = *(v16 & 0xFFFFFFFFFFFFFFF8);

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  *v20 = *(v19 & 0xFFFFFFFFFFFFFFF8);

  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v23 + 40;
  v26 = *(v23 + 80);
  v27 = (v20 + v26 + 8) & ~v26;
  v28 = (v26 + 8 + v21) & ~v26;
  v24(v27, v28, v22);
  v29 = *(v25 + 24);
  v30 = (v29 + v26 + v27) & ~v26;
  v31 = (v29 + v26 + v28) & ~v26;
  v24(v30, v31, v22);
  v32 = (v30 + v29);
  *v32 = *(v31 + v29);
  v33 = *(*(a3 + 16) - 8);
  v34 = v33 + 40;
  v35 = *(v33 + 80);
  v36 = &v32[v35 + 1] & ~v35;
  v37 = (v35 + 1 + v31 + v29) & ~v35;
  (*(v33 + 40))(v36, v37);
  v38 = *(v34 + 24) + 7;
  v39 = (v38 + v36) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v38 + v37) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v39;
  if (*v39 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*v40 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v45 = *(v40 + 16);
    *v39 = *v40;
    *(v39 + 16) = v45;
    return a1;
  }

  *v39 = *v40;

  v42 = *(v39 + 8);
  *(v39 + 8) = *(v40 + 8);

  v43 = *(v39 + 16);
  *(v39 + 16) = *(v40 + 16);

  v44 = *(v39 + 24);
  *(v39 + 24) = *(v40 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Slider(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 + v9;
  v15 = v10 + v11 + 1;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((*(*(v6 - 8) + 64) + ((v15 + ((v14 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = a2 - v13;
  v18 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v21 || (v22 = *(a1 + v16)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v27 = (((((((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v27);
      }

      else
      {
        return (*(v7 + 48))((v15 + ((v14 + v27) & ~v9)) & ~v11, v8, v6);
      }
    }

    else
    {
      v26 = *(a1 + 1);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  v24 = v22 - 1;
  if (v18)
  {
    v24 = 0;
    v25 = *a1;
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v24) + 1;
}

void *storeEnumTagSinglePayload for Slider(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11 + 1;
  v15 = ((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = a3 - v13;
    if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(result + v15) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v15) = 0;
      }

      else if (v19)
      {
        *(result + v15) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v24 = (((((((((((((result + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
          if (v6 == v13)
          {
            v25 = *(v5 + 56);

            return v25(v24);
          }

          else
          {
            v26 = *(v8 + 56);
            v27 = (v14 + ((v10 + v9 + v24) & ~v9)) & ~v11;

            return v26(v27);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result[1] = 0;
          result[2] = 0;
          *result = a2 & 0x7FFFFFFF;
        }

        else
        {
          result[1] = a2 - 1;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v22 = ~v13 + a2;
    v23 = result;
    bzero(result, v15);
    result = v23;
    *v23 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(result + v15) = v21;
    }

    else
    {
      *(result + v15) = v21;
    }
  }

  else if (v19)
  {
    *(result + v15) = v21;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for closure #4 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = v4[4];
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[9];
  v11 = a3(0, v7, v8);
  return a4(v10, v11, v9);
}

void outlined consume of AccessibilityBoundedNumber?(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t outlined consume of SliderMark<Double>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return outlined consume of Text?(result, a2, a3, a4);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SliderTick<Double>(255, a3, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v87 = (v7 + 16);
    v88 = *(v7 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v7 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v89), (*a3 + 40 * *v91), *a3 + 40 * v92, v96);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 32);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 32);
      v13 = v8 + 2;
      v14 = (v11 + 112);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6 - 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v10);
            v22 = *(v28 + v10 + 32);
            v23 = (v28 + v18);
            v24 = *v21;
            v25 = v21[1];
            v26 = *(v23 + 4);
            v27 = v23[1];
            *v21 = *v23;
            v21[1] = v27;
            *(v21 + 4) = v26;
            *v23 = v24;
            v23[1] = v25;
            *(v23 + 4) = v22;
          }

          ++v20;
          v18 -= 40;
          v10 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v41;
    v42 = v7 + 32;
    v43 = (v7 + 32 + 16 * v40);
    *v43 = v8;
    v43[1] = v6;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 32);
          v46 = *(v7 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v7 + 16 * v41);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v42 + 16 * v44);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v7 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v42 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v42 + 16 * (v44 - 1));
        v83 = *v82;
        v84 = (v42 + 16 * v44);
        v85 = v84[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v85, v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v44 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v7 + 16);
        if (v44 >= v86)
        {
          goto LABEL_101;
        }

        v41 = v86 - 1;
        result = memmove((v42 + 16 * v44), v84 + 2, 16 * (v86 - 1 - v44));
        *(v7 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v42 + 16 * v41;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v7 + 16 * v41);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v42 + 16 * v44);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v94;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 8;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 32);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 8);
    v36 = *(v34 + 24);
    v37 = *(v34 - 16);
    *(v34 + 8) = *(v34 - 32);
    *(v34 + 24) = v37;
    *(v34 + 40) = *v34;
    *(v34 - 32) = v35;
    *(v34 - 16) = v36;
    *v34 = v32;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v78 = (v8 + 16);
    v79 = *(v8 + 16);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = (v8 + 16 * v79);
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 > v16;
        ++v14;
        v16 = v17;
        if ((((v10 <= v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 > v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 > v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v33;
    v34 = v8 + 32;
    v35 = (v8 + 32 + 16 * v5);
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 32);
          v37 = *(v8 + 40);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = (v8 + 16 * v33);
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = (v34 + 16 * v5);
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = (v8 + 16 * v33);
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = (v34 + 16 * v5);
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = (v34 + 16 * (v5 - 1));
        v74 = *v73;
        v75 = (v34 + 16 * v5);
        v76 = v75[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = *(v8 + 16);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove((v34 + 16 * v5), v75 + 2, 16 * (v77 - 1 - v5));
        *(v8 + 16) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = v34 + 16 * v33;
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = (v8 + 16 * v33);
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = (v34 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 > *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 > v17;
        ++v16;
        v17 = v18;
        if ((((v10 <= v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 > v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 > v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 > *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v93 = (v7 + 16);
    v94 = *(v7 + 16);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = (v7 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 56 * *v95), (*a3 + 56 * *v97), *a3 + 56 * v98, v102);
        if (v4)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6);
      v10 = (*a3 + 56 * v8);
      v13 = *v10;
      v12 = v10 + 14;
      v11 = v13;
      v14 = v8 + 2;
      v15 = v9;
      while (v5 != v14)
      {
        v16 = *v12;
        v12 += 7;
        v17 = (v9 < v11) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v14 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 56 * v6 - 56;
        v19 = 56 * v8 + 40;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = *(v31 + v19 - 40);
            v24 = v31 + v18;
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v29 = *(v24 + 16);
            v28 = *(v24 + 32);
            v30 = *(v24 + 48);
            *(v22 - 40) = *v24;
            *(v22 + 1) = v30;
            *(v22 - 8) = v28;
            *(v22 - 24) = v29;
            *v24 = v23;
            *(v24 + 8) = v25;
            *(v24 + 24) = v26;
            *(v24 + 40) = v27;
          }

          ++v21;
          v18 -= 56;
          v19 += 56;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 16);
    v45 = *(v7 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v47;
    v48 = v7 + 32;
    v49 = (v7 + 32 + 16 * v46);
    *v49 = v8;
    v49[1] = v6;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 32);
          v52 = *(v7 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = (v7 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = (v48 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = (v7 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = (v48 + 16 * v50);
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = (v48 + 16 * (v50 - 1));
        v89 = *v88;
        v90 = (v48 + 16 * v50);
        v91 = v90[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 56 * *v88), (*a3 + 56 * *v90), *a3 + 56 * v91, v102);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *(v7 + 16);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove((v48 + 16 * v50), v90 + 2, 16 * (v92 - 1 - v50));
        *(v7 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = v48 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = (v7 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = (v48 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v100;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v6 - 56;
  v34 = v8 - v6;
LABEL_30:
  v35 = *(v32 + 56 * v6);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = v37 + 56;
    if (v35 >= *v37)
    {
LABEL_29:
      ++v6;
      v33 += 56;
      --v34;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v39 = *(v37 + 64);
    v40 = *(v37 + 80);
    v41 = *(v37 + 96);
    v42 = *(v37 + 16);
    *v38 = *v37;
    *(v37 + 72) = v42;
    *(v37 + 88) = *(v37 + 32);
    v43 = *(v37 + 48);
    *v37 = v35;
    *(v37 + 8) = v39;
    *(v37 + 24) = v40;
    *(v37 + 40) = v41;
    v37 -= 56;
    *(v38 + 48) = v43;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v119 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_126:
      v129 = v10;
      v114 = *(v10 + 2);
      if (v114 >= 2)
      {
        while (*a3)
        {
          v115 = *&v10[16 * v114];
          v116 = *&v10[16 * v114 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v115 << 6)), (*a3 + (*&v10[16 * v114 + 16] << 6)), (*a3 + (v116 << 6)), v5);
          if (v6)
          {
          }

          if (v116 < v115)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v114 - 2 >= *(v10 + 2))
          {
            goto LABEL_150;
          }

          v117 = &v10[16 * v114];
          *v117 = v115;
          *(v117 + 1) = v116;
          v129 = v10;
          result = specialized Array.remove(at:)(v114 - 1);
          v10 = v129;
          v114 = *(v129 + 2);
          if (v114 <= 1)
          {
          }
        }

        goto LABEL_160;
      }
    }

LABEL_156:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
    goto LABEL_126;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_34;
    }

    v12 = *a3;
    v13 = (*a3 + (v9 << 6));
    v14 = v13[1];
    v126 = *v13;
    v127 = v14;
    v128[0] = v13[2];
    *(v128 + 9) = *(v13 + 41);
    v5 = v12 + (v11 << 6);
    v15 = *(v5 + 16);
    v124[0] = *v5;
    v124[1] = v15;
    v125[0] = *(v5 + 32);
    *(v125 + 9) = *(v5 + 41);
    result = GeneralItem.order(to:)(v124);
    if (result)
    {
      v16 = result == 1 && v126 < *&v124[0];
    }

    else
    {
      v16 = 1;
    }

    v17 = v11 + 2;
    if (v11 + 2 < v8)
    {
      v9 = v8 - 1;
      v18 = (v5 + 96);
      v19 = (v5 + 96);
      while (1)
      {
        v20 = v18[5];
        v21 = v19[8];
        v19 += 8;
        v22 = v21;
        v23 = *(v18 - 3);
        if (v20 == v23)
        {
          v24 = v22 < *v18;
          if (v22 == *v18 && (v25 = v18[9], v26 = v18[1], v24 = v25 < v26, v25 == v26) && (v27 = v18[10], v28 = v18[2], v24 = v27 < v28, v27 == v28))
          {
            v29 = *(v18 + 88);
            v30 = *(v18 + 24);
            if (v29 == v30)
            {
              if (v16 == *(v18 + 4) >= *(v18 - 4))
              {
                v9 = v17 - 1;
                break;
              }

              goto LABEL_13;
            }

            if (v29 < v30)
            {
LABEL_25:
              if (!v16)
              {
                goto LABEL_33;
              }

              goto LABEL_13;
            }
          }

          else if (v24)
          {
            goto LABEL_25;
          }
        }

        else if (v23 < v20)
        {
          goto LABEL_25;
        }

        if (v16)
        {
          v31 = v17 - 1;
          if (v17 < v11)
          {
            goto LABEL_153;
          }

LABEL_32:
          if (v11 <= v31)
          {
            v59 = (v17 << 6) - 64;
            v60 = v11 << 6;
            v61 = v17;
            v62 = v11;
            do
            {
              if (v62 != --v61)
              {
                v66 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v67 = (v66 + v60);
                v68 = (v66 + v59);
                v120 = *v67;
                v121 = v67[1];
                *v123 = v67[2];
                *&v123[9] = *(v67 + 41);
                if (v60 != v59 || v67 >= v68 + 4)
                {
                  v63 = *v68;
                  v64 = v68[1];
                  v65 = v68[3];
                  v67[2] = v68[2];
                  v67[3] = v65;
                  *v67 = v63;
                  v67[1] = v64;
                }

                *v68 = v120;
                v68[1] = v121;
                v68[2] = *v123;
                *(v68 + 41) = *&v123[9];
              }

              ++v62;
              v59 -= 64;
              v60 += 64;
            }

            while (v62 < v61);
          }

LABEL_33:
          v9 = v17;
          goto LABEL_34;
        }

LABEL_13:
        ++v17;
        v18 = v19;
        if (v8 == v17)
        {
          v17 = v8;
          break;
        }
      }
    }

    v31 = v9;
    v9 = v17;
    if (v16)
    {
      if (v17 < v11)
      {
        goto LABEL_153;
      }

      goto LABEL_32;
    }

LABEL_34:
    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_152;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_71:
    if (v9 < v11)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v69 = *(v10 + 3);
    v70 = v5 + 1;
    if (v5 >= v69 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v70;
    v71 = &v10[16 * v5];
    *(v71 + 4) = v11;
    *(v71 + 5) = v9;
    v72 = *v119;
    if (!*v119)
    {
      goto LABEL_161;
    }

    if (v5)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v10 + 4);
          v75 = *(v10 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_91:
          if (v77)
          {
            goto LABEL_140;
          }

          v90 = &v10[16 * v70];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_143;
          }

          v96 = &v10[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_147;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

        v100 = &v10[16 * v70];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_105:
        if (v95)
        {
          goto LABEL_142;
        }

        v103 = &v10[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_145;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_112:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v112 = *&v10[16 * v111 + 32];
        v5 = *&v10[16 * v73 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v112 << 6)), (*a3 + (*&v10[16 * v73 + 32] << 6)), (*a3 + (v5 << 6)), v72);
        if (v6)
        {
        }

        if (v5 < v112)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v111 >= *(v10 + 2))
        {
          goto LABEL_137;
        }

        v113 = &v10[16 * v111];
        *(v113 + 4) = v112;
        *(v113 + 5) = v5;
        v129 = v10;
        result = specialized Array.remove(at:)(v73);
        v10 = v129;
        v70 = *(v129 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v10[16 * v70 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_138;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_139;
      }

      v85 = &v10[16 * v70];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_141;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_144;
      }

      if (v89 >= v81)
      {
        v107 = &v10[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_148;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_112;
      }

      goto LABEL_91;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_124;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_154;
  }

  if (v11 + a4 < v32)
  {
    v32 = v11 + a4;
  }

  if (v32 < v11)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v9 == v32)
  {
    goto LABEL_71;
  }

  v33 = *a3;
  v34 = *a3 + (v9 << 6) + 56;
  v35 = v11 - v9;
LABEL_44:
  v36 = v35;
  v37 = v34;
  v38 = v34;
  while (1)
  {
    v39 = v37 - 56;
    v40 = *(v37 - 7);
    v41 = *(v37 - 6);
    v42 = v37 - 120;
    v43 = *(v37 - 15);
    v44 = *(v37 - 14);
    v45 = *(v38 - 64);
    v38 -= 64;
    result = v45;
    if (v41 == v44)
    {
      v46 = *(v37 - 3);
      v47 = *(v37 - 11);
      v48 = v46 < v47;
      if (v46 == v47 && (v49 = *(v37 - 2), v50 = *(v37 - 10), v48 = v49 < v50, v49 == v50) && (v51 = *(v37 - 1), v52 = *(v37 - 9), v48 = v51 < v52, v51 == v52))
      {
        v53 = *v37;
        if (v53 != result)
        {
          if (v53 < result)
          {
            goto LABEL_55;
          }

LABEL_43:
          ++v9;
          v34 += 64;
          --v35;
          if (v9 == v32)
          {
            v9 = v32;
            goto LABEL_71;
          }

          goto LABEL_44;
        }

        if (v40 >= v43)
        {
          goto LABEL_43;
        }
      }

      else if (!v48)
      {
        goto LABEL_43;
      }
    }

    else if (v44 >= v41)
    {
      goto LABEL_43;
    }

LABEL_55:
    if (!v33)
    {
      break;
    }

    v54 = *(v39 + 1);
    *v122 = *(v39 + 2);
    *&v122[9] = *(v39 + 41);
    v55 = *v39;
    v56 = *(v42 + 1);
    *v39 = *v42;
    *(v39 + 1) = v56;
    v57 = *(v42 + 3);
    *(v39 + 2) = *(v42 + 2);
    *(v39 + 3) = v57;
    *(v42 + 41) = *&v122[9];
    *(v42 + 1) = v54;
    *(v42 + 2) = *v122;
    v37 = v38;
    *v42 = v55;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v4 = *v101;
    if (!*v101)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = v102;
    if ((result & 1) == 0)
    {
LABEL_123:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (1)
      {
        v96 = *v5;
        if (!*v5)
        {
          goto LABEL_127;
        }

        v5 = (v95 - 1);
        v97 = *&v8[16 * v95];
        v98 = *&v8[16 * v95 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v96 + 16 * v97), (v96 + 16 * *&v8[16 * v95 + 16]), (v96 + 16 * v98), v4);
        if (v28)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v95 - 2 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v99 = &v8[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        result = specialized Array.remove(at:)(v95 - 1);
        v95 = *(v8 + 2);
        v5 = a3;
        if (v95 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v10 >= v6)
    {
      v27 = v10;
      v28 = v102;
    }

    else
    {
      v11 = *v5;
      v12 = *(*v5 + 16 * v10);
      v5 = (16 * v9);
      v13 = (v11 + 16 * v9);
      v15 = *v13;
      v14 = v13 + 4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = v9;
      [v12 frame];
      v17 = v16;
      [v15 frame];
      v19 = v18;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v20 = (v9 + 2);
      while (v6 != v20)
      {
        v4 = v17 < v19;
        v21 = *v14;
        v22 = *(v14 - 2);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v21 frame];
        v24 = v23;
        [v22 frame];
        v26 = v25;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v20;
        v14 += 2;
        if (v17 < v19 == v24 >= v26)
        {
          v27 = (v20 - 1);
          goto LABEL_11;
        }
      }

      v27 = v6;
LABEL_11:
      v28 = v102;
      if (v17 < v19)
      {
        if (v27 < v9)
        {
          goto LABEL_120;
        }

        if (v9 < v27)
        {
          v29 = 16 * v27 - 16;
          v30 = v27;
          v31 = v9;
          do
          {
            if (v31 != --v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v32 = *(v5 + v33);
              *(v5 + v33) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            ++v31;
            v29 -= 16;
            v5 += 2;
          }

          while (v31 < v30);
        }
      }

      v5 = a3;
    }

    v34 = v5[1];
    if (v27 < v34)
    {
      if (__OFSUB__(v27, v9))
      {
        goto LABEL_119;
      }

      if (v27 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v9 + a4 >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = (v9 + a4);
        }

        if (v35 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v27 != v35)
        {
          break;
        }
      }
    }

    v36 = v27;
    if (v27 < v9)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v36;
    v41 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    v105 = v36;
    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_50:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_64:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_71:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v5)
        {
          goto LABEL_125;
        }

        v81 = *&v8[16 * v80 + 32];
        v4 = *&v8[16 * v42 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 16 * v81), (*v5 + 16 * *&v8[16 * v42 + 32]), (*v5 + 16 * v4), v41);
        if (v28)
        {
        }

        if (v4 < v81)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_104;
        }

        v82 = &v8[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v4;
        result = specialized Array.remove(at:)(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v102 = v28;
    v6 = v5[1];
    v7 = v105;
    if (v105 >= v6)
    {
      goto LABEL_91;
    }
  }

  v103 = v28;
  v4 = *v5;
  v83 = *v5 + 16 * v27 - 16;
  v84 = (v9 - v27);
  v106 = v35;
LABEL_82:
  v107 = v27;
  v85 = *(v4 + 16 * v27);
  v86 = v84;
  v87 = v83;
  while (1)
  {
    v88 = *v87;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    [v85 frame];
    v90 = v89;
    [v88 frame];
    v92 = v91;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v90 >= v92)
    {
LABEL_81:
      v36 = v106;
      v27 = v107 + 1;
      v83 += 16;
      --v84;
      if (v107 + 1 != v106)
      {
        goto LABEL_82;
      }

      v28 = v103;
      v5 = a3;
      if (v106 < v9)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v4)
    {
      break;
    }

    v93 = *(v87 + 16);
    *(v87 + 16) = *v87;
    *v87 = v93;
    v87 -= 16;
    v85 = v93;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

{
  v93 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_188:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_226;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_220:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v6 = result;
    }

    v127 = v6;
    v86 = *(v6 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v6[16 * v86];
        v88 = *&v6[16 * v86 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 168 * v87), (*a3 + 168 * *&v6[16 * v86 + 16]), (*a3 + 168 * v88), v5);
        if (v101)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_213;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        }

        if (v86 - 2 >= *(v6 + 2))
        {
          goto LABEL_214;
        }

        v89 = &v6[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        v127 = v6;
        result = specialized Array.remove(at:)(v86 - 1);
        v6 = v127;
        v86 = *(v127 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_224;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v7 = v5;
  if (v5 + 1 >= v4)
  {
    v4 = v5 + 1;
  }

  else
  {
    v8 = *a3;
    outlined init with copy of NavigationRequest(*a3 + 168 * (v5 + 1), &v116);
    v9 = 168 * v5;
    v10 = v8 + 168 * v5;
    outlined init with copy of NavigationRequest(v10, v115);
    v98 = NavigationRequest.Action.equivalenceClass.getter();
    v96 = NavigationRequest.Action.equivalenceClass.getter();
    outlined destroy of NavigationRequest(v115);
    result = outlined destroy of NavigationRequest(&v116);
    v91 = v5;
    v11 = v5 + 2;
    v12 = v10 + 336;
    while (2)
    {
      if (v4 != v11)
      {
        outlined init with copy of NavigationRequest(v12, &v116);
        outlined init with copy of NavigationRequest(v12 - 168, v115);
        outlined init with copy of NavigationRequest.Action(&v116, &v102);
        v5 = 25;
        switch(v114)
        {
          case 0:
            outlined destroy of NavigationRequest.Action(&v102);
            v5 = 5;
            goto LABEL_33;
          case 1:
          case 4:
            outlined destroy of NavigationRequest.Action(&v102);
            v5 = 20;
            goto LABEL_33;
          case 2:
            _s2os6LoggerVSgWOhTm_2(&v102, type metadata accessor for Binding<AnyListSelection>);
            v5 = 20;
            goto LABEL_33;
          case 3:
          case 5:
            outlined destroy of NavigationRequest.Action(&v102);
            v5 = 15;
            goto LABEL_33;
          case 6:
            outlined destroy of NavigationRequest.Action(&v102);
            goto LABEL_25;
          case 7:
LABEL_25:
            v5 = 30;
            goto LABEL_33;
          case 8:
            goto LABEL_33;
          case 9:
            v5 = 60;
            goto LABEL_33;
          case 10:
          case 17:

            outlined destroy of AnyNavigationLinkPresentedValue(&v102);
            v5 = 40;
            goto LABEL_33;
          case 13:

            outlined destroy of NavigationLinkSelectionIdentifier(&v103);
            v5 = 40;
            goto LABEL_33;
          case 14:

            outlined destroy of NavigationLinkSelectionIdentifier(&v103);
            goto LABEL_27;
          case 18:

            outlined destroy of NavigationLinkSelectionIdentifier(&v104);
            v5 = 50;
            goto LABEL_33;
          case 19:
            outlined destroy of NavigationRequest.Action(&v102);
            v5 = 50;
            goto LABEL_33;
          case 20:
            goto LABEL_31;
          case 21:
            outlined destroy of NavigationRequest.Action(&v102);
LABEL_27:
            v5 = 80;
            goto LABEL_33;
          case 22:
            if (v107 | v102 | v108 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103)
            {
              v15 = v108 | v107 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103;
              if (v102 != 1 || v15)
              {
                if (v102 != 4 || v15)
                {
LABEL_32:
                  outlined destroy of NavigationRequest.Action(&v102);
                  v5 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
LABEL_31:
                  v5 = 70;
                }
              }

              else
              {
                v5 = 6;
              }
            }

            else
            {
              v5 = 0;
            }

LABEL_33:
            v16 = v4;
            outlined init with copy of NavigationRequest.Action(v115, &v102);
            v13 = 25;
            switch(v114)
            {
              case 0:
                outlined destroy of NavigationRequest.Action(&v102);
                v13 = 5;
                goto LABEL_7;
              case 1:
              case 4:
                outlined destroy of NavigationRequest.Action(&v102);
                goto LABEL_41;
              case 2:
                _s2os6LoggerVSgWOhTm_2(&v102, type metadata accessor for Binding<AnyListSelection>);
LABEL_41:
                v13 = 20;
                goto LABEL_7;
              case 3:
              case 5:
                outlined destroy of NavigationRequest.Action(&v102);
                v13 = 15;
                goto LABEL_7;
              case 6:
                outlined destroy of NavigationRequest.Action(&v102);
                goto LABEL_49;
              case 7:
LABEL_49:
                v13 = 30;
                goto LABEL_7;
              case 8:
                goto LABEL_7;
              case 9:
                v13 = 60;
                goto LABEL_7;
              case 10:
              case 17:

                outlined destroy of AnyNavigationLinkPresentedValue(&v102);
                v13 = 40;
                goto LABEL_7;
              case 13:

                outlined destroy of NavigationLinkSelectionIdentifier(&v103);
                v13 = 40;
                goto LABEL_7;
              case 14:

                outlined destroy of NavigationLinkSelectionIdentifier(&v103);
                goto LABEL_51;
              case 18:

                outlined destroy of NavigationLinkSelectionIdentifier(&v104);
                v13 = 50;
                goto LABEL_7;
              case 19:
                outlined destroy of NavigationRequest.Action(&v102);
                v13 = 50;
                goto LABEL_7;
              case 20:
                goto LABEL_55;
              case 21:
                outlined destroy of NavigationRequest.Action(&v102);
LABEL_51:
                v13 = 80;
                goto LABEL_7;
              case 22:
                if (v107 | v102 | v108 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103)
                {
                  v17 = v108 | v107 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103;
                  if (v102 != 1 || v17)
                  {
                    if (v102 != 4 || v17)
                    {
LABEL_56:
                      outlined destroy of NavigationRequest.Action(&v102);
                      v13 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
LABEL_55:
                      v13 = 70;
                    }
                  }

                  else
                  {
                    v13 = 6;
                  }
                }

                else
                {
                  v13 = 0;
                }

LABEL_7:
                outlined destroy of NavigationRequest(v115);
                result = outlined destroy of NavigationRequest(&v116);
                v14 = v5 >= v13;
                ++v11;
                v12 += 168;
                v4 = v16;
                if (((v98 < v96) ^ v14))
                {
                  continue;
                }

                v4 = v11 - 1;
                break;
              default:
                goto LABEL_56;
            }

            break;
          default:
            goto LABEL_32;
        }
      }

      break;
    }

    if (v98 < v96)
    {
      v18 = v91;
      if (v4 < v91)
      {
        goto LABEL_217;
      }

      if (v91 >= v4)
      {
        v7 = v91;
        goto LABEL_70;
      }

      v19 = 168 * v4 - 168;
      v5 = v4;
      do
      {
        if (v18 != --v5)
        {
          v21 = *a3;
          if (!*a3)
          {
            goto LABEL_223;
          }

          v20 = v21 + v19;
          v123 = *(v21 + v9 + 112);
          v124 = *(v21 + v9 + 128);
          v125 = *(v21 + v9 + 144);
          v126 = *(v21 + v9 + 160);
          v119 = *(v21 + v9 + 48);
          v120 = *(v21 + v9 + 64);
          v121 = *(v21 + v9 + 80);
          v122 = *(v21 + v9 + 96);
          v116 = *(v21 + v9);
          v117 = *(v21 + v9 + 16);
          v118 = *(v21 + v9 + 32);
          result = memmove((v21 + v9), (v21 + v19), 0xA8uLL);
          *(v20 + 112) = v123;
          *(v20 + 128) = v124;
          *(v20 + 144) = v125;
          *(v20 + 160) = v126;
          *(v20 + 48) = v119;
          *(v20 + 64) = v120;
          *(v20 + 80) = v121;
          *(v20 + 96) = v122;
          *v20 = v116;
          *(v20 + 16) = v117;
          *(v20 + 32) = v118;
        }

        ++v18;
        v19 -= 168;
        v9 += 168;
      }

      while (v18 < v5);
    }

    v7 = v91;
  }

LABEL_70:
  v22 = a3[1];
  if (v4 >= v22)
  {
    goto LABEL_79;
  }

  if (__OFSUB__(v4, v7))
  {
    goto LABEL_216;
  }

  if (v4 - v7 >= a4)
  {
    goto LABEL_79;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_218;
  }

  if (v7 + a4 >= v22)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v7 + a4;
  }

  if (v5 < v7)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  if (v4 == v5)
  {
LABEL_79:
    v5 = v4;
    if (v4 < v7)
    {
      goto LABEL_215;
    }

    goto LABEL_80;
  }

  v70 = v7;
  v71 = *a3;
  v72 = *a3 + 168 * v4;
  v92 = v70;
  v73 = v70 - v4;
  v94 = v5;
LABEL_131:
  v97 = v72;
  v99 = v4;
  v95 = v73;
  v74 = v72;
  while (2)
  {
    outlined init with copy of NavigationRequest(v74, &v116);
    v75 = (v74 - 168);
    outlined init with copy of NavigationRequest(v74 - 168, v115);
    outlined init with copy of NavigationRequest.Action(&v116, &v102);
    v76 = 25;
    switch(v114)
    {
      case 0:
        outlined destroy of NavigationRequest.Action(&v102);
        v76 = 5;
        break;
      case 1:
      case 4:
        outlined destroy of NavigationRequest.Action(&v102);
        v76 = 20;
        break;
      case 2:
        _s2os6LoggerVSgWOhTm_2(&v102, type metadata accessor for Binding<AnyListSelection>);
        v76 = 20;
        break;
      case 3:
      case 5:
        outlined destroy of NavigationRequest.Action(&v102);
        v76 = 15;
        break;
      case 6:
        outlined destroy of NavigationRequest.Action(&v102);
        goto LABEL_148;
      case 7:
LABEL_148:
        v76 = 30;
        break;
      case 8:
        break;
      case 9:
        v76 = 60;
        break;
      case 10:
      case 17:

        outlined destroy of AnyNavigationLinkPresentedValue(&v102);
        v76 = 40;
        break;
      case 13:

        outlined destroy of NavigationLinkSelectionIdentifier(&v103);
        v76 = 40;
        break;
      case 14:

        outlined destroy of NavigationLinkSelectionIdentifier(&v103);
        goto LABEL_150;
      case 18:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        v76 = 50;
        break;
      case 19:
        outlined destroy of NavigationRequest.Action(&v102);
        v76 = 50;
        break;
      case 20:
        goto LABEL_154;
      case 21:
        outlined destroy of NavigationRequest.Action(&v102);
LABEL_150:
        v76 = 80;
        break;
      case 22:
        if (v107 | v102 | v108 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103)
        {
          v77 = v108 | v107 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103;
          if (v102 != 1 || v77)
          {
            if (v102 != 4 || v77)
            {
LABEL_155:
              outlined destroy of NavigationRequest.Action(&v102);
              v76 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
LABEL_154:
              v76 = 70;
            }
          }

          else
          {
            v76 = 6;
          }
        }

        else
        {
          v76 = 0;
        }

        break;
      default:
        goto LABEL_155;
    }

    outlined init with copy of NavigationRequest.Action(v115, &v102);
    v78 = 25;
    switch(v114)
    {
      case 0:
        outlined destroy of NavigationRequest.Action(&v102);
        v78 = 5;
        goto LABEL_180;
      case 1:
      case 4:
        outlined destroy of NavigationRequest.Action(&v102);
        v78 = 20;
        goto LABEL_180;
      case 2:
        _s2os6LoggerVSgWOhTm_2(&v102, type metadata accessor for Binding<AnyListSelection>);
        v78 = 20;
        goto LABEL_180;
      case 3:
      case 5:
        outlined destroy of NavigationRequest.Action(&v102);
        v78 = 15;
        goto LABEL_180;
      case 6:
        outlined destroy of NavigationRequest.Action(&v102);
        goto LABEL_172;
      case 7:
LABEL_172:
        v78 = 30;
        goto LABEL_180;
      case 8:
        goto LABEL_180;
      case 9:
        v78 = 60;
        goto LABEL_180;
      case 10:
      case 17:

        outlined destroy of AnyNavigationLinkPresentedValue(&v102);
        v78 = 40;
        goto LABEL_180;
      case 13:

        outlined destroy of NavigationLinkSelectionIdentifier(&v103);
        v78 = 40;
        goto LABEL_180;
      case 14:

        outlined destroy of NavigationLinkSelectionIdentifier(&v103);
        goto LABEL_174;
      case 18:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        v78 = 50;
        goto LABEL_180;
      case 19:
        outlined destroy of NavigationRequest.Action(&v102);
        v78 = 50;
        goto LABEL_180;
      case 20:
        goto LABEL_178;
      case 21:
        outlined destroy of NavigationRequest.Action(&v102);
LABEL_174:
        v78 = 80;
        goto LABEL_180;
      case 22:
        if (v107 | v102 | v108 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103)
        {
          v79 = v108 | v107 | v113 | v112 | v111 | v110 | v109 | v106 | v105 | v104 | v103;
          if (v102 != 1 || v79)
          {
            if (v102 != 4 || v79)
            {
LABEL_179:
              outlined destroy of NavigationRequest.Action(&v102);
              v78 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
LABEL_178:
              v78 = 70;
            }
          }

          else
          {
            v78 = 6;
          }
        }

        else
        {
          v78 = 0;
        }

LABEL_180:
        outlined destroy of NavigationRequest(v115);
        result = outlined destroy of NavigationRequest(&v116);
        if (v76 >= v78)
        {
          goto LABEL_130;
        }

        if (v71)
        {
          v123 = *(v74 + 112);
          v124 = *(v74 + 128);
          v125 = *(v74 + 144);
          v126 = *(v74 + 160);
          v119 = *(v74 + 48);
          v120 = *(v74 + 64);
          v121 = *(v74 + 80);
          v122 = *(v74 + 96);
          v116 = *v74;
          v117 = *(v74 + 16);
          v118 = *(v74 + 32);
          v80 = *(v74 - 24);
          *(v74 + 128) = *(v74 - 40);
          *(v74 + 144) = v80;
          *(v74 + 160) = *(v74 - 8);
          v81 = *(v74 - 88);
          *(v74 + 64) = *(v74 - 104);
          *(v74 + 80) = v81;
          v82 = *(v74 - 56);
          *(v74 + 96) = *(v74 - 72);
          *(v74 + 112) = v82;
          v83 = *(v74 - 152);
          *v74 = *v75;
          *(v74 + 16) = v83;
          v84 = *(v74 - 120);
          *(v74 + 32) = *(v74 - 136);
          *(v74 + 48) = v84;
          *(v74 - 56) = v123;
          *(v74 - 40) = v124;
          *(v74 - 24) = v125;
          *(v74 - 8) = v126;
          *(v74 - 120) = v119;
          *(v74 - 104) = v120;
          *(v74 - 88) = v121;
          *(v74 - 72) = v122;
          *v75 = v116;
          *(v74 - 152) = v117;
          *(v74 - 136) = v118;
          v74 -= 168;
          if (!__CFADD__(v73++, 1))
          {
            continue;
          }

LABEL_130:
          v4 = v99 + 1;
          v72 = v97 + 168;
          v5 = v94;
          v73 = v95 - 1;
          if (v99 + 1 != v94)
          {
            goto LABEL_131;
          }

          v7 = v92;
          if (v94 < v92)
          {
            goto LABEL_215;
          }

LABEL_80:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            v6 = result;
          }

          v24 = *(v6 + 2);
          v23 = *(v6 + 3);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v6);
            v6 = result;
          }

          *(v6 + 2) = v25;
          v26 = &v6[16 * v24];
          *(v26 + 4) = v7;
          *(v26 + 5) = v5;
          v27 = *v93;
          if (!*v93)
          {
            goto LABEL_225;
          }

          if (v24)
          {
            while (1)
            {
              v28 = v25 - 1;
              if (v25 >= 4)
              {
                break;
              }

              if (v25 == 3)
              {
                v29 = *(v6 + 4);
                v30 = *(v6 + 5);
                v39 = __OFSUB__(v30, v29);
                v31 = v30 - v29;
                v32 = v39;
LABEL_99:
                if (v32)
                {
                  goto LABEL_204;
                }

                v45 = &v6[16 * v25];
                v47 = *v45;
                v46 = *(v45 + 1);
                v48 = __OFSUB__(v46, v47);
                v49 = v46 - v47;
                v50 = v48;
                if (v48)
                {
                  goto LABEL_207;
                }

                v51 = &v6[16 * v28 + 32];
                v53 = *v51;
                v52 = *(v51 + 1);
                v39 = __OFSUB__(v52, v53);
                v54 = v52 - v53;
                if (v39)
                {
                  goto LABEL_210;
                }

                if (__OFADD__(v49, v54))
                {
                  goto LABEL_211;
                }

                if (v49 + v54 >= v31)
                {
                  if (v31 < v54)
                  {
                    v28 = v25 - 2;
                  }

                  goto LABEL_120;
                }

                goto LABEL_113;
              }

              v55 = &v6[16 * v25];
              v57 = *v55;
              v56 = *(v55 + 1);
              v39 = __OFSUB__(v56, v57);
              v49 = v56 - v57;
              v50 = v39;
LABEL_113:
              if (v50)
              {
                goto LABEL_206;
              }

              v58 = &v6[16 * v28];
              v60 = *(v58 + 4);
              v59 = *(v58 + 5);
              v39 = __OFSUB__(v59, v60);
              v61 = v59 - v60;
              if (v39)
              {
                goto LABEL_209;
              }

              if (v61 < v49)
              {
                goto LABEL_3;
              }

LABEL_120:
              v66 = v28 - 1;
              if (v28 - 1 >= v25)
              {
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
                goto LABEL_219;
              }

              if (!*a3)
              {
                goto LABEL_222;
              }

              v67 = *&v6[16 * v66 + 32];
              v68 = *&v6[16 * v28 + 40];
              specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 168 * v67), (*a3 + 168 * *&v6[16 * v28 + 32]), (*a3 + 168 * v68), v27);
              if (v101)
              {
              }

              if (v68 < v67)
              {
                goto LABEL_200;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
              }

              if (v66 >= *(v6 + 2))
              {
                goto LABEL_201;
              }

              v69 = &v6[16 * v66];
              *(v69 + 4) = v67;
              *(v69 + 5) = v68;
              v127 = v6;
              result = specialized Array.remove(at:)(v28);
              v6 = v127;
              v25 = *(v127 + 2);
              if (v25 <= 1)
              {
                goto LABEL_3;
              }
            }

            v33 = &v6[16 * v25 + 32];
            v34 = *(v33 - 64);
            v35 = *(v33 - 56);
            v39 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            if (v39)
            {
              goto LABEL_202;
            }

            v38 = *(v33 - 48);
            v37 = *(v33 - 40);
            v39 = __OFSUB__(v37, v38);
            v31 = v37 - v38;
            v32 = v39;
            if (v39)
            {
              goto LABEL_203;
            }

            v40 = &v6[16 * v25];
            v42 = *v40;
            v41 = *(v40 + 1);
            v39 = __OFSUB__(v41, v42);
            v43 = v41 - v42;
            if (v39)
            {
              goto LABEL_205;
            }

            v39 = __OFADD__(v31, v43);
            v44 = v31 + v43;
            if (v39)
            {
              goto LABEL_208;
            }

            if (v44 >= v36)
            {
              v62 = &v6[16 * v28 + 32];
              v64 = *v62;
              v63 = *(v62 + 1);
              v39 = __OFSUB__(v63, v64);
              v65 = v63 - v64;
              if (v39)
              {
                goto LABEL_212;
              }

              if (v31 < v65)
              {
                v28 = v25 - 2;
              }

              goto LABEL_120;
            }

            goto LABEL_99;
          }

LABEL_3:
          v4 = a3[1];
          if (v5 >= v4)
          {
            goto LABEL_188;
          }

          goto LABEL_4;
        }

        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
        return result;
      default:
        goto LABEL_179;
    }
  }
}