BOOL specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && a2[7] == a1[7];
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  return (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && a2[7] == a1[7];
}

uint64_t specialized static PKStrokeInheritedProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v37 = a1;
  CRRegister.projectedValue.getter();
  v38 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (a2 & 1) != 0 && (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v23 = *(v36 + 8), v23(v11, v8), v23(v13, v8), (v22) && (v24 = v32, v25 = v35, CRRegister.projectedValue.getter(), v26 = v33, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized static PKStrokeProperties.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v95[-v9];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v95[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v106 = &v95[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v95[-v21];
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v97 = v8;
  v98 = v5;
  v99 = v4;
  v23 = a2;
  v101 = type metadata accessor for PKStrokeProperties(0);
  v24 = v101[5];
  v25 = *(v18 + 48);
  v100 = a1;
  outlined init with copy of Date?(a1 + v24, v22, &_s10Foundation4UUIDVSgMd);
  v26 = a2 + v24;
  v27 = a2;
  outlined init with copy of Date?(v26, &v22[v25], &_s10Foundation4UUIDVSgMd);
  v102 = v11;
  v28 = *(v11 + 48);
  if (v28(v22, 1, v10) == 1)
  {
    if (v28(&v22[v25], 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s10Foundation4UUIDVSgMd);
      goto LABEL_9;
    }

LABEL_7:
    v29 = v22;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_16;
  }

  outlined init with copy of Date?(v22, v17, &_s10Foundation4UUIDVSgMd);
  if (v28(&v22[v25], 1, v10) == 1)
  {
    (*(v102 + 8))(v17, v10);
    goto LABEL_7;
  }

  v30 = v102;
  v31 = v105;
  (*(v102 + 32))(v105, &v22[v25], v10);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v96 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v30 + 8);
  v32(v31, v10);
  v32(v17, v10);
  v27 = v23;
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s10Foundation4UUIDVSgMd);
  if ((v96 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v33 = v101[6];
  v34 = *(v18 + 48);
  v35 = v100;
  v36 = v106;
  outlined init with copy of Date?(v100 + v33, v106, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Date?(v27 + v33, &v36[v34], &_s10Foundation4UUIDVSgMd);
  if (v28(v36, 1, v10) != 1)
  {
    v37 = v104;
    outlined init with copy of Date?(v36, v104, &_s10Foundation4UUIDVSgMd);
    if (v28(&v36[v34], 1, v10) != 1)
    {
      v40 = v102;
      v41 = &v36[v34];
      v42 = v105;
      (*(v102 + 32))(v105, v41, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v40 + 8);
      v44(v42, v10);
      v44(v37, v10);
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s10Foundation4UUIDVSgMd);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v102 + 8))(v37, v10);
    goto LABEL_14;
  }

  if (v28(&v36[v34], 1, v10) != 1)
  {
LABEL_14:
    v29 = v36;
    goto LABEL_15;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s10Foundation4UUIDVSgMd);
LABEL_19:
  v45 = v101;
  if (*(v35 + v101[7]) != *(v27 + v101[7]))
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v46 = v103;
  Ref.id.getter();
  v47 = v97;
  Ref.id.getter();
  v48 = CRKeyPath.rawValue.getter();
  v50 = v49;
  v51 = CRKeyPath.rawValue.getter();
  v53 = v52;
  v54 = specialized static Data.== infix(_:_:)(v48, v50, v51, v52);
  outlined consume of Data._Representation(v51, v53);
  outlined consume of Data._Representation(v48, v50);
  v55 = *(v98 + 8);
  v56 = v99;
  v55(v47, v99);
  v55(v46, v56);
  if ((v54 & 1) == 0)
  {
    goto LABEL_16;
  }

  v57 = v45[9];
  v58 = *(v35 + v57);
  v59 = *(v27 + v57);
  if (v58)
  {
    if (!v59)
    {
      goto LABEL_16;
    }

    v60 = *(*(v58 + 16) + 16);

    v61 = [v60 rawValue];
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = [*(*(v59 + 16) + 16) rawValue];
    v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    LOBYTE(v65) = specialized static Data.== infix(_:_:)(v62, v64, v66, v68);
    outlined consume of Data._Representation(v66, v68);
    outlined consume of Data._Representation(v62, v64);

    if ((v65 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v59)
  {
    goto LABEL_16;
  }

  v69 = v45[10];
  v70 = (v35 + v69);
  v71 = *(v35 + v69 + 32);
  v72 = v27 + v69;
  if (v71)
  {
    if ((v72[32] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v72[32])
    {
      goto LABEL_16;
    }

    v73 = v70[1];
    v74 = v70[2];
    v75 = v70[3];
    v76 = *v72;
    v77 = *(v72 + 1);
    v78 = *(v72 + 2);
    v79 = *(v72 + 3);
    v109[0] = _OSSwapInt64(*v70);
    v109[1] = _OSSwapInt64(v73);
    v109[2] = _OSSwapInt64(v74);
    v109[3] = _OSSwapInt64(v75);
    v35 = v100;
    v80 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v109, v110);
    v82 = v81;
    v107[0] = _OSSwapInt64(v76);
    v107[1] = _OSSwapInt64(v77);
    v107[2] = _OSSwapInt64(v78);
    v107[3] = _OSSwapInt64(v79);
    v83 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v107, v108);
    v85 = v84;
    LOBYTE(v77) = specialized static Data.== infix(_:_:)(v80, v82, v83, v84);
    outlined consume of Data._Representation(v83, v85);
    outlined consume of Data._Representation(v80, v82);
    if ((v77 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v86 = v45[11];
  v87 = (v35 + v86);
  v88 = *(v35 + v86 + 48);
  v89 = v27 + v86;
  if (v88)
  {
    if (v89[48])
    {
LABEL_36:
      v38 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_9Coherence10AnyCRValueVTt1g5(*(v35 + v45[12]), *(v27 + v45[12]));
      return v38 & 1;
    }
  }

  else if ((v89[48] & 1) == 0)
  {
    v90 = v87[1];
    v91 = v87[2];
    v92 = *v89;
    v93 = *(v89 + 1);
    v94 = *(v89 + 2);
    v110[0] = *v87;
    v110[1] = v90;
    v110[2] = v91;
    v110[3] = v92;
    v110[4] = v93;
    v110[5] = v94;
    if (static CGAffineTransform.== infix(_:_:)())
    {
      goto LABEL_36;
    }
  }

LABEL_16:
  v38 = 0;
  return v38 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane()
{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

uint64_t specialized static PKStrokeStruct.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v23 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v24 = a1;
  CRRegister.projectedValue.getter();
  v25 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v17(v16, v10);
  if (a1 & 1) != 0 && (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd), v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v19 = *(v23 + 8), v19(v7, v4), v19(v9, v4), (v18))
  {
    v20 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SStMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_SStMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_ss17CodingUserInfoKeyV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6CD4F0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11CalculateUI0E15GraphExpressionCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_sSS_10Foundation4UUIDVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit5ColorV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of PKStrokeProperties(v12, v5, type metadata accessor for Color);
      specialized Set._Variant.insert(_:)(v8, v5);
      outlined destroy of PKStrokeProperties(v8, type metadata accessor for Color);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v11, &_sSo11CFStringRefa_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence9CRKeyPathV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_sSi_9Coherence10AnyCRValueVtMd);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AnyCRValue();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t outlined init with copy of PKStrokeProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PKStrokeProperties(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UIColor and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TaggedStroke(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PKStrokeProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PKStrokeProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for TaggedStroke.ObservableDifference()
{
  type metadata accessor for Ref<PKStrokeStruct>.ObservableDifference();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>>(319, &lazy cache variable for type metadata for Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>>.ObservableDifference, MEMORY[0x1E69953A0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Ref<PKStrokeStruct>.ObservableDifference()
{
  if (!lazy cache variable for type metadata for Ref<PKStrokeStruct>.ObservableDifference)
  {
    type metadata accessor for PKStrokeStruct(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
    v0 = type metadata accessor for Ref.ObservableDifference();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Ref<PKStrokeStruct>.ObservableDifference);
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.ObservableDifference()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKStrokeInheritedProperties>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKInk?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGAffineTransform>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKInk?>?, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGAffineTransform>?, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PKStrokeStruct.ObservableDifference()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKStrokeInheritedProperties>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PKStrokeStruct.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKStrokeProperties>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for PKStrokeStruct.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKStrokeProperties>?, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PKStrokeStructCache.BoundsParameters(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PKStrokeStructCache.BoundsParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSSGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      outlined copy of Data._Representation(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_AC3RefVy8PaperKit20PDFAnnotationElementVGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 40 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = *(v8 + 4);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
      v16[3] = v19;
      v16[4] = v20;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v12 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 16 * result) = v12;
      v9 = v4[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v4[2] = v11;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 3)
    {
      v13 = i[1];
      v14 = *i;
      v5 = *(i + 4);
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 3)
    {
      v13 = i[1];
      v14 = *i;
      v5 = *(i + 4);
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_yptMd);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRAsset();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDV_SitMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s8PaperKit9PDFPageIDV_SitMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PDFPageID();
      result = outlined init with take of TaggedStroke(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PDFPageID);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_SitMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_SitMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_AC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17FormAnalyticsKeysO_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, Swift::Int))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v9 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 8);
      v12 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11, a4, a5);
      if (v14)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v11;
      *(v9[7] + 8 * result) = v12;
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v9[2] = v17;
      if (!--v5)
      {

        return v9;
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

void outlined consume of AsyncCache<Data, CGImageRef>.CacheState(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_SitMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence7CRAssetV_SitMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRAsset();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit0cD7PDFPageC_AC15PageOverlayView_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v12 = *i;
      v5 = *(i - 1);
      v6 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_So13PDFAnnotationCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v8, &v15, a4);
      v9 = v15;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = outlined init with take of Any(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of WeakCalculateExpression(&v5[v8], v7[7] + 8 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So8NSNumberCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8NSNumberCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_So8NSNumberCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So9PKDrawingCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So9PKDrawingCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_So9PKDrawingCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      outlined copy of Data._Representation(v5, v6);
      outlined copy of AsyncCache<Data, CGImageRef>.CacheState(v7, v8, v9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

id outlined copy of AsyncCache<Data, CGImageRef>.CacheState(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9Coherence28CRAttributeStringDecodingKey_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence28CRAttributeStringDecodingKey_pXpGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_SDySo0cD8TraitKeyaSo0C6WeightaGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaSDySo0cD8TraitKeyaSo0C6WeightaGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScCySo10CGImageRefaSgs5NeverOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ScCySo10CGImageRefaSgs5NeverOGtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScCySo10CGImageRefaSgs5NeverOGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_ScCySo10CGImageRefaSgs5NeverOGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0F6CursorVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0F6CursorVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6CD4F0](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for AnyCanvasElementView();
    v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCanvasElementView and conformance NSObject, type metadata accessor for AnyCanvasElementView);
    result = MEMORY[0x1DA6CD4F0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit10FeatureSetV08InternalD0O_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type FeatureSet.InternalFeature and conformance FeatureSet.InternalFeature();
  result = MEMORY[0x1DA6CD4F0](v2, &type metadata for FeatureSet.InternalFeature, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9PencilKit12PKInkingToolV7InkTypeO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for PKInkingTool.InkType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8PKStrokeC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v11 = type metadata accessor for PKMathRecognitionItemAttributes(0, j);
    v12 = lazy protocol witness table accessor for type UIColor and conformance NSObject(a4, j);
    result = MEMORY[0x1DA6CD4F0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6CE0C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = __CocoaSet.count.getter();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResizeHandleType and conformance ResizeHandleType()
{
  result = lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType;
  if (!lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType;
  if (!lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResizeHandleType and conformance ResizeHandleType);
  }

  return result;
}

char *specialized Sequence.flatMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  (*(v10 + 16))(v12, v44, v9);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v16 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v43 = v15;
  v44 = v13;
  v39 = v16;
  dispatch thunk of IteratorProtocol.next()();
  v37 = *(v4 + 48);
  v38 = v4 + 48;
  if (v37(v8, 1, v3) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v34 + 8))(v43, v44);
    return v17;
  }

  else
  {
    v19 = *(v4 + 32);
    v18 = v4 + 32;
    v35 = v19;
    v36 = (v18 - 24);
    v17 = MEMORY[0x1E69E7CC0];
    v20 = v42;
    v19(v42, v8, v3);
    while (1)
    {
      v40(&v45, v20);
      if (v2)
      {
        (*v36)(v20, v3);
        (*(v34 + 8))(v43, v44);

        return v17;
      }

      v22 = v8;
      v23 = v18;
      v24 = v3;
      result = (*v36)(v20, v3);
      v25 = v45;
      v26 = *(v45 + 16);
      v27 = *(v17 + 2);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v28 > *(v17 + 3) >> 1)
      {
        if (v27 <= v28)
        {
          v29 = v27 + v26;
        }

        else
        {
          v29 = v27;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v29, 1, v17);
        v17 = result;
      }

      v3 = v24;
      v18 = v23;
      if (*(v25 + 16))
      {
        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v26)
        {
          goto LABEL_25;
        }

        v8 = v22;
        swift_arrayInitWithCopy();

        v20 = v42;
        if (v26)
        {
          v30 = *(v17 + 2);
          v31 = __OFADD__(v30, v26);
          v32 = v30 + v26;
          if (v31)
          {
            goto LABEL_26;
          }

          *(v17 + 2) = v32;
        }
      }

      else
      {

        v20 = v42;
        v8 = v22;
        if (v26)
        {
          goto LABEL_24;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v37(v8, 1, v3) == 1)
      {
        goto LABEL_3;
      }

      v35(v20, v8, v3);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v36 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  (*(v11 + 16))(v13, v47, v10, v15);
  v18 = v37;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v19 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v46 = v17;
  v47 = v14;
  v43 = v19;
  dispatch thunk of IteratorProtocol.next()();
  v41 = *(v5 + 48);
  v42 = v5 + 48;
  if (v41(v18, 1, v4) == 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v36 + 8))(v46, v47);
    return v20;
  }

  else
  {
    v22 = *(v5 + 32);
    v21 = v5 + 32;
    v39 = v22;
    v40 = (v21 - 24);
    v20 = MEMORY[0x1E69E7CC0];
    v38 = v21;
    v22(v7, v18, v4);
    while (1)
    {
      v44(&v48, v7);
      if (v3)
      {
        (*v40)(v7, v4);
        (*(v36 + 8))(v46, v47);

        return v20;
      }

      v24 = v18;
      v25 = v7;
      v26 = v4;
      result = (*v40)(v7, v4);
      v27 = v48;
      v28 = *(v48 + 16);
      v29 = *(v20 + 2);
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v30 > *(v20 + 3) >> 1)
      {
        if (v29 <= v30)
        {
          v31 = v29 + v28;
        }

        else
        {
          v31 = v29;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v31, 1, v20);
        v20 = result;
      }

      v18 = v24;
      v3 = 0;
      if (*(v27 + 16))
      {
        v32 = *(v20 + 2);
        if ((*(v20 + 3) >> 1) - v32 < v28)
        {
          goto LABEL_25;
        }

        memcpy(&v20[32 * v32 + 32], (v27 + 32), 32 * v28);

        if (v28)
        {
          v33 = *(v20 + 2);
          v34 = __OFADD__(v33, v28);
          v35 = v33 + v28;
          if (v34)
          {
            goto LABEL_26;
          }

          *(v20 + 2) = v35;
        }
      }

      else
      {

        if (v28)
        {
          goto LABEL_24;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      v4 = v26;
      v7 = v25;
      if (v41(v18, 1, v26) == 1)
      {
        goto LABEL_3;
      }

      v39(v25, v18, v26);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

{
  v41 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  v35 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  (*(v10 + 16))(v12, v45, v9, v14);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v17 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  v44 = v16;
  v45 = v13;
  v40 = v17;
  dispatch thunk of IteratorProtocol.next()();
  v38 = *(v4 + 48);
  v39 = v4 + 48;
  if (v38(v8, 1, v3) == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v35 + 8))(v44, v45);
    return v18;
  }

  else
  {
    v20 = *(v4 + 32);
    v19 = v4 + 32;
    v36 = v20;
    v37 = (v19 - 24);
    v18 = MEMORY[0x1E69E7CC0];
    v21 = v43;
    v20(v43, v8, v3);
    while (1)
    {
      v41(&v46, v21);
      if (v2)
      {
        (*v37)(v21, v3);
        (*(v35 + 8))(v44, v45);

        return v18;
      }

      v23 = v8;
      v24 = v19;
      v25 = v3;
      result = (*v37)(v21, v3);
      v26 = v46;
      v27 = *(v46 + 16);
      v28 = *(v18 + 2);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v29 > *(v18 + 3) >> 1)
      {
        if (v28 <= v29)
        {
          v30 = v28 + v27;
        }

        else
        {
          v30 = v28;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v30, 1, v18);
        v18 = result;
      }

      v3 = v25;
      v19 = v24;
      if (*(v26 + 16))
      {
        if ((*(v18 + 3) >> 1) - *(v18 + 2) < v27)
        {
          goto LABEL_25;
        }

        v8 = v23;
        swift_arrayInitWithCopy();

        v21 = v43;
        if (v27)
        {
          v31 = *(v18 + 2);
          v32 = __OFADD__(v31, v27);
          v33 = v31 + v27;
          if (v32)
          {
            goto LABEL_26;
          }

          *(v18 + 2) = v33;
        }
      }

      else
      {

        v21 = v43;
        v8 = v23;
        if (v27)
        {
          goto LABEL_24;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v38(v8, 1, v3) == 1)
      {
        goto LABEL_3;
      }

      v36(v21, v8, v3);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for publicCRContext()
{
  type metadata accessor for CRContext();
  result = static CRContext.shared.getter();
  publicCRContext = result;
  return result;
}

uint64_t one-time initialization function for defaultFileSignature()
{
  v0 = specialized _copyCollectionToContiguousArray<A>(_:)(1263554597, 0xE400000000000000);
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v0);
  v3 = v2;

  defaultFileSignature = v1;
  *algn_1EC79D688 = v3;
  return result;
}

uint64_t one-time initialization function for paperkit()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v3, static UTType.paperkit);
  __swift_project_value_buffer(v3, static UTType.paperkit);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t static UTType.paperkit.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for paperkit != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.paperkit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void PaperMarkup.init(dataRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v36 = type metadata accessor for CRCodingError();
  v31 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  outlined copy of Data._Representation(a1, a2);
  if (one-time initialization token for defaultFileSignature != -1)
  {
    swift_once();
  }

  outlined copy of Data._Representation(defaultFileSignature, *algn_1EC79D688);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);

  v16 = v37;
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  if (v16)
  {
    v38 = v16;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v19 = v35;
    v18 = v36;
    if (swift_dynamicCast())
    {
      v20 = v31;
      if ((*(v31 + 88))(v19, v18) == *MEMORY[0x1E6995180])
      {

        v21 = v30;
        Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
        v22 = v33;
        v23 = *(v32 + 32);
        v24 = v29;
        v23(v29, v21, v33);
        v23(v34, v24, v22);
      }

      else
      {
        outlined consume of Data._Representation(a1, a2);
        (*(v20 + 8))(v19, v18);
      }
    }

    else
    {
      outlined consume of Data._Representation(a1, a2);
    }
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    v25 = *(v32 + 32);
    v26 = v12;
    v27 = v33;
    v25(v15, v26, v33);
    v25(v34, v15, v27);
  }
}

uint64_t PaperMarkup.init(bounds:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v26[3] = a1;
  v9 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v26[2] = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v11 = MEMORY[0x1EEE9AC00](v26[0]);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v26 - v20;
  v22 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v22);
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v27 = 0u;
  v28 = 0u;
  CRRegister.init(wrappedValue:)();
  v26[1] = *(v22 + 20);
  v27 = 0u;
  v28 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v27 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v27) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  outlined init with copy of Date?(v21, v19, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v24 = type metadata accessor for Color(0);
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  outlined init with copy of Date?(v15, v13, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit5ColorVSgMd);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v27 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  CRRegister.wrappedValue.setter();
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  return Capsule.init(_:id:)();
}

uint64_t PaperMarkup.dataRepresentation()()
{
  v1[2] = v0;
  v2 = type metadata accessor for CRCodableVersion();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PaperMarkup.dataRepresentation(), 0, 0);
}

{
  if (one-time initialization token for publicCRContext != -1)
  {
    swift_once();
  }

  v1 = publicCRContext;
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E6995290], v0[3]);
  if (one-time initialization token for defaultFileSignature != -1)
  {
    swift_once();
  }

  v2 = defaultFileSignature;
  v3 = *algn_1EC79D688;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = PaperMarkup.dataRepresentation();
  v5 = v0[5];

  return (specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:))(v1, v5, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PaperMarkup.dataRepresentation()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  (*(v6[4] + 8))(v6[5], v6[3]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](PaperMarkup.dataRepresentation(), 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for CRCodableVersion();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:), 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for CRCodableVersion();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:), 0, 0);
}

uint64_t specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *MEMORY[0x1E6995290];
  v5 = *(v3 + 104);
  v5(v1, v4, v2);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v6 = dispatch thunk of static Comparable.< infix(_:_:)();
  v7 = *(v3 + 8);
  v0[12] = v7;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v5(v0[9], *MEMORY[0x1E6995288], v0[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    if (Capsule.minAppFormatVersion.getter() >= 7)
    {
      v8 = v0[9];
      v9 = v0[7];
      v7(v8, v9);
      v5(v8, v4, v9);
    }

    (*(v0[8] + 32))(v0[11], v0[9], v0[7]);
  }

  else
  {
    (*(v0[8] + 16))(v0[11], v0[3], v0[7]);
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  *v10 = v0;
  v10[1] = specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:);
  v12 = v0[11];
  v13 = v0[5];
  v14 = v0[4];
  v15 = v0[2];

  return MEMORY[0x1EEDF5368](v15, v12, &outlined read-only object #0 of one-time initialization function for allFileFormatVersions, v14, v13, v11);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *MEMORY[0x1E6995290];
  v5 = *(v3 + 104);
  v5(v1, v4, v2);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v6 = dispatch thunk of static Comparable.< infix(_:_:)();
  v7 = *(v3 + 8);
  v0[12] = v7;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v5(v0[9], *MEMORY[0x1E6995288], v0[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
    if (Capsule.minAppFormatVersion.getter() >= 7)
    {
      v8 = v0[9];
      v9 = v0[7];
      v7(v8, v9);
      v5(v8, v4, v9);
    }

    (*(v0[8] + 32))(v0[11], v0[9], v0[7]);
  }

  else
  {
    (*(v0[8] + 16))(v0[11], v0[3], v0[7]);
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  *v10 = v0;
  v10[1] = specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:);
  v12 = v0[11];
  v13 = v0[5];
  v14 = v0[4];
  v15 = v0[2];

  return MEMORY[0x1EEDF5368](v15, v12, &outlined read-only object #0 of one-time initialization function for allFileFormatVersions, v14, v13, v11);
}

uint64_t specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[15] = v2;

  v8 = v6[12];
  if (v2)
  {
    (v8)(v6[11], v6[7]);

    return MEMORY[0x1EEE6DFA0](specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:), 0, 0);
  }

  else
  {
    v8();

    v9 = v7[1];

    return v9(a1, a2);
  }
}

{
  v6 = *v3;
  v7 = *v3;
  v6[15] = v2;

  v8 = v6[12];
  if (v2)
  {
    (v8)(v6[11], v6[7]);

    return MEMORY[0x1EEE6DFA0](specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:), 0, 0);
  }

  else
  {
    v8();

    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t PaperMarkup.indexableContent.getter()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Paper(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PaperMarkup.indexableContent.getter, 0, 0);
}

{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  v4 = specialized ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in ContainerCanvasElement.subelementsIndexableTextContent<A>(in:), v5);

  specialized Array.append<A>(contentsOf:)(v6);
  result = outlined destroy of Paper(v2, type metadata accessor for Paper);
  v8 = *(v4 + 16);
  if (v8)
  {
    v14 = v1;
    v9 = 0;
    v10 = (v4 + 32);
    while (v9 < *(v4 + 16))
    {
      ++v9;
      v12 = *v10;
      v11 = v10[1];
      v10 += 4;

      MEMORY[0x1DA6CD010](10, 0xE100000000000000);

      MEMORY[0x1DA6CD010](v12, v11);

      if (v8 == v9)
      {
        v1 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v13 = *(v1 + 8);

    return v13(0, 0xE000000000000000);
  }

  return result;
}

uint64_t PaperMarkup.replaceWithMerge(_:)(uint64_t a1)
{
  v82 = a1;
  v70 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = (&v65 - v14);
  v15 = type metadata accessor for CapsuleUndoAction();
  v16 = *(v15 - 8);
  v78 = v15;
  v79 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CRVersion();
  v18 = *(v80 - 1);
  MEMORY[0x1EEE9AC00](v80);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v24 = type metadata accessor for CRKeyPath();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.rootID.getter();
  v81 = v33;
  v34 = v24;
  v35 = v1;
  Capsule.rootID.getter();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v25 + 8);
  v37(v29, v34);
  v68 = v25 + 8;
  v37(v32, v34);
  if ((v36 & 1) == 0)
  {
    outlined destroy of Paper(v35, type metadata accessor for PaperMarkup);
    outlined init with copy of ShapeType(v82, v35, type metadata accessor for PaperMarkup);
    return (v36 & 1) == 0;
  }

  v66 = v36;
  v38 = v35;
  Capsule.version.getter();
  v39 = v82;
  Capsule.version.getter();
  v40 = CRVersion.isStrictSuperset(of:)();
  v41 = *(v18 + 8);
  v42 = v20;
  v43 = v80;
  v41(v42, v80);
  v41(v23, v43);
  if ((v40 & 1) == 0)
  {
    outlined destroy of Paper(v38, type metadata accessor for PaperMarkup);
    outlined init with copy of ShapeType(v39, v38, type metadata accessor for PaperMarkup);
    goto LABEL_13;
  }

  v80 = v37;
  v44 = v76;
  Capsule.actionUndoingDifference(from:)();
  v45 = v78;
  v46 = v79;
  if ((*(v79 + 48))(v44, 1, v78) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence17CapsuleUndoActionVSgMd);
LABEL_13:
    LOBYTE(v36) = v66;
    return (v36 & 1) == 0;
  }

  (*(v46 + 32))(v77, v44, v45);
  swift_getKeyPath();
  v47 = v74;
  Capsule.subscript.getter();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v65 = *(v48 - 8);
  v76 = *(v65 + 48);
  v49 = v76(v47, 1, v48);
  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  if (v49 == 1 || (swift_getKeyPath(), v50 = v72, Capsule.subscript.getter(), , v51 = v76(v50, 1, v48), outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd), v51 != 1))
  {
    v63 = v75;
    v64 = v77;
    (*(v46 + 16))(v75, v77, v45);
    (*(v46 + 56))(v63, 0, 1, v45);
    Capsule.apply(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence17CapsuleUndoActionVSgMd);
    (*(v46 + 8))(v64, v45);
    goto LABEL_13;
  }

  swift_getKeyPath();
  v52 = v67;
  Capsule.subscript.getter();
  result = v76(v52, 1, v48);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    Ref.id.getter();
    v54 = v52;
    v55 = *(v65 + 8);
    v55(v54, v48);
    swift_getKeyPath();
    v56 = v69;
    Capsule.subscript.getter();
    result = v76(v56, 1, v48);
    if (result != 1)
    {

      type metadata accessor for Paper(0);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v57 = v71;
      Ref.subscript.getter();
      v55(v56, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      CROrderedSet.removeAll()();
      v58 = v79;
      v59 = v75;
      v60 = v77;
      (*(v79 + 16))(v75, v77, v45);
      (*(v58 + 56))(v59, 0, 1, v45);
      Capsule.apply(_:)();
      v61 = outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence17CapsuleUndoActionVSgMd);
      MEMORY[0x1EEE9AC00](v61);
      v62 = v73;
      *(&v65 - 2) = v57;
      *(&v65 - 1) = v62;
      Capsule.callAsFunction<A>(_:)();
      (*(v58 + 8))(v60, v45);
      outlined destroy of Paper(v57, type metadata accessor for PKDrawingStruct);
      (v80)(v62, v34);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PaperMarkup.replaceWithMerge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v27 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Capsule.Ref.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of Paper(v16, type metadata accessor for Paper);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v18 = *(v17 - 8);
  LODWORD(v16) = (*(v18 + 48))(v13, 1, v17);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  if (v16 == 1)
  {
    swift_getKeyPath();
    outlined init with copy of ShapeType(v25, v7, type metadata accessor for PKDrawingStruct);
    v20 = type metadata accessor for CRKeyPath();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v5, v26, v20);
    (*(v21 + 56))(v5, 0, 1, v20);
    v22 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);

    MEMORY[0x1DA6CC020](v23, v7, v5, v27, v22);
    (*(v18 + 56))(v10, 0, 1, v17);
    return Capsule.Ref.subscript.setter();
  }

  return result;
}

double PaperMarkup.bounds.getter()
{
  v0 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of Paper(v2, type metadata accessor for Paper);
  return v4;
}

double key path getter for PaperMarkup.bounds : PaperMarkup@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of Paper(v4, type metadata accessor for Paper);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t closure #1 in PaperMarkup.bounds.setter()
{
  v0 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v0(v3, 0);
  v1 = Capsule.Ref.root.modify();
  type metadata accessor for Paper(0);
  CRRegister.wrappedValue.setter();
  return v1(v3, 0);
}

void (*PaperMarkup.bounds.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = *(*(type metadata accessor for Paper(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 72) = v7;
  *(v5 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of Paper(v8, type metadata accessor for Paper);
  v9 = *(v5 + 48);
  *v5 = *(v5 + 32);
  *(v5 + 16) = v9;
  return PaperMarkup.bounds.modify;
}

void PaperMarkup.bounds.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  Capsule.callAsFunction<A>(_:)();
  free(v2);
  free(v1);
}

uint64_t PaperMarkup.draw(in:frame:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 272) = a3;
  *(v5 + 280) = v4;
  v8 = type metadata accessor for CRKeyPath();
  *(v5 + 288) = v8;
  *(v5 + 296) = *(v8 - 8);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = type metadata accessor for Paper(0);
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 141) = *a4;
  *(v5 + 142) = a4[1];
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v5 + 328) = v9;
  *(v5 + 336) = v11;

  return MEMORY[0x1EEE6DFA0](PaperMarkup.draw(in:frame:options:), v9, v11);
}

uint64_t PaperMarkup.draw(in:frame:options:)()
{
  v1 = *(v0 + 142);
  v2 = *(v0 + 141);
  v3 = *(v0 + 272);
  *(v0 + 24) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 123) = 0u;
  *(v0 + 16) = 1;
  *(v0 + 17) = v2;
  *(v0 + 18) = v1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 139) = 0;
  v4 = CGBitmapContextGetColorSpace(v3);
  if (v4)
  {
    v5 = v4;
    if (CGColorSpaceUsesExtendedRange(v4))
    {
      v6 = 1;
    }

    else
    {
      v6 = MEMORY[0x1DA6CEC30](v5);
    }
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 140) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  static CRKeyPath.unique.getter();

  return MEMORY[0x1EEE6DFA0](PaperMarkup.draw(in:frame:options:), 0, 0);
}

{
  v1 = *(v0 + 272);
  CGContextSaveGState(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 240));
  v2 = *(v0 + 160);
  *(v0 + 192) = *(v0 + 144);
  v3 = *(v0 + 176);
  *(v0 + 208) = v2;
  *(v0 + 224) = v3;
  CGContextConcatCTM(v1, (v0 + 192));
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = PaperMarkup.draw(in:frame:options:);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);

  return (specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:))(v6, v5, v0 + 16);
}

{

  return MEMORY[0x1EEE6DFA0](PaperMarkup.draw(in:frame:options:), 0, 0);
}

{
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  CGContextRestoreGState(*(v0 + 272));
  (*(v3 + 8))(v2, v4);
  outlined destroy of Paper(v1, type metadata accessor for Paper);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);

  return MEMORY[0x1EEE6DFA0](PaperMarkup.draw(in:frame:options:), v5, v6);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void PaperMarkup.append(contentsOf:)(PKDrawing *a1@<X8>)
{
  PKDrawing._bridgeToObjectiveC()(a1);
  v2 = v1;
  type metadata accessor for PKDrawingCoherence(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
  }

  else
  {

    PKDrawing._bridgeToObjectiveC()(v5);
    v7 = v6;
    v4 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();
  }

  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.callAsFunction<A>(_:)();
}

uint64_t closure #1 in PaperMarkup.append(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - v5;
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v30 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v19 = *(v15 + 16);
  v42 = a2;
  v38 = v19;
  v19(v17, a2 + v18, v14);
  v20 = type metadata accessor for PKDrawingStruct(0);
  v21 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  v40 = v20;
  v30 = v21;
  Capsule.Ref.import<A>(_:)();
  v36 = *(v15 + 8);
  v36(v17, v14);
  swift_getKeyPath();
  v43 = a1;
  Capsule.Ref.subscript.getter();
  v22 = v39;

  v23 = v37;
  if ((*(v37 + 48))(v12, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    swift_getKeyPath();
    v38(v17, v42 + v18, v14);
    Capsule.rootID.getter();
    v36(v17, v14);
    v24 = v31;
    Ref.init(id:)();
    (*(v23 + 56))(v24, 0, 1, v22);
    return Capsule.Ref.subscript.setter();
  }

  else
  {
    (*(v23 + 32))(v41, v12, v22);
    v38(v17, v42 + v18, v14);
    swift_getKeyPath();
    v26 = v33;
    Capsule.subscript.getter();

    v36(v17, v14);
    v27 = v41;
    v28 = Ref.subscript.modify();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    v29 = v35;
    CROrderedSet.append<A>(contentsOf:)();
    (*(v34 + 8))(v26, v29);
    v28(v44, 0);
    return (*(v23 + 8))(v27, v22);
  }
}

uint64_t PaperMarkup.insertNewShape(configuration:frame:rotation:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v100 - v15;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v100 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v133 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v132 = &v100 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v100 - v18;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v100 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v100 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v100 - v25;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v115 = &v100 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v125 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v149 = &v100 - v32;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v145);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v100 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v148 = &v100 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v147 = &v100 - v41;
  v42 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v131 = &v100 - v46;
  v47 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v47);
  v106 = &v100 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v114 = &v100 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v146 = &v100 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v100 - v55;
  v57 = *a1;
  v58 = a1[1];
  v59 = a1[2];
  v60 = a1[3];
  v141 = &v100 - v55;
  if (v57 > 3)
  {
    if (v57 > 5)
    {
      if (v57 == 6)
      {
        if (one-time initialization token for defaultStar != -1)
        {
          v98 = v54;
          swift_once();
          v54 = v98;
          v56 = v141;
        }

        v62 = qword_1EC7C40F8;
        *v56 = static UIConstants.defaultStar;
        *(v56 + 1) = v62;
      }

      else
      {
        *v56 = xmmword_1D405A650;
      }
    }

    else if (v57 == 4)
    {
      *v56 = 0x3FB999999999999ALL;
    }

    else
    {
      *v56 = 6;
    }
  }

  else if (v57 > 1)
  {
    if (v57 == 2)
    {
      if (one-time initialization token for defaultLine != -1)
      {
        v97 = v54;
        swift_once();
        v54 = v97;
        v56 = v141;
      }

      v61 = *algn_1EC7C40D0;
      *v56 = static UIConstants.defaultLine;
      *(v56 + 1) = v61;
      *(v56 + 2) = xmmword_1EC7C40E0;
    }

    else
    {
      if (one-time initialization token for defaultCalloutBubble != -1)
      {
        v99 = v54;
        swift_once();
        v54 = v99;
        v56 = v141;
      }

      v63 = qword_1EC7C4110;
      *v56 = static UIConstants.defaultCalloutBubble;
      *(v56 + 2) = v63;
    }
  }

  v64 = v56;
  v143 = v54;
  swift_storeEnumTagMultiPayload();
  v144 = type metadata accessor for ShapeType;
  outlined init with copy of ShapeType(v64, v146, type metadata accessor for ShapeType);
  v65 = v59;
  Color.init(cgColor:)(v59, v147);
  v66 = v58;
  Color.init(cgColor:)(v58, v148);
  (*(v14 + 56))(v149, 1, 1, v13);
  type metadata accessor for CGRect(0);
  v111 = v67;
  v110 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v150 = 0u;
  v151 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v150 = 0;
  v102 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v112 = v42[6];
  v68 = type metadata accessor for Color(0);
  v69 = *(v68 - 8);
  v137 = v13;
  v113 = v14;
  v70 = *(v69 + 56);
  v70(v37, 1, 1, v68);
  outlined init with copy of Date?(v37, v34, &_s8PaperKit5ColorVSgMd);
  v108 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ColorVSgMd);
  v109 = v42[7];
  v70(v37, 1, 1, v68);
  v107 = v37;
  outlined init with copy of Date?(v37, v34, &_s8PaperKit5ColorVSgMd);
  v71 = v44;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ColorVSgMd);
  v105 = v42[8];
  *&v150 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v104 = v42[9];
  v72 = v114;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v72, v106, v144);
  v103 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of Paper(v72, type metadata accessor for ShapeType);
  *&v150 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v150 = 0;
  BYTE8(v150) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v150 = 0;
  BYTE8(v150) = 0;
  CRRegister.init(wrappedValue:)();
  v73 = v42[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v106 = v73;
  CRAttributedString.init(_:)();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v75 = v115;
  (*(*(v74 - 8) + 56))(v115, 1, 1, v74);
  outlined init with copy of Date?(v75, v116, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v76 = v42[15];
  *&v150 = 0;
  v77 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v117 = v76;
  v116 = v77;
  CRRegister.init(wrappedValue:)();
  *&v150 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v78 = type metadata accessor for StrokeStyle(0);
  v79 = v118;
  (*(*(v78 - 8) + 56))(v118, 1, 1, v78);
  outlined init with copy of Date?(v79, v119, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s8PaperKit11StrokeStyleOSgMd);
  v80 = type metadata accessor for Shadow();
  v81 = v121;
  (*(*(v80 - 8) + 56))(v121, 1, 1, v80);
  outlined init with copy of Date?(v81, v122, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s8PaperKit6ShadowVSgMd);
  v151 = 0u;
  v152 = 0u;
  v150 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v123 = v42;
  UnknownProperties.init()();
  *&v150 = a2;
  *(&v150 + 1) = a3;
  *&v151 = a4;
  *(&v151 + 1) = a5;
  v82 = v124;
  CRRegister.init(_:)();
  (*(v126 + 40))(v44, v82, v127);
  outlined init with copy of ShapeType(v146, v72, v144);
  v83 = v128;
  CRRegister.init(_:)();
  (*(v129 + 40))(&v44[v104], v83, v130);
  *&v150 = v60;
  v84 = v132;
  CRRegister.init(_:)();
  (*(v133 + 40))(&v44[v105], v84, v142);
  v85 = v107;
  outlined init with copy of Date?(v147, v107, &_s8PaperKit5ColorVSgMd);
  v86 = v134;
  CRRegister.init(_:)();
  v87 = *(v135 + 40);
  v88 = v136;
  v87(v71 + v109, v86, v136);
  outlined init with copy of Date?(v148, v85, &_s8PaperKit5ColorVSgMd);
  v89 = v113;
  v90 = v137;
  CRRegister.init(_:)();
  v87(v71 + v112, v86, v88);
  v91 = v125;
  outlined init with copy of Date?(v149, v125, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v89 + 48))(v91, 1, v90) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v92 = v101;
    (*(v89 + 32))(v101, v91, v90);
    (*(v89 + 40))(v71 + v106, v92, v90);
  }

  v93 = v131;
  *&v150 = 0;
  v94 = v138;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s8PaperKit5ColorVSgMd);
  outlined destroy of Paper(v146, type metadata accessor for ShapeType);
  (*(v139 + 40))(v71 + v117, v94, v140);
  v95 = outlined init with take of Shape(v71, v93, type metadata accessor for Shape);
  if (fabs(a6) >= 0.001)
  {
    v95 = CRRegister.value.getter();
    if (vabdd_f64(*&v150, a6) > 0.01)
    {
      *&v150 = a6;
      v95 = CRRegister.value.setter();
    }
  }

  MEMORY[0x1EEE9AC00](v95);
  *(&v100 - 2) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.callAsFunction<A>(_:)();
  outlined destroy of Paper(v141, type metadata accessor for ShapeType);
  return outlined destroy of Paper(v93, type metadata accessor for Shape);
}

