uint64_t destroy for ConditionallyBorderedButton(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 89));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

void outlined copy of AnyIdentifiableShareConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a10 != 1)
  {
    a15(a2, a3, a4, a5, a6);
    a16(a7, a8, a9, a10);

    a16(a11, a12, a13, a14);
  }
}

uint64_t initializeWithCopy for SharingPickerHostModifier(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 112);
  v4 = *(a2 + 112);
  if (v4 != 1)
  {
    v10 = *(a2 + 72);
    if (v10 == 1)
    {
      v11 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v11;
      *(a1 + 96) = *(a2 + 96);
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      if (!v4)
      {
        goto LABEL_12;
      }

LABEL_9:
      v26 = *(a2 + 120);
      *(a1 + 112) = v4;
      *(a1 + 120) = v26;

      goto LABEL_13;
    }

    v14 = *(a2 + 8);
    *a1 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v14, v15, v16, v17, v18);
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    if (v10)
    {
      v19 = *(a2 + 48);
      v20 = *(a2 + 56);
      v21 = *(a2 + 64);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v21;
      *(a1 + 72) = v10;

      v22 = *(a2 + 104);
      if (v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v27 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v27;
      v22 = *(a2 + 104);
      if (v22)
      {
LABEL_8:
        v23 = *(a2 + 80);
        v24 = *(a2 + 88);
        v25 = *(a2 + 96);
        outlined copy of Text.Storage(v23, v24, v25);
        *(a1 + 80) = v23;
        *(a1 + 88) = v24;
        *(a1 + 96) = v25;
        *(a1 + 104) = v22;

        if (v4)
        {
          goto LABEL_9;
        }

LABEL_12:
        *(a1 + 112) = *v5;
        goto LABEL_13;
      }
    }

    v28 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v28;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
LABEL_13:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingPickerHostModifier.Model(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t getEnumTagSinglePayload for AnyIdentifiableShareConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

void destroy for PresentSharingPickerAction(uint64_t a1)
{

  v2 = *(a1 + 128);
  if (v2 != 1)
  {
    v3 = *(a1 + 88);
    if (v3 != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
      if (v3)
      {
        outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
      }

      if (*(a1 + 120))
      {
        outlined consume of Text.Storage(*(a1 + 96), *(a1 + 104), *(a1 + 112));
      }
    }

    if (v2)
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToConfiguration and conformance ToConfiguration()
{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsSharingPickerHost()
{
  lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>;
  if (!lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>)
  {
    type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>);
  }

  return result;
}

uint64_t outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.sharingPickerHost()(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v23);
  v19 = v23[4];
  v20 = v23[5];
  v21 = v23[6];
  v22 = v23[7];
  v15 = v23[0];
  v16 = v23[1];
  v17 = v23[2];
  v18 = v23[3];
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(&v32);
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined destroy of SharingPickerHostModifier.Model?(&v6, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v14 = 0;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  MEMORY[0x18D00A570](&v6, a1, v4, a2);
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v32 = v6;
  v33 = v7;
  return outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(&v32, type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
}

uint64_t outlined destroy of SharingPickerHostModifier.Model?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *SharingPickerHostModifier.body(content:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 112);
  v102 = *(v1 + 96);
  v103 = v4;
  v5 = *(v1 + 48);
  v98 = *(v1 + 32);
  v99 = v5;
  v7 = *(v1 + 48);
  v6 = *(v1 + 64);
  v8 = v6;
  v101 = *(v1 + 80);
  v100 = v6;
  v9 = *v1;
  v97 = *(v1 + 16);
  v96 = v9;
  v10 = *(v1 + 112);
  v61 = v102;
  v62 = v10;
  v57 = v98;
  v58 = v7;
  v60 = v3;
  v59 = v8;
  v104 = *(v1 + 128);
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for State<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v115 = v110;
  v116 = v111;
  v117 = v112;
  v118 = v113;
  v114[0] = v106;
  v114[1] = v107;
  v114[2] = v108;
  v114[3] = v109;
  v11 = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v114);
  v12 = *(&v115 + 1);
  lazy protocol witness table accessor for type ToBool and conformance ToBool();
  v36 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v37 = v105;

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(&v105, &lazy cache variable for type metadata for Binding<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v61 = v102;
  v62 = v103;
  *&v63 = v104;
  v57 = v98;
  v58 = v99;
  v60 = v101;
  v59 = v100;
  v56 = v97;
  v55 = v96;
  State.projectedValue.getter();
  v92 = v84;
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v88 = v80;
  v89 = v81;
  v90 = v82;
  v91 = v83;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(&v88) == 1)
  {
    v13 = 0;
    v14 = 0;
    v34 = 0u;
    v35 = xmmword_18CD633F0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    outlined init with copy of AnyIdentifiableShareConfiguration?(&v88, &v55);
    v33 = v89;
    v34 = v88;
    v31 = v91;
    v32 = v90;
    v30 = v93;
    v35 = v92;
    v14 = *(&v94 + 1);
    v13 = v94;
  }

  v16 = v11 != 1 && v12 != 1;
  lazy protocol witness table accessor for type ToConfiguration and conformance ToConfiguration();
  v17 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v18 = v79;

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(&v79, &lazy cache variable for type metadata for Binding<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  *&v43[0] = v18;
  *(&v43[0] + 1) = v17;
  v43[1] = v34;
  v43[2] = v33;
  v43[3] = v32;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  *&v44 = v13;
  *(&v44 + 1) = v14;
  v50 = v35;
  v51 = v30;
  v52 = v44;
  v45 = v43[0];
  v46 = v34;
  v47 = v33;
  v48 = v32;
  v49 = v31;
  _s7SwiftUI19SharingPickerSourceOWOi_(&v45);
  v19 = static Anchor.Source<A>.bounds.getter();
  v61 = v51;
  v62 = v52;
  v57 = v47;
  v58 = v48;
  v60 = v50;
  v59 = v49;
  v56 = v46;
  v55 = v45;
  *&v63 = v53;
  *(&v63 + 1) = v19;
  *v78 = v37;
  *&v78[8] = v36;
  v78[16] = v16;
  outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(v43, v40, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v77);
  v39[0] = v77[0];
  v20 = swift_allocObject();
  v21 = *(v2 + 112);
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(v2 + 128);
  v22 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v22;
  v23 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v23;
  v24 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v24;
  outlined init with copy of SharingPickerHostModifier(v2, v40);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  v54[6] = v61;
  v54[7] = v62;
  v54[8] = v63;
  v54[2] = v57;
  v54[3] = v58;
  v54[5] = v60;
  v54[4] = v59;
  v54[1] = v56;
  v54[0] = v55;
  outlined destroy of ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(v54);
  v65 = v40[10];
  v66 = v40[11];
  v67 = v41;
  v61 = v40[6];
  v62 = v40[7];
  v64 = v40[9];
  v63 = v40[8];
  v57 = v40[2];
  v58 = v40[3];
  v60 = v40[5];
  v59 = v40[4];
  v56 = v40[1];
  v55 = v40[0];
  KeyPath = swift_getKeyPath();
  *&v77[96] = v102;
  *&v77[112] = v103;
  *&v77[128] = v104;
  *&v77[32] = v98;
  *&v77[48] = v99;
  *&v77[80] = v101;
  *&v77[64] = v100;
  *&v77[16] = v97;
  *v77 = v96;
  State.projectedValue.getter();

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(v43, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
  v74 = *&v78[96];
  v75 = *&v78[112];
  v76 = *&v78[128];
  v70 = *&v78[32];
  v71 = *&v78[48];
  v73 = *&v78[80];
  v72 = *&v78[64];
  v69 = *&v78[16];
  v68 = *v78;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v68, v26, v27, v28);
  *&v78[88] = v73;
  *&v78[104] = v74;
  *&v78[120] = v75;
  *&v78[136] = v76;
  *&v78[24] = v69;
  *&v78[40] = v70;
  *&v78[56] = v71;
  *&v78[72] = v72;
  *&v78[8] = v68;
  *&v77[88] = v73;
  *&v77[104] = v74;
  *&v77[120] = v75;
  *&v77[136] = v76;
  *&v77[24] = v69;
  *&v77[40] = v70;
  *&v77[56] = v71;
  *v77 = KeyPath;
  *&v77[72] = v72;
  *&v77[8] = v68;
  __src[10] = v65;
  __src[11] = v66;
  __src[6] = v61;
  __src[7] = v62;
  __src[8] = v63;
  __src[9] = v64;
  __src[2] = v57;
  __src[3] = v58;
  __src[4] = v59;
  __src[5] = v60;
  __src[0] = v55;
  __src[1] = v56;
  *(&__src[18] + 8) = *&v77[96];
  *(&__src[19] + 8) = *&v77[112];
  *(&__src[20] + 8) = *&v77[128];
  *(&__src[16] + 8) = *&v77[64];
  *(&__src[17] + 8) = *&v77[80];
  *(&__src[14] + 8) = *&v77[32];
  *(&__src[15] + 8) = *&v77[48];
  *(&__src[12] + 8) = *v77;
  *&__src[12] = v67;
  *(&__src[21] + 1) = *(&v76 + 1);
  *(&__src[13] + 8) = *&v77[16];
  *v78 = KeyPath;
  outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(v77, v39, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
  outlined destroy of _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(v78);
  return memcpy(a1, __src, 0x160uLL);
}

uint64_t sub_18BE58E8C()
{
  if (*(v0 + 128) != 1)
  {
    if (*(v0 + 88) != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
      if (*(v0 + 88))
      {
        outlined consume of Text.Storage(*(v0 + 64), *(v0 + 72), *(v0 + 80));
      }

      if (*(v0 + 120))
      {
        outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
      }
    }

    if (*(v0 + 128))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t outlined destroy of Binding<SharingPickerHostModifier.Model?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, a2, a3, a4, MEMORY[0x1E6981948]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t destroy for SharingPickerHostModifier(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != 1)
  {
    v3 = *(a1 + 72);
    if (v3 != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
      if (v3)
      {
        outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
      }

      if (*(a1 + 104))
      {
        outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
      }
    }

    if (v2)
    {
    }
  }
}

double _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[6] = 0u;
  a1[7] = xmmword_18CD6A6D0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToBool and conformance ToBool()
{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SharingPickerHostModifier.Model(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
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

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
    lazy protocol witness table accessor for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>();
    lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t *initializeWithCopy for SharingActivityPickerModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[10];
  v17 = a2[11];
  v18 = a2[12];
  v19 = a2[13];
  v20 = a2[14];
  v21 = a2[15];
  v22 = a2[16];
  outlined copy of SharingPickerSource(*a2, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = v11;
  a1[8] = v14;
  a1[9] = v15;
  a1[10] = v16;
  a1[11] = v17;
  a1[12] = v18;
  a1[13] = v19;
  a1[14] = v20;
  a1[15] = v21;
  v12 = a2[17];
  a1[16] = v22;
  a1[17] = v12;

  return a1;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t destroy for SharingActivityPickerPresentation(uint64_t *a1)
{
  outlined consume of SharingPickerSource(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16]);
}

uint64_t outlined destroy of _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(uint64_t a1)
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of SharingPickerSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2 < 0)
  {

    outlined consume of AnyShareConfiguration.Storage(a5, a6, a7, a8, a9);
    outlined consume of Text?(a10, a11, a12, a13);

    outlined consume of Text?(a14, a15, a16, a17);
  }

  else
  {

    outlined copy of AnyIdentifiableShareConfiguration?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, outlined consume of AnyShareConfiguration.Storage, outlined consume of Text?);
  }
}

void outlined copy of SharingPickerSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2 < 0)
  {

    outlined copy of AnyShareConfiguration.Storage(a5, a6, a7, a8, a9);
    outlined copy of Text?(a10, a11, a12, a13);

    outlined copy of Text?(a14, a15, a16, a17);
  }

  else
  {

    outlined copy of AnyIdentifiableShareConfiguration?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, outlined copy of AnyShareConfiguration.Storage, outlined copy of Text?);
  }
}

uint64_t initializeWithCopy for PresentSharingPickerAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = (a2 + 128);
  v5 = *(a2 + 128);

  if (v5 != 1)
  {
    v11 = *(a2 + 88);
    if (v11 == 1)
    {
      v12 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v12;
      *(a1 + 112) = *(a2 + 112);
      v13 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v13;
      v14 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v14;
      if (!v5)
      {
        goto LABEL_12;
      }

LABEL_9:
      v27 = *(a2 + 136);
      *(a1 + 128) = v5;
      *(a1 + 136) = v27;

      return a1;
    }

    v15 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v19 = *(a2 + 56);
    outlined copy of AnyShareConfiguration.Storage(v15, v16, v17, v18, v19);
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    *(a1 + 48) = v18;
    *(a1 + 56) = v19;
    if (v11)
    {
      v20 = *(a2 + 64);
      v21 = *(a2 + 72);
      v22 = *(a2 + 80);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 64) = v20;
      *(a1 + 72) = v21;
      *(a1 + 80) = v22;
      *(a1 + 88) = v11;

      v23 = *(a2 + 120);
      if (v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v28 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v28;
      v23 = *(a2 + 120);
      if (v23)
      {
LABEL_8:
        v24 = *(a2 + 96);
        v25 = *(a2 + 104);
        v26 = *(a2 + 112);
        outlined copy of Text.Storage(v24, v25, v26);
        *(a1 + 96) = v24;
        *(a1 + 104) = v25;
        *(a1 + 112) = v26;
        *(a1 + 120) = v23;

        if (v5)
        {
          goto LABEL_9;
        }

LABEL_12:
        *(a1 + 128) = *v6;
        return a1;
      }
    }

    v29 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v29;
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  v9 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v9;
  v10 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
  return a1;
}

void type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<IsSharingPickerHost>)
  {
    lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost();
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<IsSharingPickerHost>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost()
{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, a3, a4, a5, MEMORY[0x1E697FDE8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t static SharingActivityPickerModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[4];
  v20 = a2[3];
  v21 = v4;
  v5 = a2[1];
  v17 = *a2;
  v6 = a2[2];
  v7 = *a2;
  v18 = a2[1];
  v19 = v6;
  v11 = v7;
  v12 = v5;
  v22 = *(a2 + 20);
  v13 = v6;
  outlined init with copy of _GraphInputs(&v17, v23);
  v8 = specialized static AllowPresentationPredicate.evaluate(inputs:)();
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v13;
  v9 = outlined destroy of _GraphInputs(v23);
  if (v8)
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>();
    lazy protocol witness table accessor for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child();
    Attribute.init<A>(body:value:flags:update:)();
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v11 = v17;
    v12 = v18;
    lazy protocol witness table accessor for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>();
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }

  else
  {
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v11 = v17;
    v12 = v18;
    return a3(v9, &v11);
  }
}

unint64_t lazy protocol witness table accessor for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child()
{
  result = lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child;
  if (!lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child);
  }

  return result;
}

void type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>()
{
  if (!lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>)
  {
    type metadata accessor for Binding<AttributedString>(255, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _AnchorTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier()
{
  result = lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier;
  if (!lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>();
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsSharingPickerHost>, lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost, &type metadata for IsSharingPickerHost, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsSharingPickerHost>, lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost, &type metadata for IsSharingPickerHost, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t View.clearSharingPickerHost()()
{
  swift_getKeyPath();
  _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(&v1);
  View.environment<A>(_:_:)();
}

uint64_t outlined init with copy of PresentSharingPickerAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<String>(0, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

__n128 protocol witness for static EnvironmentKey.defaultValue.getter in conformance PresentSharingPickerKey@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for State<SharingPickerHostModifier.Model?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for CollectionOfOne<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PresentSharingPickerAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [ViewResponder](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for PresentSharingPickerAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>();
    type metadata accessor for State<SharingPickerHostModifier.Model?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>);
    }
  }
}

void type metadata accessor for Button<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for PlatformItemListButtonStyle(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = v2[2];
  v7 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = v2[4];
  v9 = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = v2[6];
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  *(a1 + 48) = v10;
  *(a1 + 56) = v2;
  return a1;
}

uint64_t destroy for PlatformItemListButtonStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t *assignWithCopy for PlatformItemListButtonStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  v8 = v2[2];
  v9 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = a1[2];
  v11 = *(a1 + 24);
  a1[2] = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = v2[4];
  v13 = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = a1[4];
  v15 = *(a1 + 40);
  a1[4] = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = v2[6];
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v16, v2);
  v17 = a1[6];
  v18 = *(a1 + 56);
  a1[6] = v16;
  *(a1 + 56) = v2;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier()
{
  result = lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier;
  if (!lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<RefreshScopeModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>)
  {
    type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>();
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RefreshAction?>, type metadata accessor for RefreshAction?, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<RefreshScopeModifier>)
  {
    lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<RefreshScopeModifier>);
    }
  }
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

void _sScPSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for RefreshAction?()
{
  if (!lazy cache variable for type metadata for RefreshAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RefreshAction?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RefreshAction?>, type metadata accessor for RefreshAction?, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for State<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

char *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance HasContextMenuKey(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t outlined copy of Environment<AppIntentExecutor?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of AppIntentExecutor?(result);
  }

  else
  {
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction()
{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for State<SharingPickerHostModifier.Model?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t static ToolbarContentBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t type metadata completion function for AlertModifier()
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

unint64_t lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier()
{
  result = lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier;
  if (!lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier);
  }

  return result;
}

uint64_t static AlertModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v114 = *MEMORY[0x1E69E9840];
  v15 = a2[1];
  v16 = a2[3];
  v109 = a2[2];
  v110 = v16;
  v111 = a2[4];
  v17 = a2[1];
  v107 = *a2;
  v108 = v17;
  v100 = v107;
  v101 = v15;
  v18 = *a1;
  v112 = *(a2 + 20);
  v102 = v109;
  outlined init with copy of _GraphInputs(&v107, &v88);
  v19 = specialized static AllowPresentationPredicate.evaluate(inputs:)();
  v113[0] = v100;
  v113[1] = v101;
  v113[2] = v102;
  v20 = outlined destroy of _GraphInputs(v113);
  if (v19)
  {
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v94 = v107;
    v95 = v108;
    v21 = v108;
    v22 = swift_beginAccess();
    v65 = a3;
    LODWORD(v88) = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v22);
    v62 = a4;
    *&v100 = a5;
    *(&v100 + 1) = a6;
    *&v101 = a7;
    v23 = v66;
    *(&v101 + 1) = v66;
    v64 = a7;
    v56 = type metadata accessor for AlertModifier.AlertEnvironment();
    WitnessTable = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v107, &v100);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v55, v56, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
    _GraphInputs.environment.setter();
    LOBYTE(v100) = 1;
    lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
    v26 = PropertyList.subscript.setter();
    v102 = v109;
    v103 = v110;
    v104 = v111;
    *v105 = v112;
    v100 = v107;
    v101 = v108;
    v63 = a9;
    v27 = v64;
    v65(v26, &v100);
    LODWORD(v65) = v18;
    v69 = v18;
    *&v100 = a5;
    *(&v100 + 1) = a6;
    *&v101 = v27;
    *(&v101 + 1) = v23;
    type metadata accessor for AlertModifier();
    v28 = type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(a5 - 8) + 64))
    {
      closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(1, a5, a6, v27, v66);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v86[2] = v96;
    v86[3] = v97;
    v86[4] = v98;
    v87 = v99;
    v86[0] = v94;
    v86[1] = v95;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    LODWORD(v93[0]) = v99;
    v88 = v94;
    v89 = v95;
    v31 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v88, 1, &v100);
    MEMORY[0x1EEE9AC00](v31);
    *&v88 = &type metadata for AllPlatformItemListFlags;
    *(&v88 + 1) = a5;
    *&v89 = &protocol witness table for AllPlatformItemListFlags;
    *(&v89 + 1) = v27;
    v32 = type metadata accessor for PlatformItemListGenerator();
    v56 = v32;
    WitnessTable = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(v86, &v88);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    v34 = v33;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v100, closure #1 in Attribute.init<A>(_:)partial apply, v55, v32, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v35);
    v92 = v104;
    v93[0] = *v105;
    *(v93 + 12) = *&v105[12];
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    (*(*(v32 - 8) + 8))(&v88, v32);
    v60 = v74;
    v68 = v65;
    _GraphValue.value.getter();
    v36 = *(*(a6 - 8) + 64);
    v61 = a5;
    v62 = v28;
    if (v36)
    {
      closure #2 in static AlertModifier._makeView(modifier:inputs:body:)(1, a5, a6, v27, v66);
    }

    v37 = AGGraphCreateOffsetAttribute2();
    v72[2] = v96;
    v72[3] = v97;
    v72[4] = v98;
    v73 = v99;
    v72[0] = v94;
    v72[1] = v95;
    v38 = v95;
    v58 = DWORD2(v95);
    v76 = v96;
    v77 = v97;
    v78 = v98;
    LODWORD(v79[0]) = v99;
    v74 = v94;
    v75 = v95;
    v39 = v66;
    v40 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(v37, &v74, 1, &v100);
    MEMORY[0x1EEE9AC00](v40);
    v59 = a6;
    *&v74 = &type metadata for TextPlatformItemListFlags;
    *(&v74 + 1) = a6;
    *&v75 = &protocol witness table for TextPlatformItemListFlags;
    *(&v75 + 1) = v39;
    v41 = type metadata accessor for PlatformItemListGenerator();
    v56 = v41;
    WitnessTable = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(v72, &v74);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v100, closure #1 in Attribute.init<A>(_:)partial apply, v55, v41, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v42);
    v78 = v104;
    v79[0] = *v105;
    *(v79 + 12) = *&v105[12];
    v74 = v100;
    v75 = v101;
    v76 = v102;
    v77 = v103;
    (*(*(v41 - 8) + 8))(&v74, v41);
    swift_beginAccess();
    v43 = *(v38 + 16);
    LODWORD(v100) = v65;
    v44 = _GraphValue.value.getter();
    v45 = AGCreateWeakAttribute();
    v46 = AGCreateWeakAttribute();
    v47 = v46;
    v48 = HIDWORD(v46);
    type metadata accessor for PropertyList.Tracker();
    swift_allocObject();
    v49 = PropertyList.Tracker.init()();
    v67 = 1;
    *&v100 = __PAIR64__(v44, v43);
    *(&v100 + 1) = v45;
    *&v101 = __PAIR64__(v48, v47);
    LODWORD(v102) = 0;
    *(&v101 + 1) = v58;
    *(&v102 + 1) = v49;
    v103 = 0uLL;
    LOBYTE(v104) = 2;
    *(&v104 + 1) = v80;
    DWORD1(v104) = *(&v80 + 3);
    *v105 = 0;
    *(&v104 + 1) = 0;
    *&v105[8] = 0;
    *&v105[16] = 257;
    *&v105[18] = v70;
    *&v105[22] = WORD2(v70);
    memset(&v105[24], 0, 48);
    v106 = 0;
    v70 = v110;
    v71 = DWORD2(v110);
    MEMORY[0x1EEE9AC00](v110);
    v50 = v61;
    v51 = v59;
    v52 = v64;
    v53 = v66;
    v55[0] = v64;
    v55[1] = v66;
    v56 = &v100;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    *&v80 = v50;
    *(&v80 + 1) = v51;
    *&v81 = v52;
    *(&v81 + 1) = v53;
    AlertStorage = type metadata accessor for MakeAlertStorage();
    (*(*(AlertStorage - 8) + 8))(&v100, AlertStorage);

    v82 = v96;
    v83 = v97;
    v84 = v98;
    v85 = v99;
    v80 = v94;
    v81 = v95;
    return outlined destroy of _ViewInputs(&v80);
  }

  else
  {
    v102 = v109;
    v103 = v110;
    v104 = v111;
    *v105 = v112;
    v100 = v107;
    v101 = v108;
    return (a3)(v20, &v100);
  }
}

unint64_t lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText()
{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase()
{
  result = lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase;
  if (!lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase);
  }

  return result;
}

uint64_t closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for AlertModifier();
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #2 in static AlertModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for AlertModifier();
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

id PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)@<X0>(int a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = *MEMORY[0x1E698D3F8];
    *&v10[4] = *a2;
    *&v10[20] = *(a2 + 16);
    *&v10[84] = *(a2 + 80);
    *&v10[68] = *(a2 + 64);
    *&v10[52] = *(a2 + 48);
    *&v10[36] = *(a2 + 32);
    *a4 = result;
    *(a4 + 8) = a1;
    *(a4 + 28) = *&v10[16];
    *(a4 + 12) = *v10;
    *(a4 + 92) = *&v10[80];
    *(a4 + 76) = *&v10[64];
    *(a4 + 60) = *&v10[48];
    *(a4 + 44) = *&v10[32];
    *(a4 + 100) = a3 & 1;
    *(a4 + 104) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t implicit closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a1[7];
  v25 = a1[6];
  v26 = v6;
  v27[0] = a1[8];
  *(v27 + 9) = *(a1 + 137);
  v7 = a1[3];
  v21 = a1[2];
  v22 = v7;
  v8 = a1[5];
  v23 = a1[4];
  v24 = v8;
  v9 = a1[1];
  v19 = *a1;
  v20 = v9;
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  AlertStorage = type metadata accessor for MakeAlertStorage();
  v17 = AlertStorage;
  WitnessTable = swift_getWitnessTable();
  v11 = *(AlertStorage - 8);
  (*(v11 + 16))(&v28, a1, AlertStorage);
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, closure #1 in Attribute.init<A>(_:)partial apply, v16, AlertStorage, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v34 = v25;
  v35 = v26;
  v36[0] = v27[0];
  *(v36 + 9) = *(v27 + 9);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  (*(v11 + 8))(&v28, AlertStorage);
  return v15;
}

uint64_t initializeWithCopy for MakeAlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v5;
  *(a1 + 97) = *(a2 + 97);
  v6 = *(a2 + 144);

  if (v6)
  {
    v7 = *(a2 + 128);
    if (v7)
    {
      v8 = *(a2 + 104);
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 104) = v8;
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v7;
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v6;
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  return a1;
}