uint64_t PaperMarkup.insertNewLine(configuration:from:to:startMarker:endMarker:)(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7)
{
  v141 = a3;
  v140 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = *(v13 - 8);
  v149 = v13;
  v150 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v101[0] = v101 - v15;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = v101 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = v101 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v101 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = v101 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v121);
  v120 = v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v119 = v101 - v22;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v116 = v101 - v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = v101 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v122 = v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v101 - v32;
  v115 = v101 - v32;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v144);
  v106 = v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v143 = v101 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v101 - v38;
  v147 = v101 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v101 - v41;
  v146 = v101 - v41;
  v43 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v133 = v101 - v47;
  v142 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v142);
  v103 = v101 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v102 = v101 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v101 - v52;
  v148 = v101 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v101 - v55;
  v57 = *(a1 + 16);
  v58 = *(a1 + 24);
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v56 + 2) = (a6 - a4) * 0.5;
  *(v56 + 3) = (a7 - a5) * 0.5;
  *(v56 + 4) = a6 - a4;
  *(v56 + 5) = a7 - a5;
  swift_storeEnumTagMultiPayload();
  v145 = type metadata accessor for ShapeType;
  v125 = v56;
  outlined init with copy of ShapeType(v56, v53, type metadata accessor for ShapeType);
  v59 = v57;
  Color.init(cgColor:)(v57, v42);
  v60 = type metadata accessor for Color(0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v61 + 56;
  v62(v39, 1, 1, v60);
  v104 = v63;
  v105 = v62;
  (*(v150 + 56))(v33, 1, 1, v149);
  type metadata accessor for CGRect(0);
  v109 = v64;
  v108 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v151 = 0u;
  v152 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v151 = 0;
  v101[1] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v112 = v43[6];
  v65 = v143;
  v62(v143, 1, 1, v60);
  v66 = v106;
  outlined init with copy of Date?(v65, v106, &_s8PaperKit5ColorVSgMd);
  v107 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit5ColorVSgMd);
  v110 = v43[7];
  v105(v65, 1, 1, v60);
  outlined init with copy of Date?(v65, v66, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit5ColorVSgMd);
  v106 = v43[8];
  *&v151 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v105 = v43[9];
  v67 = v102;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v67, v103, v145);
  v104 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of Paper(v67, type metadata accessor for ShapeType);
  *&v151 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v151 = 0;
  BYTE8(v151) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v151 = 0;
  BYTE8(v151) = 0;
  CRRegister.init(wrappedValue:)();
  v68 = v43[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v103 = v68;
  CRAttributedString.init(_:)();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v70 = v111;
  (*(*(v69 - 8) + 56))(v111, 1, 1, v69);
  outlined init with copy of Date?(v70, v113, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v71 = v43[15];
  *&v151 = 0;
  v72 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v114 = v71;
  v113 = v72;
  CRRegister.init(wrappedValue:)();
  *&v151 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v73 = type metadata accessor for StrokeStyle(0);
  v74 = v116;
  (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
  outlined init with copy of Date?(v74, v117, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit11StrokeStyleOSgMd);
  v75 = type metadata accessor for Shadow();
  v76 = v119;
  (*(*(v75 - 8) + 56))(v119, 1, 1, v75);
  outlined init with copy of Date?(v76, v120, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s8PaperKit6ShadowVSgMd);
  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v121 = v43;
  UnknownProperties.init()();
  *&v151 = a4;
  *(&v151 + 1) = a5;
  __asm { FMOV            V0.2D, #1.0 }

  v152 = _Q0;
  v82 = v123;
  CRRegister.init(_:)();
  (*(v124 + 40))(v45, v82, v126);
  outlined init with copy of ShapeType(v148, v67, v145);
  v83 = v127;
  CRRegister.init(_:)();
  (*(v128 + 40))(v105 + v45, v83, v129);
  *&v151 = v58;
  v84 = v130;
  CRRegister.init(_:)();
  (*(v131 + 40))(&v45[v106], v84, v132);
  v85 = v143;
  outlined init with copy of Date?(v146, v143, &_s8PaperKit5ColorVSgMd);
  v86 = v134;
  CRRegister.init(_:)();
  v87 = *(v135 + 40);
  v88 = v136;
  v87(&v45[v110], v86, v136);
  outlined init with copy of Date?(v147, v85, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v89 = v86;
  v90 = v122;
  v91 = v88;
  v92 = v115;
  v87(&v45[v112], v89, v91);
  v93 = v149;
  outlined init with copy of Date?(v92, v90, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v94 = v150;
  if ((*(v150 + 48))(v90, 1, v93) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v95 = v101[0];
    (*(v94 + 32))(v101[0], v90, v93);
    (*(v94 + 40))(&v45[v103], v95, v93);
  }

  *&v151 = 0;
  v96 = v137;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s8PaperKit5ColorVSgMd);
  outlined destroy of Paper(v148, type metadata accessor for ShapeType);
  (*(v138 + 40))(&v45[v114], v96, v139);
  v97 = v45;
  v98 = v133;
  v99 = outlined init with take of Shape(v97, v133, type metadata accessor for Shape);
  if (v140)
  {
    *&v151 = 1;
    BYTE8(v151) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    v99 = CRRegister.wrappedValue.setter();
  }

  if (v141)
  {
    *&v151 = 1;
    BYTE8(v151) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    v99 = CRRegister.wrappedValue.setter();
  }

  MEMORY[0x1EEE9AC00](v99);
  v101[-2] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.callAsFunction<A>(_:)();
  outlined destroy of Paper(v125, type metadata accessor for ShapeType);
  return outlined destroy of Paper(v98, type metadata accessor for Shape);
}

uint64_t closure #1 in PaperMarkup.insertNewShape(configuration:frame:rotation:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-v8];
  swift_getKeyPath();
  outlined init with copy of ShapeType(a2, v5, type metadata accessor for Shape);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

  SharedTagged_10.init<A>(_:_:)();
  v10 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  (*(v7 + 8))(v9, v6);
  v10(v12, 0);
}

uint64_t PaperMarkup.insertNewTextbox(attributedText:frame:rotation:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  v19 = 0x3FF0000000000000;
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v16 = a1;
  CRAttributedString.init(_:transformAttributes:)();
  PaperMarkup.insertNewTextbox(attributedText:frame:rotation:)(v15, a2, a3, a4, a5, a6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t PaperMarkup.insertNewTextbox(attributedText:frame:rotation:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v145 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v121 = v12;
  v159 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v107 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v107 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v136 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v135 = &v107 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v107 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v107 - v19;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v162);
  v127 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v107 - v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v107 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v120);
  v161 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v160 = &v107 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v128 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v107 - v32;
  v122 = &v107 - v32;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v154);
  v147 = (&v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v153 = &v107 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v107 - v38;
  v157 = &v107 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v107 - v41;
  v156 = &v107 - v41;
  v43 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v142 = &v107 - v47;
  v152 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v152);
  v148 = &v107 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v150 = &v107 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v107 - v52;
  v158 = &v107 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v107 - v55;
  swift_storeEnumTagMultiPayload();
  v155 = type metadata accessor for ShapeType;
  v110 = v56;
  outlined init with copy of ShapeType(v56, v53, type metadata accessor for ShapeType);
  v57 = type metadata accessor for Color(0);
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = v58 + 56;
  v59(v42, 1, 1, v57);
  v59(v39, 1, 1, v57);
  v114 = v60;
  v146 = v59;
  (*(v159 + 56))(v33, 1, 1, v12);
  type metadata accessor for CGRect(0);
  v117 = v61;
  v116 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v163 = 0u;
  v164 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  v151 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v119 = v43[6];
  v62 = v153;
  v59(v153, 1, 1, v57);
  v63 = v147;
  outlined init with copy of Date?(v62, v147, &_s8PaperKit5ColorVSgMd);
  v115 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit5ColorVSgMd);
  v118 = v43[7];
  v146(v62, 1, 1, v57);
  outlined init with copy of Date?(v62, v63, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit5ColorVSgMd);
  v114 = v43[8];
  *&v163 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v113 = v43[9];
  v64 = v150;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v64, v148, v155);
  v111 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of Paper(v64, type metadata accessor for ShapeType);
  *&v163 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  BYTE8(v163) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  BYTE8(v163) = 0;
  CRRegister.init(wrappedValue:)();
  v65 = v43[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v108 = v65;
  CRAttributedString.init(_:)();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v69 = v160;
  v148 = v66;
  v147 = v68;
  v146 = (v67 + 56);
  (v68)(v160, 1, 1);
  outlined init with copy of Date?(v69, v161, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v70 = v43[15];
  *&v163 = 0;
  v71 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v120 = v70;
  v112 = v71;
  CRRegister.init(wrappedValue:)();
  *&v163 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v72 = type metadata accessor for StrokeStyle(0);
  v73 = v123;
  (*(*(v72 - 8) + 56))(v123, 1, 1, v72);
  outlined init with copy of Date?(v73, v124, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s8PaperKit11StrokeStyleOSgMd);
  v74 = type metadata accessor for Shadow();
  v75 = v126;
  (*(*(v74 - 8) + 56))(v126, 1, 1, v74);
  outlined init with copy of Date?(v75, v127, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s8PaperKit6ShadowVSgMd);
  v164 = 0u;
  v165 = 0u;
  v163 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v162 = v43;
  UnknownProperties.init()();
  *&v163 = a2;
  *(&v163 + 1) = a3;
  *&v164 = a4;
  *(&v164 + 1) = a5;
  v76 = v129;
  CRRegister.init(_:)();
  (*(v130 + 40))(v45, v76, v131);
  outlined init with copy of ShapeType(v158, v150, v155);
  v77 = v132;
  CRRegister.init(_:)();
  (*(v133 + 40))(&v45[v113], v77, v134);
  *&v163 = 0;
  v78 = v135;
  CRRegister.init(_:)();
  (*(v136 + 40))(&v45[v114], v78, v149);
  v79 = v153;
  outlined init with copy of Date?(v156, v153, &_s8PaperKit5ColorVSgMd);
  v80 = v137;
  CRRegister.init(_:)();
  v81 = *(v138 + 40);
  v82 = v139;
  v81(&v45[v118], v80, v139);
  outlined init with copy of Date?(v157, v79, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v83 = v80;
  v84 = v128;
  v81(&v45[v119], v83, v82);
  v85 = v122;
  outlined init with copy of Date?(v122, v84, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v86 = v159;
  v87 = v121;
  if ((*(v159 + 48))(v84, 1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v88 = v109;
    (*(v86 + 32))(v109, v84, v87);
    (*(v86 + 40))(&v45[v108], v88, v87);
  }

  *&v163 = 0;
  v89 = v140;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v157, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s8PaperKit5ColorVSgMd);
  outlined destroy of Paper(v158, type metadata accessor for ShapeType);
  (*(v141 + 40))(&v45[v120], v89, v143);
  v90 = v142;
  outlined init with take of Shape(v45, v142, type metadata accessor for Shape);
  v91 = v145;
  if (fabs(a6) >= 0.001)
  {
    CRRegister.value.getter();
    if (vabdd_f64(*&v163, a6) > 0.01)
    {
      *&v163 = a6;
      CRRegister.value.setter();
    }
  }

  *&v163 = 3;
  v92 = v162;
  CRRegister.wrappedValue.setter();
  v93 = *(v92 + 52);
  (*(v86 + 24))(v90 + v93, v91, v87);
  v94 = v144;
  (*(v86 + 16))(v144, v90 + v93, v87);
  v95 = CRAttributedString.attributedString.getter();
  v96 = [v95 string];

  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  if (!v97 && v99 == 0xE000000000000000)
  {

    (*(v86 + 8))(v94, v87);
    v101 = v160;
    v100 = v161;
LABEL_13:
    CRAttributedString.attributes(at:effectiveRange:)();
    (v147)(v101, 0, 1, v148);
    outlined init with copy of Date?(v101, v100, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    CRRegister.wrappedValue.setter();
    v106 = outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    MEMORY[0x1EEE9AC00](v106);
    *(&v107 - 2) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();
    outlined destroy of Paper(v110, type metadata accessor for ShapeType);
    return outlined destroy of Paper(v90, type metadata accessor for Shape);
  }

  v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v86 + 8))(v94, v87);
  v101 = v160;
  v100 = v161;
  if (v102)
  {
    goto LABEL_13;
  }

  v103 = CRAttributedString.attributedString.getter();
  v104 = [v103 length];

  result = v104 - 1;
  if (!__OFSUB__(v104, 1))
  {
    CRAttributedString.attributes(at:effectiveRange:)();
    (v147)(v101, 0, 1, v148);
    outlined init with copy of Date?(v101, v100, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21[-v18];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSAttributedString);
  (*(v13 + 16))(v15, a1, v12);
  NSAttributedString.init(_:)();
  v22 = 0x3FF0000000000000;
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  PaperMarkup.insertNewTextbox(attributedText:frame:rotation:)(v19, a2, a3, a4, a5, a6);
  return (*(v17 + 8))(v19, v16);
}

uint64_t closure #1 in PaperMarkup._insertNewImage(_:frame:rotation:)(uint64_t a1, uint64_t a2, unint64_t a3, CGImage *a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v64 = a5;
  v60 = a10;
  v56 = a4;
  v71 = a1;
  v66 = type metadata accessor for CRKeyPath();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v55 - v18;
  v59 = type metadata accessor for UUID();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v55 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - v34;
  Image.init()();
  outlined copy of Data._Representation(a2, a3);
  if (one-time initialization token for publicCRContext != -1)
  {
    swift_once();
  }

  CRContext.assetManager.getter();
  CRAsset.init(data:assetManager:)();
  v36 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
  outlined init with copy of Date?(v29, v26, &_s8PaperKit13CRAssetOrDataOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit13CRAssetOrDataOSgMd);
  v37 = v56;
  Width = CGImageGetWidth(v56);
  Height = CGImageGetHeight(v37);
  v76.origin.x = a6;
  v76.origin.y = a7;
  v76.size.width = a8;
  v76.size.height = a9;
  v40 = CGRectGetWidth(v76);
  v77.origin.x = 0.0;
  v77.origin.y = 0.0;
  v77.size.width = Width;
  v77.size.height = Height;
  v41 = v40 / CGRectGetWidth(v77);
  v78.origin.x = a6;
  v78.origin.y = a7;
  v78.size.width = a8;
  v78.size.height = a9;
  v42 = CGRectGetHeight(v78);
  v79.origin.x = 0.0;
  v79.origin.y = 0.0;
  v79.size.width = Width;
  v79.size.height = Height;
  v43 = v42 / CGRectGetHeight(v79);
  if (v43 < v41)
  {
    v41 = v43;
  }

  v80.origin.x = a6;
  v80.origin.y = a7;
  v80.size.width = a8;
  v80.size.height = a9;
  MidX = CGRectGetMidX(v80);
  v81.origin.x = a6;
  v81.origin.y = a7;
  v81.size.width = a8;
  v81.size.height = a9;
  MidY = CGRectGetMidY(v81);
  v46 = v41 * Width;
  v47 = v41 * Height;
  v72 = MidX - v46 * 0.5;
  v73 = MidY - v47 * 0.5;
  v74 = v46;
  v75 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v72 = 0.0;
  v73 = 0.0;
  v74 = v46;
  v75 = v47;
  CRRegister.wrappedValue.setter();
  if (fabs(v60) >= 0.001)
  {
    v72 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.setter();
  }

  outlined init with copy of ShapeType(v35, v32, type metadata accessor for Image);
  (*(v58 + 16))(v57, v64, v59);
  v48 = v71;

  CRKeyPath.init(_:)();
  (*(v63 + 56))(v22, 0, 1, v66);
  v49 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v50 = v61;
  MEMORY[0x1DA6CC020](v48, v32, v22, v30, v49);
  swift_getKeyPath();
  LOBYTE(v72) = 1;
  v51 = v65;
  Ref.id.getter();
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  v52 = v68;
  SharedTagged_10.init(_:id:)();
  v53 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  (*(v69 + 8))(v52, v70);
  v53(&v72, 0);

  (*(v62 + 8))(v50, v51);
  return outlined destroy of Paper(v35, type metadata accessor for Image);
}

uint64_t PaperMarkup.insertNewImage(_:frame:rotation:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25[-v17];
  v19 = CGImageRef.imageData(compressionQuality:asPng:)(0, 0.9);
  if (v20 >> 60 == 15)
  {
    (*(v13 + 56))(v18, 1, 1, v12);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v22 = v19;
    v23 = v20;
    v24 = UUID.init()();
    MEMORY[0x1EEE9AC00](v24);
    *&v25[-80] = v22;
    *&v25[-72] = v23;
    *&v25[-64] = a1;
    *&v25[-56] = a2;
    *&v25[-48] = a3;
    *&v25[-40] = a4;
    *&v25[-32] = a5;
    *&v25[-24] = a6;
    *&v25[-16] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();
    outlined consume of Data?(v22, v23);
    (*(v13 + 16))(v18, v15, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s10Foundation4UUIDVSgMd);
    return (*(v13 + 8))(v15, v12);
  }
}

double PaperMarkup.featureSet.getter@<D0>(_OWORD *a1@<X8>)
{
  v90 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v80 - v1;
  v81 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v80 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v95 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v109 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v80 - v18;
  v19 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v103 = &v80 - v23;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGMd);
  v94 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v108 = &v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v105 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v80 - v29;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v31 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v33 = &v80 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v88 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v80 - v34;
  if (one-time initialization token for allShapeTypes != -1)
  {
    swift_once();
  }

  v112 = v19;
  v35 = one-time initialization token for allFeatures;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = MEMORY[0x1E69E7CD0];
  *&v126 = MEMORY[0x1E69E7CD0];
  v37 = one-time initialization token for allInks;

  if (v37 != -1)
  {
    swift_once();
  }

  v127 = 0;
  v128 = 1.0;
  *&v125 = v36;
  *(&v125 + 1) = v36;
  *(&v126 + 1) = v36;
  swift_getKeyPath();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  v38 = v116;
  CROrderedSet.makeIterator()();
  (*(v31 + 8))(v33, v38);
  CROrderedSet.Iterator.next()();
  v39 = v105;
  v115 = *(v105 + 48);
  v116 = v105 + 48;
  v40 = v115(v30, 1, v25);
  v41 = v103;
  if (v40 != 1)
  {
    v92 = 0;
    v46 = *(v39 + 32);
    v45 = v39 + 32;
    v114 = v46;
    v107 = (v94 + 6);
    v97 = (v94 + 4);
    v96 = (v95 + 2);
    ++v95;
    ++v94;
    v47 = (v45 - 24);
    v105 = v45;
    v104 = v30;
    v93 = v21;
    v91 = v27;
    v46(v27, v30, v25);
    while (1)
    {
      WeakTagged_10.tag.getter();
      v121 = v123;
      v122 = v124;
      v119 = 1;
      v120 = 0;
      lazy protocol witness table accessor for type TaggedCanvasElement.Enum and conformance TaggedCanvasElement.Enum();
      if (static CRExtensible.== infix(_:_:)())
      {
        specialized Set._Variant.insert(_:)(&v123, 0, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
        goto LABEL_12;
      }

      SharedTagged_10.tagged6.getter();
      v48 = v113;
      if ((*v107)(v41, 1, v113) != 1)
      {
        break;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
      WeakTagged_10.tag.getter();
      v121 = v123;
      v122 = v124;
      v119 = 6;
      v120 = 0;
      if (static CRExtensible.== infix(_:_:)())
      {
        specialized Set._Variant.insert(_:)(&v123, 1);
      }

      else
      {
        WeakTagged_10.tag.getter();
        v121 = v123;
        v122 = v124;
        v119 = 4;
        v120 = 0;
        if (static CRExtensible.== infix(_:_:)())
        {
          specialized Set._Variant.insert(_:)(&v123, 3, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
        }

        else
        {
          WeakTagged_10.tag.getter();
          v121 = v123;
          v122 = v124;
          v119 = 9;
          v120 = 0;
          if (static CRExtensible.== infix(_:_:)())
          {
            specialized Set._Variant.insert(_:)(&v123, 2, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
          }
        }
      }

      (*v47)(v27, v25);
      v21 = v93;
      v30 = v104;
LABEL_13:
      CROrderedSet.Iterator.next()();
      if (v115(v30, 1, v25) == 1)
      {
        goto LABEL_8;
      }

      v114(v27, v30, v25);
    }

    (*v97)(v108, v41, v48);
    type metadata accessor for Paper(0);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    Ref.subscript.getter();
    v49 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
    v50 = v98;
    CRRegister.wrappedValue.getter();
    outlined init with take of Shape(v50, v106, type metadata accessor for ShapeType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Paper(v106, type metadata accessor for ShapeType);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
      CRRegister.wrappedValue.getter();
      if (v123 == 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
        v51 = v86;
        CRRegister.wrappedValue.getter();
        v52 = type metadata accessor for Color(0);
        v53 = (*(*(v52 - 8) + 48))(v51, 1, v52);
        outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s8PaperKit5ColorVSgMd);
        if (v53 != 1)
        {
          specialized Set._Variant.insert(_:)(&v123, 4, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v54 = v102;
    CRRegister.wrappedValue.getter();
    v55 = type metadata accessor for Color(0);
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55);
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit5ColorVSgMd);
    if (v56 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      v57.n128_f64[0] = v123;
      if (v123 > 0.0)
      {
        specialized Set._Variant.insert(_:)(&v123, 5, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
      }
    }

    (*v96)(v110, &v21[*(v49 + 52)], v111, v57);
    v58 = CRAttributedString.attributedString.getter();
    v59 = [v58 string];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if (v60 || v62 != 0xE000000000000000)
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v95)(v110, v111);
      if ((v63 & 1) == 0)
      {
        specialized Set._Variant.insert(_:)(&v123, 7, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
      }
    }

    else
    {

      (*v95)(v110, v111);
    }

    v64 = v99;
    CRRegister.wrappedValue.getter();
    ShapeType.apiType.getter(&v123);
    outlined destroy of Paper(v64, type metadata accessor for ShapeType);
    if (LOBYTE(v123) != 8)
    {
      specialized Set._Variant.insert(_:)(&v123, LOBYTE(v123), &_ss11_SetStorageCy8PaperKit18ShapeConfigurationV0E0OGMd, &_ss11_SetStorageCy8PaperKit18ShapeConfigurationV0E0OGMR, &type metadata for ShapeConfiguration.Shape, specialized _NativeSet.copy());
    }

    v65 = v100;
    CRRegister.wrappedValue.getter();
    v66 = v101;
    outlined init with take of Shape(v65, v101, type metadata accessor for ShapeType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Paper(v66, type metadata accessor for ShapeType);
      v41 = v103;
      goto LABEL_51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.getter();
    v121 = v123;
    v122 = v124;
    v119 = 0;
    v120 = 0;
    lazy protocol witness table accessor for type LineEnd and conformance LineEnd();
    v67 = static CRExtensible.== infix(_:_:)();
    CRRegister.wrappedValue.getter();
    v121 = v123;
    v122 = v124;
    v119 = 0;
    v120 = 0;
    v68 = static CRExtensible.== infix(_:_:)();
    if (v67)
    {
      v69 = v92;
      if (v68)
      {
        v41 = v103;
        v30 = v104;
        if ((v92 & 1) == 0)
        {
          v70 = v92 | 1;
          goto LABEL_49;
        }

LABEL_50:
        v27 = v91;
LABEL_51:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();
        if (v123 < 1.0)
        {
          specialized Set._Variant.insert(_:)(&v123, 6, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
        }

        outlined destroy of Paper(v21, type metadata accessor for Shape);
        (*v94)(v108, v113);
LABEL_12:
        (*v47)(v27, v25);
        goto LABEL_13;
      }
    }

    else
    {
      v69 = v92;
      if ((v68 & 1) == 0)
      {
        v41 = v103;
        v30 = v104;
        if ((v92 & 4) != 0)
        {
          goto LABEL_50;
        }

        v70 = v92 | 4;
        goto LABEL_49;
      }
    }

    v41 = v103;
    v30 = v104;
    if ((v69 & 2) != 0)
    {
      goto LABEL_50;
    }

    v70 = v69 | 2;
LABEL_49:
    v92 = v70;
    v127 = v70;
    goto LABEL_50;
  }

LABEL_8:
  (*(v88 + 8))(v117, v118);
  swift_getKeyPath();
  v42 = v89;
  Capsule.subscript.getter();

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  else
  {
    type metadata accessor for Paper(0);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v71 = v82;
    Ref.subscript.getter();
    (*(v44 + 8))(v42, v43);
    v72 = v84;
    v73 = v83;
    v74 = v85;
    (*(v84 + 16))(v83, v71 + *(v81 + 20), v85);
    outlined destroy of Paper(v71, type metadata accessor for PKDrawingStruct);
    v75 = CROrderedSet.count.getter();
    (*(v72 + 8))(v73, v74);
    if (v75 > 0)
    {
      specialized Set._Variant.insert(_:)(&v123, 8, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR, &type metadata for FeatureSet.Feature, specialized _NativeSet.copy());
    }
  }

  v76 = v127;
  result = v128;
  v78 = v126;
  v79 = v90;
  *v90 = v125;
  v79[1] = v78;
  *(v79 + 4) = v76;
  *(v79 + 5) = result;
  return result;
}

uint64_t closure #1 in PaperMarkup.removeContentUnsupported(by:)(uint64_t a1, uint64_t a2)
{
  v220 = a2;
  v278 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v212 = &v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v218 = &v211 - v5;
  v233 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v233);
  v232 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v231 = &v211 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v215 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v214 = &v211 - v12;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v213 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v216 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v228 = &v211 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v226 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v251 = &v211 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v237 = &v211 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v236 = &v211 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v244 = &v211 - v27;
  v270 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v270);
  v230 = &v211 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v229 = &v211 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v256 = &v211 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v243 = &v211 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v242 = &v211 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v259 = &v211 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v235 = &v211 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v239 = &v211 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v250 = &v211 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGMd);
  v219 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v248 = &v211 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v246 = &v211 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v234 = &v211 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v267 = &v211 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v264 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v211 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v272 = (&v211 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v238 = &v211 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v249 = &v211 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v252 = &v211 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v275 = &v211 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v253 = (&v211 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v269 = &v211 - v69;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v221 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v255 = &v211 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v254 = &v211 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v257 = (&v211 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v271 = (&v211 - v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v211 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v211 - v82;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v84 = v278;
  Capsule.Ref.subscript.getter();

  v85 = v220;
  v279 = v220;
  v280 = v84;
  v86 = v273;
  CROrderedSet.filter(_:)();
  v217 = v86;
  v87 = *(v78 + 8);
  v225 = v77;
  v224 = v78 + 8;
  v222 = v87;
  v87(v80, v77);
  v88 = v277;
  v223 = v83;
  Capsule.Ref.subscript.setter();
  v227 = *(v85 + 8);
  v89 = specialized Set.contains(_:)(4, v227);
  v273 = v55;
  v274 = v53;
  v276 = v45;
  if ((v89 & 1) == 0 || (specialized Set.contains(_:)(5, v227) & 1) == 0)
  {
    swift_getKeyPath();
    v90 = v88;
    v91 = v223;
    Capsule.Ref.subscript.getter();

    v92 = v225;
    CROrderedSet.makeIterator()();
    v93 = v91;
    v88 = v90;
    v222(v93, v92);
    v94 = v269;
    CROrderedSet.Iterator.next()();
    v95 = *(v264 + 48);
    KeyPath = (v264 + 48);
    v265 = v95;
    v96 = (v95)(v94, 1, v53);
    v97 = v250;
    v98 = v249;
    if (v96 != 1)
    {
      v262 = *(v264 + 32);
      v261 = (v219 + 48);
      v241 = (v219 + 32);
      v240 = (v219 + 8);
      v263 = (v264 + 32);
      v260 = (v264 + 8);
      (v262)(v249, v94, v53);
      while (1)
      {
        SharedTagged_10.tagged6.getter();
        if ((*v261)(v97, 1, v45) == 1)
        {
          (*v260)(v98, v53);
          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
        }

        else
        {
          v130 = v267;
          (*v241)(v267, v97, v45);
          v131 = v242;
          Ref.subscript.getter();
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
          v133 = v244;
          CRRegister.wrappedValue.getter();
          outlined destroy of Paper(v131, type metadata accessor for Shape);
          v134 = type metadata accessor for Color(0);
          v258 = *(v134 - 8);
          v135 = *(v258 + 6);
          v136 = v135(v133, 1, v134);
          outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s8PaperKit5ColorVSgMd);
          if (v136 != 1)
          {
            v137 = v236;
            (*(v258 + 7))(v236, 1, 1, v134);
            v138 = Ref.subscript.modify();
            outlined init with copy of Date?(v137, v237, &_s8PaperKit5ColorVSgMd);
            CRRegister.wrappedValue.setter();
            v139 = v137;
            v130 = v267;
            outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s8PaperKit5ColorVSgMd);
            v138(&v287, 0);
          }

          v140 = v243;
          Ref.subscript.getter();
          v141 = v245;
          v247 = v132;
          CRRegister.wrappedValue.getter();
          outlined destroy of Paper(v140, type metadata accessor for Shape);
          v142 = v135(v141, 1, v134);
          outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s8PaperKit5ColorVSgMd);
          if (v142 == 1 || (v143 = v256, Ref.subscript.getter(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), CRRegister.wrappedValue.getter(), outlined destroy of Paper(v143, type metadata accessor for Shape), v287 <= 0.0))
          {
            v45 = v276;
            (*v240)(v130, v276);
          }

          else
          {
            v144 = v236;
            (*(v258 + 7))(v236, 1, 1, v134, v287);
            v45 = v276;
            v145 = Ref.subscript.modify();
            outlined init with copy of Date?(v144, v237, &_s8PaperKit5ColorVSgMd);
            CRRegister.wrappedValue.setter();
            outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s8PaperKit5ColorVSgMd);
            v145(&v287, 0);
            (*v240)(v130, v45);
          }

          v98 = v249;
          v53 = v274;
          (*v260)(v249, v274);
          v55 = v273;
          v88 = v277;
          v97 = v250;
        }

        v129 = v269;
        CROrderedSet.Iterator.next()();
        if ((v265)(v129, 1, v53) == 1)
        {
          break;
        }

        (v262)(v98, v129, v53);
      }
    }

    (*(v221 + 8))(v271, v88);
  }

  if ((specialized Set.contains(_:)(6, v227) & 1) == 0)
  {
    swift_getKeyPath();
    v99 = v88;
    v100 = v223;
    Capsule.Ref.subscript.getter();

    v101 = v225;
    CROrderedSet.makeIterator()();
    v222(v100, v101);
    v102 = v253;
    v103 = v99;
    CROrderedSet.Iterator.next()();
    v104 = v102;
    v105 = *(v264 + 48);
    v271 = (v264 + 48);
    v269 = v105;
    v106 = (v105)(v102, 1, v53);
    v107 = v239;
    v108 = v238;
    if (v106 != 1)
    {
      KeyPath = *(v264 + 32);
      v146 = (v219 + 48);
      v265 = (v219 + 32);
      v263 = (v219 + 8);
      v267 = (v264 + 32);
      v147 = (v264 + 8);
      KeyPath(v238, v104, v53);
      while (1)
      {
        SharedTagged_10.tagged6.getter();
        if ((*v146)(v107, 1, v45) == 1)
        {
          (*v147)(v108, v53);
          outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
        }

        else
        {
          v149 = v234;
          (*v265)(v234, v107, v45);
          v150 = v256;
          Ref.subscript.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
          CRRegister.wrappedValue.getter();
          outlined destroy of Paper(v150, type metadata accessor for Shape);
          v151.n128_f64[0] = v287;
          if (v287 < 1.0)
          {
            v152 = Ref.subscript.modify();
            v285 = 0x3FF0000000000000;
            CRRegister.wrappedValue.setter();
            v152(&v287, 0);
            v103 = v277;
          }

          (*v263)(v149, v45, v151);
          v108 = v238;
          v153 = v274;
          (*v147)(v238, v274);
          v53 = v153;
          v107 = v239;
        }

        v148 = v253;
        CROrderedSet.Iterator.next()();
        if ((v269)(v148, 1, v53) == 1)
        {
          break;
        }

        KeyPath(v108, v148, v53);
      }
    }

    (*(v221 + 8))(v257, v103);
    v55 = v273;
  }

  v109 = specialized Set.contains(_:)(7, v227);
  v110 = v259;
  if (v109)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  v111 = v223;
  Capsule.Ref.subscript.getter();

  v112 = v225;
  CROrderedSet.makeIterator()();
  v113 = v111;
  v114 = v270;
  v222(v113, v112);
  v115 = v275;
  v116 = v277;
  CROrderedSet.Iterator.next()();
  v117 = *(v264 + 48);
  v269 = (v264 + 48);
  v267 = v117;
  v118 = (v117)(v115, 1, v53);
  v119 = v235;
  if (v118 == 1)
  {
LABEL_10:
    (*(v221 + 8))(v254, v116);
LABEL_11:
    v268 = *(v220 + 32);
    if (v268 == 7)
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    v120 = v223;
    Capsule.Ref.subscript.getter();

    v121 = v225;
    CROrderedSet.makeIterator()();
    v222(v120, v121);
    v122 = v252;
    CROrderedSet.Iterator.next()();
    v123 = (v264 + 48);
    v275 = *(v264 + 48);
    if ((v275)(v122, 1, v53) == 1)
    {
LABEL_13:
      (*(v221 + 8))(v255, v277);
LABEL_14:
      swift_getKeyPath();
      v124 = v218;
      Capsule.Ref.subscript.getter();

      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      v126 = *(v125 - 8);
      v127 = (*(v126 + 48))(v124, 1, v125);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      if (v127 != 1)
      {
        result = specialized Set.contains(_:)(8, v227);
        if ((result & 1) == 0)
        {
          swift_getKeyPath();
          (*(v126 + 56))(v212, 1, 1, v125);
          return Capsule.Ref.subscript.setter();
        }
      }

      return result;
    }

    v272 = *(v264 + 32);
    v193 = (v219 + 48);
    v271 = (v219 + 32);
    v269 = (v219 + 8);
    v264 += 32;
    v194 = (v264 - 24);
    v260 = v123;
    v267 = (v219 + 48);
    KeyPath = (v264 - 24);
    v272(v55, v122, v53);
    while (1)
    {
      SharedTagged_10.tagged6.getter();
      if ((*v193)(v110, 1, v45) == 1)
      {
        (*v194)(v55, v53);
        outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
        goto LABEL_58;
      }

      v196 = v248;
      (*v271)(v248, v110, v45);
      v197 = v230;
      Ref.subscript.getter();
      v198 = v270;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      v199 = v231;
      CRRegister.wrappedValue.getter();
      outlined destroy of Paper(v197, type metadata accessor for Shape);
      v200 = v232;
      outlined init with take of Shape(v199, v232, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v269)(v196, v45);
        v55 = v273;
        v53 = v274;
        (*v194)(v273, v274);
        outlined destroy of Paper(v200, type metadata accessor for ShapeType);
        v110 = v259;
        goto LABEL_58;
      }

      v201 = Ref.subscript.modify();
      v203 = v202;
      v204 = *(v198 + 48);
      v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
      v262 = v204;
      CRRegister.wrappedValue.getter();
      v283 = v285;
      v284 = v286;
      v281 = 0;
      v282 = 0;
      lazy protocol witness table accessor for type LineEnd and conformance LineEnd();
      v206 = static CRExtensible.== infix(_:_:)();
      v207 = *(v198 + 44);
      v265 = v203;
      v261 = v207;
      v263 = v205;
      CRRegister.wrappedValue.getter();
      v283 = v285;
      v284 = v286;
      v281 = 0;
      v282 = 0;
      v208 = static CRExtensible.== infix(_:_:)();
      if (v206)
      {
        break;
      }

      v53 = v274;
      v209 = v268;
      if (v208)
      {
        goto LABEL_69;
      }

      v45 = v276;
      v210 = v248;
      v193 = v267;
      v194 = KeyPath;
      if ((v268 & 4) == 0)
      {
        if (v268)
        {
LABEL_77:
          v285 = 0;
          v286 = 0;
          CRRegister.wrappedValue.setter();
          v285 = 0;
          goto LABEL_78;
        }

        if ((v268 & 2) != 0)
        {
LABEL_76:
          v285 = 0;
          v286 = 0;
          CRRegister.wrappedValue.setter();
          v285 = 1;
          goto LABEL_78;
        }
      }

LABEL_79:
      v201(&v287, 0);
      (*v269)(v210, v45);
      v55 = v273;
      (*v194)(v273, v53);
      v110 = v259;
LABEL_58:
      v195 = v252;
      CROrderedSet.Iterator.next()();
      if ((v275)(v195, 1, v53) == 1)
      {
        goto LABEL_13;
      }

      v272(v55, v195, v53);
    }

    v53 = v274;
    v209 = v268;
    if (v208)
    {
      v45 = v276;
      v210 = v248;
      v193 = v267;
      v194 = KeyPath;
      if (v268)
      {
        goto LABEL_79;
      }

      if ((v268 & 2) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_69:
      v45 = v276;
      v210 = v248;
      v193 = v267;
      v194 = KeyPath;
      if ((v209 & 2) != 0)
      {
        goto LABEL_79;
      }

      if (v209)
      {
        goto LABEL_77;
      }
    }

    if ((v209 & 4) != 0)
    {
      v285 = 1;
      v286 = 0;
      CRRegister.wrappedValue.setter();
      v285 = 1;
LABEL_78:
      v286 = 0;
      v193 = v267;
      v194 = KeyPath;
      CRRegister.wrappedValue.setter();
      v210 = v248;
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v265 = *(v264 + 32);
  v263 = (v219 + 48);
  v257 = (v219 + 32);
  v271 = (v213 + 16);
  v261 = (v213 + 8);
  v253 = (v219 + 8);
  KeyPath = (v264 + 32);
  v262 = (v264 + 8);
  while (1)
  {
    v154 = v272;
    (v265)(v272, v115, v53);
    SharedTagged_10.tagged6.getter();
    if ((*v263)(v119, 1, v45) != 1)
    {
      break;
    }

    (*v262)(v154, v53);
    outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
LABEL_40:
    CROrderedSet.Iterator.next()();
    v115 = v275;
    if ((v267)(v275, 1, v53) == 1)
    {
      goto LABEL_10;
    }
  }

  v155 = v246;
  (*v257)(v246, v119, v45);
  v156 = v229;
  Ref.subscript.getter();
  v157 = v156 + *(v114 + 52);
  v260 = *v271;
  v260(v251, v157, v268);
  outlined destroy of Paper(v156, type metadata accessor for Shape);
  v158 = CRAttributedString.attributedString.getter();
  v159 = [v158 string];

  v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v162 = v161;

  if (v160 || v162 != 0xE000000000000000)
  {
    v163 = v114;
    v164 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v163 = v114;

    v164 = 1;
  }

  v165 = v272;
  v166 = *v261;
  (*v261)(v251, v268);
  v110 = v259;
  if (v164)
  {
LABEL_55:
    (*v253)(v155, v45);
    (*v262)(v165, v53);
    v55 = v273;
    v114 = v163;
    v119 = v235;
    v116 = v277;
    goto LABEL_40;
  }

  v167 = v256;
  Ref.subscript.getter();
  v168 = v226;
  v169 = v166;
  v170 = v268;
  v171 = v260;
  v260(v226, v167 + *(v163 + 52), v268);
  outlined destroy of Paper(v167, type metadata accessor for Shape);
  v172 = CRAttributedString.count.getter();
  v258 = v169;
  result = (v169)(v168, v170);
  if ((v172 & 0x8000000000000000) == 0)
  {
    v155 = v246;
    v250 = Ref.subscript.modify();
    v174 = v173;
    v175 = *(v163 + 52);
    CRAttributedString.removeSubrange(_:)();
    v171(v228, &v174[v175], v170);
    v176 = CRAttributedString.attributedString.getter();
    v177 = [v176 string];

    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v179;

    if (v178 || v180 != 0xE000000000000000)
    {
      v249 = v174;
      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v258(v228, v268);
      v163 = v270;
      v165 = v272;
      v53 = v274;
      if ((v181 & 1) == 0)
      {
        v182 = v249;
        v183 = v226;
        v184 = v268;
        v185 = v260;
        v260(v226, &v249[v175], v268);
        v186 = &v182[v175];
        v187 = v258;
        v188 = v216;
        v185(v216, v186, v184);
        v189 = CRAttributedString.attributedString.getter();
        v187(v188, v184);
        v190 = [v189 length];

        result = v190 - 1;
        if (__OFSUB__(v190, 1))
        {
          goto LABEL_81;
        }

        v191 = v214;
        CRAttributedString.attributes(at:effectiveRange:)();
        v187(v183, v184);
        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        (*(*(v192 - 8) + 56))(v191, 0, 1, v192);
        outlined init with copy of Date?(v191, v215, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v155 = v246;
      }
    }

    else
    {

      v258(v228, v268);
      v163 = v270;
      v165 = v272;
      v53 = v274;
    }

    (v250)(&v287, 0);
    v110 = v259;
    v45 = v276;
    goto LABEL_55;
  }

  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PaperMarkup.removeContentUnsupported(by:)(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a2;
  v4 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tag.getter();
  v27 = v29;
  v28 = v30;
  v25 = 1;
  v26 = 0;
  v23[2] = lazy protocol witness table accessor for type TaggedCanvasElement.Enum and conformance TaggedCanvasElement.Enum();
  if (static CRExtensible.== infix(_:_:)())
  {
    v17 = v24[1];
    v18 = 0;
  }

  else
  {
    v23[0] = a1;
    SharedTagged_10.tagged6.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit5ShapeVGSgMd);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      CRRegister.wrappedValue.getter();
      outlined destroy of Paper(v9, type metadata accessor for Shape);
      ShapeType.apiType.getter(&v29);
      outlined destroy of Paper(v6, type metadata accessor for ShapeType);
      if (v29 != 8)
      {
        v21 = specialized Set.contains(_:)(v29, *v24);
        (*(v14 + 8))(v16, v13);
        v19 = v21;
        return v19 & 1;
      }

      (*(v14 + 8))(v16, v13);
    }

    v20 = v24;
    WeakTagged_10.tag.getter();
    v27 = v29;
    v28 = v30;
    v25 = 6;
    v26 = 0;
    if (static CRExtensible.== infix(_:_:)())
    {
      v19 = specialized Set.contains(_:)(1, v20[2]);
      return v19 & 1;
    }

    WeakTagged_10.tag.getter();
    v27 = v29;
    v28 = v30;
    v25 = 4;
    v26 = 0;
    if (static CRExtensible.== infix(_:_:)())
    {
      v17 = v20[1];
      v18 = 3;
    }

    else
    {
      WeakTagged_10.tag.getter();
      v27 = v29;
      v28 = v30;
      v25 = 9;
      v26 = 0;
      if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
      {
        v19 = 1;
        return v19 & 1;
      }

      v17 = v20[1];
      v18 = 2;
    }
  }

  v19 = specialized Set.contains(_:)(v18, v17);
  return v19 & 1;
}

uint64_t PaperMarkup.imageAccess_InsertNewImage(_:frame:rotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v14 = type metadata accessor for UUID();
  v24[0] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = CGImageRef.imageData(compressionQuality:asPng:)(0, 0.9);
  if (v18 >> 60 == 15)
  {
    v19 = *(v24[0] + 56);

    return v19(a2, 1, 1, v14);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v23 = UUID.init()();
    MEMORY[0x1EEE9AC00](v23);
    v24[-10] = v21;
    v24[-9] = v22;
    v24[-8] = a1;
    *&v24[-7] = a3;
    *&v24[-6] = a4;
    *&v24[-5] = a5;
    *&v24[-4] = a6;
    *&v24[-3] = a7;
    v24[-2] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();
    outlined consume of Data?(v21, v22);
    (*(v24[0] + 16))(a2, v16, v14);
    (*(v24[0] + 56))(a2, 0, 1, v14);
    return (*(v24[0] + 8))(v16, v14);
  }
}

uint64_t PaperMarkup.imageAccess_RemoveImage(id:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6[-v3];
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.callAsFunction<A>(_:)();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
}

uint64_t closure #1 in PaperMarkup.imageAccess_RemoveImage(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[0] = a1;
  v15[1] = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  swift_getKeyPath();
  v16[0] = 1;
  (*(v5 + 16))(v7, a2, v4);
  CRKeyPath.init(_:)();
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v13 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.remove(_:)();
  (*(v10 + 8))(v12, v9);
  v13(v16, 0);
}

CFMutableDataRef PaperMarkup.imageAccess_SwapImage(id:for:)()
{
  result = CGImageRef.imageData(compressionQuality:asPng:)(0, 0.9);
  if (v1 >> 60 != 15)
  {
    MEMORY[0x1EEE9AC00](result);
    v3 = v2;
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();
    return outlined consume of Data?(v3, v5);
  }

  return result;
}

uint64_t closure #1 in PaperMarkup.imageAccess_SwapImage(id:for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  (*(v11 + 16))(v13, a2, v10, v17);
  CRKeyPath.init(_:)();
  v20 = type metadata accessor for Image(0);
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  WeakRef.init(id:)();
  v21 = WeakRef.subscript.modify();
  if ((*(*(v20 - 8) + 48))(v22, 1, v20))
  {
    v21(v30, 0);
  }

  else
  {
    v23 = v26;
    outlined copy of Data._Representation(v27, v28);
    if (one-time initialization token for publicCRContext != -1)
    {
      swift_once();
    }

    CRContext.assetManager.getter();
    CRAsset.init(data:assetManager:)();
    v24 = type metadata accessor for CRAssetOrData();
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    outlined init with copy of Date?(v9, v23, &_s8PaperKit13CRAssetOrDataOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit13CRAssetOrDataOSgMd);
    v21(v30, 0);
  }

  return (*(v16 + 8))(v19, v15);
}

void *PaperMarkup.imageAccess_Images.getter()
{
  v52 = type metadata accessor for CRKeyPath();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v53 = type metadata accessor for UUID();
  v45 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v44 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  v41 = v20;
  v42 = v15;
  (*(v15 + 16))(v17, v20, v14);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v43 = v14;
  dispatch thunk of Sequence.makeIterator()();
  v58 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  dispatch thunk of IteratorProtocol.next()();
  v21 = v55;
  v56 = *(v55 + 48);
  v57 = v55 + 48;
  if (v56(v12, 1, v7) != 1)
  {
    v24 = *(v21 + 32);
    v23 = v21 + 32;
    v55 = v24;
    v25 = v53;
    v26 = (v23 - 24);
    v48 = (v45 + 48);
    v49 = (v54 + 1);
    v46 = (v45 + 56);
    v47 = (v45 + 32);
    v54 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = v23;
      (v55)(v9, v12, v7);
      v28 = v59;
      SharedTagged_10.tagged2.getter();
      v29 = v28;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {
        (*v26)(v9, v7);
        outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
        (*v46)(v5, 1, 1, v25);
      }

      else
      {
        v32 = v5;
        v33 = v51;
        Ref.id.getter();
        (*(v31 + 8))(v29, v30);
        CRKeyPath.uuid.getter();
        v34 = v33;
        v5 = v32;
        v25 = v53;
        (*v49)(v34, v52);
        (*v26)(v9, v7);
        if ((*v48)(v5, 1, v25) != 1)
        {
          v35 = *v47;
          (*v47)(v50, v5, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
          }

          v37 = v54[2];
          v36 = v54[3];
          v38 = v45;
          if (v37 >= v36 >> 1)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v54);
            v38 = v45;
            v54 = v40;
          }

          v39 = v54;
          v54[2] = v37 + 1;
          v35(&v39[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37], v50, v25);
          goto LABEL_7;
        }
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s10Foundation4UUIDVSgMd);
LABEL_7:
      dispatch thunk of IteratorProtocol.next()();
      v23 = v27;
      if (v56(v12, 1, v7) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_3:
  (*(v44 + 8))(v60, v61);
  (*(v42 + 8))(v41, v43);
  return v54;
}

uint64_t specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[84] = v3;
  v4[83] = a3;
  v4[82] = a2;
  v4[81] = a1;
  v5 = type metadata accessor for PKDrawing();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v4[91] = v6;
  v4[92] = *(v6 - 8);
  v4[93] = swift_task_alloc();
  v7 = type metadata accessor for CRKeyPath();
  v4[94] = v7;
  v4[95] = *(v7 - 8);
  v4[96] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v4[97] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v4[98] = v8;
  v4[99] = *(v8 - 8);
  v4[100] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4[101] = v9;
  v4[102] = *(v9 - 8);
  v4[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v4[104] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v4[105] = v10;
  v4[106] = *(v10 - 8);
  v4[107] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v4[84] = v3;
  v4[83] = a3;
  v4[82] = a2;
  v4[81] = a1;
  v5 = type metadata accessor for PKDrawing();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v4[91] = v6;
  v4[92] = *(v6 - 8);
  v4[93] = swift_task_alloc();
  v7 = type metadata accessor for CRKeyPath();
  v4[94] = v7;
  v4[95] = *(v7 - 8);
  v4[96] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v4[97] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v4[98] = v8;
  v4[99] = *(v8 - 8);
  v4[100] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4[101] = v9;
  v4[102] = *(v9 - 8);
  v4[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v4[104] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v4[105] = v10;
  v4[106] = *(v10 - 8);
  v4[107] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v4[84] = v3;
  v4[83] = a3;
  v4[82] = a2;
  v4[81] = a1;
  v5 = type metadata accessor for PKDrawing();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v4[91] = v6;
  v4[92] = *(v6 - 8);
  v4[93] = swift_task_alloc();
  v7 = type metadata accessor for CRKeyPath();
  v4[94] = v7;
  v4[95] = *(v7 - 8);
  v4[96] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v4[97] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v4[98] = v8;
  v4[99] = *(v8 - 8);
  v4[100] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4[101] = v9;
  v4[102] = *(v9 - 8);
  v4[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v4[104] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v4[105] = v10;
  v4[106] = *(v10 - 8);
  v4[107] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

uint64_t specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)()
{
  v106 = v0;
  v1 = *(v0 + 664);
  CGContextSaveGState(*(v0 + 648));
  if (*(v1 + 16) == 1)
  {
    if (*(*(v0 + 664) + 72))
    {
      goto LABEL_6;
    }

    v2 = *(v0 + 648);
    v3 = off_1F4F62980;
    v4 = type metadata accessor for Paper(0);
    v5 = (v3)(v4, &protocol witness table for Paper);
    v6 = off_1F4F62900();
    v8 = v7;
    v101 = v9;
    rect = v10;
    CGAffineTransformMakeRotation(&v105, v5);
    a = v105.a;
    b = v105.b;
    c = v105.c;
    d = v105.d;
    tx = v105.tx;
    ty = v105.ty;
    *(v0 + 288) = v105.a;
    *(v0 + 296) = b;
    *(v0 + 304) = c;
    *(v0 + 312) = d;
    *(v0 + 320) = tx;
    *(v0 + 328) = ty;
    v108.origin.x = v6;
    v108.origin.y = v8;
    v108.size.width = v101;
    v108.size.height = rect;
    v109 = CGRectApplyAffineTransform(v108, (v0 + 288));
    CGAffineTransformMakeTranslation(&v105, v6 - v109.origin.x, v8 - v109.origin.y);
    v17 = *&v105.a;
    v18 = *&v105.c;
    v19 = *&v105.tx;
    *(v0 + 336) = a;
    *(v0 + 344) = b;
    *(v0 + 352) = c;
    *(v0 + 360) = d;
    *(v0 + 368) = tx;
    *(v0 + 376) = ty;
    *(v0 + 384) = v17;
    *(v0 + 400) = v18;
    *(v0 + 416) = v19;
    CGAffineTransformConcat(&v105, (v0 + 336), (v0 + 384));
    v20 = *&v105.c;
    v21 = *&v105.tx;
    *(v0 + 432) = *&v105.a;
    *(v0 + 448) = v20;
    *(v0 + 464) = v21;
    v22 = (v0 + 432);
    v23 = v2;
  }

  else
  {
    v24 = *(v0 + 648);
    v25 = off_1F4F62A10;
    type metadata accessor for Paper(0);
    v110.origin.x = v25();
    Width = CGRectGetWidth(v110);
    v111.origin.x = off_1F4F62900();
    v27 = CGRectGetWidth(v111);
    CGAffineTransformMakeScale(&v105, Width / v27, Width / v27);
    v28 = v105.tx;
    v29 = v105.ty;
    recta = *&v105.a;
    v102 = *&v105.c;
    v112.origin.x = v25();
    MinX = CGRectGetMinX(v112);
    v113.origin.x = v25();
    MinY = CGRectGetMinY(v113);
    CGAffineTransformMakeTranslation(&v105, MinX, MinY);
    v32 = *&v105.a;
    v33 = *&v105.c;
    v34 = *&v105.tx;
    *(v0 + 144) = recta;
    *(v0 + 160) = v102;
    *(v0 + 176) = v28;
    *(v0 + 184) = v29;
    *(v0 + 192) = v32;
    *(v0 + 208) = v33;
    *(v0 + 224) = v34;
    CGAffineTransformConcat(&v105, (v0 + 144), (v0 + 192));
    v35 = *&v105.c;
    v36 = *&v105.tx;
    *(v0 + 240) = *&v105.a;
    *(v0 + 256) = v35;
    *(v0 + 272) = v36;
    v23 = v24;
    v22 = (v0 + 240);
  }

  CGContextConcatCTM(v23, v22);
LABEL_6:
  v37 = *(v0 + 832);
  v38 = *(v0 + 816);
  v103 = *(v0 + 808);
  v39 = *(v0 + 664);
  ClipBoundingBox = CGContextGetClipBoundingBox(*(v0 + 648));
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  v42 = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  *(v0 + 864) = ClipBoundingBox;
  outlined init with copy of PaperRenderableOptions(v39, v0 + 16);
  *(v0 + 32) = 0;
  v44 = off_1F4F62900;
  *(v0 + 896) = off_1F4F62900;
  *(v0 + 904) = &off_1F4F62900 & 0xFFFFFFFFFFFFLL | 0x3EB1000000000000;
  *(v0 + 912) = type metadata accessor for Paper(0);
  *(v0 + 40) = v44();
  *(v0 + 48) = v45;
  *(v0 + 56) = v46;
  *(v0 + 64) = v47;
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v48 = *(v38 + 48);
  *(v0 + 920) = v48;
  if (v48(v37, 1, v103) == 1)
  {
LABEL_10:
    v71 = *(v0 + 792);
    v72 = *(v0 + 784);
    v73 = *(v0 + 776);
    (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
    off_1F4F62930[0]();
    if ((*(v71 + 48))(v73, 1, v72) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      CGContextRestoreGState(*(v0 + 648));
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v74 = *(v0 + 8);

      return v74();
    }

    else
    {
      v76 = *(v0 + 744);
      v77 = *(v0 + 736);
      v78 = *(v0 + 728);
      (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      Capsule.encapsulateTransient<A>(_:)();
      v79 = type metadata accessor for PKDrawingCoherence(0);
      v80 = objc_allocWithZone(v79);
      (*(v77 + 16))(v80 + OBJC_IVAR___PKDrawingCoherence_model, v76, v78);
      *(v0 + 632) = v80;
      *(v0 + 640) = v79;
      v81 = objc_msgSendSuper2((v0 + 632), sel_init);
      *(v0 + 944) = v81;
      (*(v77 + 8))(v76, v78);
      v82 = swift_task_alloc();
      *(v0 + 952) = v82;
      *v82 = v0;
      v82[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v83 = *(v0 + 888);
      v84 = *(v0 + 880);
      v85 = *(v0 + 872);
      v86 = *(v0 + 864);
      v87 = *(v0 + 672);
      v88 = *(v0 + 664);
      v89 = *(v0 + 648);

      return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v81, v89, v88, v87, v86, v85, v84, v83);
    }
  }

  else
  {
    *(v0 + 928) = *(*(v0 + 816) + 32);
    *(v0 + 600) = x;
    *(v0 + 608) = y;
    *(v0 + 616) = v42;
    *(v0 + 624) = height;
    while (1)
    {
      v49 = *(v0 + 600);
      v50 = *(v0 + 608);
      v51 = *(v0 + 616);
      v52 = *(v0 + 624);
      v53 = *(v0 + 912);
      v54 = *(v0 + 896);
      (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
      v55 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      SharedTagged_10.subscript.getter();
      v56 = *(v0 + 504);
      v57 = *(v0 + 512);
      __swift_project_boxed_opaque_existential_1((v0 + 480), v56);
      *(v0 + 560) = v54(v53, &protocol witness table for Paper);
      *(v0 + 568) = v58;
      *(v0 + 576) = v59;
      *(v0 + 584) = v60;
      *(v0 + 592) = 0;
      v61 = (*(v57 + 136))(v0 + 560, v56, v57);
      v63 = v62;
      v65 = v64;
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_0(v0 + 480);
      v115.origin.x = v61;
      v115.origin.y = v63;
      v115.size.width = v65;
      v115.size.height = v67;
      v116.origin.x = v49;
      v116.origin.y = v50;
      v116.size.width = v51;
      v116.size.height = v52;
      if (CGRectIntersectsRect(v115, v116))
      {
        break;
      }

      (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
      v68 = *(v0 + 920);
      v69 = *(v0 + 832);
      v70 = *(v0 + 808);
      CROrderedSet.Iterator.next()();
      if (v68(v69, 1, v70) == 1)
      {
        goto LABEL_10;
      }
    }

    v90 = *(v0 + 808);
    SharedTagged_10.subscript.getter();
    v91 = *(v0 + 544);
    v92 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v91);
    MEMORY[0x1DA6CB7A0](v90);
    v93 = *(v92 + 8);
    v104 = (*(v93 + 16) + **(v93 + 16));
    v94 = swift_task_alloc();
    *(v0 + 936) = v94;
    *v94 = v0;
    v94[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v95 = *(v0 + 912);
    v96 = *(v0 + 768);
    v97 = *(v0 + 656);
    v98 = *(v0 + 648);

    return v104(v98, v96, v97, v0 + 16, v95, v55, v91, v93);
  }
}

{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  __swift_destroy_boxed_opaque_existential_0(v0 + 520);
  while (1)
  {
    v1 = *(v0 + 920);
    v2 = *(v0 + 832);
    v3 = *(v0 + 808);
    CROrderedSet.Iterator.next()();
    if (v1(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 600);
    v5 = *(v0 + 608);
    v6 = *(v0 + 616);
    v7 = *(v0 + 624);
    v8 = *(v0 + 912);
    v9 = *(v0 + 896);
    (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
    v10 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    SharedTagged_10.subscript.getter();
    v11 = *(v0 + 504);
    v12 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v11);
    *(v0 + 560) = v9(v8, &protocol witness table for Paper);
    *(v0 + 568) = v13;
    *(v0 + 576) = v14;
    *(v0 + 584) = v15;
    *(v0 + 592) = 0;
    v16 = (*(v12 + 136))(v0 + 560, v11, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(v0 + 480);
    v53.origin.x = v16;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = v22;
    v54.origin.x = v4;
    v54.origin.y = v5;
    v54.size.width = v6;
    v54.size.height = v7;
    if (CGRectIntersectsRect(v53, v54))
    {
      v28 = *(v0 + 808);
      SharedTagged_10.subscript.getter();
      v29 = *(v0 + 544);
      v30 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v29);
      MEMORY[0x1DA6CB7A0](v28);
      v31 = *(v30 + 8);
      v51 = (*(v31 + 16) + **(v31 + 16));
      v32 = swift_task_alloc();
      *(v0 + 936) = v32;
      *v32 = v0;
      v32[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v33 = *(v0 + 912);
      v34 = *(v0 + 768);
      v35 = *(v0 + 656);
      v36 = *(v0 + 648);

      return v51(v36, v34, v35, v0 + 16, v33, v10, v29, v31);
    }

    (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  }

  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
  off_1F4F62930[0]();
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.encapsulateTransient<A>(_:)();
    v40 = type metadata accessor for PKDrawingCoherence(0);
    v41 = objc_allocWithZone(v40);
    (*(v38 + 16))(v41 + OBJC_IVAR___PKDrawingCoherence_model, v37, v39);
    *(v0 + 632) = v41;
    *(v0 + 640) = v40;
    v42 = objc_msgSendSuper2((v0 + 632), sel_init);
    *(v0 + 944) = v42;
    (*(v38 + 8))(v37, v39);
    v43 = swift_task_alloc();
    *(v0 + 952) = v43;
    *v43 = v0;
    v43[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v44 = *(v0 + 888);
    v45 = *(v0 + 880);
    v46 = *(v0 + 872);
    v47 = *(v0 + 864);
    v48 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v42, v50, v49, v48, v47, v46, v45, v44);
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = v0[118];
  v2 = v0[83];
  v3 = [objc_opt_self() sharedCache];
  v0[120] = v3;
  v4 = swift_task_alloc();
  v0[121] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[122] = v5;
  *v5 = v0;
  v5[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
  v6 = v0[90];
  v7 = v0[88];

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000026, 0x80000001D4082110, closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)partial apply, v4, v7);
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  outlined init with copy of Date?(*(v0 + 720), v1, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 944);
    v5 = *(v0 + 800);
    v6 = *(v0 + 792);
    v7 = *(v0 + 784);
    v8 = *(v0 + 720);
    v9 = *(v0 + 712);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9PencilKit9PKDrawingVSgMd);
    (*(v6 + 8))(v5, v7);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit9PKDrawingVSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 712), *(v0 + 680));
    PKDrawing._bridgeToObjectiveC()(v12);
    v14 = v13;
    *(v0 + 984) = v13;
    v15 = swift_task_alloc();
    *(v0 + 992) = v15;
    *v15 = v0;
    v15[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 672);
    v21 = *(v0 + 664);
    v22 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v14, v22, v21, v20, v19, v18, v17, v16);
  }
}

{
  v1 = *(*v0 + 984);

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 944);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 720);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);

  (*(v7 + 8))(v6, v8);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9PencilKit9PKDrawingVSgMd);
  (*(v3 + 8))(v2, v4);
  CGContextRestoreGState(*(v0 + 648));
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

{
  v107 = v0;
  v1 = *(v0 + 664);
  CGContextSaveGState(*(v0 + 648));
  if (*(v1 + 16) == 1)
  {
    if (*(*(v0 + 664) + 72))
    {
      goto LABEL_6;
    }

    v2 = *(v0 + 648);
    v3 = off_1F4F5EE20[0];
    v4 = type metadata accessor for Image(0);
    v5 = (v3)(v4, &protocol witness table for Image);
    v6 = Image.pdfContentsBounds.getter();
    v8 = v7;
    v102 = v9;
    rect = v10;
    CGAffineTransformMakeRotation(&v106, v5);
    a = v106.a;
    b = v106.b;
    c = v106.c;
    d = v106.d;
    tx = v106.tx;
    ty = v106.ty;
    *(v0 + 288) = v106.a;
    *(v0 + 296) = b;
    *(v0 + 304) = c;
    *(v0 + 312) = d;
    *(v0 + 320) = tx;
    *(v0 + 328) = ty;
    v109.origin.x = v6;
    v109.origin.y = v8;
    v109.size.width = v102;
    v109.size.height = rect;
    v110 = CGRectApplyAffineTransform(v109, (v0 + 288));
    CGAffineTransformMakeTranslation(&v106, v6 - v110.origin.x, v8 - v110.origin.y);
    v17 = *&v106.a;
    v18 = *&v106.c;
    v19 = *&v106.tx;
    *(v0 + 336) = a;
    *(v0 + 344) = b;
    *(v0 + 352) = c;
    *(v0 + 360) = d;
    *(v0 + 368) = tx;
    *(v0 + 376) = ty;
    *(v0 + 384) = v17;
    *(v0 + 400) = v18;
    *(v0 + 416) = v19;
    CGAffineTransformConcat(&v106, (v0 + 336), (v0 + 384));
    v20 = *&v106.c;
    v21 = *&v106.tx;
    *(v0 + 432) = *&v106.a;
    *(v0 + 448) = v20;
    *(v0 + 464) = v21;
    v22 = (v0 + 432);
    v23 = v2;
  }

  else
  {
    v24 = *(v0 + 648);
    v25 = off_1F4F5EEB0;
    v26 = type metadata accessor for Image(0);
    v111.origin.x = v25();
    Width = CGRectGetWidth(v111);
    v112.origin.x = off_1F4F5EDA0(v26, &protocol witness table for Image);
    v28 = CGRectGetWidth(v112);
    CGAffineTransformMakeScale(&v106, Width / v28, Width / v28);
    v29 = v106.tx;
    v30 = v106.ty;
    recta = *&v106.a;
    v103 = *&v106.c;
    v113.origin.x = v25();
    MinX = CGRectGetMinX(v113);
    v114.origin.x = v25();
    MinY = CGRectGetMinY(v114);
    CGAffineTransformMakeTranslation(&v106, MinX, MinY);
    v33 = *&v106.a;
    v34 = *&v106.c;
    v35 = *&v106.tx;
    *(v0 + 144) = recta;
    *(v0 + 160) = v103;
    *(v0 + 176) = v29;
    *(v0 + 184) = v30;
    *(v0 + 192) = v33;
    *(v0 + 208) = v34;
    *(v0 + 224) = v35;
    CGAffineTransformConcat(&v106, (v0 + 144), (v0 + 192));
    v36 = *&v106.c;
    v37 = *&v106.tx;
    *(v0 + 240) = *&v106.a;
    *(v0 + 256) = v36;
    *(v0 + 272) = v37;
    v23 = v24;
    v22 = (v0 + 240);
  }

  CGContextConcatCTM(v23, v22);
LABEL_6:
  v38 = *(v0 + 832);
  v39 = *(v0 + 816);
  v104 = *(v0 + 808);
  v40 = *(v0 + 664);
  ClipBoundingBox = CGContextGetClipBoundingBox(*(v0 + 648));
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  v43 = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  *(v0 + 864) = ClipBoundingBox;
  outlined init with copy of PaperRenderableOptions(v40, v0 + 16);
  *(v0 + 32) = 0;
  v45 = off_1F4F5EDA0;
  *(v0 + 896) = off_1F4F5EDA0;
  *(v0 + 904) = &off_1F4F5EDA0 & 0xFFFFFFFFFFFFLL | 0x3EB1000000000000;
  *(v0 + 912) = type metadata accessor for Image(0);
  *(v0 + 40) = v45();
  *(v0 + 48) = v46;
  *(v0 + 56) = v47;
  *(v0 + 64) = v48;
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v49 = *(v39 + 48);
  *(v0 + 920) = v49;
  if (v49(v38, 1, v104) == 1)
  {
LABEL_10:
    v72 = *(v0 + 792);
    v73 = *(v0 + 784);
    v74 = *(v0 + 776);
    (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
    off_1F4F5EDD0[0]();
    if ((*(v72 + 48))(v74, 1, v73) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      CGContextRestoreGState(*(v0 + 648));
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v75 = *(v0 + 8);

      return v75();
    }

    else
    {
      v77 = *(v0 + 744);
      v78 = *(v0 + 736);
      v79 = *(v0 + 728);
      (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      Capsule.encapsulateTransient<A>(_:)();
      v80 = type metadata accessor for PKDrawingCoherence(0);
      v81 = objc_allocWithZone(v80);
      (*(v78 + 16))(v81 + OBJC_IVAR___PKDrawingCoherence_model, v77, v79);
      *(v0 + 632) = v81;
      *(v0 + 640) = v80;
      v82 = objc_msgSendSuper2((v0 + 632), sel_init);
      *(v0 + 944) = v82;
      (*(v78 + 8))(v77, v79);
      v83 = swift_task_alloc();
      *(v0 + 952) = v83;
      *v83 = v0;
      v83[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v84 = *(v0 + 888);
      v85 = *(v0 + 880);
      v86 = *(v0 + 872);
      v87 = *(v0 + 864);
      v88 = *(v0 + 672);
      v89 = *(v0 + 664);
      v90 = *(v0 + 648);

      return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v82, v90, v89, v88, v87, v86, v85, v84);
    }
  }

  else
  {
    *(v0 + 928) = *(*(v0 + 816) + 32);
    *(v0 + 600) = x;
    *(v0 + 608) = y;
    *(v0 + 616) = v43;
    *(v0 + 624) = height;
    while (1)
    {
      v50 = *(v0 + 600);
      v51 = *(v0 + 608);
      v52 = *(v0 + 616);
      v53 = *(v0 + 624);
      v54 = *(v0 + 912);
      v55 = *(v0 + 896);
      (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
      v56 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      SharedTagged_10.subscript.getter();
      v57 = *(v0 + 504);
      v58 = *(v0 + 512);
      __swift_project_boxed_opaque_existential_1((v0 + 480), v57);
      *(v0 + 560) = v55(v54, &protocol witness table for Image);
      *(v0 + 568) = v59;
      *(v0 + 576) = v60;
      *(v0 + 584) = v61;
      *(v0 + 592) = 0;
      v62 = (*(v58 + 136))(v0 + 560, v57, v58);
      v64 = v63;
      v66 = v65;
      v68 = v67;
      __swift_destroy_boxed_opaque_existential_0(v0 + 480);
      v116.origin.x = v62;
      v116.origin.y = v64;
      v116.size.width = v66;
      v116.size.height = v68;
      v117.origin.x = v50;
      v117.origin.y = v51;
      v117.size.width = v52;
      v117.size.height = v53;
      if (CGRectIntersectsRect(v116, v117))
      {
        break;
      }

      (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
      v69 = *(v0 + 920);
      v70 = *(v0 + 832);
      v71 = *(v0 + 808);
      CROrderedSet.Iterator.next()();
      if (v69(v70, 1, v71) == 1)
      {
        goto LABEL_10;
      }
    }

    v91 = *(v0 + 808);
    SharedTagged_10.subscript.getter();
    v92 = *(v0 + 544);
    v93 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v92);
    MEMORY[0x1DA6CB7A0](v91);
    v94 = *(v93 + 8);
    v105 = (*(v94 + 16) + **(v94 + 16));
    v95 = swift_task_alloc();
    *(v0 + 936) = v95;
    *v95 = v0;
    v95[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v96 = *(v0 + 912);
    v97 = *(v0 + 768);
    v98 = *(v0 + 656);
    v99 = *(v0 + 648);

    return v105(v99, v97, v98, v0 + 16, v96, v56, v92, v94);
  }
}

{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  __swift_destroy_boxed_opaque_existential_0(v0 + 520);
  while (1)
  {
    v1 = *(v0 + 920);
    v2 = *(v0 + 832);
    v3 = *(v0 + 808);
    CROrderedSet.Iterator.next()();
    if (v1(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 600);
    v5 = *(v0 + 608);
    v6 = *(v0 + 616);
    v7 = *(v0 + 624);
    v8 = *(v0 + 912);
    v9 = *(v0 + 896);
    (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
    v10 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    SharedTagged_10.subscript.getter();
    v11 = *(v0 + 504);
    v12 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v11);
    *(v0 + 560) = v9(v8, &protocol witness table for Image);
    *(v0 + 568) = v13;
    *(v0 + 576) = v14;
    *(v0 + 584) = v15;
    *(v0 + 592) = 0;
    v16 = (*(v12 + 136))(v0 + 560, v11, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(v0 + 480);
    v53.origin.x = v16;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = v22;
    v54.origin.x = v4;
    v54.origin.y = v5;
    v54.size.width = v6;
    v54.size.height = v7;
    if (CGRectIntersectsRect(v53, v54))
    {
      v28 = *(v0 + 808);
      SharedTagged_10.subscript.getter();
      v29 = *(v0 + 544);
      v30 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v29);
      MEMORY[0x1DA6CB7A0](v28);
      v31 = *(v30 + 8);
      v51 = (*(v31 + 16) + **(v31 + 16));
      v32 = swift_task_alloc();
      *(v0 + 936) = v32;
      *v32 = v0;
      v32[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v33 = *(v0 + 912);
      v34 = *(v0 + 768);
      v35 = *(v0 + 656);
      v36 = *(v0 + 648);

      return v51(v36, v34, v35, v0 + 16, v33, v10, v29, v31);
    }

    (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  }

  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
  off_1F4F5EDD0[0]();
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.encapsulateTransient<A>(_:)();
    v40 = type metadata accessor for PKDrawingCoherence(0);
    v41 = objc_allocWithZone(v40);
    (*(v38 + 16))(v41 + OBJC_IVAR___PKDrawingCoherence_model, v37, v39);
    *(v0 + 632) = v41;
    *(v0 + 640) = v40;
    v42 = objc_msgSendSuper2((v0 + 632), sel_init);
    *(v0 + 944) = v42;
    (*(v38 + 8))(v37, v39);
    v43 = swift_task_alloc();
    *(v0 + 952) = v43;
    *v43 = v0;
    v43[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v44 = *(v0 + 888);
    v45 = *(v0 + 880);
    v46 = *(v0 + 872);
    v47 = *(v0 + 864);
    v48 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v42, v50, v49, v48, v47, v46, v45, v44);
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = v0[118];
  v2 = v0[83];
  v3 = [objc_opt_self() sharedCache];
  v0[120] = v3;
  v4 = swift_task_alloc();
  v0[121] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[122] = v5;
  *v5 = v0;
  v5[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
  v6 = v0[90];
  v7 = v0[88];

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000026, 0x80000001D4082110, closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)partial apply, v4, v7);
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  outlined init with copy of Date?(*(v0 + 720), v1, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 944);
    v5 = *(v0 + 800);
    v6 = *(v0 + 792);
    v7 = *(v0 + 784);
    v8 = *(v0 + 720);
    v9 = *(v0 + 712);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9PencilKit9PKDrawingVSgMd);
    (*(v6 + 8))(v5, v7);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit9PKDrawingVSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 712), *(v0 + 680));
    PKDrawing._bridgeToObjectiveC()(v12);
    v14 = v13;
    *(v0 + 984) = v13;
    v15 = swift_task_alloc();
    *(v0 + 992) = v15;
    *v15 = v0;
    v15[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 672);
    v21 = *(v0 + 664);
    v22 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v14, v22, v21, v20, v19, v18, v17, v16);
  }
}

{
  v1 = *(*v0 + 984);

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v108 = v0;
  v1 = *(v0 + 664);
  CGContextSaveGState(*(v0 + 648));
  if (*(v1 + 16) == 1)
  {
    if (*(*(v0 + 664) + 72))
    {
      goto LABEL_6;
    }

    v2 = *(v0 + 648);
    v3 = off_1F4F5EE20;
    v4 = type metadata accessor for Image(0);
    v5 = v3(v4, &protocol witness table for Image);
    v6 = Image.pdfContentsBounds.getter();
    v8 = v7;
    v103 = v9;
    rect = v10;
    CGAffineTransformMakeRotation(&v107, v5);
    a = v107.a;
    b = v107.b;
    c = v107.c;
    d = v107.d;
    tx = v107.tx;
    ty = v107.ty;
    *(v0 + 288) = v107.a;
    *(v0 + 296) = b;
    *(v0 + 304) = c;
    *(v0 + 312) = d;
    *(v0 + 320) = tx;
    *(v0 + 328) = ty;
    v110.origin.x = v6;
    v110.origin.y = v8;
    v110.size.width = v103;
    v110.size.height = rect;
    v111 = CGRectApplyAffineTransform(v110, (v0 + 288));
    CGAffineTransformMakeTranslation(&v107, v6 - v111.origin.x, v8 - v111.origin.y);
    v17 = *&v107.a;
    v18 = *&v107.c;
    v19 = *&v107.tx;
    *(v0 + 336) = a;
    *(v0 + 344) = b;
    *(v0 + 352) = c;
    *(v0 + 360) = d;
    *(v0 + 368) = tx;
    *(v0 + 376) = ty;
    *(v0 + 384) = v17;
    *(v0 + 400) = v18;
    *(v0 + 416) = v19;
    CGAffineTransformConcat(&v107, (v0 + 336), (v0 + 384));
    v20 = *&v107.c;
    v21 = *&v107.tx;
    *(v0 + 432) = *&v107.a;
    *(v0 + 448) = v20;
    *(v0 + 464) = v21;
    v22 = (v0 + 432);
    v23 = v2;
  }

  else
  {
    v24 = *(v0 + 648);
    v25 = off_1F4F5EEB0;
    v26 = type metadata accessor for Image(0);
    v112.origin.x = v25();
    Width = CGRectGetWidth(v112);
    v113.origin.x = off_1F4F5EDA0(v26, &protocol witness table for Image);
    v28 = CGRectGetWidth(v113);
    CGAffineTransformMakeScale(&v107, Width / v28, Width / v28);
    v29 = v107.tx;
    v30 = v107.ty;
    recta = *&v107.a;
    v104 = *&v107.c;
    v114.origin.x = v25();
    MinX = CGRectGetMinX(v114);
    v115.origin.x = v25();
    MinY = CGRectGetMinY(v115);
    CGAffineTransformMakeTranslation(&v107, MinX, MinY);
    v33 = *&v107.a;
    v34 = *&v107.c;
    v35 = *&v107.tx;
    *(v0 + 144) = recta;
    *(v0 + 160) = v104;
    *(v0 + 176) = v29;
    *(v0 + 184) = v30;
    *(v0 + 192) = v33;
    *(v0 + 208) = v34;
    *(v0 + 224) = v35;
    CGAffineTransformConcat(&v107, (v0 + 144), (v0 + 192));
    v36 = *&v107.c;
    v37 = *&v107.tx;
    *(v0 + 240) = *&v107.a;
    *(v0 + 256) = v36;
    *(v0 + 272) = v37;
    v23 = v24;
    v22 = (v0 + 240);
  }

  CGContextConcatCTM(v23, v22);
LABEL_6:
  v38 = *(v0 + 832);
  v39 = *(v0 + 816);
  v105 = *(v0 + 808);
  v40 = *(v0 + 664);
  ClipBoundingBox = CGContextGetClipBoundingBox(*(v0 + 648));
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  v43 = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  *(v0 + 864) = ClipBoundingBox;
  outlined init with copy of PaperRenderableOptions(v40, v0 + 16);
  *(v0 + 32) = 0;
  v45 = off_1F4F5EDA0;
  *(v0 + 896) = off_1F4F5EDA0;
  *(v0 + 904) = &off_1F4F5EDA0 & 0xFFFFFFFFFFFFLL | 0x3EB1000000000000;
  v46 = type metadata accessor for Image(0);
  *(v0 + 912) = v46;
  *(v0 + 40) = v45(v46, &protocol witness table for Image);
  *(v0 + 48) = v47;
  *(v0 + 56) = v48;
  *(v0 + 64) = v49;
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v50 = *(v39 + 48);
  *(v0 + 920) = v50;
  if (v50(v38, 1, v105) == 1)
  {
LABEL_10:
    v74 = *(v0 + 792);
    v75 = *(v0 + 784);
    v76 = *(v0 + 776);
    (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
    off_1F4F5EDD0[0]();
    if ((*(v74 + 48))(v76, 1, v75) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      CGContextRestoreGState(*(v0 + 648));
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v77 = *(v0 + 8);

      return v77();
    }

    else
    {
      v79 = *(v0 + 744);
      v80 = *(v0 + 736);
      v81 = *(v0 + 728);
      (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      Capsule.encapsulateTransient<A>(_:)();
      v82 = type metadata accessor for PKDrawingCoherence(0);
      v83 = objc_allocWithZone(v82);
      (*(v80 + 16))(v83 + OBJC_IVAR___PKDrawingCoherence_model, v79, v81);
      *(v0 + 632) = v83;
      *(v0 + 640) = v82;
      v84 = objc_msgSendSuper2((v0 + 632), sel_init);
      *(v0 + 944) = v84;
      (*(v80 + 8))(v79, v81);
      v85 = swift_task_alloc();
      *(v0 + 952) = v85;
      *v85 = v0;
      v85[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v86 = *(v0 + 888);
      v87 = *(v0 + 880);
      v88 = *(v0 + 872);
      v89 = *(v0 + 864);
      v90 = *(v0 + 672);
      v91 = *(v0 + 664);
      v92 = *(v0 + 648);

      return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v84, v92, v91, v90, v89, v88, v87, v86);
    }
  }

  else
  {
    *(v0 + 928) = *(*(v0 + 816) + 32);
    *(v0 + 600) = x;
    *(v0 + 608) = y;
    *(v0 + 616) = v43;
    *(v0 + 624) = height;
    while (1)
    {
      v51 = *(v0 + 600);
      v52 = *(v0 + 608);
      v53 = *(v0 + 616);
      v54 = *(v0 + 624);
      v55 = *(v0 + 912);
      v56 = *(v0 + 896);
      (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
      v57 = type metadata accessor for PaperDocument(0);
      v58 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      SharedTagged_10.subscript.getter();
      v59 = *(v0 + 504);
      v60 = *(v0 + 512);
      __swift_project_boxed_opaque_existential_1((v0 + 480), v59);
      *(v0 + 560) = v56(v55, &protocol witness table for Image);
      *(v0 + 568) = v61;
      *(v0 + 576) = v62;
      *(v0 + 584) = v63;
      *(v0 + 592) = 0;
      v64 = (*(v60 + 136))(v0 + 560, v59, v60);
      v66 = v65;
      v68 = v67;
      v70 = v69;
      __swift_destroy_boxed_opaque_existential_0(v0 + 480);
      v117.origin.x = v64;
      v117.origin.y = v66;
      v117.size.width = v68;
      v117.size.height = v70;
      v118.origin.x = v51;
      v118.origin.y = v52;
      v118.size.width = v53;
      v118.size.height = v54;
      if (CGRectIntersectsRect(v117, v118))
      {
        break;
      }

      (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
      v71 = *(v0 + 920);
      v72 = *(v0 + 832);
      v73 = *(v0 + 808);
      CROrderedSet.Iterator.next()();
      if (v71(v72, 1, v73) == 1)
      {
        goto LABEL_10;
      }
    }

    v93 = *(v0 + 808);
    SharedTagged_10.subscript.getter();
    v94 = *(v0 + 544);
    v95 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v94);
    MEMORY[0x1DA6CB7A0](v93);
    v96 = *(v95 + 8);
    v106 = (*(v96 + 16) + **(v96 + 16));
    v97 = swift_task_alloc();
    *(v0 + 936) = v97;
    *v97 = v0;
    v97[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v98 = *(v0 + 768);
    v99 = *(v0 + 656);
    v100 = *(v0 + 648);

    return v106(v100, v98, v99, v0 + 16, v57, v58, v94, v96);
  }
}

{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  __swift_destroy_boxed_opaque_existential_0(v0 + 520);
  while (1)
  {
    v1 = *(v0 + 920);
    v2 = *(v0 + 832);
    v3 = *(v0 + 808);
    CROrderedSet.Iterator.next()();
    if (v1(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 600);
    v5 = *(v0 + 608);
    v6 = *(v0 + 616);
    v7 = *(v0 + 624);
    v8 = *(v0 + 912);
    v9 = *(v0 + 896);
    (*(v0 + 928))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
    v10 = type metadata accessor for PaperDocument(0);
    v11 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    SharedTagged_10.subscript.getter();
    v12 = *(v0 + 504);
    v13 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v12);
    *(v0 + 560) = v9(v8, &protocol witness table for Image);
    *(v0 + 568) = v14;
    *(v0 + 576) = v15;
    *(v0 + 584) = v16;
    *(v0 + 592) = 0;
    v17 = (*(v13 + 136))(v0 + 560, v12, v13);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(v0 + 480);
    v53.origin.x = v17;
    v53.origin.y = v19;
    v53.size.width = v21;
    v53.size.height = v23;
    v54.origin.x = v4;
    v54.origin.y = v5;
    v54.size.width = v6;
    v54.size.height = v7;
    if (CGRectIntersectsRect(v53, v54))
    {
      v29 = *(v0 + 808);
      SharedTagged_10.subscript.getter();
      v30 = *(v0 + 544);
      v31 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v30);
      MEMORY[0x1DA6CB7A0](v29);
      v32 = *(v31 + 8);
      v51 = (*(v32 + 16) + **(v32 + 16));
      v33 = swift_task_alloc();
      *(v0 + 936) = v33;
      *v33 = v0;
      v33[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v34 = *(v0 + 768);
      v35 = *(v0 + 656);
      v36 = *(v0 + 648);

      return v51(v36, v34, v35, v0 + 16, v10, v11, v30, v32);
    }

    (*(*(v0 + 816) + 8))(*(v0 + 824), *(v0 + 808));
  }

  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  v26 = *(v0 + 776);
  (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
  off_1F4F5EDD0[0]();
  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 776), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.encapsulateTransient<A>(_:)();
    v40 = type metadata accessor for PKDrawingCoherence(0);
    v41 = objc_allocWithZone(v40);
    (*(v38 + 16))(v41 + OBJC_IVAR___PKDrawingCoherence_model, v37, v39);
    *(v0 + 632) = v41;
    *(v0 + 640) = v40;
    v42 = objc_msgSendSuper2((v0 + 632), sel_init);
    *(v0 + 944) = v42;
    (*(v38 + 8))(v37, v39);
    v43 = swift_task_alloc();
    *(v0 + 952) = v43;
    *v43 = v0;
    v43[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v44 = *(v0 + 888);
    v45 = *(v0 + 880);
    v46 = *(v0 + 872);
    v47 = *(v0 + 864);
    v48 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v42, v50, v49, v48, v47, v46, v45, v44);
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = v0[118];
  v2 = v0[83];
  v3 = [objc_opt_self() sharedCache];
  v0[120] = v3;
  v4 = swift_task_alloc();
  v0[121] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[122] = v5;
  *v5 = v0;
  v5[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
  v6 = v0[90];
  v7 = v0[88];

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000026, 0x80000001D4082110, partial apply for closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), v4, v7);
}

{

  return MEMORY[0x1EEE6DFA0](specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  outlined init with copy of Date?(*(v0 + 720), v1, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 944);
    v5 = *(v0 + 800);
    v6 = *(v0 + 792);
    v7 = *(v0 + 784);
    v8 = *(v0 + 720);
    v9 = *(v0 + 712);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9PencilKit9PKDrawingVSgMd);
    (*(v6 + 8))(v5, v7);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit9PKDrawingVSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 712), *(v0 + 680));
    PKDrawing._bridgeToObjectiveC()(v12);
    v14 = v13;
    *(v0 + 984) = v13;
    v15 = swift_task_alloc();
    *(v0 + 992) = v15;
    *v15 = v0;
    v15[1] = specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 672);
    v21 = *(v0 + 664);
    v22 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v14, v22, v21, v20, v19, v18, v17, v16);
  }
}

uint64_t specialized closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  LODWORD(v181) = a3;
  v192 = a4;
  v193 = a5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v177 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v161 = &v159 - v7;
  v8 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v160 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v159 - v10;
  v185 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v185);
  v174 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v201);
  v190 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v196 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v159 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v159 - v18;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v162 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v195 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v183 = &v159 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v189 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v159 - v25;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v199 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v159 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v197 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v159 - v32;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v166 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v198 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v188 = &v159 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v164 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v173 = &v159 - v39;
  v168 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v169 = &v159 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v211 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v210 = &v159 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v209 = &v159 - v46;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v172 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208);
  v170 = &v159 - v47;
  *&v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  *&v207 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v49 = &v159 - v48;
  v50 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Capsule.Ref.import<A>(_:)();
  v218 = v8;
  v219 = v8;
  v220 = v50;
  v221 = &protocol witness table for Paper;
  v222 = v50;
  v223 = &protocol witness table for Paper;
  swift_getKeyPath();
  v212 = v8;
  v213 = v8;
  v191 = v8;
  v214 = v50;
  v215 = &protocol witness table for Paper;
  v216 = v50;
  v217 = &protocol witness table for Paper;
  swift_getKeyPath();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v182 = a2;
  Capsule.subscript.getter();

  v51 = a1;
  v52 = v206;
  v229 = v51;
  v53 = Capsule.Ref.subscript.modify();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append<A>(contentsOf:)();
  v54 = *(v207 + 8);
  *&v205.f64[0] = v49;
  *&v207 = v207 + 8;
  v54(v49, v52);
  v53(&t1, 0);

  v56 = fabs(v192.n128_f64[0]) < 0.1;
  if (fabs(v193.n128_f64[0]) >= 0.1)
  {
    v56 = 0;
  }

  v163 = v56;
  v171 = v50;
  if (v56)
  {
    v57 = v229;
    if ((v181 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v58 = v191;
    *(&v159 - 6) = v191;
    *(&v159 - 5) = v58;
    *(&v159 - 4) = v50;
    *(&v159 - 3) = &protocol witness table for Paper;
    *(&v159 - 2) = v50;
    *(&v159 - 1) = &protocol witness table for Paper;
    swift_getKeyPath();
    v59 = v205.f64[0];
    Capsule.subscript.getter();

    v60 = v170;
    CROrderedSet.makeIterator()();
    v54(*&v59, v52);
    v61 = v208;
    v62 = v209;
    CROrderedSet.Iterator.next()();
    v63 = v229;
    v64 = v211 + 48;
    v65 = *(v211 + 48);
    v66 = v65(v62, 1, v43);
    v67 = v210;
    if (v66 != 1)
    {
      *&v207 = *(v211 + 32);
      v211 += 32;
      *&v206 = v211 - 24;
      *&v68.f64[0] = v192.n128_u64[0];
      *&v68.f64[1] = v193.n128_u64[0];
      v205 = v68;
      do
      {
        (v207)(v67, v62, v43);
        v69 = SharedTagged_10.subscript.modify();
        v70 = v65;
        v71 = v64;
        v72 = v43;
        v73 = v60;
        v76 = *(v74 + 24);
        v75 = *(v74 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v74, v76);
        v77 = *(v75 + 24);
        v78 = v76;
        v60 = v73;
        v43 = v72;
        v64 = v71;
        v65 = v70;
        v79 = v75;
        v67 = v210;
        v80 = v77(&v225, v78, v79);
        *v81 = vaddq_f64(*v81, v205);
        v80(&v225, 0);
        v69(&t1, 0);
        v61 = v208;
        v62 = v209;
        (*v206)(v67, v43);
        CROrderedSet.Iterator.next()();
        v63 = v229;
      }

      while (v65(v62, 1, v43) != 1);
    }

    result = (*(v172 + 8))(v60, v61);
    v57 = v63;
    if ((v181 & 1) == 0)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  v82 = v191;
  *(&v159 - 6) = v191;
  *(&v159 - 5) = v82;
  v83 = v171;
  *(&v159 - 4) = v171;
  *(&v159 - 3) = &protocol witness table for Paper;
  *(&v159 - 2) = v83;
  *(&v159 - 1) = &protocol witness table for Paper;
  swift_getKeyPath();
  v84 = v173;
  Capsule.subscript.getter();

  v85 = v177;
  v86 = v177 + 48;
  v87 = *(v177 + 48);
  v88 = v179;
  if (v87(v84, 1, v179) == 1)
  {
    v89 = v84;
  }

  else
  {
    v181 = v87;
    v182 = v86;
    v90 = v167;
    Ref.subscript.getter();
    v91 = *(v85 + 8);
    v91(v84, v88);
    v92 = v169;
    outlined init with take of Shape(v90, v169, type metadata accessor for PKDrawingStruct);
    v93 = *(v168 + 20);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&t1.a == *&v225.a)
    {
      return outlined destroy of Paper(v92, type metadata accessor for PKDrawingStruct);
    }

    v171 = v91;
    v172 = v85 + 8;
    v180 = v93;
    v173 = v94;
    if (!v163)
    {
      CGAffineTransformMakeTranslation(&t1, v192.n128_f64[0], v193.n128_f64[0]);
      v206 = *&t1.a;
      v207 = *&t1.c;
      tx = t1.tx;
      ty = t1.ty;
      CROrderedSet.makeIterator()();
      v97 = v186;
      CROrderedSet.Iterator.next()();
      v98 = v202;
      v210 = *(v199 + 48);
      v211 = v199 + 48;
      v99 = (v210)(v97, 1, v202);
      v100 = v178;
      v101 = v187;
      if (v99 != 1)
      {
        v208 = *(v199 + 32);
        v209 = (v199 + 32);
        v134 = (v162 + 8);
        *&v205.f64[0] = v160 + 8;
        v135 = (v199 + 8);
        (v208)(v194, v97, v98);
        while (1)
        {
          v138 = v183;
          Ref.subscript.getter();
          v139 = v184;
          v140 = v200;
          CRRegister.value.getter();
          (*v134)(v138, v140);
          outlined init with take of Shape(v139, v100, type metadata accessor for TaggedStroke);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Paper(v100, type metadata accessor for TaggedStroke);
            v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
            (*(*(v141 - 8) + 56))(v101, 1, 1, v141);
          }

          else
          {
            v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
            v143 = *(v142 - 8);
            (*(v143 + 32))(v101, v100, v142);
            (*(v143 + 56))(v101, 0, 1, v142);
          }

          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v145 = *(v144 - 8);
          if ((*(v145 + 48))(v101, 1, v144) == 1)
          {
            v136 = v202;
            (*v135)(v194, v202);
            outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
          }

          else
          {
            v146 = v174;
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
            v147 = v175;
            CRRegister.wrappedValue.getter();
            v148 = v146;
            v100 = v178;
            outlined destroy of Paper(v148, type metadata accessor for PKStrokeStruct);
            (*(v145 + 8))(v187, v144);
            v149 = v176;
            v150 = Ref.subscript.modify();
            type metadata accessor for PKStrokeInheritedProperties(0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
            v151 = CRRegister.wrappedValue.modify();
            v153 = v152;
            v154 = v152[1];
            v155 = v152[2];
            *&t1.a = *v152;
            *&t1.c = v154;
            *&t1.tx = v155;
            *&v225.a = v206;
            *&v225.c = v207;
            v225.tx = tx;
            v225.ty = ty;
            CGAffineTransformConcat(&v224, &t1, &v225);
            v156 = *&v224.c;
            v157 = *&v224.tx;
            *v153 = *&v224.a;
            v153[1] = v156;
            v153[2] = v157;
            v151(v226, 0);
            v150(v227, 0);
            v158 = v147;
            v101 = v187;
            (**&v205.f64[0])(v158, v149);
            v136 = v202;
            (*v135)(v194, v202);
          }

          v137 = v186;
          CROrderedSet.Iterator.next()();
          if ((v210)(v137, 1, v136) == 1)
          {
            break;
          }

          (v208)(v194, v137, v136);
        }
      }

      (*(v166 + 8))(v188, v203);
      v57 = v229;
    }

    CROrderedSet.makeIterator()();
    v102 = v197;
    CROrderedSet.Iterator.next()();
    v103 = v202;
    v210 = *(v199 + 48);
    v211 = v199 + 48;
    v104 = (v210)(v102, 1, v202);
    v106 = v189;
    v105 = v190;
    if (v104 != 1)
    {
      v111 = *(v199 + 32);
      v208 = (v162 + 8);
      v209 = v111;
      v199 += 32;
      v112 = (v199 - 24);
      (v111)(v204, v102, v103);
      while (1)
      {
        v115 = v195;
        Ref.subscript.getter();
        v116 = v196;
        v117 = v200;
        CRRegister.value.getter();
        (*v208)(v115, v117);
        outlined init with take of Shape(v116, v105, type metadata accessor for TaggedStroke);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of Paper(v105, type metadata accessor for TaggedStroke);
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          (*(*(v118 - 8) + 56))(v106, 1, 1, v118);
        }

        else
        {
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v120 = *(v119 - 8);
          (*(v120 + 32))(v106, v105, v119);
          (*(v120 + 56))(v106, 0, 1, v119);
        }

        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        v122 = *(v121 - 8);
        if ((*(v122 + 48))(v106, 1, v121) == 1)
        {
          v113 = v202;
          (*v112)(v204, v202);
          outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
        }

        else
        {
          v123 = Ref.subscript.modify();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
          v124 = CRRegister.wrappedValue.modify();
          v126 = v125;
          v127 = *v125;
          v128 = *v125 & 0xFFFF000000000000;
          LODWORD(v224.a) = *v125;
          WORD2(v224.a) = WORD2(v127);
          _So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_isPastedStroke_setter(&v224);
          v129 = v128 | LODWORD(v224.a) | (WORD2(v224.a) << 32);
          v106 = v189;
          v57 = v229;
          *v126 = v129;
          v124(&v225, 0);
          v123(&t1, 0);
          v105 = v190;
          v130 = v202;
          (*v112)(v204, v202);
          (*(v122 + 8))(v106, v121);
          v113 = v130;
        }

        v114 = v197;
        CROrderedSet.Iterator.next()();
        if ((v210)(v114, 1, v113) == 1)
        {
          break;
        }

        (v209)(v204, v114, v113);
      }
    }

    (*(v166 + 8))(v198, v203);
    v107 = Capsule.Ref.root.modify();
    specialized ContainerCanvasElement.ensureHasDrawing<A>(in:)(v57);
    v107(&t1, 0);
    v108 = v165;
    Capsule.Ref.root.getter();
    v109 = v164;
    off_1F4F62930[0]();
    outlined destroy of Paper(v108, type metadata accessor for Paper);
    v110 = v179;
    if (!v181(v109, 1, v179))
    {
      v131 = v161;
      (*(v177 + 16))(v161, v109, v110);
      outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v132 = Ref.subscript.modify();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      v133 = v169;
      CROrderedSet.append<A>(contentsOf:)();
      v132(&t1, 0);
      v171(v131, v110);
      return outlined destroy of Paper(v133, type metadata accessor for PKDrawingStruct);
    }

    outlined destroy of Paper(v169, type metadata accessor for PKDrawingStruct);
    v89 = v109;
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}