uint64_t destroy for MakeAlertStorage(uint64_t a1)
{

  if (*(a1 + 144))
  {
    if (*(a1 + 128))
    {
      outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
    }
  }

  return result;
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

__n128 AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, char a13, __int128 a14, __int128 a15)
{
  v31 = a14;
  v32 = a15;
  v20 = type metadata accessor for AlertModifier();
  v21 = (a9 + v20[17]);
  *(v21 + 10) = 0;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  (*(*(a14 - 8) + 32))(a9 + v20[15], a10, a14);
  (*(*(*(&a14 + 1) - 8) + 32))(a9 + v20[16], a11, *(&a14 + 1));
  v22 = v21[3];
  v33 = v21[2];
  v34 = v22;
  v35 = v21[4];
  v36 = *(v21 + 10);
  v23 = v21[1];
  v31 = *v21;
  v32 = v23;
  outlined destroy of BoundInputsView?(&v31, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  v24 = a12[3];
  v21[2] = a12[2];
  v21[3] = v24;
  v21[4] = a12[4];
  *(v21 + 10) = *(a12 + 10);
  result = *a12;
  v26 = a12[1];
  *v21 = *a12;
  v21[1] = v26;
  *(a9 + v20[18]) = a13;
  return result;
}

uint64_t outlined destroy of BoundInputsView?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI15BoundInputsViewVSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t initializeWithCopy for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v5 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = *(v6 + 56);
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v13 + 64 + v5) & ~v13;
  v15 = (v13 + 64 + v6) & ~v13;

  v11(v14, v15, v10);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = *(v12 + 48) + v18;
  v20 = (v19 + v14) & ~v18;
  v21 = (v19 + v15) & ~v18;
  (*(v16 + 16))(v20, v21);
  v22 = *(v17 + 48) + 7;
  v23 = (v22 + v20) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v21) & 0xFFFFFFFFFFFFFFF8;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    v28 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v28;
    v29 = *(v24 + 32);
    v30 = *(v24 + 48);
    v31 = *(v24 + 64);
    *(v23 + 80) = *(v24 + 80);
    *(v23 + 48) = v30;
    *(v23 + 64) = v31;
    *(v23 + 32) = v29;
  }

  else
  {
    v25 = *(v24 + 8);
    *v23 = *v24;
    *(v23 + 8) = v25;
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 24) = *(v24 + 24);
    v26 = *(v24 + 32);
    *(v23 + 32) = v26;
    *(v23 + 40) = *(v24 + 40);
    *(v23 + 48) = *(v24 + 48);
    *(v23 + 56) = *(v24 + 56);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 68) = *(v24 + 68);
    *(v23 + 72) = *(v24 + 72);
    *(v23 + 76) = *(v24 + 76);
    *(v23 + 80) = *(v24 + 80);
    v27 = v26;
  }

  *(v23 + 88) = *(v24 + 88);
  return a1;
}

uint64_t destroy for AlertModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Text.Storage(*(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 64) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  result = (*(v8 + 8))(v10);
  v12 = (*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t View.alert<A, B>(_:isPresented:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v63 = a8;
  v69 = a7;
  v57 = a4;
  v67 = a9;
  v68 = a13;
  v65 = a12;
  v64 = a11;
  v62 = a10;
  v53 = a18;
  v56 = a15;
  v66 = a16;
  v51 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v24;
  v60 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v48 - v29;
  v30 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v80 = a17;
  v81 = v30;
  WitnessTable = swift_getWitnessTable();
  *&v70 = v28;
  *(&v70 + 1) = a15;
  *&v71 = WitnessTable;
  *(&v71 + 1) = a18;
  v58 = type metadata accessor for AlertModifier();
  v59 = *(v58 - 8);
  v31 = MEMORY[0x1EEE9AC00](v58);
  v33 = &v48 - v32;
  MEMORY[0x18D009CE0](&v70, v31);
  v34 = v57;
  Text.assertUnstyled(_:options:)();
  v49 = a5;
  v77 = a5;
  v78 = a6;
  v48 = a6;
  v79 = v69;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v76);
  v50 = v76;

  v35 = a1;
  v36 = a2;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v38 = v63(v37);
  v39 = v52;
  v40 = v55;
  MEMORY[0x18D00A570](v38, v55, &unk_1EFFCFD30, v51);
  v41 = (*(v60 + 8))(v27, v40);
  v42 = v61;
  v64(v41);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  *(&v47 + 1) = v53;
  *&v47 = WitnessTable;
  *&v46 = v28;
  *(&v46 + 1) = v56;
  v43 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v50, v49, v48, v69, v35, v36, a3 & 1, v34, v33, v39, v42, &v70, 0, v46, v47);
  v44 = v58;
  MEMORY[0x18D00A570](v33, v68, v58, v66, v43);
  return (*(v59 + 8))(v33, v44);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.NavigationPresentationAdaptorKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.NavigationPresentationAdaptorKey.defaultValue;
  return result;
}

uint64_t type metadata completion function for NavigationSplitView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t View.navigationTitlePreferenceTransform(adding:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v12 = swift_allocObject();
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  *(v12 + 57) = *(a1 + 41);
  outlined init with copy of NavigationTitleStorage(v20, v19);
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationTitleKey, partial apply for closure #1 in View.navigationTitlePreferenceTransform(adding:), v12, a2, &type metadata for NavigationTitleKey, a3);

  v19[0] = closure #2 in View.navigationTitlePreferenceTransform(adding:);
  v19[1] = 0;
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v15 = v14;
  v18[2] = a3;
  v18[3] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v19, v7, v15, WitnessTable);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18BE5E0C0()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 48) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t View.transactionalPreferenceTransform<A>(key:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v8 = type metadata accessor for TransactionalPreferenceTransformModifier();

  MEMORY[0x18D00A570](v10, a4, v8, a6);
}

unint64_t lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext()
{
  result = lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext;
  if (!lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext);
  }

  return result;
}

uint64_t View.navigationTitle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x18D009CE0](v18);
  Text.assertUnstyled(_:options:)();
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3 & 1;
  *(&v16 + 1) = a4;
  *v17 = 1;
  v17[8] = 5;
  *&v17[16] = 0;
  v17[24] = 3;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.navigationTitlePreferenceTransform(adding:)(&v15, a5, a6, a7);
  v18[0] = v15;
  v18[1] = v16;
  v19[0] = *v17;
  *(v19 + 9) = *&v17[9];
  return outlined destroy of NavigationTitleStorage(v18);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToolbarModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for NavigationStackStyledCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for NavigationStackReader()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE5E5CC()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  swift_getWitnessTable();
  type metadata accessor for NavigationStackStyledCore();
  type metadata accessor for NavigationStackReader();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity()
{
  result = lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity;
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey()
{
  result = lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey;
  if (!lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey);
  }

  return result;
}

uint64_t type metadata accessor for UISplitViewControllerProxyStorage()
{
  result = type metadata singleton initialization cache for UISplitViewControllerProxyStorage;
  if (!type metadata singleton initialization cache for UISplitViewControllerProxyStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UISplitViewControllerProxyStorage()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _PresentationTransitionOutputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PresentationTransitionOutputs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

void type metadata accessor for Binding<TextSelection?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for TextSelection()
{
  result = type metadata accessor for TextSelection.Indices(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for TextSelection.Indices()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(319, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Binding<AttributedString>()
{
  if (!lazy cache variable for type metadata for Binding<AttributedString>)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AttributedString>);
    }
  }
}

void type metadata accessor for Binding<SearchFieldState>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier()
{
  result = lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier;
  if (!lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier);
  }

  return result;
}

void type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>)
  {
    type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>);
    }
  }
}

void type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>()
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>)
  {
    lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
    v0 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView()
{
  result = lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView;
  if (!lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate()
{
  result = lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>();
    lazy protocol witness table accessor for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView> and conformance _OverlayPreferenceModifier<A, B>, type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsSearchAllowedPredicate()
{
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.getter();
  return v1;
}

double default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GraphHost();
  v2 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>()
{
  result = lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>;
  if (!lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>);
  }

  return result;
}

uint64_t closure #1 in static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for PositionedNavigationDestinationProcessor();
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_26, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

void type metadata accessor for NavigationAuthority?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI19NavigationAuthorityVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI19NavigationAuthorityVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC11VersionSeedVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, VersionSeed>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 76); ; i += 12)
    {
      v5 = *(i - 7);
      v14 = *(i - 11);
      v15[0] = v5;
      *(v15 + 9) = *(i - 19);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v15[0];
      *v9 = v14;
      v9[1] = v10;
      *(v9 + 25) = *(v15 + 9);
      *(v3[7] + 4 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeWithCopy for PositionedNavigationDestinationProcessor.PollingRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t destroy for PositionedNavigationDestinationProcessor.PollingRule()
{
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Detail(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationSplitStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>)
  {
    lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
    lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent);
  }

  return result;
}

void type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationSplitStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BE5FE98()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type NavigationSplitReader and conformance NavigationSplitReader()
{
  result = lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader;
  if (!lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>, &type metadata for CompositeNavigationSplitViewVisibility.Key, &protocol witness table for CompositeNavigationSplitViewVisibility.Key, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>();
    lazy protocol witness table accessor for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>)
  {
    type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>();
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>, &type metadata for HasSwiftUINavigationKey, &protocol witness table for HasSwiftUINavigationKey, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static _NavigationSplitReader._makeView(view:inputs:)(unsigned int *a1, __int128 *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2[3];
  v60 = a2[2];
  v61 = v3;
  v62 = a2[4];
  v63 = *(a2 + 20);
  v4 = a2[1];
  v58 = *a2;
  v59 = v4;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for _GraphValue<_NavigationSplitReader>, &unk_1EFFADE40, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  v35 = v66[0];
  _GraphValue.subscript.getter();
  v38 = v66[0];
  _GraphValue.subscript.getter();
  v41 = v66[0];
  _GraphValue.subscript.getter();
  v34 = v66[0];
  _GraphValue.subscript.getter();
  v43 = v66[0];
  type metadata accessor for NavigationStateHost();
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  LODWORD(v68) = v2;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  v5 = v66[0];
  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.getter();
  v44 = DWORD1(v68);
  v45 = v2;
  swift_beginAccess();
  v6 = *(v59 + 16);
  v69 = xmmword_18CD633F0;
  *&v70 = 0;
  *&v68 = __PAIR64__(v66[0], v6);
  v42 = v66[0];
  DWORD2(v68) = v66[0];
  HIDWORD(v68) = v66[0];
  v37 = v66[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)();
  lazy protocol witness table accessor for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _NavigationSplitReader.DerivedAttributes(&v68);
  AGGraphCreateOffsetAttribute2();
  v40 = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  v7 = v68;
  KeyPath = swift_getKeyPath();
  LODWORD(v68) = v66[0];
  *(&v68 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *&v69 = KeyPath;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for NavigationSeedHost(0);
  type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>();
  lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>, type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>);

  Attribute.init<A>(body:value:flags:update:)();

  v9 = AGCreateWeakAttribute();
  *&v68 = v7;
  *(&v68 + 1) = v9;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds();
  Attribute.init<A>(body:value:flags:update:)();
  v10 = AGCreateWeakAttribute();
  outlined init with copy of _GraphInputs(&v58, &v68);
  if (one-time initialization token for navigationEventHandlers != -1)
  {
    swift_once();
  }

  *&v66[0] = static CachedEnvironment.ID.navigationEventHandlers;
  swift_beginAccess();
  v11 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v58);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v13 = DWORD2(v59);
  type metadata accessor for GraphHost();
  v14 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v15 = *(v14 + 64);

  *&v68 = __PAIR64__(OffsetAttribute2, v11);
  *(&v68 + 1) = __PAIR64__(v15, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v16 = AGGraphCreateOffsetAttribute2();
  v17 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v18 = *(v17 + 64);

  *&v68 = __PAIR64__(v16, v5);
  *(&v68 + 1) = __PAIR64__(v18, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  outlined init with copy of _GraphInputs(&v58, &v68);
  if (one-time initialization token for navigationRequiredCompactColumn != -1)
  {
    swift_once();
  }

  *&v66[0] = static CachedEnvironment.ID.navigationRequiredCompactColumn;
  swift_beginAccess();
  type metadata accessor for Binding<NavigationSplitViewColumn>?(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v58);
  v20 = AGGraphCreateOffsetAttribute2();
  v21 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v22 = *(v21 + 64);

  *&v68 = __PAIR64__(v20, v19);
  *(&v68 + 1) = __PAIR64__(v22, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *&v68 = __PAIR64__(v45, v34);
  DWORD2(v68) = v44;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters();
  LODWORD(v21) = Attribute.init<A>(body:value:flags:update:)();
  v23 = AGGraphCreateOffsetAttribute2();
  v24 = v21;
  v25 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v23);
  BYTE8(v68) = 0;
  *(&v68 + 9) = v46;
  BYTE11(v68) = v47;
  HIDWORD(v68) = v37;
  LODWORD(v69) = v35;
  v26 = v10;
  v27 = HIDWORD(v10);
  *(&v69 + 4) = __PAIR64__(v27, v26);
  HIDWORD(v69) = v25;
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v36 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v21) = AGGraphCreateOffsetAttribute2();
  v28 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v21);
  BYTE8(v68) = 1;
  *(&v68 + 9) = v48;
  BYTE11(v68) = v49;
  HIDWORD(v68) = v37;
  *&v69 = __PAIR64__(v26, v38);
  *(&v69 + 1) = __PAIR64__(v28, v27);
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v39 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v21) = AGGraphCreateOffsetAttribute2();
  v29 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v21);
  BYTE8(v68) = 2;
  *(&v68 + 9) = v50;
  BYTE11(v68) = v51;
  HIDWORD(v68) = v37;
  *&v69 = __PAIR64__(v26, v41);
  *(&v69 + 1) = __PAIR64__(v29, v27);
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v30 = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type AlternateRepresentationKey and conformance AlternateRepresentationKey();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for PreparedCompactColumn?, &type metadata for PreparedCompactColumn, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn();
  v31 = Attribute.init<A>(body:value:flags:update:)();
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v52 = v58;
  v53 = v59;
  outlined init with copy of _ViewInputs(&v58, &v68);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.environment.setter();
  _ViewInputs.disableNavigationDestination.setter();
  LOBYTE(v68) = 1;
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  *&v68 = v40;
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  *&v68 = v26;
  PropertyList.subscript.setter();
  v32 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  PropertyList.subscript.getter();
  type metadata accessor for ModifiedContent<VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationStat();
  *&v68 = __PAIR64__(v39, v36);
  *(&v68 + 1) = __PAIR64__(v31, v30);
  *&v69 = __PAIR64__(v43, v24);
  *(&v69 + 1) = __PAIR64__(v26, v32);
  *&v70 = __PAIR64__(v45, v27);
  DWORD2(v70) = v44;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core();
  Attribute.init<A>(body:value:flags:update:)();
  v64[2] = v54;
  v64[3] = v55;
  v64[4] = v56;
  v65 = v57;
  v64[0] = v52;
  v64[1] = v53;
  outlined init with copy of _ViewInputs(v64, &v68);
  lazy protocol witness table accessor for type ModifiedContent<VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModi();
  static View.makeDebuggableView(view:inputs:)();
  v66[2] = v54;
  v66[3] = v55;
  v66[4] = v56;
  v67 = v57;
  v66[0] = v52;
  v66[1] = v53;
  outlined destroy of _ViewInputs(v66);
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v68 = v52;
  v69 = v53;
  return outlined destroy of _ViewInputs(&v68);
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 16;
  if (*(a2 + 24) == 1)
  {
    *v3 = *(a2 + 16);
    *(v3 + 16) = *(a2 + 32);
  }

  else
  {
    swift_weakCopyInit();
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t destroy for _NavigationSplitReader.DerivedAttributes(uint64_t result)
{
  if (*(result + 24) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn);
  }

  return result;
}

void type metadata accessor for Binding<NavigationSplitViewColumn>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, a3, a4, MEMORY[0x1E6981948]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, a3, a4, &type metadata for InjectKeyModifier, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>();
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternateRepresentationKey and conformance AlternateRepresentationKey()
{
  result = lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value()
{
  result = lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>))
  {
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot);
  }

  return result;
}

uint64_t type metadata completion function for Tuple()
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

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core);
  }

  return result;
}

uint64_t static VariadicViewForest._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v36 = *(a2 + 32);
  v37 = v8;
  v10 = *(a2 + 48);
  v38 = *(a2 + 64);
  v11 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v11;
  v31 = v36;
  v32 = v10;
  v33 = *(a2 + 64);
  v12 = *a1;
  v39 = *(a2 + 80);
  v34 = *(a2 + 80);
  v29 = v35[0];
  v30 = v9;
  v13 = *(a5 + 24);
  outlined init with copy of _ViewInputs(v35, v44);
  v13(v44, a3, a5);
  PropertyList.subscript.setter();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v28 = v12;
  type metadata accessor for VariadicViewForest();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v40[2] = v31;
  v40[3] = v32;
  v40[4] = v33;
  v41 = v34;
  v40[0] = v29;
  v40[1] = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v21 = v29;
  v22 = v30;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v17 = v12;
  v14 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v40, v44);
  v14(v27, &v21, partial apply for closure #2 in static VariadicViewForest._makeView(view:inputs:), v16, a3, a5);
  v42[2] = v23;
  v42[3] = v24;
  v42[4] = v25;
  v43 = v26;
  v42[0] = v21;
  v42[1] = v22;
  outlined destroy of _ViewInputs(v42);
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v33;
  v45 = v34;
  v44[0] = v29;
  v44[1] = v30;
  return outlined destroy of _ViewInputs(v44);
}

uint64_t closure #1 in static VariadicViewForest._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = type metadata accessor for VariadicViewForest();
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t specialized static VariadicViewForestRoot._makeView(root:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(__int128 *)@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 48);
  v47 = *(a1 + 32);
  v48 = v4;
  v49 = *(a1 + 64);
  v50 = *(a1 + 80);
  v5 = *(a1 + 16);
  v45 = *a1;
  v46 = v5;
  v6 = a2(&v45);
  v7 = *(v6 + 16);
  if (v7)
  {
    *&v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v26;
    v9 = *(a1 + 16);
    v51 = *a1;
    v52 = v9;
    v53 = *(a1 + 32);
    v10 = v6 + 32;
    do
    {
      outlined init with copy of _ViewListOutputs(v10, &v38);
      v32 = v51;
      v33 = v52;
      v34 = v53;
      outlined init with copy of _GraphInputs(&v51, &v45);
      _ViewListInputs.init(_:)();
      v11 = _ViewListOutputs.makeAttribute(inputs:)();
      outlined destroy of _ViewListInputs(&v45);
      outlined destroy of _ViewListOutputs(&v38);
      *&v26 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v8 = v26;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 4 * v13 + 32) = v11;
      v10 += 72;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  static DynamicPropertyCache.fields(of:)();
  v14 = v45;
  v15 = v46;
  v16 = DWORD1(v46);
  v17 = *(a1 + 48);
  v47 = *(a1 + 32);
  v48 = v17;
  v49 = *(a1 + 64);
  v50 = *(a1 + 80);
  v18 = *(a1 + 16);
  v45 = *a1;
  v46 = v18;
  outlined init with copy of _ViewInputs(a1, &v38);
  if ((AGTypeID.isValueType.getter() & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = AGSubgraphGetCurrent();
  if (!v19)
  {
    __break(1u);
LABEL_14:
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD42B50);
    MEMORY[0x18D00C9B0](0x6F52747365726F46, 0xEA0000000000746FLL);
    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = v19;
  v38 = v14;
  LOBYTE(v39) = v15;
  DWORD1(v39) = v16;
  type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>();
  lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();

  v34 = v47;
  v35 = v48;
  v36 = v49;
  v32 = v45;
  v33 = v46;
  v28 = v47;
  v29 = v48;
  v30 = v49;
  v37 = v50;
  v21 = v44;
  v31 = v50;
  v26 = v45;
  v27 = v46;
  outlined init with copy of _ViewInputs(&v32, &v38);
  lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore();
  static View.makeDebuggableView(view:inputs:)();
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v38 = v26;
  v39 = v27;
  outlined destroy of _ViewInputs(&v38);
  if ((v21 & 1) == 0)
  {
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v28 = v47;
  v29 = v48;
  v30 = v49;
  v31 = v50;
  v26 = v45;
  v27 = v46;
  outlined destroy of _ViewInputs(&v26);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v24;
  a3[1] = v25;
  return result;
}

uint64_t closure #2 in static VariadicViewForest._makeView(view:inputs:)(_OWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v9 = *a1;
  v8 = a1[1];
  v14[2] = a1[2];
  v12[0] = v9;
  v12[1] = v8;
  v12[2] = a1[2];
  outlined init with copy of _GraphInputs(v14, v13);
  PropertyList.subscript.getter();
  _ViewListInputs.init(_:options:)();
  LODWORD(v12[0]) = a2;
  v10 = static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(v12, v13, a3, a4);
  outlined destroy of _ViewListInputs(v13);
  return v10;
}

uint64_t protocol witness for static VariadicViewForestRoot._makeView(root:inputs:body:) in conformance _NavigationSplitReader.ForestRoot@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(__int128 *)@<X2>, void *a3@<X8>)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return specialized static VariadicViewForestRoot._makeView(root:inputs:body:)(v6, a2, a3);
}

uint64_t static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a4, &v18);
  v5 = v18;
  type metadata accessor for VariadicViewForest();
  type metadata accessor for _GraphValue();
  type metadata accessor for TupleView();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  outlined init with copy of _ViewListInputs(a2, v17);
  LODWORD(v18) = v6;
  outlined init with take of _ViewListInputs(v17, &v19);
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 48);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v8 += 3;
      v20 = AGTupleElementOffset();
      v11 = type metadata accessor for VariadicViewForest.ListOutputsTreeVisitor();
      WitnessTable = swift_getWitnessTable();
      (*(WitnessTable + 8))(v9, v9, v10, v11, WitnessTable);
      --v7;
    }

    while (v7);
  }

  v13 = v21;
  v14 = type metadata accessor for VariadicViewForest.ListOutputsTreeVisitor();
  v15 = *(*(v14 - 8) + 8);

  v15(&v18, v14);
  return v13;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = static ViewDescriptor.typeCache.getter();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {

    TupleTypeDescription.init(_:)();
    v7 = v14[0];

    v9 = static ViewDescriptor.typeCache.modify();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v11;
    *v11 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
    *v11 = v13;
    result = v9(v14, 0);
  }

  *a2 = v7;
  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>)
  {
    type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(255, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, MEMORY[0x1E697E580], MEMORY[0x1E697E578], MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>);
    }
  }
}

void type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t closure #1 in static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for VariadicViewForest();
  v3 = *(v2 + 44);
  v7[2] = v2;
  v8 = type metadata accessor for TupleView();
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, partial apply for closure #1 in static PointerOffset.of(_:), v7, v8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

__n128 VariadicViewForest.ListOutputsTreeVisitor.visit<A>(type:)()
{
  v1 = v0;
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  v2 = *(v0 + 152);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[72 * v4];
  *(v5 + 2) = v7;
  result = v8;
  v5[96] = v11;
  *(v5 + 4) = v9;
  *(v5 + 5) = v10;
  *(v5 + 3) = v8;
  *(v1 + 152) = v2;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InjectKeyModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = specialized static InjectKeyModifier._makeInputs(modifier:inputs:)();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t specialized static InjectKeyModifier._makeInputs(modifier:inputs:)()
{
  AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  return _GraphInputs.subscript.setter();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Sidebar(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata accessor for StyleContextWriter<ContentListStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>)
  {
    type metadata accessor for UserInterfaceSizeClass?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>);
    }
  }
}

void type metadata accessor for UserInterfaceSizeClass?()
{
  if (!lazy cache variable for type metadata for UserInterfaceSizeClass?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UserInterfaceSizeClass?);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Detail(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>()
{
  if (!lazy cache variable for type metadata for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>)
  {
    lazy protocol witness table accessor for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot();
    v0 = type metadata accessor for ForestRootBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>);
    }
  }
}

void *sub_18BE63184(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  v4 = v3;
  return a1;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>()
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?();
    v0 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationSplitE0V_Tt2B5@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v21 == 1)
  {
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD4E590);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v21 = *(a1 + 6);
    DWORD2(v21) = *(a1 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v5 = v21;
      v6 = a1[3];
      v23 = a1[2];
      v24 = v6;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v7 = a1[1];
      v21 = *a1;
      v22 = v7;
      LODWORD(v19) = v5;
      _ViewInputs.pushIdentity(_:)();
      v8 = a1[3];
      v23 = a1[2];
      v24 = v8;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v9 = a1[1];
      v21 = *a1;
      v22 = v9;
      v10 = _ViewInputs.animatedPosition()();
      v11 = a1[3];
      v23 = a1[2];
      v24 = v11;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v12 = a1[1];
      v21 = *a1;
      v22 = v12;
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v14 = a1[3];
      v23 = a1[2];
      v24 = v14;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v22 = a1[1];
      *&v21 = __PAIR64__(v10, v5);
      DWORD2(v21) = v13;
      HIDWORD(v21) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v21) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a2 = v18[0];
    a2[1] = v18[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD4E590);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<NavigationSplitRepresentable>, &type metadata for NavigationSplitRepresentable, &protocol witness table for NavigationSplitRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v19) = Attribute.unsafeBitCast<A>(to:)();
      v15 = a1[3];
      v23 = a1[2];
      v24 = v15;
      v25 = a1[4];
      v26 = *(a1 + 20);
      v16 = a1[1];
      v21 = *a1;
      v22 = v16;
      v17 = static View.makeDebuggableView(view:inputs:)();
      *&v21 = *(a1 + 6);
      DWORD2(v21) = *(a1 + 14);
      v19 = *(a1 + 6);
      v20 = *(a1 + 14);
      MEMORY[0x1EEE9AC00](v17);
      outlined init with copy of PreferencesInputs(&v21, v18);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MenuStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

double protocol witness for static PropertyKey.defaultValue.getter in conformance UISplitViewControllerProxyKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static UISplitViewControllerProxyKey.defaultValue;
  *a1 = static UISplitViewControllerProxyKey.defaultValue;
  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>, &type metadata for CompositeNavigationSplitViewVisibility.Key, &protocol witness table for CompositeNavigationSplitViewVisibility.Key, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>);
    }
  }
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance AlternateRepresentationKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static AlternateRepresentationKey.defaultValue;
  *a1 = static AlternateRepresentationKey.defaultValue;
  return result;
}

void type metadata accessor for Attribute<EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for Attribute<EnvironmentValues>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t destroy for VariadicViewForest.ListOutputsTreeVisitor()
{

  swift_weakDestroy();
}

void type metadata accessor for Attribute<ViewList>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewList>)
  {
    type metadata accessor for ViewList();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>)
  {
    type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>);
  }

  return result;
}

void destroy for ForestRootBodyAccessor(uint64_t a1)
{

  v2 = *(a1 + 8);
}

unint64_t lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore()
{
  result = lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore;
  if (!lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static ContainerBackgroundRendererModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v45 = a2[2];
  v46 = v8;
  v47 = a2[4];
  v48 = *(a2 + 20);
  v9 = a2[1];
  v43 = *a2;
  v44 = v9;
  v29 = a4;
  v30 = a5;
  LODWORD(v51[0]) = v7;
  type metadata accessor for ContainerBackgroundRendererModifier();
  type metadata accessor for _GraphValue();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  _GraphValue.subscript.getter();
  v10 = v49[0];
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  outlined init with copy of _ViewInputs(&v43, v51);
  PreferencesInputs.add<A>(_:)();
  v11 = v44;
  swift_beginAccess();
  v12 = *MEMORY[0x1E698D3F8];
  LODWORD(v51[0]) = *(v11 + 16);
  *(v51 + 4) = __PAIR64__(v12, v10);
  v27 = type metadata accessor for ContainerBackgroundRendererModifier.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, &v26, v27, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  _GraphInputs.environment.setter();
  v49[2] = v39;
  v49[3] = v40;
  v49[4] = v41;
  v50 = v42;
  v49[0] = v37;
  v49[1] = v38;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v15 = outlined init with copy of _ViewInputs(v49, v51);
  a3(&v23, v15, &v31);
  v51[2] = v33;
  v51[3] = v34;
  v51[4] = v35;
  v52 = v36;
  v51[0] = v31;
  v51[1] = v32;
  outlined destroy of _ViewInputs(v51);
  v16 = v23;
  v18 = v24;
  v17 = v25;
  v19 = _ViewOutputs.subscript.getter();
  if ((v19 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v19);
    MEMORY[0x1EEE9AC00](v20);
    AGGraphMutateAttribute();
  }

  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  result = outlined destroy of _ViewInputs(&v31);
  *a6 = v16;
  *(a6 + 8) = v18;
  *(a6 + 12) = v17;
  return result;
}

uint64_t closure #1 in static ContainerBackgroundRendererModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for ContainerBackgroundRendererModifier();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_11, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance NavigationSplitRepresentable@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationSplitE0V_Tt2B5(v5, a2);
}

uint64_t getEnumTagSinglePayload for MenuStyleConfiguration(uint64_t *a1, unsigned int a2)
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

uint64_t View.navigationBarTitleDisplayMode(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 8 * *a1;
  v6 = 0u;
  v7 = 0u;
  *v8 = 1;
  v8[8] = 0x10300u >> v4;
  *&v8[16] = 0;
  v8[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v6, a2, a3, a4);
  v9[0] = v6;
  v9[1] = v7;
  v10[0] = *v8;
  *(v10 + 9) = *&v8[9];
  return outlined destroy of NavigationTitleStorage(v9);
}

void type metadata accessor for Stack<AnySource>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static OptionalViewAlias._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  type metadata accessor for SourceInput();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Stack<AnySource> and conformance <A> Stack<A>();
  PropertyList.subscript.getter();
  if (v2)
  {
    v0 = *(v2 + 44);

    if (v0)
    {
      type metadata accessor for OptionalViewAlias.StaticSourceBox();
    }

    else
    {
      type metadata accessor for OptionalViewAlias.OptionalSourceBox();
    }

    swift_getWitnessTable();
  }

  else
  {
    type metadata accessor for OptionalViewAlias.StaticSourceBox();
    swift_getWitnessTable();
  }

  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

unint64_t lazy protocol witness table accessor for type Stack<AnySource> and conformance <A> Stack<A>()
{
  result = lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>;
  if (!lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>)
  {
    type metadata accessor for Stack<AnySource>(255, &lazy cache variable for type metadata for Stack<AnySource>, &unk_1F0005790, MEMORY[0x1E6981768]);
    lazy protocol witness table accessor for type AnySource and conformance AnySource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>);
  }

  return result;
}

void type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t type metadata accessor for ViewList()
{
  result = lazy cache variable for type metadata for ViewList;
  if (!lazy cache variable for type metadata for ViewList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewList);
  }

  return result;
}

void type metadata accessor for Binding<TextSelection?>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for TextField()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<TextSelection?>?(319);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for SearchModifier()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedString>();
    if (v1 <= 0x3F)
    {
      _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(319, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for Binding<AttributedString>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SearchModifier<TextField<EmptyView>>()
{
  if (!lazy cache variable for type metadata for SearchModifier<TextField<EmptyView>>)
  {
    type metadata accessor for TextField<EmptyView>();
    lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(&lazy protocol witness table cache variable for type TextField<EmptyView> and conformance TextField<A>, type metadata accessor for TextField<EmptyView>);
    v0 = type metadata accessor for SearchModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchModifier<TextField<EmptyView>>);
    }
  }
}

void type metadata accessor for TextField<EmptyView>()
{
  if (!lazy cache variable for type metadata for TextField<EmptyView>)
  {
    v0 = type metadata accessor for TextField();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextField<EmptyView>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(v17[0]) = *a1;
  type metadata accessor for SearchEnvironmentTransformModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(1, a3);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v6 = *(a2 + 16);
  swift_beginAccess();
  v7 = *(v6 + 16);
  LODWORD(v15[0]) = 0;
  BYTE4(v15[0]) = 1;
  v8 = SearchEnvironmentTransformModifier.UpdateEnvironment.init(transform:environment:version:baseVersion:)(OffsetAttribute2, v7, 0, v15, v17);
  v15[0] = v17[0];
  v15[1] = v17[1];
  v15[2] = v17[2];
  v16 = v18;
  MEMORY[0x1EEE9AC00](v8);
  updated = type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment();
  WitnessTable = swift_getWitnessTable();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, &v12, updated, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  return _GraphInputs.environment.setter();
}

uint64_t closure #1 in static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for SearchEnvironmentTransformModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

unint64_t lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions()
{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, char a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, void))
{
  if ((a2 & 1) == 0)
  {
    v8 = result;

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v13);
      _os_log_impl(&dword_18BD4A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x18D0110E0](v12, -1, -1);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a5(v8, 0);

    return v14;
  }

  return result;
}

uint64_t outlined consume of ContainerBackgroundValue?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined consume of ContainerBackgroundValue.Content(result, a2);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchSuggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewBehaviorModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined destroy of KeyPress.Handler.Subject(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EnvironmentValues._set<A>(_:for:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  type metadata accessor for EnvironmentPropertyKey();

  swift_getWitnessTable();
  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t initializeWithCopy for ToolbarPlacement.Storage(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 24);
  }

  v4 = v3 + 1;
  v5 = v2 != 6 && v4 > 7;
  if (v5 || v4)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v7 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v7;
    v8 = result;
    (**(v2 - 8))();
    return v8;
  }

  return result;
}

uint64_t destroy for ToolbarPlacement(uint64_t a1)
{
  if (*(a1 + 24) >= 8uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t type metadata completion function for SceneStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t UnsafeObservableObjectFallbackDelegateBox.addDelegate(to:)()
{
  static ObservableObject.environmentStore.getter();
  swift_unknownObjectRetain();
  swift_setAtWritableKeyPath();
}

uint64_t ObservableObjectFallbackDelegateBox.addDelegate(to:)()
{
  static ObservableObject.environmentStore.getter();
  v1 = *(v0 + 16);
  swift_setAtWritableKeyPath();
}

uint64_t static RawRepresentableTransform.readValue(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a3;
  v25 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(a7 + 8))(v38, a1, a2, v24, a5, a7, v17);
  v20 = MEMORY[0x1E69E7CA0];
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v21 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, v21 ^ 1u, 1, AssociatedTypeWitness);
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = partial apply for closure #1 in static RawRepresentableTransform.readValue(from:key:);
  v32 = &v33;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?), v26, MEMORY[0x1E69E73E0], v20 + 8, v22, v25);
  return (*(v16 + 8))(v19, v15);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AlertModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for ItemSheetPresentationModifier()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
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

uint64_t sub_18BE66808()
{
  type metadata accessor for ItemSheetPresentationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CoreSheetPresentationModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for FocusedValueModifier()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static SceneStorage._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  v10 = *MEMORY[0x1E69E9840];
  Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for sceneStorageValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v0, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
  v1 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for sceneStorageDomain != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v5[0] = v1;
  v5[1] = v2;
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = AGCreateWeakAttribute();
  v3 = type metadata accessor for SceneStorage.Box();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for SceneStorage();
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void type metadata accessor for PropertyListTransform<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

uint64_t destroy for SceneStorage.Box()
{
}

uint64_t SceneStorage<A>.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v14, v11);
  v15 = type metadata accessor for JSONCodableTransform();
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v16, v13, a4, v15, a5);
  return (*(v10 + 8))(a1, a4);
}

uint64_t type metadata accessor for JSONCodableTransform()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t SceneStorage.init<A>(key:transform:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a3;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SceneStorage();
  *(a7 + 2) = 0;
  *(a7 + 3) = 0;
  *&a7[v16[9]] = 0;
  *a7 = a1;
  *(a7 + 1) = a2;
  v17 = *(a5 - 8);
  (*(v17 + 16))(&a7[v16[8]], a4, a5);
  type metadata accessor for TransformBox();
  v18 = v22;
  (*(v13 + 16))(v15, v22, a6);
  v19 = TransformBox.__allocating_init(_:)(v15);
  (*(v17 + 8))(a4, a5);
  result = (*(v13 + 8))(v18, a6);
  *&a7[v16[10]] = v19;
  return result;
}

uint64_t TransformBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

void *initializeWithCopy for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v5 + v10 + 16) & ~v10;
  v12 = (v6 + v10 + 16) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for SceneStorage(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t View.alert<A, B>(_:isPresented:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v27 = a4;
  v26 = a9;
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v18 + 16))(&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  View.alert<A>(_:isPresented:actions:)(v19, v20, v22 & 1, v24, a2, a3, v27, v28, a8, a6, a7, v26, *(&v26 + 1), a11);
  outlined consume of Text.Storage(v19, v21, v23 & 1);
}

uint64_t View.alert<A, B, C>(_:isPresented:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v36 = a5;
  v30 = a8;
  v31 = a7;
  v32 = a6;
  v33 = a2;
  v35 = a4;
  v34 = a3;
  v29 = a9;
  v28 = a12;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.alert<A, B>(_:isPresented:actions:message:)(v20, v21, v23 & 1, v25, v33, v34, v35, v36, v29, v32, v31, v30, a10, v28, a13, a14, a16, a17);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t SceneStorage.Box.update(property:phase:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v48 = *(a3 + 16);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v47 = *(v3 + 48);
  v43 = *(v3 + 52);
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = Value[1];
  if ((v7 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();

    *(v3 + 16) = v14;
    *(v3 + 24) = v15;
    *(v3 + 8) = 1;
    goto LABEL_17;
  }

  if ((v13 & 1) == 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  if (v8)
  {
    if (v15)
    {
      v18 = v9 == v14 && v8 == v15;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_16;
  }

  if (v15)
  {
LABEL_16:

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    SceneStorage.Box.reset()(a3);

    *(v3 + 16) = v14;
    *(v3 + 24) = v15;
LABEL_17:
    v8 = v15;
    v16 = *a1;
    v17 = a1[1];
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v8 = 0;
LABEL_4:
  v14 = v9;
  v16 = *a1;
  v17 = a1[1];
  if (!v11)
  {
LABEL_5:
    *(v3 + 32) = v16;
    *(v3 + 40) = v17;

    goto LABEL_23;
  }

LABEL_18:
  if (v10 == v16 && v11 == v17)
  {
    v16 = v10;
  }

  else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    MEMORY[0x18D009810](0xD000000000000056, 0x800000018CD47930);
  }

LABEL_23:
  v20 = v48;
  v49 = v14;
  v21 = *(v3 + 56);
  v44 = v21 == 0;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v42 = type metadata accessor for SceneStorage();
    if (*(a1 + *(v42 + 36)) && (type metadata accessor for ObservableLocation(), (v31 = swift_dynamicCastClass()) != 0))
    {
      v22 = v31;
      *(v3 + 56) = v31;
    }

    else
    {
      v8 = *(v3 + 24);
      v49 = *(v3 + 16);
      v32 = *(v3 + 48);
      v43 = *(v3 + 52);
      type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v30, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
      v33 = AGGraphGetValue();
      if (!*v33)
      {

        MEMORY[0x18D009810](0xD00000000000006CLL, 0x800000018CD478C0);
        v29 = 0;
        return v29 & 1;
      }

      v41 = &v39;
      v50 = 0;
      v34 = *(a1 + *(v42 + 40));
      MEMORY[0x1EEE9AC00](v33);
      v40 = &v39 - 4;
      v35 = v32;
      v20 = v48;
      v47 = v35;
      v42 = v35 | (v43 << 32);

      v36 = v42;
      v42 = v3;
      v22 = SceneStorageValues.getLocation<A>(_:domain:key:transformBox:signal:makeLocation:)(v20, v49, v8, v16, v17, v34, v36, partial apply for closure #1 in SceneStorage.Box.update(property:phase:), v40, v20);

      type metadata accessor for ObservableLocation();
      v37 = type metadata accessor for Optional();
      (*(*(v37 - 8) + 8))(&v50, v37);
      *(v42 + 56) = v22;
    }
  }

  WeakValue = AGGraphGetWeakValue();
  v25 = v24;
  v26 = v45;
  StoredLocationBase.updateValue.getter();
  v27 = type metadata accessor for SceneStorage();
  (*(v46 + 40))(a1 + *(v27 + 32), v26, v20);
  v28 = *(v27 + 36);

  *(a1 + v28) = v22;

  a1[2] = v49;
  a1[3] = v8;
  if (WeakValue)
  {
    v29 = v44;
    if (v25)
    {
      v29 = (v21 == 0) | StoredLocationBase.wasRead.getter();
    }
  }

  else
  {
    v29 = v44;
  }

  return v29 & 1;
}

uint64_t *SceneStorageValues.getLocation<A>(_:domain:key:transformBox:signal:makeLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34 = a8;
  v35 = a6;
  v38 = a2;
  v32[1] = a1;
  v36 = a7;
  v37 = a10;
  v33 = type metadata accessor for Optional();
  v15 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v17 = v32 - v16;
  if (a3)
  {
    v40 = v38;
    v41 = a3;

    MEMORY[0x18D00C9B0](47, 0xE100000000000000);

    MEMORY[0x18D00C9B0](a4, a5);

    v19 = v40;
    v18 = v41;
  }

  else
  {

    v19 = a4;
    v18 = a5;
  }

  swift_beginAccess();
  v20 = *(v10 + 24);
  if (!*(v20 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18), (v22 & 1) == 0))
  {
    swift_endAccess();
    v24 = v37;
LABEL_10:
    v32[0] = v19;
    v26 = v19;
    v27 = v35;
    SceneStorageValues.initialValue<A>(_:key:transformBox:)(v26, v18, v35, v24, v17);
    v25 = v34(v17);
    (*(v15 + 8))(v17, v33);
    type metadata accessor for SceneStorageValues.Entry();
    v28 = swift_allocObject();
    v29 = *v25;
    v28[2] = a4;
    v28[3] = a5;
    v28[4] = v38;
    v28[5] = a3;
    v28[6] = *(v29 + *MEMORY[0x1E697F430]);
    v28[7] = v25;
    v28[8] = v27;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v11 + 24);
    *(v11 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v32[0], v18, isUniquelyReferenced_nonNull_native);

    *(v11 + 24) = v39;
    swift_endAccess();
    goto LABEL_11;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  swift_endAccess();
  v24 = v37;
  if (*(v23 + 48) != v37)
  {
    goto LABEL_10;
  }

  v25 = *(v23 + 56);
  swift_unknownObjectRetain();
  v24 = v37;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_11:
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  ObservableLocation.addObserver(host:signal:)();

  return v25;
}

uint64_t SceneStorageValues.initialValue<A>(_:key:transformBox:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a5;
  v9 = type metadata accessor for Optional();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v25 = v5;
  v16 = *(*a3 + 88);

  v16(v30, v17, a1, v28, &v31);

  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if ((v18 & 1) == 0)
  {
    v23 = 1;
    v19(v11, 1, 1, a4);
    (*(v26 + 8))(v11, v27);
LABEL_6:
    v22 = v29;
    return (v19)(v22, v23, 1, a4);
  }

  v19(v11, 0, 1, a4);
  v20 = *(v12 + 32);
  v20(v15, v11, a4);
  if (v31 != 1)
  {
    (*(v12 + 8))(v15, a4);
    v23 = 1;
    goto LABEL_6;
  }

  --*(v25 + 32);
  v21 = v29;
  v20(v29, v15, a4);
  v22 = v21;
  v23 = 0;
  return (v19)(v22, v23, 1, a4);
}

uint64_t TransformBox.readValue(from:key:read:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 112);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - v12;
  (*(v11 + 16))(&v15 - v12, v4 + *(v9 + 128), v10);
  (*(*(v9 + 120) + 16))(a1, a2, a3, a4, v10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t JSONCodableTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v28 = a2;
  v29 = a3;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v31);
    outlined destroy of AnyHashable(v30);
    result = swift_dynamicCast();
    if (result)
    {
      v22 = v28;
      v21 = v29;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v26 = v21;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v23 = *(a5 - 8);
      (*(v23 + 56))(v17, 0, 1, a5);
      *v27 = 1;
      (*(v12 + 16))(v14, v17, v11);
      if ((*(v23 + 48))(v14, 1, a5) != 1)
      {
        *(a6 + 24) = a5;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
        (*(v23 + 32))(boxed_opaque_existential_1, v14, a5);

        outlined consume of Data._Representation(v22, v26);
        return (*(v12 + 8))(v17, v11);
      }

      v24 = *(v12 + 8);
      v24(v17, v11);

      outlined consume of Data._Representation(v22, v26);
      result = (v24)(v14, v11);
    }
  }

  else
  {
    result = outlined destroy of AnyHashable(v30);
  }

  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

void type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
    v7 = a3(a1, &unk_1F00085E8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t NavigationSplitViewVisibility.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<NavigationSplitViewVisibility.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v16;
    v14 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NavigationSplitViewVisibility.CodingKeys()
{
  if (*v0)
  {
    return 0x616D6F7475417369;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t storeEnumTagSinglePayload for CapsuleSlider.ScrollState.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapsuleSlider.ScrollState.Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance NavigationSplitViewVisibility.Kind@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t closure #1 in SceneStorage.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = *(v10 + 48);
  if (v15(v9, 1, a3) == 1)
  {
    v16 = type metadata accessor for SceneStorage();
    (*(v10 + 16))(v14, a2 + *(v16 + 32), a3);
    if (v15(v9, 1, a3) != 1)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
  }

  type metadata accessor for ObservableLocation();
  swift_allocObject();
  return ObservableLocation.init(initialValue:)();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

{
  v5 = v4;
  v10 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of Predicate<Pack{String}>?(a3, v12, type metadata accessor for HashableCommandGroupPlacementWrapper);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, a2, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
}

void type metadata accessor for _DictionaryStorage<String, SceneStorageValues.Entry>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, SceneStorageValues.Entry>)
  {
    type metadata accessor for SceneStorageValues.Entry();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, SceneStorageValues.Entry>);
    }
  }
}

double NavigationStack.init<>(path:root:)@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, double a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for NavigationStack();
  *(a7 + v14[11]) = 0;
  v15 = a7 + v14[13];
  *v15 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  a2();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, *&a4, a5, a6);
  v16 = type metadata accessor for Binding();
  *&v19 = a4;
  *(&v19 + 1) = a5;
  type metadata accessor for AnyNavigationPath.ToHomogeneous();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(*(v16 - 8) + 8))(a1, v16);
  v17 = a7 + v14[12];
  *v17 = a3;
  result = a4;
  *(v17 + 8) = v19;
  *(v17 + 24) = 1;
  return result;
}

uint64_t View.focusedValue<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v21 = a4;
  v20 = a3;
  v8 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for FocusedValueModifier();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  v17 = *(v8 - 8);
  (*(v17 + 16))(v11, a2, v8, v14);
  (*(v17 + 56))(v11, 0, 1, v8);
  FocusedValueModifier.init(keyPath:value:isSceneValue:)(a1, v11, a5, v16);

  MEMORY[0x18D00A570](v16, v20, v12, v21);
  return (*(v13 + 8))(v16, v12);
}

uint64_t FocusedValueModifier.init(keyPath:value:isSceneValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for FocusedValueModifier();
  v8 = *(v7 + 28);
  v9 = type metadata accessor for Optional();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 32)] = a3;
  return result;
}

void *initializeWithCopy for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);

  if (v9(v8, 1, v4))
  {
    v10 = *(v5 + 84);
    v11 = *(v5 + 64);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(v7, v8, v12);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v14 = *(v5 + 56);
    v13 = v5 + 56;
    v14(v7, 0, 1, v4);
    v10 = *(v13 + 28);
    v11 = *(v13 + 8);
  }

  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  *(v7 + v15) = *(v8 + v15);
  return a1;
}

uint64_t destroy for FocusedValueModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = a1 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t protocol witness for Projection.get(base:) in conformance AnyNavigationPath.ToHomogeneous<A>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized AnyNavigationPath.ToHomogeneous.get(base:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  *a3 = result;
  return result;
}

uint64_t specialized AnyNavigationPath.init<A>(path:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  type metadata accessor for AnyNavigationPath.HomogeneousBoxBase();
  (*(v4 + 16))(v6, a1, a2);
  return AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(v6);
}

uint64_t type metadata completion function for AnyNavigationPath.HomogeneousBoxBase()
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

uint64_t View.sheet<A, B>(item:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v37 = a6;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v29 = a1;
  v30 = a2;
  v36 = a9;
  v31 = a13;
  v35 = a10;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  v38 = a7;
  v39 = a8;
  v40 = v20;
  v41 = a11;
  v42 = a12;
  v43 = v21;
  v22 = type metadata accessor for ItemSheetPresentationModifier();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v29 - v25;
  (*(v16 + 16))(v18, v29, v15, v24);
  v27 = v30;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v18, v30, v32, v33, v34, v31, 1, a7, v26, a8);
  outlined copy of AppIntentExecutor?(v27);

  MEMORY[0x18D00A570](v26, v37, v22, v35);
  return (*(v23 + 8))(v26, v22);
}

uint64_t ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v17 = v16;
  lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  return ItemSheetPresentationModifier.init(item:onDismiss:sheetContent:placement:drawsBackground:anchorProvider:)(a1, a2, a3, a4, a5, a6, a7, v18, a9, a8, a10, v17);
}

void *initializeWithCopy for ItemSheetPresentationModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10 & ~v9, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  v18 = v14 + ((v9 + 16) & ~v9);
  if (!v13)
  {
    ++v18;
  }

  v19 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    *v19 = *v20;
  }

  else
  {
    v21 = *(v20 + 8);
    *v19 = *v20;
    *(v19 + 8) = v21;
  }

  v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v23 + 8);
  *v22 = *v23;
  *(v22 + 8) = v24;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 17) = *(v23 + 17);
  v25 = *(a3 + 32);
  v26 = *(*(v25 - 8) + 16);
  v27 = *(*(v25 - 8) + 80);
  v28 = v27 + 18 + v22;
  v29 = v27 + 18 + v23;

  v26(v28 & ~v27, v29 & ~v27, v25);
  return a1;
}

uint64_t destroy for ItemSheetPresentationModifier(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = v4 & 0xFFFFFFFFFFFFFFF8;

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8 + 8;
  if (!(*(v7 + 48))(v9 & ~v8, 1, v6))
  {
    (*(v7 + 8))(v9 & ~v8, v6);
  }

  v10 = a1 + *(v7 + 64) + ((v8 + 16) & ~v8);
  if (!*(v7 + 84))
  {
    ++v10;
  }

  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v11 >= 0xFFFFFFFFuLL)
  {
  }

  v12 = *(*(a2 + 32) - 8);
  v13 = *(v12 + 8);
  v14 = (((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 18) & ~*(v12 + 80);

  return v13(v14);
}

uint64_t View.confirmationDialog<A, B, C, D>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v33 = a8;
  v34 = a7;
  v35 = a6;
  v36 = a2;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v32 = a9;
  v31 = a10;
  v29 = a11;
  v30 = a13;
  v19 = MEMORY[0x1EEE9AC00](a1);
  (*(v21 + 16))(&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)(v22, v23, v25 & 1, v27, v36, v37, v38, v39, v32, v35, v34, v33, v31, *(&v31 + 1), v29, v30, a14, a15, a16, a18, a19);
  outlined consume of Text.Storage(v22, v24, v26 & 1);
}

uint64_t View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v50 = a15;
  v51 = a16;
  v52 = a17;
  v53 = a18;
  v54 = a19;
  v55 = a20;
  v56 = a21;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a10;
  v61 = a11;
  v62 = a12;
  v36 = a15;
  v37 = a16;
  v38 = a17;
  v39 = a18;
  v40 = a19;
  v41 = a20;
  v42 = a21;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a10;
  v47 = a13;
  v48 = a14;
  v25 = type metadata accessor for Optional();
  v26 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  return View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:), v49, partial apply for closure #2 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:), v35, a15, v25, v26, a19, WitnessTable, v28);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v66 = a8;
  v70 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a9;
  v63 = a13;
  v62 = a12;
  v53 = a11;
  v52 = a10;
  v54 = a19;
  v50 = a18;
  v65 = a17;
  v57 = a16;
  v64 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a15;
  v60 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>();
  v27 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v27);
  v51 = &v48 - v28;
  v29 = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v82 = a18;
  v83 = v29;
  WitnessTable = swift_getWitnessTable();
  *&v87 = v27;
  *(&v87 + 1) = a16;
  *&v88 = WitnessTable;
  *(&v88 + 1) = a19;
  v58 = type metadata accessor for ConfirmationDialogModifier();
  v59 = *(v58 - 8);
  v30 = MEMORY[0x1EEE9AC00](v58);
  v32 = &v48 - v31;
  MEMORY[0x18D009CE0](&v87, v30);
  v33 = a2;
  v48 = a4;
  Text.assertUnstyled(_:options:)();
  v79 = v68;
  v80 = v69;
  v81 = v70;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v78);
  v49 = v78;

  LOBYTE(a2) = a3;
  v34 = a1;
  v35 = a1;
  v36 = v33;
  outlined copy of Text.Storage(v34, v33, a2 & 1);

  v52(v37);
  KeyPath = swift_getKeyPath();
  v77 = 0;
  v39 = swift_getKeyPath();
  v76 = 0;
  v40 = swift_getKeyPath();
  v75 = 0;
  v41 = swift_getKeyPath();
  v74 = 0;
  *&v71 = KeyPath;
  BYTE8(v71) = v77;
  *(&v71 + 9) = *v86;
  HIDWORD(v71) = *&v86[3];
  *&v72 = v39;
  BYTE8(v72) = v76;
  *(&v72 + 9) = *v85;
  HIDWORD(v72) = *&v85[3];
  *v73 = v40;
  v73[8] = v75;
  *&v73[9] = *v84;
  *&v73[12] = *&v84[3];
  *&v73[16] = v41;
  v73[24] = 0;
  lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle();
  v42 = v51;
  v43 = v56;
  View.buttonStyle<A>(_:)(&v71, v56, &type metadata for PlatformItemListButtonStyle, v50);
  v87 = v71;
  v88 = v72;
  *v89 = *v73;
  *&v89[9] = *&v73[9];
  outlined destroy of PlatformItemListButtonStyle(&v87);
  v44 = (*(v60 + 8))(v26, v43);
  v45 = v61;
  v62(v44);
  ConfirmationDialogModifier.init(presentedValue:isPresented:title:titleVisibility:actions:message:)(v49, v68, v69, v70, v35, v36, a2 & 1, v48, v32, v66, v42, v45, v27, v57, WitnessTable, v54);
  v46 = v58;
  MEMORY[0x18D00A570](v32, v64, v58, v65);
  return (*(v59 + 8))(v32, v46);
}

uint64_t closure #2 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41[1] = a6;
  v42 = a5;
  v45 = a4;
  LODWORD(v48) = a3;
  v47 = a2;
  v51 = a7;
  v49 = *(a8 - 8);
  v50 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v43 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41[0] = v41 - v15;
  v16 = type metadata accessor for Optional();
  v44 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  v46 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v41 - v27;
  v54 = a1;
  v55 = v47;
  v56 = v48;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v53);
  if (v53 == 1)
  {
    v29 = v44;
    (*(v44 + 16))(v18, v45, v16);
    if ((*(v46 + 48))(v18, 1, a9) != 1)
    {
      v33 = v46;
      (*(v46 + 32))(v21, v18);
      v34 = v43;
      v42(v21);
      (*(v33 + 8))(v21, a9);
      v48 = v23;
      v35 = v41[0];
      v31 = v50;
      static ViewBuilder.buildExpression<A>(_:)(v34, a8, v50);
      v32 = v49;
      v36 = *(v49 + 8);
      v36(v34, a8);
      static ViewBuilder.buildExpression<A>(_:)(v35, a8, v31);
      v37 = v35;
      v23 = v48;
      v36(v37, a8);
      (*(v32 + 32))(v25, v34, a8);
      v30 = 0;
      goto LABEL_6;
    }

    (*(v29 + 8))(v18, v16);
  }

  v30 = 1;
  v32 = v49;
  v31 = v50;
LABEL_6:
  (*(v32 + 56))(v25, v30, 1, a8);
  static ToolbarContentBuilder.buildIf<A>(_:)(v25, v28);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v52 = v31;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v28, v22, WitnessTable);
  return (v38)(v28, v22);
}

uint64_t ConfirmationDialogModifierCore.init(presentedValue:isPresented:title:titleVisibility:actions:message:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void, void *))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v20[0] = a13;
  v20[1] = a14;
  v20[2] = a15;
  v20[3] = a16;
  v18 = a17(0, v20);
  (*(*(a13 - 8) + 32))(a9 + *(v18 + 64), a11, a13);
  return (*(*(a14 - 8) + 32))(a9 + *(v18 + 68), a12, a14);
}

unint64_t initializeWithCopy for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v5 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = *(v6 + 56);
  *(v5 + 64) = *(v6 + 64);
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v13 + 65 + v5) & ~v13;
  v15 = (v13 + 65 + v6) & ~v13;

  v11(v14, v15, v10);
  v16 = *(*(a3 + 24) - 8);
  (*(v16 + 16))((*(v12 + 48) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v12 + 48) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t destroy for ConfirmationDialogModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Text.Storage(*(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 65) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(*(a2 + 24) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v5 + 56) + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t sub_18BE6B350()
{
  type metadata accessor for ConfirmationDialogModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  type metadata accessor for ConfirmationDialogModifierCore();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ConfirmationDialogModifierCore<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v105 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v13 = a2[1];
  v101 = a2[2];
  v102 = v12;
  v14 = a2[3];
  v103 = a2[4];
  v15 = a2[1];
  v99 = *a2;
  v100 = v15;
  v90 = v101;
  v91 = v14;
  v92 = a2[4];
  v16 = *a1;
  v104 = *(a2 + 20);
  *v93 = *(a2 + 20);
  v88 = v99;
  v89 = v13;
  v52 = a8;
  a3();
  v84 = v101;
  v85 = v102;
  v86 = v103;
  v87 = v104;
  v82 = v99;
  v83 = v100;
  LOBYTE(v76) = 1;
  outlined init with copy of _ViewInputs(&v99, &v88);
  lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
  PropertyList.subscript.setter();
  v57 = v16;
  *&v88 = a4;
  *(&v88 + 1) = a5;
  *&v89 = a6;
  *(&v89 + 1) = a7;
  type metadata accessor for ConfirmationDialogModifierCore();
  v54 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(1, a4, a5, a6, a7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v74[2] = v84;
  v74[3] = v85;
  v74[4] = v86;
  v75 = v87;
  v74[0] = v82;
  v74[1] = v83;
  v78 = v84;
  v79 = v85;
  v80 = v86;
  LODWORD(v81[0]) = v87;
  v76 = v82;
  v77 = v83;
  v18 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v76, 1, &v88);
  MEMORY[0x1EEE9AC00](v18);
  *&v76 = &type metadata for AllPlatformItemListFlags;
  *(&v76 + 1) = a4;
  *&v77 = &protocol witness table for AllPlatformItemListFlags;
  *(&v77 + 1) = a6;
  v19 = type metadata accessor for PlatformItemListGenerator();
  v44 = v19;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v74, &v76);
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  v53 = a4;
  v21 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, closure #1 in Attribute.init<A>(_:)partial apply, v43, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v22);
  v80 = v92;
  v81[0] = *v93;
  *(v81 + 12) = *&v93[12];
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v79 = v91;
  (*(*(v19 - 8) + 8))(&v76, v19);
  v48 = v62;
  v56 = v16;
  _GraphValue.value.getter();
  v23 = *(*(a5 - 8) + 64);
  v51 = a6;
  if (v23)
  {
    closure #2 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(1, v53, a5, a6, a7);
  }

  v24 = AGGraphCreateOffsetAttribute2();
  v60[2] = v84;
  v60[3] = v85;
  v60[4] = v86;
  v61 = v87;
  v60[0] = v82;
  v60[1] = v83;
  v64 = v84;
  v65 = v85;
  v66 = v86;
  LODWORD(v67[0]) = v87;
  v62 = v82;
  v63 = v83;
  v25 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(v24, &v62, 1, &v88);
  v50 = a5;
  MEMORY[0x1EEE9AC00](v25);
  v49 = a7;
  *&v62 = &type metadata for TextPlatformItemListFlags;
  *(&v62 + 1) = v26;
  *&v63 = &protocol witness table for TextPlatformItemListFlags;
  *(&v63 + 1) = a7;
  v27 = type metadata accessor for PlatformItemListGenerator();
  v44 = v27;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v60, &v62);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, closure #1 in Attribute.init<A>(_:)partial apply, v43, v27, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v28);
  v66 = v92;
  v67[0] = *v93;
  *(v67 + 12) = *&v93[12];
  v62 = v88;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  (*(*(v27 - 8) + 8))(&v62, v27);
  v29 = v100;
  v47 = DWORD2(v100);
  swift_beginAccess();
  HIDWORD(v46) = *(v29 + 16);
  LODWORD(v68) = v16;
  v30 = _GraphValue.value.getter();
  v31 = AGCreateWeakAttribute();
  v32 = AGCreateWeakAttribute();
  v90 = v101;
  v91 = v102;
  v92 = v103;
  *v93 = v104;
  v88 = v99;
  v89 = v100;
  v33 = _ViewInputs.animatedPosition()();
  v90 = v101;
  v91 = v102;
  v92 = v103;
  *v93 = v104;
  v88 = v99;
  v89 = v100;
  v34 = _ViewInputs.animatedCGSize()();
  v35 = HIDWORD(v102);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v36 = PropertyList.Tracker.init()();
  v54 = &v46;
  v55 = 1;
  *&v88 = __PAIR64__(v30, HIDWORD(v46));
  *(&v88 + 1) = v31;
  *&v89 = v32;
  *(&v89 + 1) = __PAIR64__(v33, v47);
  v90 = __PAIR64__(v35, v34);
  *&v92 = 0;
  v91 = v36;
  BYTE8(v92) = 2;
  HIDWORD(v92) = *(&v68 + 3);
  *(&v92 + 9) = v68;
  memset(v93, 0, 24);
  v93[24] = 1;
  v93[25] = 1;
  *&v93[26] = v58;
  v94 = WORD2(v58);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v58 = v102;
  v59 = DWORD2(v102);
  MEMORY[0x1EEE9AC00](v102);
  v37 = v53;
  v39 = v50;
  v38 = v51;
  v40 = v49;
  v43[0] = v51;
  v43[1] = v49;
  v44 = &v88;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  *&v68 = v37;
  *(&v68 + 1) = v39;
  *&v69 = v38;
  *(&v69 + 1) = v40;
  ConfirmationDialog = type metadata accessor for MakeConfirmationDialog();
  (*(*(ConfirmationDialog - 8) + 8))(&v88, ConfirmationDialog);

  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v68 = v82;
  v69 = v83;
  return outlined destroy of _ViewInputs(&v68);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FocusedValueModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for ConfirmationDialogModifierCore();
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for ConfirmationDialogModifierCore();
  v8 = *(v7 + 68);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t destroy for MakeConfirmationDialog(uint64_t a1)
{

  if (*(a1 + 152))
  {
    if (*(a1 + 136))
    {
      outlined consume of Text.Storage(*(a1 + 112), *(a1 + 120), *(a1 + 128));
    }
  }

  return result;
}

unint64_t assignWithCopy for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  outlined copy of Text.Storage(v7, v8, v9);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v13 = *(*(a3 + 16) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v15 + 65 + v5) & ~v15;
  v17 = (v15 + 65 + v6) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(*(a3 + 24) - 8);
  (*(v18 + 24))((*(v14 + 40) + *(v18 + 80) + v16) & ~*(v18 + 80), (*(v14 + 40) + *(v18 + 80) + v17) & ~*(v18 + 80));
  return a1;
}

uint64_t ConfirmationDialogModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v75 = a3;
  v6 = *(a2 + 24);
  v61 = v6;
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = *(v8 + 16);
  v72 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
  v9 = type metadata accessor for ModifiedContent();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48[-v10];
  v63 = *(a2 + 32);
  v12 = v63;
  v13 = lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>();
  v87 = v12;
  v88 = v13;
  v74 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v62 = *(a2 + 40);
  v83 = v9;
  v84 = v6;
  v85 = WitnessTable;
  v86 = v62;
  v60 = type metadata accessor for ConfirmationDialogModifierCore();
  v70 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v48[-v14];
  v56 = type metadata accessor for StaticIf();
  v67 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v48[-v15];
  swift_getWitnessTable();
  v55 = type metadata accessor for _ViewModifier_Content();
  v58 = type metadata accessor for ModifiedContent();
  v68 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v52 = &v48[-v16];
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  v66 = type metadata accessor for ModifiedContent();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v54 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v48[-v19];
  v51 = *v4;
  v20 = *(v4 + 1);
  v21 = *(v4 + 2);
  v50 = v4[24];
  v23 = *(v4 + 4);
  v22 = *(v4 + 5);
  LOBYTE(v6) = v4[48];
  v24 = *(v4 + 7);
  v49 = v4[64];

  outlined copy of Text.Storage(v23, v22, v6);

  View.styleContext<A>(_:)();
  v25 = &v4[*(a2 + 68)];
  v26 = v72;
  v27 = v61;
  (*(v73 + 16))(v72, v25, v61);
  v47 = v26;
  v28 = v57;
  ConfirmationDialogModifierCore.init(presentedValue:isPresented:title:titleVisibility:actions:message:)(v51, v20, v21, v50, v23, v22, v6, v24, v57, v49, v11, v47, v65, v27, WitnessTable, v62, type metadata accessor for ConfirmationDialogModifierCore);
  v29 = lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  v30 = v53;
  v31 = v60;
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v60);
  (*(v70 + 8))(v28, v31);
  v32 = v55;
  v33 = swift_getWitnessTable();
  v34 = v52;
  v35 = v32;
  v36 = v56;
  MEMORY[0x18D00A570](v30, v35, v56, v33);
  (*(v67 + 8))(v30, v36);
  v80 = v29;
  v81 = &protocol witness table for ConfirmationDialogModifierCore<A, B>;
  v82 = MEMORY[0x1E697E100];
  v37 = swift_getWitnessTable();
  v78 = v33;
  v79 = v37;
  v38 = v58;
  v39 = swift_getWitnessTable();
  v40 = v54;
  View.sharingPickerHost()(v38, v39);
  (*(v68 + 8))(v34, v38);
  IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v76 = v39;
  v77 = IsSharingPicker;
  v42 = v66;
  v43 = swift_getWitnessTable();
  v44 = v59;
  static ViewBuilder.buildExpression<A>(_:)(v40, v42, v43);
  v45 = *(v69 + 8);
  v45(v40, v42);
  static ViewBuilder.buildExpression<A>(_:)(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t static FocusedValueModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(__int128 *__return_ptr)@<X2>, void *a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = a1[1];
  v26 = a1[2];
  v27 = v4;
  v6 = a1[3];
  v28 = a1[4];
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  v8 = a1[4];
  v21 = v6;
  v22 = v8;
  v18 = v24;
  v29 = *(a1 + 20);
  v23 = *(a1 + 20);
  v19 = v5;
  v20 = v26;
  a2(&v14);
  v15 = v27;
  v16 = DWORD2(v27);
  *&v18 = v27;
  DWORD2(v18) = DWORD2(v27);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    type metadata accessor for DefaultLayoutViewResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v24, v17);
    v10 = DefaultLayoutViewResponder.init(inputs:)();
    v18 = v14;

    v11 = _ViewOutputs.viewResponders()();

    LODWORD(v18) = v11;
    *(&v18 + 1) = v10;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter();

    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v18) = 0;
    v12 = PreferencesOutputs.subscript.setter();
    *&v18 = v15;
    DWORD2(v18) = v16;
    MEMORY[0x1EEE9AC00](v12);
    outlined init with copy of PreferencesInputs(&v15, v17);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v13 = *(&v14 + 1);
  *a3 = v14;
  a3[1] = v13;
  return result;
}

void type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, MEMORY[0x1E697F278], MEMORY[0x1E697F270], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t static EnvironmentChangeModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[2] = a4;
  v25 = a3;
  v24[1] = a7;
  v40 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v14 = type metadata accessor for Observer();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - v16;
  LODWORD(v16) = *a1;
  v39 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 40);
  v36 = *(a2 + 24);
  v37 = v19;
  v38[0] = *(a2 + 56);
  *(v38 + 12) = *(a2 + 68);
  v29 = v16;
  type metadata accessor for EnvironmentChangeModifier();
  type metadata accessor for _GraphValue();
  LODWORD(a2) = _GraphValue.value.getter();
  swift_beginAccess();
  LODWORD(a1) = *(v18 + 16);
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v31);
  v26 = v31;
  v27 = DWORD2(v31);
  v28 = BYTE12(v31);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  Observer.init(modifier:environment:cycleDetector:lastValue:)(a2, a1, &v26, v13, a5, a6, type metadata accessor for Observer, v17);
  v30[2] = v14;
  v30[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v30, v14, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  (*(v15 + 8))(v17, v14);
  v22 = AGGraphSetFlags();
  v31 = v39;
  v32 = v18;
  v33 = v36;
  v34 = v37;
  v35[0] = v38[0];
  *(v35 + 12) = *(v38 + 12);
  return v25(v22, &v31);
}

uint64_t View.onContinueUserActivity(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v7, v16, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v12 + 32))(v19 + v17, v15, a5);
  v20 = (v19 + v18);
  v21 = v30;
  *v20 = v29;
  v20[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v31;
  *v22 = v21;
  v22[1] = v23;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>);

  v32 = v25;
  v33 = a5;
  v34 = v26;
  v35 = a6;
  type metadata accessor for SubscriptionView();
  result = default argument 0 of SceneBridgeReader.init(sceneBridge:handler:)();
  *a7 = result;
  *(a7 + 8) = v28 & 1;
  *(a7 + 16) = partial apply for closure #1 in View.onContinueUserActivity(_:perform:);
  *(a7 + 24) = v19;
  return result;
}

uint64_t sub_18BE6D3F0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t View.alert<A>(_:isPresented:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a8;
  v46 = a7;
  v57 = a6;
  v55 = a9;
  v56 = a11;
  v51 = a10;
  v54 = a13;
  v47 = a12;
  v52 = *(a12 - 8);
  v44 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v48 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v40 - v22;
  v23 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v68 = a14;
  v69 = v23;
  WitnessTable = swift_getWitnessTable();
  *&v58 = v21;
  *(&v58 + 1) = MEMORY[0x1E6981E70];
  *&v59 = WitnessTable;
  *(&v59 + 1) = MEMORY[0x1E6981E60];
  v49 = type metadata accessor for AlertModifier();
  v50 = *(v49 - 8);
  v24 = MEMORY[0x1EEE9AC00](v49);
  v26 = &v40 - v25;
  MEMORY[0x18D009CE0](&v58, v24);
  Text.assertUnstyled(_:options:)();
  v41 = a5;
  v65 = a5;
  v66 = v57;
  v27 = v46;
  v67 = v46;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v64);
  v42 = v64;

  v28 = a1;
  v29 = a2;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v31 = v53(v30);
  v32 = v45;
  v33 = v47;
  MEMORY[0x18D00A570](v31, v47, &unk_1EFFCFD30, v44);
  (*(v52 + 8))(v20, v33);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  *(&v39 + 1) = MEMORY[0x1E6981E60];
  *&v39 = WitnessTable;
  *(&v38 + 1) = MEMORY[0x1E6981E70];
  *&v38 = v48;
  v34 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v42, v41, v57, v27, v28, v29, a3 & 1, a4, v26, v32, v37, &v58, 0, v38, v39);
  v35 = v49;
  MEMORY[0x18D00A570](v26, v56, v49, v54, v34);
  return (*(v50 + 8))(v26, v35);
}

uint64_t closure #1 in View.onContinueUserActivity(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity);
  v21 = specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(v16, a2, a3, a1);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a2;
  v17[5] = a3;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v19 = v18;
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>);
  View.onReceive<A>(_:perform:)(&v21, partial apply for closure #1 in closure #1 in View.onContinueUserActivity(_:perform:), v17, a6, v19, a7, a8);
}

uint64_t sub_18BE6DA70()
{

  return swift_deallocObject();
}

uint64_t View.navigationDestination<A, B>(for:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a2;
  v11[1] = a3;

  v9 = type metadata accessor for NavigationDestinationModifier();
  MEMORY[0x18D00A570](v11, a4, v9, a7);
}

uint64_t type metadata completion function for PlatformItemLabelView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__AaBRd_0_r_0_lAA15ModifiedContentVyxAA13AlertModifierVyADyqd_0_AA07ActionsG033_CFAA2A4382B588C39EB2C5339BE6A4A5LLVGAA05EmptyC0VGGAaBHPxAaBHD1__AmA0cG0HPyHCHCTm()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  swift_getWitnessTable();
  type metadata accessor for AlertModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void type metadata accessor for StyleContextWriter<DialogActionStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t implicit closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a1[9];
  v28 = a1[8];
  v29 = v6;
  v30 = *(a1 + 160);
  v7 = a1[5];
  v24 = a1[4];
  v25 = v7;
  v8 = a1[7];
  v26 = a1[6];
  v27 = v8;
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a1[3];
  v22 = a1[2];
  v23 = v10;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a4;
  *(&v32 + 1) = a5;
  ConfirmationDialog = type metadata accessor for MakeConfirmationDialog();
  v18 = ConfirmationDialog;
  WitnessTable = swift_getWitnessTable();
  v12 = *(ConfirmationDialog - 8);
  (*(v12 + 16))(&v31, a1, ConfirmationDialog);
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, closure #1 in Attribute.init<A>(_:)partial apply, v17, ConfirmationDialog, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  (*(v12 + 8))(&v31, ConfirmationDialog);
  return v16;
}

uint64_t initializeWithCopy for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a2 + 152);

  if (v7)
  {
    v8 = *(a2 + 136);
    if (v8)
    {
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      v11 = *(a2 + 128);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v11;
      *(a1 + 136) = v8;
    }

    else
    {
      v13 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v13;
    }

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v7;
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
  }

  return a1;
}

void protocol witness for static UserDefaultsValueTransform.readValue(from:key:) in conformance StringTransform(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = MEMORY[0x1E69E6158];
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    a4[2] = 0;
  }

  *a4 = v8;
  a4[1] = v10;
  a4[3] = v11;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(v2 + *(*v2 + 232), a1);
  return v2;
}

uint64_t ItemSheetPresentationModifier.init(item:onDismiss:sheetContent:placement:drawsBackground:anchorProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for ItemSheetPresentationModifier();
  v20 = (a9 + v19[17]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a9 + v19[18]);
  *v21 = a4;
  v21[1] = a5;
  *(a9 + v19[19]) = a6;
  *(a9 + v19[20]) = a7;
  return (*(*(a12 - 8) + 32))(a9 + v19[21], a8, a12);
}

uint64_t closure #1 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46[1] = a6;
  v47 = a5;
  v50 = a4;
  v56 = a8;
  v55 = a12;
  v15 = *(a7 - 8);
  v53 = a2;
  v54 = v15;
  MEMORY[0x1EEE9AC00](a1);
  v48 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46[0] = v46 - v18;
  v19 = type metadata accessor for Optional();
  v49 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - v20;
  v51 = a10;
  v52 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v46 - v30;
  v59 = a1;
  v60 = v53;
  v61 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v58);
  if (v58 == 1)
  {
    v32 = v49;
    (*(v49 + 16))(v21, v50, v19);
    if ((*(v52 + 48))(v21, 1, v51) != 1)
    {
      v36 = v52;
      v37 = v21;
      v38 = v51;
      (*(v52 + 32))(v24, v37, v51);
      v39 = v48;
      v47(v24);
      (*(v36 + 8))(v24, v38);
      v53 = v26;
      v40 = v46[0];
      v34 = v55;
      static ViewBuilder.buildExpression<A>(_:)(v39, a7, v55);
      v35 = v54;
      v41 = *(v54 + 8);
      v41(v39, a7);
      static ViewBuilder.buildExpression<A>(_:)(v40, a7, v34);
      v42 = v40;
      v26 = v53;
      v41(v42, a7);
      (*(v35 + 32))(v28, v39, a7);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v54;
  v34 = v55;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v57 = v34;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v31, v25, WitnessTable);
  return (v43)(v31, v25);
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t List.init(selection:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a1;
  type metadata accessor for SelectionManagerBox();
  v13 = type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13, v16);
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v19 = type metadata accessor for List();
  *(a8 + *(v19 + 56)) = 0;
  v20 = a8 + *(v19 + 60);
  *v20 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v21 = type metadata accessor for Optional();
  v22 = v27;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in List.init(selection:content:), v30, MEMORY[0x1E69E73E0], v13, v23, v18);
  v24 = (*(v15 + 40))(a8, v18, v14);
  v29(v24);
  return (*(*(v21 - 8) + 8))(v22, v21);
}

uint64_t closure #1 in List.init(selection:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a4, a3, a4);
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  type metadata accessor for OptionalSelectionManagerProjection();
  swift_getWitnessTable();
  return Binding.projecting<A>(_:)();
}

{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a4, a3, a4);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetSelectionManagerProjection();
  swift_getWitnessTable();
  return Binding.projecting<A>(_:)();
}

uint64_t partial apply for closure #1 in List.init(selection:content:)(uint64_t a1)
{
  return closure #1 in List.init(selection:content:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in List.init(selection:content:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t OptionalSelectionManagerProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return SelectionManagerBox.init(optional:)(v7, a2);
}

uint64_t SelectionManagerBox.init(optional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for SelectionManagerBox();

  return swift_storeEnumTagMultiPayload();
}

void *initializeWithCopy for List(void *__dst, void *__src, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 84);
  v10 = *(v7 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (v10 + 23) & ~(v10 | 7);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFF)
  {
    v44 = v12;
    v15 = v9 == 0;
    *__dst = *__src;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = v14;
    v17 = (v16 + v11 + 8) & ~v11;
    v18 = ((v13 + v11 + 8) & ~v11);
    if (v15)
    {
      v19 = v8 + 1;
    }

    else
    {
      v19 = v8;
    }

    if (v19 > v8)
    {
      v8 = v19;
    }

    if (v8 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v8;
    }

    v21 = v18[v20];

    if (v21 < 3)
    {
      v25 = v17;
      v3 = a3;
      goto LABEL_36;
    }

    if (v20 <= 3)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      v25 = v17;
      v3 = a3;
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = *v18;
    }

    else
    {
      if (v22 == 2)
      {
        v23 = *v18;
      }

      else if (v22 == 3)
      {
        v23 = *v18 | (v18[2] << 16);
      }

      else
      {
        v23 = *v18;
      }

      v25 = v17;
      v3 = a3;
    }

    v26 = (v23 | ((v21 - 3) << (8 * v20))) + 3;
    v27 = v23 + 3;
    if (v20 >= 4)
    {
      v21 = v27;
    }

    else
    {
      v21 = v26;
    }

LABEL_36:
    if (v21 == 2)
    {
      (*(v7 + 16))(v25, v18, v6);
      v28 = 2;
    }

    else
    {
      if (v21 != 1)
      {
        *v25 = *v18;
        *(v25 + v20) = 0;

LABEL_45:
        v12 = v44;
        goto LABEL_46;
      }

      if ((*(v7 + 48))(v18, 1, v6))
      {
        memcpy(v25, v18, v19);
      }

      else
      {
        (*(v7 + 16))(v25, v18, v6);
        (*(v7 + 56))(v25, 0, 1, v6);
      }

      v28 = 1;
    }

    *(v25 + v20) = v28;
    goto LABEL_45;
  }

  if (v9)
  {
    v24 = *(v7 + 64);
  }

  else
  {
    v24 = v8 + 1;
  }

  if (v24 > v8)
  {
    v8 = v24;
  }

  if (v8 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v8;
  }

  memcpy(__dst, __src, v20 + v12 + 1);
LABEL_46:
  v29 = *(*(v3 + 24) - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = v20 + v12 + v31 + 1;
  v33 = (__dst + v32) & ~v31;
  v34 = (__src + v32) & ~v31;
  (*(v29 + 16))(v33, v34);
  v35 = *(v30 + 48) + 7;
  v36 = ((v35 + v33) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + v34) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  v41 = *(v39 + 8);
  LOBYTE(v30) = *(v39 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *v38 = v40;
  *(v38 + 8) = v41;
  *(v38 + 16) = v30;
  return __dst;
}

uint64_t destroy for List(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 <= 0xFFFFFFFEuLL)
  {
    if (v6)
    {
      v19 = *(v5 + 64);
    }

    else
    {
      v19 = v7 + 1;
    }

    if (v19 <= v7)
    {
      v19 = *(v5 + 64);
    }

    if (v19 <= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = v19;
    }

    goto LABEL_37;
  }

  v11 = v6 == 0;
  v12 = ((v10 + v8 + 8) & v9);
  if (v11)
  {
    v13 = v7 + 1;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= v7)
  {
    v13 = v7;
  }

  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v12 + v14);
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *v12;
      }

      else if (v17 == 3)
      {
        v18 = *((v10 + v8 + 8) & v9) | (*(((v10 + v8 + 8) & v9) + 2) << 16);
      }

      else
      {
        v18 = *v12;
      }

LABEL_30:
      v20 = (v18 | (v16 << (8 * v14))) + 3;
      v15 = v18 + 3;
      if (v14 < 4)
      {
        v15 = v20;
      }

      goto LABEL_32;
    }

    if (v17)
    {
      v18 = *v12;
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v15 == 2)
  {
LABEL_35:
    (*(v5 + 8))(v12, v4);
    goto LABEL_37;
  }

  if (v15 == 1)
  {
    if ((*(v5 + 48))(v12, 1, v4))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  (*(*(*(a2 + 24) - 8) + 8))((a1 + ((v8 + 16) & v9) + *(*(*(a2 + 24) - 8) + 80) + v14 + 1) & ~*(*(*(a2 + 24) - 8) + 80));

  return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
}