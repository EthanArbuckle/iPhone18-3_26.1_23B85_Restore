uint64_t CanvasFormattingProxy.strokeWidth.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v74 - v13;
  v14 = *(a1 + 16);
  v97 = *(a1 + 24);
  v98 = v14;
  v96 = type metadata accessor for Capsule();
  v15 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v74 - v25;
  v91 = type metadata accessor for Shape(0);
  v27 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v75 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v74 - v34;
  v99 = v1;
  v35 = *(v1 + 8);
  v36 = v35 + 56;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 56);
  v92 = (v37 + 63) >> 6;
  v87 = v33 + 32;
  v88 = v33 + 16;
  v95 = (v15 + 8);
  v81 = (v27 + 48);
  v80 = (v27 + 56);
  v90 = v33;
  v85 = (v33 + 8);
  v93 = v35;
  *&result = COERCE_DOUBLE();
  v41 = 0;
  v100 = v31;
  v94 = v23;
  v83 = v36;
  v77 = v7;
  v42 = v92;
  if (v39)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return result;
    }

    if (v43 >= v42)
    {

      *&result = 0.0;
      return result;
    }

    v39 = *(v36 + 8 * v43);
    ++v41;
  }

  while (!v39);
  while (1)
  {
    v45 = v89;
    v44 = v90;
    (*(v90 + 16))(v89, *(v93 + 48) + *(v90 + 72) * (__clz(__rbit64(v39)) | (v43 << 6)), v29);
    (*(v44 + 32))(v31, v45, v29);
    WeakTagged_10.tagged6.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v23, 1, v46) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      (*v80)(v26, 1, 1, v91);
LABEL_13:
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit5ShapeVSgMd);
      v52 = v86;
      goto LABEL_16;
    }

    v48 = v29;
    v49 = v23;
    v50 = v82;
    Canvas.updatablePaper2.getter(v82);
    WeakRef.subscript.getter();
    (*v95)(v50, v96);
    v51 = v49;
    v29 = v48;
    (*(v47 + 8))(v51, v46);
    if ((*v81)(v26, 1, v91) == 1)
    {
      goto LABEL_13;
    }

    v53 = v75;
    _s8PaperKit5ShapeVWObTm_3(v26, v75, type metadata accessor for Shape);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
    CRRegister.wrappedValue.getter();
    v52 = v86;
    if (!v101)
    {
      break;
    }

    outlined destroy of Shape(v53, type metadata accessor for Shape);
LABEL_16:
    WeakTagged_10.tagged7.getter();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v52, 1, v54) == 1)
    {
      v56 = v52;
      v57 = &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd;
LABEL_20:
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, v57);
      v61 = v84;
      v23 = v94;
      goto LABEL_22;
    }

    v58 = v78;
    Canvas.updatablePaper2.getter(v78);
    v59 = v79;
    WeakRef.subscript.getter();
    (*v95)(v58, v96);
    (*(v55 + 8))(v52, v54);
    v60 = type metadata accessor for Signature(0);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      v56 = v59;
      v57 = &_s8PaperKit9SignatureVSgMd;
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd);
    CRRegister.wrappedValue.getter();
    v62 = v101;
    v63 = v102;
    outlined destroy of Shape(v59, type metadata accessor for Signature);
    v61 = v84;
    v23 = v94;
    if ((v63 & 1) == 0)
    {
      (*v85)(v100, v29);

      *&result = v62;
      return result;
    }

LABEL_22:
    v39 &= v39 - 1;
    v64 = v100;
    WeakTagged_10.tagged10.getter();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v61, 1, v65) == 1)
    {
      (*v85)(v64, v29);
      *&result = COERCE_DOUBLE(outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd));
      v41 = v43;
      v31 = v64;
      v36 = v83;
      v42 = v92;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v67 = v29;
      v68 = v76;
      Canvas.updatablePaper2.getter(v76);
      v69 = v77;
      WeakRef.subscript.getter();
      (*v95)(v68, v96);
      (*(v66 + 8))(v61, v65);
      v70 = type metadata accessor for LoupeElement(0);
      if ((*(*(v70 - 8) + 48))(v69, 1, v70) != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();

        (*v85)(v100, v67);
        v71 = v101;
        outlined destroy of Shape(v69, type metadata accessor for LoupeElement);
        return v71;
      }

      v31 = v100;
      v29 = v67;
      (*v85)(v100, v67);
      *&result = COERCE_DOUBLE(outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit12LoupeElementVSgMd));
      v41 = v43;
      v23 = v94;
      v36 = v83;
      v42 = v92;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v43 = v41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v72 = v74;
  CRRegister.wrappedValue.getter();
  v73 = type metadata accessor for Color(0);
  if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
  {

    outlined destroy of Shape(v53, type metadata accessor for Shape);
    (*v85)(v100, v29);
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit5ColorVSgMd);
    *&result = 0.0;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit5ColorVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();

    outlined destroy of Shape(v53, type metadata accessor for Shape);
    (*v85)(v100, v29);
    return v101;
  }

  return result;
}

void closure #1 in CanvasFormattingProxy.strokeWidth.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.strokeWidth.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v64 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v13 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v79 = &v64 - v14;
  v78 = type metadata accessor for Shape(0);
  v87 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = &v64 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v20 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v64 - v26;
  v27 = *(a2 + 8);
  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  v32 = (v29 + 63) >> 6;
  v84 = v25 + 32;
  v85 = v25 + 16;
  v83 = (v20 + 48);
  v75 = (v20 + 32);
  v77 = (v87 + 48);
  v76 = (v20 + 8);
  if (a4)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *&a3;
  }

  v87 = v25;
  v81 = (v25 + 8);
  v80 = (v13 + 48);
  v72 = (v13 + 32);
  v66 = a4 | ((a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000);
  v65 = v33;
  v70 = (v13 + 8);
  v71 = (v91 + 48);
  v69 = (v91 + 32);
  v68 = (v91 + 8);
  v91 = v27;

  v35 = 0;
  v90 = v9;
  v82 = v32;
  while (v31)
  {
    v36 = v95;
LABEL_14:
    v38 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v39 = v86;
    v40 = v87;
    (*(v87 + 16))(v86, *(v91 + 48) + *(v87 + 72) * (v38 | (v35 << 6)), v22);
    (*(v40 + 32))(v97, v39, v22);
    v41 = v22;
    WeakTagged_10.tagged6.getter();
    v42 = v96;
    v43 = v94;
    if ((*v83)(v96, 1, v94) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v22 = v41;
      v44 = v90;
      goto LABEL_20;
    }

    (*v75)(v89, v42, v43);
    v45 = v88;
    WeakRef.subscript.getter();
    v46 = *v77;
    if ((*v77)(v45, 1, v78))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s8PaperKit5ShapeVSgMd);
LABEL_19:
      (*v76)(v89, v94);
      v44 = v90;
      v36 = v95;
      v22 = v41;
LABEL_20:
      v50 = v97;
      WeakTagged_10.tagged7.getter();
      v51 = v93;
      if ((*v80)(v36, 1, v93) != 1)
      {
        (*v72)(v79, v36, v51);
        v53 = WeakRef.subscript.modify();
        v55 = v54;
        v56 = type metadata accessor for Signature(0);
        result = (*(*(v56 - 8) + 48))(v55, 1, v56);
        if (!result)
        {
          if ((v66 & 1) == 0)
          {
            goto LABEL_39;
          }

          if (v33 <= -9.22337204e18)
          {
            goto LABEL_40;
          }

          if (v33 >= 9.22337204e18)
          {
            goto LABEL_41;
          }

          v98 = *&v65;
          v99 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd);
          CRRegister.wrappedValue.setter();
        }

        v53(&v100, 0);
        (*v70)(v79, v93);
        goto LABEL_29;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
      v52 = v74;
      WeakTagged_10.tagged10.getter();
      if ((*v71)(v52, 1, v44) == 1)
      {
        (*v81)(v50, v22);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
        goto LABEL_30;
      }

      (*v69)(v73, v52, v44);
      v57 = WeakRef.subscript.modify();
      v59 = v58;
      v60 = type metadata accessor for LoupeElement(0);
      if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        v98 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
      }

      v57(&v100, 0);
      v32 = v82;
      (*v68)(v73, v90);
      result = (*v81)(v97, v22);
    }

    else
    {
      v47 = v88;
      v48 = v67;
      _s8PaperKit5ColorVWOcTm_0(v88, v67, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s8PaperKit5ShapeVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
      CRRegister.wrappedValue.getter();
      v49 = v100;
      outlined destroy of Shape(v48, type metadata accessor for Shape);
      if (v49)
      {
        goto LABEL_19;
      }

      v61 = WeakRef.subscript.modify();
      v63 = v46(v62, 1, v78);
      v22 = v41;
      if (!v63)
      {
        v98 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
      }

      v61(&v100, 0);
      (*v76)(v89, v94);
LABEL_29:
      result = (*v81)(v97, v22);
LABEL_30:
      v32 = v82;
    }
  }

  v36 = v95;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v32)
    {
    }

    v31 = *(v28 + 8 * v37);
    ++v35;
    if (v31)
    {
      v35 = v37;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

BOOL closure #1 in CanvasFormattingProxy.strokeIsRequired.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v36 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v8;
  v41 = a3;
  v42 = a4;
  v9 = type metadata accessor for Capsule();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v43 = &v34 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged7.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v21 = 1;
  v22 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  if (v22 == 1)
  {
    WeakTagged_10.tagged6.getter();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      v25 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
      v26 = v14;
LABEL_6:
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, v25);
      return 0;
    }

    Canvas.updatablePaper2.getter(v11);
    v27 = v43;
    WeakRef.subscript.getter();
    (*(v38 + 8))(v11, v39);
    (*(v24 + 8))(v14, v23);
    v28 = type metadata accessor for Shape(0);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      v25 = &_s8PaperKit5ShapeVSgMd;
      v26 = v27;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
    v29 = v35;
    CRRegister.wrappedValue.getter();
    v30 = v29;
    v31 = v37;
    _s8PaperKit5ShapeVWObTm_3(v30, v37, type metadata accessor for ShapeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload != 2)
    {
      outlined destroy of Shape(v31, type metadata accessor for ShapeType);
    }

    outlined destroy of Shape(v27, type metadata accessor for Shape);
  }

  return v21;
}

void CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(uint64_t a1@<X8>)
{
  v2 = 1.0;
  if (!Shape.isFormField.getter())
  {
    Canvas.screenScaleOverride.getter();
    if (v3)
    {
      v2 = AnyCanvas.scaleFactorForNewElements.getter();
    }
  }

  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v4 = static UIConstants.defaultTextBoxAttributes;

  Dictionary<>.scaleBy(_:)(v2);

  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v4, 0, a1);
}

uint64_t CanvasFormattingProxy.fontName.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v6 = *(a1 + 24);
  v77 = *(a1 + 16);
  v78 = &v64 - v7;
  v76 = v6;
  v75 = type metadata accessor for Capsule();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v64 - v14;
  v89 = type metadata accessor for Shape(0);
  v15 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v64 - v21;
  v80 = v1;
  v22 = *(v1 + 8);
  v23 = v22 + 56;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 56);
  v27 = (v24 + 63) >> 6;
  v83 = v18 + 32;
  v84 = v18 + 16;
  v70 = (v8 + 8);
  v69 = (v15 + 48);
  v66 = (v5 + 16);
  v65 = (v5 + 8);
  v87 = (v18 + 8);
  v68 = (v15 + 56);
  v88 = v22;

  v29 = 0;
  v82 = v27;
  v73 = v17;
  v72 = v12;
  v71 = v18;
  if (v26)
  {
    while (1)
    {
      v30 = v90;
LABEL_10:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v85;
      (*(v18 + 16))(v85, *(v88 + 48) + *(v18 + 72) * (v32 | (v29 << 6)), v17);
      (*(v18 + 32))(v30, v33, v17);
      v34 = v30;
      WeakTagged_10.tagged6.getter();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v12, 1, v35) == 1)
      {
        break;
      }

      v38 = v74;
      Canvas.updatablePaper2.getter(v74);
      v37 = v86;
      WeakRef.subscript.getter();
      v39 = v89;
      (*v70)(v38, v75);
      (*(v36 + 8))(v12, v35);
      if ((*v69)(v37, 1, v39) == 1)
      {
        v17 = v73;
        (*v87)(v90, v73);
        v12 = v72;
        v18 = v71;
        goto LABEL_14;
      }

      v42 = v79;
      _s8PaperKit5ShapeVWObTm_3(v37, v79, type metadata accessor for Shape);
      (*v66)(v78, v42 + *(v89 + 52), v81);
      v43 = CRAttributedString.attributedString.getter();
      v44 = [v43 string];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v17 = v73;
      if (v45 || v47 != 0xE000000000000000)
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v65)(v78, v81);
        v12 = v72;
        v18 = v71;
        if ((v48 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
          v59 = *(v58 - 8);
          v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1D4058CF0;
          v62 = v79;
          CRAttributedString.runs.getter();
          v63 = Array<A>.fontName.getter(v61);

          swift_setDeallocating();
          (*(v59 + 8))(v61 + v60, v58);
          swift_deallocClassInstance();
          outlined destroy of Shape(v62, type metadata accessor for Shape);
          (*v87)(v90, v17);
          return v63;
        }
      }

      else
      {

        (*v65)(v78, v81);
        v12 = v72;
        v18 = v71;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      v49 = v79;
      v50 = v67;
      CRRegister.wrappedValue.getter();
      v51 = v50;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v51, 1, v52) != 1)
      {
        v89 = v53;
        v54 = 0x63697465766C6548;
        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        outlined destroy of Shape(v49, type metadata accessor for Shape);
        (*v87)(v90, v17);
        v55 = v92;
        if (v92 != 1)
        {
          v56 = v91;
          v57 = v93;
          if (v94)
          {

            v54 = v57;
          }

          outlined consume of Font?(v56, v55);
        }

        (*(v89 + 8))(v67, v52);
        return v54;
      }

      outlined destroy of Shape(v49, type metadata accessor for Shape);
      (*v87)(v90, v17);
      v40 = v51;
      v41 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
LABEL_21:
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v40, v41);
      v27 = v82;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    (*v87)(v34, v17);
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    v37 = v86;
    (*v68)(v86, 1, 1, v89);
LABEL_14:
    v40 = v37;
    v41 = &_s8PaperKit5ShapeVSgMd;
    goto LABEL_21;
  }

LABEL_5:
  v30 = v90;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      return 0;
    }

    v26 = *(v23 + 8 * v31);
    ++v29;
    if (v26)
    {
      v29 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in CanvasFormattingProxy.fontName.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.fontName.setter(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v142 = a5;
  v153 = a4;
  v159 = a3;
  v6 = *a1;
  v165 = a1;
  v140 = v6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v7 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v167 = v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v152 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v138 = v130 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v137 = v130 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v15 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v132 = v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v133 = v130 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = v130 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v130 - v24;
  v176 = type metadata accessor for Shape(0);
  v26 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176 - 8);
  v166 = v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v130 - v29;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v31 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v168 = v130 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v174 = v130 - v38;
  v141 = a2;
  v39 = *(a2 + 8);
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v173 = v36 + 16;
  v172 = v36 + 32;
  v171 = (v31 + 48);
  v157 = (v31 + 32);
  v164 = (v26 + 48);
  v45 = v37;
  v151 = (v15 + 16);
  v150 = (v15 + 8);
  v136 = (v7 + 56);
  v146 = (v7 + 48);
  v139 = (v7 + 32);
  v134 = (v7 + 16);
  v145 = (v7 + 8);
  v156 = (v31 + 8);
  v46 = v25;
  v47 = v35;
  v175 = v36;
  v169 = (v36 + 8);
  v177 = v39;

  v48 = 0;
  v170 = v44;
  v147 = v46;
  v155 = v30;
  v162 = v47;
  v163 = v45;
  v144 = v40;
  if (v43)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v52 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v53 = v175;
        v54 = v174;
        (*(v175 + 16))(v174, *(v177 + 48) + *(v175 + 72) * (v52 | (v48 << 6)), v47);
        (*(v53 + 32))(v45, v54, v47);
        WeakTagged_10.tagged6.getter();
        v55 = v189;
        if ((*v171)(v30, 1, v189) != 1)
        {
          break;
        }

        (*v169)(v45, v47);
        v49 = v30;
        v50 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
LABEL_6:
        outlined destroy of StocksKitCurrencyCache.Provider?(v49, v50);
        v44 = v170;
        if (!v43)
        {
          goto LABEL_7;
        }
      }

      v56 = v168;
      (*v157)(v168, v30, v55);
      v57 = v55;
      WeakRef.subscript.getter();
      v58 = v176;
      v160 = *v164;
      if (v160(v46, 1, v176) == 1)
      {
        (*v156)(v56, v57);
        v45 = v163;
        v47 = v162;
        (*v169)(v163, v162);
        v49 = v46;
        v50 = &_s8PaperKit5ShapeVSgMd;
        goto LABEL_6;
      }

      v59 = v46;
      v60 = v166;
      _s8PaperKit5ShapeVWObTm_3(v59, v166, type metadata accessor for Shape);
      v61 = *v151;
      (*v151)(v158, v60 + *(v58 + 52), v161);
      v62 = CRAttributedString.attributedString.getter();
      v63 = [v62 string];

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (!v64 && v66 == 0xE000000000000000)
      {

        (*v150)(v158, v161);
        v45 = v163;
        goto LABEL_27;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v68 = *v150;
      (*v150)(v158, v161);
      v45 = v163;
      if ((v67 & 1) == 0)
      {
        break;
      }

LABEL_27:
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      v97 = v152;
      v135 = v96;
      CRRegister.wrappedValue.getter();
      v98 = v97;
      v99 = *v146;
      v100 = v154;
      if ((*v146)(v98, 1, v154) == 1)
      {
        type metadata accessor for CanvasFormattingProxy();
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v167);
        v101 = v152;
        v102 = v99(v152, 1, v100);
        v30 = v155;
        if (v102 != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }
      }

      else
      {
        (*v139)(v167, v98, v100);
        v30 = v155;
      }

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v148 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (v184 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v188, static UIConstants.textBoxDefaultFont);
        countAndFlagsBits = v188._familyName.value._countAndFlagsBits;
        object = v188._familyName.value._object;
      }

      else
      {
        countAndFlagsBits = v185.value._countAndFlagsBits;
        object = v185.value._object;
        v188._name.value._countAndFlagsBits = v183;
        v188._name.value._object = v184;
        v188._familyName = v185;
        LODWORD(v188.pointSize) = v186;
        v188.traits.rawValue = rawValue;
      }

      v47 = v162;
      if (!object)
      {
LABEL_41:
        v107._countAndFlagsBits = 46;
        v107._object = 0xE100000000000000;
        v108 = v159;
        v109 = v153;
        if (String.hasPrefix(_:)(v107))
        {
          v108 = 0;
          v109 = 0;
        }

        else
        {
        }

        v188._familyName.value._countAndFlagsBits = v108;
        v188._familyName.value._object = v109;
        v111 = v188._name.value._countAndFlagsBits;
        v110 = v188._name.value._object;
        v183 = v188._name.value._countAndFlagsBits;
        v184 = v188._name.value._object;
        v185.value._countAndFlagsBits = v108;
        v185.value._object = v109;
        *&v186 = v188.pointSize;
        rawValue = v188.traits.rawValue;
        v112 = Font.platformFont.getter();
        v113 = [v112 fontName];

        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v47 = v162;
        if (v110 && (v114 == v111 && v110 == v116 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        else
        {

          v117._countAndFlagsBits = 46;
          v117._object = 0xE100000000000000;
          v118 = String.hasPrefix(_:)(v117);

          if (v118)
          {

            v114 = 0;
            v116 = 0;
          }

          v188._name.value._countAndFlagsBits = v114;
          v188._name.value._object = v116;
          v178 = v114;
          v179 = v116;
          familyName = v188._familyName;
          pointSize = v188.pointSize;
          v182 = v188.traits.rawValue;
          v119 = Font.platformFont.getter();
          v120 = [v119 familyName];

          v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v123 = v122;

          Font.familyName.setter(v121, v123);
        }

        v106 = v188._familyName.value._countAndFlagsBits;
        v105 = v188._familyName.value._object;
        v100 = v154;
        v30 = v155;
        v45 = v163;
        goto LABEL_53;
      }

      if (countAndFlagsBits != v159 || (v105 = v153, v106 = v159, object != v153))
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_41;
        }

        v105 = object;
        v106 = countAndFlagsBits;
      }

LABEL_53:
      v188._familyName.value._countAndFlagsBits = v106;
      v188._familyName.value._object = v105;
      *&v188.pointSize = LODWORD(v188.pointSize);
      CRAttributedString.Attributes.subscript.setter();
      v124 = v168;
      KeyPath = WeakRef.subscript.modify();
      if (v160(v125, 1, v176))
      {
        KeyPath(&v188, 0);
        v126 = v166;
      }

      else
      {
        v127 = v137;
        (*v134)(v137, v167, v100);
        (*v136)(v127, 0, 1, v100);
        outlined init with copy of Date?(v127, v138, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v30 = v155;
        CRRegister.wrappedValue.setter();
        v128 = v127;
        v45 = v163;
        v126 = v166;
        v47 = v162;
        v124 = v168;
        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        KeyPath(&v188, 0);
      }

      (*v145)(v167, v100);
      outlined destroy of Shape(v126, type metadata accessor for Shape);
      (*v156)(v124, v189);
      (*v169)(v45, v47);
      v46 = v147;
      v44 = v170;
      v40 = v144;
      if (!v43)
      {
        goto LABEL_7;
      }
    }

    v148 = v68;
    KeyPath = v61;
    v69 = v176;
    v70 = CRAttributedString.count.getter();
    v71 = swift_getKeyPath();
    v72 = v153;

    v73 = WeakRef.subscript.modify();
    v75 = v74;
    if (v160(v74, 1, v69) == 1)
    {
      goto LABEL_61;
    }

    v135 = v73;
    v76 = *(v69 + 52);

    specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(0, v70, v71, &v75[v76], v159, v72);

    swift_bridgeObjectRelease_n();
    v131 = v76;
    v77 = v161;
    (KeyPath)(v143, &v75[v76], v161);
    v78 = CRAttributedString.attributedString.getter();
    v79 = [v78 string];

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (v80 || v82 != 0xE000000000000000)
    {
      v83 = v75;
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v85 = v148;
      v148(v143, v77);
      v45 = v163;
      if (v84)
      {
LABEL_26:
        v135(&v188, 0);
        goto LABEL_27;
      }

      v86 = v131;
      v87 = v161;
      v88 = v85;
      v89 = KeyPath;
      (KeyPath)(v133, &v83[v131], v161);
      v130[1] = v83;
      v90 = &v83[v86];
      v91 = v132;
      v89(v132, v90, v87);
      v92 = CRAttributedString.attributedString.getter();
      v88(v91, v87);
      v93 = [v92 length];

      if (__OFSUB__(v93, 1))
      {
        goto LABEL_60;
      }

      v94 = v137;
      v95 = v133;
      CRAttributedString.attributes(at:effectiveRange:)();
      v88(v95, v87);
      (*v136)(v94, 0, 1, v154);
      outlined init with copy of Date?(v94, v138, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    }

    else
    {

      v148(v143, v77);
    }

    v45 = v163;
    goto LABEL_26;
  }

LABEL_7:
  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v44)
    {
    }

    v43 = *(v40 + 8 * v51);
    ++v48;
    if (v43)
    {
      v48 = v51;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:

  __break(1u);
  return result;
}

id CanvasFormattingProxy.fontSize.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v62 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v62 - v6;
  v7 = *(a1 + 24);
  v70 = *(a1 + 16);
  v73 = v7;
  v72 = type metadata accessor for Capsule();
  v86 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v62 - v13;
  v14 = type metadata accessor for Shape(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v62 - v22;
  v76 = v1;
  v23 = *(v1 + 8);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v79 = v21 + 32;
  v80 = v21 + 16;
  v67 = (v15 + 48);
  v68 = (v86 + 8);
  v65 = (v5 + 16);
  v64 = (v5 + 8);
  v82 = v21;
  v84 = (v21 + 8);
  v66 = (v15 + 56);
  v86 = v23;

  v29 = 0;
  v71 = v19;
  v85 = v11;
  v78 = v14;
  if (v27)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v32 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v81;
        v33 = v82;
        (*(v82 + 16))(v81, *(v86 + 48) + *(v82 + 72) * (v32 | (v29 << 6)), v17);
        (*(v33 + 32))(v19, v34, v17);
        v35 = v19;
        WeakTagged_10.tagged6.getter();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v11, 1, v36) != 1)
        {
          break;
        }

        (*v84)(v35, v17);
        outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
        v30 = v83;
        (*v66)(v83, 1, 1, v14);
        v19 = v35;
LABEL_6:
        outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit5ShapeVSgMd);
        if (!v27)
        {
          goto LABEL_7;
        }
      }

      v38 = v69;
      Canvas.updatablePaper2.getter(v69);
      v39 = v83;
      WeakRef.subscript.getter();
      v40 = v38;
      v11 = v85;
      (*v68)(v40, v72);
      (*(v37 + 8))(v11, v36);
      v30 = v39;
      v14 = v78;
      if ((*v67)(v30, 1, v78) == 1)
      {
        v19 = v71;
        (*v84)(v71, v17);
        goto LABEL_6;
      }

      v41 = v74;
      _s8PaperKit5ShapeVWObTm_3(v30, v74, type metadata accessor for Shape);
      (*v65)(v75, v41 + *(v14 + 52), v77);
      v42 = CRAttributedString.attributedString.getter();
      v43 = [v42 string];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v44 || v46 != 0xE000000000000000)
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v64)(v75, v77);
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
          v57 = *(v56 - 8);
          v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1D4058CF0;
          v60 = v74;
          CRAttributedString.runs.getter();
          v61 = Array<A>.fontSize.getter(v59);

          swift_setDeallocating();
          (*(v57 + 8))(v59 + v58, v56);
          swift_deallocClassInstance();
          outlined destroy of Shape(v60, type metadata accessor for Shape);
          (*v84)(v71, v17);
          return v61;
        }
      }

      else
      {

        (*v64)(v75, v77);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      v48 = v74;
      v49 = v63;
      CRRegister.wrappedValue.getter();
      v50 = v49;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v50, 1, v51) != 1)
      {
        v55 = CRAttributedString.Attributes<>.fontSize.getter();

        outlined destroy of Shape(v48, type metadata accessor for Shape);
        (*v84)(v71, v17);
        (*(v52 + 8))(v50, v51);
        return v55;
      }

      outlined destroy of Shape(v48, type metadata accessor for Shape);
      v19 = v71;
      (*v84)(v71, v17);
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v11 = v85;
      v14 = v78;
      if (!v27)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_11;
    }
  }

  if (one-time initialization token for textBoxDefaultFont == -1)
  {
    goto LABEL_22;
  }

LABEL_29:
  swift_once();
LABEL_22:
  result = [static UIConstants.textBoxDefaultFont pointSize];
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v54 > -9.22337204e18)
  {
    if (v54 < 9.22337204e18)
    {
      return v54;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.fontSize.setter(void *a1, uint64_t a2, void (*a3)(PaperKit::Font *, void), uint64_t a4)
{
  v177 = a4;
  KeyPath = a3;
  v198 = a1;
  v175 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v183 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v160 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v160 - v10;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v11 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v191 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v230 = &v160 - v14;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v228 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216 - 8);
  v16 = &v160 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v212 = &v160 - v18;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v227 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v166 = &v160 - v19;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v226 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v160 - v20;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v21 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222 - 8);
  v163 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v160 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v168 = &v160 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v190 = &v160 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v167 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v189 = &v160 - v32;
  v33 = type metadata accessor for Shape(0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v192 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v160 - v37;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v39 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v217 = &v160 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v41);
  v224 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v208 = &v160 - v46;
  v176 = a2;
  v47 = *(a2 + 8);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 56);
  v207 = v45 + 16;
  v206 = v45 + 32;
  v205 = (v39 + 48);
  v188 = (v39 + 32);
  v195 = (v34 + 48);
  v52 = v16;
  v185 = (v21 + 16);
  v184 = (v21 + 8);
  v53 = v38;
  v54 = (v49 + 63) >> 6;
  v55 = v44;
  v165 = (v227 + 8);
  v56 = v198;
  v210 = (v228 + 48);
  v57 = KeyPath;
  v201 = (v228 + 32);
  v218 = (v11 + 8);
  v213 = COERCE_UNSIGNED_INT(KeyPath);
  v200 = (v228 + 8);
  v164 = (v226 + 8);
  v170 = (v11 + 56);
  v181 = (v11 + 48);
  v174 = (v11 + 32);
  v169 = (v11 + 16);
  v186 = (v39 + 8);
  v58 = v219;
  v209 = v45;
  v202 = (v45 + 8);
  v221 = v47;

  v60 = 0;
  v180 = xmmword_1D405D330;
  v237 = v52;
  v204 = v48;
  v203 = v54;
  v220 = v33;
  v225 = v53;
  v187 = v55;
  if (v51)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v63 >= v54)
    {
    }

    v51 = *(v48 + 8 * v63);
    ++v60;
    if (v51)
    {
      v61 = v58;
      v62 = v56;
      v60 = v63;
LABEL_12:
      v64 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v65 = v209;
      v66 = v208;
      (*(v209 + 16))(v208, *(v221 + 48) + *(v209 + 72) * (v64 | (v60 << 6)), v55);
      v67 = *(v65 + 32);
      v68 = v224;
      v67(v224, v66, v55);
      WeakTagged_10.tagged6.getter();
      v69 = v225;
      v70 = v55;
      v71 = v223;
      if ((*v205)(v225, 1, v223) == 1)
      {
        (*v202)(v68, v70);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
        v55 = v70;
LABEL_6:
        v48 = v204;
        v54 = v203;
        v56 = v62;
        v58 = v61;
        if (!v51)
        {
          continue;
        }

        goto LABEL_7;
      }

      v72 = v217;
      (*v188)(v217, v69, v71);
      v73 = v189;
      WeakRef.subscript.getter();
      v74 = v220;
      v75 = *v195;
      if ((*v195)(v73, 1, v220) == 1)
      {
        (*v186)(v72, v71);
        v55 = v187;
        (*v202)(v224, v187);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s8PaperKit5ShapeVSgMd);
        goto LABEL_6;
      }

      v76 = v192;
      _s8PaperKit5ShapeVWObTm_3(v73, v192, type metadata accessor for Shape);
      v77 = v76 + *(v74 + 52);
      v78 = v222;
      v179 = *v185;
      v179(v190, v77, v222);
      v79 = CRAttributedString.attributedString.getter();
      v80 = [v79 string];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v182 = v75;
      if (!v81 && v83 == 0xE000000000000000)
      {

        (*v184)(v190, v78);
        v58 = v61;
LABEL_68:
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        v144 = v183;
        v228 = v143;
        CRRegister.wrappedValue.getter();
        v145 = v144;
        v146 = *v181;
        if ((*v181)(v145, 1, v58) == 1)
        {
          type metadata accessor for CanvasFormattingProxy();
          CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v191);
          v147 = v183;
          if (v146(v183, 1, v58) != 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          }
        }

        else
        {
          (*v174)(v191, v145, v58);
        }

        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        object = v232;
        if (v232 == 1)
        {
          v149 = v220;
          v150 = v182;
          if (one-time initialization token for textBoxDefaultFont != -1)
          {
            swift_once();
          }

          Font.init(_:)(&v235, static UIConstants.textBoxDefaultFont);
          countAndFlagsBits = v235._name.value._countAndFlagsBits;
          object = v235._name.value._object;
          familyName = v235._familyName;
          rawValue = v235.traits.rawValue;
        }

        else
        {
          rawValue = v234;
          familyName = v233;
          countAndFlagsBits = v231;
          v235._name.value._countAndFlagsBits = v231;
          v235._name.value._object = v232;
          v235._familyName = v233;
          v149 = v220;
          v150 = v182;
        }

        v235._name.value._countAndFlagsBits = countAndFlagsBits;
        v235._name.value._object = object;
        v235._familyName = familyName;
        *&v235.pointSize = v213;
        v235.traits.rawValue = rawValue;
        v154 = v191;
        CRAttributedString.Attributes.subscript.setter();
        v155 = v223;
        KeyPath = WeakRef.subscript.modify();
        if (v150(v156, 1, v149))
        {
          KeyPath(&v235, 0);
          v54 = v203;
          v157 = v154;
          v158 = v217;
        }

        else
        {
          v159 = v171;
          (*v169)(v171, v154, v58);
          (*v170)(v159, 0, 1, v58);
          outlined init with copy of Date?(v159, v172, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v158 = v217;
          v157 = v191;
          CRRegister.wrappedValue.setter();
          v155 = v223;
          outlined destroy of StocksKitCurrencyCache.Provider?(v159, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          KeyPath(&v235, 0);
          v54 = v203;
        }

        (*v218)(v157, v58);
        outlined destroy of Shape(v192, type metadata accessor for Shape);
        (*v186)(v158, v155);
        v55 = v187;
        result = (*v202)(v224, v187);
        v56 = v198;
        v48 = v204;
        if (!v51)
        {
          continue;
        }

LABEL_7:
        v61 = v58;
        v62 = v56;
        goto LABEL_12;
      }

      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v85 = *v184;
      (*v184)(v190, v78);
      v86 = v216;
      v58 = v61;
      if (v84)
      {
        goto LABEL_68;
      }

      v162 = v85;
      v87 = v167;
      WeakRef.subscript.getter();
      v88 = v220;
      result = v75(v87, 1, v220);
      if (result == 1)
      {
        goto LABEL_92;
      }

      v89 = &v87[*(v88 + 52)];
      v90 = v168;
      v91 = v222;
      v179(v168, v89, v222);
      v92 = v87;
      v93 = v220;
      outlined destroy of Shape(v92, type metadata accessor for Shape);
      KeyPath = CRAttributedString.count.getter();
      v162(v90, v91);
      v196 = swift_getKeyPath();
      v94 = WeakRef.subscript.modify();
      v96 = v95;
      result = v75(v95, 1, v93);
      v97 = v237;
      if (result == 1)
      {
        goto LABEL_91;
      }

      v98 = *(v93 + 52);
      result = NSNotFound.getter();
      if (!result)
      {
        goto LABEL_89;
      }

      v161 = v94;
      v199 = v96;
      v197 = v98;
      v99 = v166;
      CRAttributedString.subscript.getter();
      v100 = v211;
      CRAttributedString.Substring.runs.getter();
      (*v165)(v99, v100);
      v101 = v212;
      CRAttributedString.Runs.next()();
      v194 = *v210;
      v102 = v194(v101, 1, v86);
      v103 = MEMORY[0x1E69E7CC0];
      if (v102 == 1)
      {
LABEL_23:
        (*v164)(v214, v215);

        v104 = v222;
        v179(v173, v199 + v197, v222);
        v105 = CRAttributedString.attributedString.getter();
        v106 = [v105 string];

        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        if (v107 || v109 != 0xE000000000000000)
        {
          v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v162(v173, v104);
          if ((v130 & 1) == 0)
          {
            v131 = v199;
            v132 = v197;
            v133 = v168;
            v134 = v179;
            v179(v168, v199 + v197, v104);
            v135 = v131 + v132;
            v136 = v162;
            v137 = v163;
            v134(v163, v135, v104);
            v138 = CRAttributedString.attributedString.getter();
            v136(v137, v104);
            v139 = [v138 length];

            result = v139 - 1;
            if (__OFSUB__(v139, 1))
            {
              goto LABEL_90;
            }

            v140 = v171;
            CRAttributedString.attributes(at:effectiveRange:)();
            v136(v133, v104);
            v141 = v219;
            (*v170)(v140, 0, 1, v219);
            outlined init with copy of Date?(v140, v172, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
            CRRegister.wrappedValue.setter();
            v142 = v140;
            v58 = v141;
            outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          }
        }

        else
        {

          v162(v173, v104);
        }

        v161(v236, 0);
        goto LABEL_68;
      }

      v193 = *v201;
      while (2)
      {
        v227 = v103;
        v193(v97, v101, v86);
        CRAttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v110 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v111 = v232;
        v226 = v110;
        if (v232 == 1)
        {
          if (one-time initialization token for textBoxDefaultFont != -1)
          {
            swift_once();
          }

          Font.init(_:)(&v235, static UIConstants.textBoxDefaultFont);
          v112 = v235._name.value._countAndFlagsBits;
          v111 = v235._name.value._object;
          v113 = v235._familyName.value._object;
          KeyPath = v235._familyName.value._countAndFlagsBits;
          v228 = v235.traits.rawValue;
        }

        else
        {
          v228 = v234;
          v113 = v233.value._object;
          v112 = v231;
          v235._name.value._countAndFlagsBits = v231;
          v235._name.value._object = v232;
          KeyPath = v233.value._countAndFlagsBits;
          v235._familyName = v233;
        }

        (*v218)(v230, v58);
        result = CRAttributedString.Runs.Run.range.getter();
        v115 = v114 - result;
        if (__OFSUB__(v114, result))
        {
          goto LABEL_84;
        }

        v116 = result;
        if (one-time initialization token for defaultValue != -1)
        {
          result = swift_once();
        }

        v117 = qword_1EC7A2EB8;
        v118 = qword_1EC7A2EC0;
        v119 = *&dword_1EC7A2EC8;
        v120 = qword_1EC7A2ED0;
        if (v111)
        {
          if (!qword_1EC7A2EB0 || (v112 != static TextAttributeScope.FontAttribute.defaultValue || v111 != qword_1EC7A2EB0) && (v178 = v112, v121 = qword_1EC7A2ED0, result = _stringCompareWithSmolCheck(_:_:expecting:)(), v120 = v121, v112 = v178, (result & 1) == 0))
          {
LABEL_55:
            if (__OFADD__(v116, v115))
            {
              goto LABEL_85;
            }

            if (v116 + v115 < v116)
            {
              goto LABEL_86;
            }

            v235._name.value._countAndFlagsBits = v112;
            v235._name.value._object = v111;
            v235._familyName.value._countAndFlagsBits = KeyPath;
            v235._familyName.value._object = v113;
            *&v235.pointSize = v213;
            v235.traits.rawValue = v228;

            v124 = CRAttributedString.subscript.modify();
            CRAttributedString.Substring.subscript.setter();
            v124(&v231, 0);

            goto LABEL_58;
          }
        }

        else if (qword_1EC7A2EB0)
        {
          goto LABEL_55;
        }

        if (v113)
        {
          if (!v118)
          {
            goto LABEL_55;
          }

          if (KeyPath != v117 || v113 != v118)
          {
            v122 = v120;
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0 || v119 != v57)
            {
              goto LABEL_55;
            }

            v120 = v122;
            goto LABEL_51;
          }
        }

        else if (v118)
        {
          goto LABEL_55;
        }

        if (v119 != v57)
        {
          goto LABEL_55;
        }

LABEL_51:
        if (v228 != v120)
        {
          goto LABEL_55;
        }

        if (__OFADD__(v116, v115))
        {
          goto LABEL_87;
        }

        if (v116 + v115 < v116)
        {
          goto LABEL_88;
        }

        v235._name = v180;
        memset(&v235._familyName, 0, 32);

        v123 = CRAttributedString.subscript.modify();
        CRAttributedString.Substring.subscript.setter();
        v123(&v231, 0);

LABEL_58:

        v103 = v227;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v216;
        v97 = v237;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
        }

        v127 = *(v103 + 2);
        v126 = *(v103 + 3);
        if (v127 >= v126 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v103);
        }

        (*v200)(v97, v86);
        *(v103 + 2) = v127 + 1;
        v128 = &v103[16 * v127];
        *(v128 + 4) = v116;
        *(v128 + 5) = v115;
        v101 = v212;
        CRAttributedString.Runs.next()();
        v129 = v194(v101, 1, v86);
        v58 = v219;
        if (v129 == 1)
        {
          goto LABEL_23;
        }

        continue;
      }
    }
  }

  __break(1u);
LABEL_84:
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
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.textAlignment.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v66 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v66 - v6;
  v7 = *(a1 + 16);
  v75 = *(a1 + 24);
  v76 = v7;
  v74 = type metadata accessor for Capsule();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v66 - v13;
  v88 = type metadata accessor for Shape(0);
  v15 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v80 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v66 - v22;
  v81 = v1;
  v23 = *(v1 + 8);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v84 = v21 + 32;
  v85 = v21 + 16;
  v71 = (v8 + 8);
  v70 = (v15 + 48);
  v68 = (v5 + 16);
  v67 = (v5 + 8);
  v87 = v21;
  v29 = (v21 + 8);
  v69 = (v15 + 56);
  v90 = v23;

  v31 = 0;
  v79 = v17;
  v77 = v19;
  v72 = v29;
  for (i = v14; v27; result = outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd))
  {
LABEL_11:
    while (1)
    {
      v34 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = v86;
      v35 = v87;
      (*(v87 + 16))(v86, *(v90 + 48) + *(v87 + 72) * (v34 | (v31 << 6)), v17);
      (*(v35 + 32))(v19, v36, v17);
      v37 = v89;
      v38 = v19;
      WeakTagged_10.tagged6.getter();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v37, 1, v39) != 1)
      {
        break;
      }

      (*v29)(v38, v17);
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v32 = i;
      (*v69)(i, 1, 1, v88);
      v19 = v38;
LABEL_6:
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit5ShapeVSgMd);
      if (!v27)
      {
        goto LABEL_7;
      }
    }

    v41 = v73;
    Canvas.updatablePaper2.getter(v73);
    v42 = i;
    WeakRef.subscript.getter();
    (*v71)(v41, v74);
    v43 = v37;
    v32 = v42;
    (*(v40 + 8))(v43, v39);
    v44 = v88;
    if ((*v70)(v42, 1, v88) == 1)
    {
      v29 = v72;
      v19 = v77;
      v17 = v79;
      (*v72)(v77, v79);
      goto LABEL_6;
    }

    v45 = v80;
    _s8PaperKit5ShapeVWObTm_3(v42, v80, type metadata accessor for Shape);
    (*v68)(v78, v45 + *(v44 + 52), v82);
    v46 = CRAttributedString.attributedString.getter();
    v47 = [v46 string];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (v48 || v50 != 0xE000000000000000)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v67)(v78, v82);
      if ((v51 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
        v59 = *(v58 - 8);
        v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1D4058CF0;
        v62 = v80;
        CRAttributedString.runs.getter();
        v63 = Array<A>.textAlignment.getter(v61);
        v65 = v64;

        swift_setDeallocating();
        (*(v59 + 8))(v61 + v60, v58);
        swift_deallocClassInstance();
        outlined destroy of Shape(v62, type metadata accessor for Shape);
        (*v72)(v77, v79);
        if (v65)
        {
          return 4;
        }

        else
        {
          return v63;
        }
      }
    }

    else
    {

      (*v67)(v78, v82);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    v52 = v80;
    v53 = v66;
    CRRegister.wrappedValue.getter();
    v54 = v53;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) != 1)
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
      CRAttributedString.Attributes.subscript.getter();

      outlined destroy of Shape(v52, type metadata accessor for Shape);
      (*v72)(v77, v79);
      if (v92)
      {
        v57 = 0;
      }

      else
      {
        v57 = v91;
      }

      (*(v56 + 8))(v54, v55);
      return v57;
    }

    outlined destroy of Shape(v52, type metadata accessor for Shape);
    v29 = v72;
    v19 = v77;
    v17 = v79;
    (*v72)(v77, v79);
  }

LABEL_7:
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v28)
    {

      return 4;
    }

    v27 = *(v24 + 8 * v33);
    ++v31;
    if (v27)
    {
      v31 = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in CanvasFormattingProxy.fontSize.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.textAlignment.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v134 = a3;
  v5 = *a1;
  v150 = a1;
  v126 = v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v6 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133 - 8);
  v132 = &v112 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v139 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v112 - v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v116 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v118 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v112 - v25;
  v158 = type metadata accessor for Shape(0);
  v27 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158 - 8);
  v147 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v112 - v30;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v32 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v157 = &v112 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v156 = &v112 - v39;
  v127 = a2;
  v40 = *(a2 + 8);
  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 56);
  v45 = (v42 + 63) >> 6;
  v154 = v37 + 32;
  v155 = v37 + 16;
  v153 = (v32 + 48);
  v145 = (v32 + 32);
  v149 = (v27 + 48);
  v140 = (v14 + 16);
  v137 = (v14 + 8);
  v122 = (v6 + 56);
  v136 = (v6 + 48);
  v125 = (v6 + 32);
  v120 = (v6 + 16);
  v130 = (v6 + 8);
  v46 = v38;
  v141 = (v32 + 8);
  v47 = v26;
  v48 = v36;
  v49 = v37;
  v151 = (v37 + 8);
  v159 = v40;

  v51 = 0;
  v138 = v31;
  v152 = v45;
  v131 = v47;
  v144 = v48;
  v143 = v49;
  v142 = v46;
  if (v44)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v53 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v54 = v156;
        (*(v49 + 16))(v156, *(v159 + 48) + *(v49 + 72) * (v53 | (v51 << 6)), v48);
        (*(v49 + 32))(v46, v54, v48);
        v55 = v46;
        WeakTagged_10.tagged6.getter();
        v56 = v165;
        if ((*v153)(v31, 1, v165) != 1)
        {
          break;
        }

        (*v151)(v55, v48);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
        v46 = v55;
        v45 = v152;
        if (!v44)
        {
          goto LABEL_6;
        }
      }

      v57 = v157;
      (*v145)(v157, v31, v56);
      v58 = v56;
      WeakRef.subscript.getter();
      v59 = *v149;
      v60 = v158;
      if ((*v149)(v47, 1, v158) != 1)
      {
        break;
      }

      (*v141)(v57, v58);
      v46 = v142;
      v48 = v144;
      (*v151)(v142, v144);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s8PaperKit5ShapeVSgMd);
LABEL_35:
      v49 = v143;
      v45 = v152;
      if (!v44)
      {
        goto LABEL_6;
      }
    }

    v61 = v147;
    _s8PaperKit5ShapeVWObTm_3(v47, v147, type metadata accessor for Shape);
    v62 = *v140;
    (*v140)(v146, v61 + *(v60 + 52), v148);
    v63 = CRAttributedString.attributedString.getter();
    v64 = [v63 string];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v135 = v59;
    if (!v65 && v67 == 0xE000000000000000)
    {

      (*v137)(v146, v148);
      v68 = v136;
LABEL_28:
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      v99 = v139;
      v121 = v98;
      CRRegister.wrappedValue.getter();
      v100 = v99;
      v101 = *v68;
      v102 = v99;
      v103 = v133;
      if ((*v68)(v102, 1, v133) == 1)
      {
        type metadata accessor for CanvasFormattingProxy();
        v104 = v132;
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v132);
        v105 = v139;
        if (v101(v139, 1, v103) != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }
      }

      else
      {
        v104 = v132;
        (*v125)(v132, v100, v103);
      }

      swift_getKeyPath();
      v161 = v134;
      v162 = 0;
      lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
      CRAttributedString.Attributes.subscript.setter();
      v106 = WeakRef.subscript.modify();
      v108 = v135(v107, 1, v158);
      v31 = v138;
      if (!v108)
      {
        v109 = v129;
        (*v120)(v129, v104, v103);
        (*v122)(v109, 0, 1, v103);
        outlined init with copy of Date?(v109, v123, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v31 = v138;
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      }

      v106(&v161, 0);
      (*v130)(v104, v103);
      outlined destroy of Shape(v147, type metadata accessor for Shape);
      (*v141)(v157, v165);
      v110 = v142;
      v111 = v144;
      result = (*v151)(v142, v144);
      v48 = v111;
      v46 = v110;
      v47 = v131;
      goto LABEL_35;
    }

    v121 = v62;
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = v148;
    v117 = *v137;
    v117(v146, v148);
    v68 = v136;
    if (v69)
    {
      goto LABEL_28;
    }

    v71 = v118;
    WeakRef.subscript.getter();
    v72 = v59;
    v73 = v158;
    result = (v72)(v71, 1, v158);
    if (result == 1)
    {
      goto LABEL_41;
    }

    v74 = v119;
    v121(v119, v71 + *(v73 + 52), v70);
    outlined destroy of Shape(v71, type metadata accessor for Shape);
    v75 = CRAttributedString.count.getter();
    v76 = v70;
    v77 = v75;
    result = (v117)(v74, v76);
    if (v77 < 0)
    {
      goto LABEL_39;
    }

    swift_getKeyPath();
    v163 = v134;
    v164 = 0;
    v114 = WeakRef.subscript.modify();
    v79 = v78;
    result = (v135)(v78, 1, v73);
    if (result == 1)
    {
      goto LABEL_42;
    }

    v80 = *(v73 + 52);
    v81 = v148;
    v115 = CRAttributedString.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
    lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
    CRAttributedString.Substring.subscript.setter();
    (v115)(v160, 0);
    v113 = v79;
    v121(v124, &v80[v79], v81);
    v82 = CRAttributedString.attributedString.getter();
    v83 = [v82 string];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (v84 || v86 != 0xE000000000000000)
    {
      v115 = v80;
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v117(v124, v148);
      v68 = v136;
      if (v87)
      {
LABEL_27:
        v114(&v161, 0);
        goto LABEL_28;
      }

      v88 = v113;
      v89 = v115;
      v90 = v148;
      v91 = v121;
      v121(v119, &v115[v113], v148);
      v92 = v116;
      v91(v116, &v89[v88], v90);
      v93 = CRAttributedString.attributedString.getter();
      v94 = v117;
      v117(v92, v90);
      v95 = [v93 length];

      result = v95 - 1;
      if (__OFSUB__(v95, 1))
      {
        goto LABEL_40;
      }

      v96 = v129;
      v97 = v119;
      CRAttributedString.attributes(at:effectiveRange:)();
      v94(v97, v90);
      (*v122)(v96, 0, 1, v133);
      outlined init with copy of Date?(v96, v123, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    }

    else
    {

      v117(v124, v148);
    }

    v68 = v136;
    goto LABEL_27;
  }

LABEL_6:
  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v52 >= v45)
    {
    }

    v44 = *(v41 + 8 * v52);
    ++v51;
    if (v44)
    {
      v51 = v52;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.bold.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v60 - v6;
  v7 = *(a1 + 16);
  v68 = *(a1 + 24);
  v69 = v7;
  v67 = type metadata accessor for Capsule();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v60 - v20;
  v70 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v74 = v16 + 32;
  v75 = v16 + 16;
  v65 = (v8 + 8);
  v77 = (v16 + 8);
  v78 = v21;

  v28 = 0;
  v71 = v18;
  v72 = v15;
  v64 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {

      return 0;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
  }

  while (!v25);
  while (1)
  {
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v76;
    (*(v16 + 16))(v76, *(v78 + 48) + *(v16 + 72) * (v30 | (v29 << 6)), v15);
    (*(v16 + 32))(v18, v31, v15);
    v32 = v18;
    WeakTagged_10.tagged6.getter();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v12, 1, v33) == 1)
    {
      (*v77)(v32, v15);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v28 = v29;
      v18 = v32;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v35 = v12;
    v36 = v66;
    Canvas.updatablePaper2.getter(v66);
    v37 = v73;
    WeakRef.subscript.getter();
    v38 = v36;
    v12 = v35;
    (*v65)(v38, v67);
    (*(v34 + 8))(v35, v33);
    v39 = type metadata accessor for Shape(0);
    if ((*(*(v39 - 8) + 48))(v37, 1, v39) != 1)
    {
      break;
    }

    v18 = v71;
    v40 = v72;
    (*v77)(v71, v72);
    v41 = v37;
    v15 = v40;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit5ShapeVSgMd);
    v28 = v29;
    v16 = v64;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v29 = v28;
  }

  v43 = v60;
  v42 = v61;
  v44 = v62;
  (*(v61 + 16))(v60, &v37[*(v39 + 52)], v62);
  v45 = CRAttributedString.attributedString.getter();
  v46 = [v45 string];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v37;
  if (v47 || v49 != 0xE000000000000000)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v42 + 8))(v43, v44);
    v51 = v63;
    if (v52)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    v55 = Array<A>.textStyles.getter(v59);

    swift_setDeallocating();
    (*(v57 + 8))(v59 + v58, v56);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v42 + 8))(v43, v44);
    v51 = v63;
LABEL_19:
    off_1F4F6C320();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v55 = 0;
    }

    else
    {
      v55 = CRAttributedString.Attributes<>.textStyles.getter();

      (*(v54 + 8))(v51, v53);
    }
  }

  outlined destroy of Shape(v50, type metadata accessor for Shape);
  (*v77)(v71, v72);
  return v55 & 1;
}

uint64_t CanvasFormattingProxy.italic.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v60 - v6;
  v7 = *(a1 + 16);
  v68 = *(a1 + 24);
  v69 = v7;
  v67 = type metadata accessor for Capsule();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v60 - v20;
  v70 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v74 = v16 + 32;
  v75 = v16 + 16;
  v65 = (v8 + 8);
  v77 = (v16 + 8);
  v78 = v21;

  v28 = 0;
  v71 = v18;
  v72 = v15;
  v64 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {

      return 0;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
  }

  while (!v25);
  while (1)
  {
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v76;
    (*(v16 + 16))(v76, *(v78 + 48) + *(v16 + 72) * (v30 | (v29 << 6)), v15);
    (*(v16 + 32))(v18, v31, v15);
    v32 = v18;
    WeakTagged_10.tagged6.getter();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v12, 1, v33) == 1)
    {
      (*v77)(v32, v15);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v28 = v29;
      v18 = v32;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v35 = v12;
    v36 = v66;
    Canvas.updatablePaper2.getter(v66);
    v37 = v73;
    WeakRef.subscript.getter();
    v38 = v36;
    v12 = v35;
    (*v65)(v38, v67);
    (*(v34 + 8))(v35, v33);
    v39 = type metadata accessor for Shape(0);
    if ((*(*(v39 - 8) + 48))(v37, 1, v39) != 1)
    {
      break;
    }

    v18 = v71;
    v40 = v72;
    (*v77)(v71, v72);
    v41 = v37;
    v15 = v40;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit5ShapeVSgMd);
    v28 = v29;
    v16 = v64;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v29 = v28;
  }

  v43 = v60;
  v42 = v61;
  v44 = v62;
  (*(v61 + 16))(v60, &v37[*(v39 + 52)], v62);
  v45 = CRAttributedString.attributedString.getter();
  v46 = [v45 string];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v37;
  if (v47 || v49 != 0xE000000000000000)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v42 + 8))(v43, v44);
    v51 = v63;
    if (v52)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    v55 = Array<A>.textStyles.getter(v59);

    swift_setDeallocating();
    (*(v57 + 8))(v59 + v58, v56);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v42 + 8))(v43, v44);
    v51 = v63;
LABEL_19:
    off_1F4F6C320();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v55 = 0;
    }

    else
    {
      v55 = CRAttributedString.Attributes<>.textStyles.getter();

      (*(v54 + 8))(v51, v53);
    }
  }

  outlined destroy of Shape(v50, type metadata accessor for Shape);
  (*v77)(v71, v72);
  return (v55 >> 1) & 1;
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.bold.setter(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v233 = a5;
  v232 = a3;
  v198 = a2;
  v211 = a1;
  v188 = *a1;
  v189 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v197 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v185 = &v173 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v173 - v10;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v11 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257 - 8);
  v205 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v240 = &v173 - v14;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  *&v245 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243 - 8);
  v242 = &v173 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v228 = &v173 - v17;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  *&v241 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v179 = &v173 - v18;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v238 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v173 - v19;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v20 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237 - 8);
  v176 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v173 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v181 = &v173 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v204 = &v173 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v180 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v173 - v31;
  v212 = type metadata accessor for Shape(0);
  v33 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v35 = &v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v173 - v37;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v39 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v215 = &v173 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v41);
  v235 = &v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v224 = &v173 - v46;
  v47 = *(v198 + 8);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v244 = v50 & *(v47 + 56);
  v51 = (v49 + 63) >> 6;
  v222 = v45 + 32;
  v223 = v45 + 16;
  v221 = (v39 + 48);
  v203 = (v39 + 32);
  v210 = (v33 + 48);
  v199 = (v20 + 8);
  v200 = (v20 + 16);
  v226 = (v245 + 48);
  v231 = (v11 + 8);
  v216 = (v245 + 8);
  v217 = (v245 + 32);
  v177 = (v238 + 8);
  v178 = (v241 + 8);
  v194 = (v11 + 48);
  v187 = (v11 + 32);
  v182 = (v11 + 16);
  v183 = (v11 + 56);
  v52 = v44;
  v201 = (v39 + 8);
  v225 = v45;
  v218 = (v45 + 8);
  v234 = v47;

  v54 = 0;
  v193 = xmmword_1D405D330;
  v219 = v51;
  v220 = v48;
  v195 = v32;
  v206 = v35;
  v236 = v38;
  v202 = v52;
  v55 = v244;
  if (v244)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v244 = (v55 - 1) & v55;
        v58 = v224;
        v57 = v225;
        (*(v225 + 16))(v224, *(v234 + 48) + *(v225 + 72) * (__clz(__rbit64(v55)) | (v54 << 6)), v52);
        v59 = v235;
        (*(v57 + 32))(v235, v58, v52);
        WeakTagged_10.tagged6.getter();
        v60 = v236;
        v61 = v239;
        if ((*v221)(v236, 1, v239) != 1)
        {
          break;
        }

        (*v218)(v59, v52);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
LABEL_12:
        v51 = v219;
        v48 = v220;
        v55 = v244;
        if (!v244)
        {
          goto LABEL_4;
        }
      }

      v62 = v215;
      (*v203)(v215, v60, v61);
      WeakRef.subscript.getter();
      v63 = *v210;
      v64 = v212;
      if ((*v210)(v32, 1, v212) == 1)
      {
        (*v201)(v62, v61);
        v52 = v202;
        (*v218)(v235, v202);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit5ShapeVSgMd);
        goto LABEL_12;
      }

      v65 = v206;
      _s8PaperKit5ShapeVWObTm_3(v32, v206, type metadata accessor for Shape);
      v66 = v65 + *(v64 + 52);
      v192 = *v200;
      v192(v204, v66, v237);
      v67 = CRAttributedString.attributedString.getter();
      v68 = [v67 string];

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v196 = v63;
      if (!v69 && v71 == 0xE000000000000000)
      {

        (*v199)(v204, v237);
        v72 = v197;
        v73 = v257;
        goto LABEL_81;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v75 = *v199;
      (*v199)(v204, v237);
      v72 = v197;
      v73 = v257;
      if ((v74 & 1) == 0)
      {
        break;
      }

LABEL_81:
      *&v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.getter();
      v150 = *v194;
      if ((*v194)(v72, 1, v73) == 1)
      {
        type metadata accessor for CanvasFormattingProxy();
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v205);
        if (v150(v72, 1, v73) != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }
      }

      else
      {
        (*v187)(v205, v72, v73);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (*v252 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v255, static UIConstants.textBoxDefaultFont);
        if ((v232 & 1) == 0)
        {
LABEL_89:
          v151 = v233;
          swift_beginAccess();
          rawValue = v255.traits.rawValue;
          if ((v255.traits.rawValue & *v151) == 0)
          {
            goto LABEL_95;
          }

          rawValue = v255.traits.rawValue & ~*v151;
          goto LABEL_94;
        }
      }

      else
      {
        v255._name.value._countAndFlagsBits = v251;
        v255._name.value._object = *v252;
        v255._familyName = *&v252[8];
        LODWORD(v255.pointSize) = v253;
        v255.traits.rawValue = v254;
        if ((v232 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v153 = v233;
      swift_beginAccess();
      rawValue = v255.traits.rawValue;
      if ((*v153 & ~v255.traits.rawValue) == 0)
      {
        goto LABEL_95;
      }

      rawValue = v255.traits.rawValue | *v153;
LABEL_94:
      v255.traits.rawValue = rawValue;
LABEL_95:
      countAndFlagsBits = v255._name.value._countAndFlagsBits;
      v245 = *&v255._name.value._object;
      *v252 = *&v255._name.value._object;
      v251 = v255._name.value._countAndFlagsBits;
      *&v252[16] = v255._familyName.value._object;
      *&v253 = v255.pointSize;
      v254 = rawValue;
      v155 = Font.platformFont.getter();
      v156 = [v155 fontName];

      v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v159 = v158;

      if (v245 && (v157 == countAndFlagsBits && v245 == v159 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        v160._countAndFlagsBits = 46;
        v160._object = 0xE100000000000000;
        v161 = String.hasPrefix(_:)(v160);

        if (v161)
        {

          v157 = 0;
          v159 = 0;
        }

        v255._name.value._countAndFlagsBits = v157;
        v255._name.value._object = v159;
        v246 = v157;
        v247 = v159;
        familyName = v255._familyName;
        pointSize = v255.pointSize;
        v250 = v255.traits.rawValue;
        v162 = Font.platformFont.getter();
        v163 = [v162 familyName];

        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v165;

        Font.familyName.setter(v164, v166);
      }

      *&v255.pointSize = LODWORD(v255.pointSize);
      v167 = v257;
      v168 = v205;
      CRAttributedString.Attributes.subscript.setter();
      v169 = v215;
      v170 = WeakRef.subscript.modify();
      if (!v196(v171, 1, v212))
      {
        v172 = v184;
        (*v182)(v184, v168, v167);
        (*v183)(v172, 0, 1, v167);
        outlined init with copy of Date?(v172, v185, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v167 = v257;
        CRRegister.wrappedValue.setter();
        v169 = v215;
        v168 = v205;
        outlined destroy of StocksKitCurrencyCache.Provider?(v172, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      }

      v170(&v255, 0);
      v51 = v219;
      (*v231)(v168, v167);
      outlined destroy of Shape(v206, type metadata accessor for Shape);
      (*v201)(v169, v239);
      v52 = v202;
      result = (*v218)(v235, v202);
      v32 = v195;
      v48 = v220;
      v55 = v244;
      if (!v244)
      {
        goto LABEL_4;
      }
    }

    v175 = v75;
    v76 = v180;
    WeakRef.subscript.getter();
    result = (v63)(v76, 1, v64);
    if (result == 1)
    {
      goto LABEL_117;
    }

    v77 = v181;
    v78 = v237;
    v192(v181, v76 + *(v64 + 52), v237);
    outlined destroy of Shape(v76, type metadata accessor for Shape);
    CRAttributedString.count.getter();
    v175(v77, v78);
    KeyPath = swift_getKeyPath();
    v79 = WeakRef.subscript.modify();
    v81 = v80;
    result = (v196)(v80, 1, v64);
    if (result == 1)
    {
      goto LABEL_116;
    }

    v82 = *(v64 + 52);
    result = NSNotFound.getter();
    v83 = v242;
    v84 = v243;
    if (!result)
    {
      goto LABEL_114;
    }

    v174 = v79;
    v213 = v82;
    v85 = v179;
    CRAttributedString.subscript.getter();
    v86 = v227;
    CRAttributedString.Substring.runs.getter();
    (*v178)(v85, v86);
    v87 = v228;
    CRAttributedString.Runs.next()();
    v208 = *v226;
    v88 = v208(v87, 1, v84);
    *&v245 = MEMORY[0x1E69E7CC0];
    v209 = v81;
    if (v88 == 1)
    {
LABEL_22:
      (*v177)(v229, v230);

      v89 = v213;
      v90 = v237;
      v192(v186, v81 + v213, v237);
      v91 = CRAttributedString.attributedString.getter();
      v92 = [v91 string];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      if (v93 || v95 != 0xE000000000000000)
      {
        v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v136 = v175;
        v175(v186, v90);
        v72 = v197;
        v73 = v257;
        if ((v135 & 1) == 0)
        {
          v137 = v209;
          v138 = v209 + v89;
          v139 = v181;
          v140 = v89;
          v141 = v237;
          v142 = v192;
          v192(v181, v138, v237);
          v143 = v137 + v140;
          v144 = v176;
          v142(v176, v143, v141);
          v145 = CRAttributedString.attributedString.getter();
          v136(v144, v141);
          v146 = [v145 length];

          result = v146 - 1;
          if (__OFSUB__(v146, 1))
          {
            goto LABEL_115;
          }

          v147 = v184;
          CRAttributedString.attributes(at:effectiveRange:)();
          v136(v139, v141);
          v148 = v257;
          (*v183)(v147, 0, 1, v257);
          outlined init with copy of Date?(v147, v185, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
          CRRegister.wrappedValue.setter();
          v149 = v147;
          v73 = v148;
          outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v72 = v197;
        }
      }

      else
      {

        v175(v186, v90);
        v72 = v197;
        v73 = v257;
      }

      v174(v256, 0);
      goto LABEL_81;
    }

    v207 = *v217;
    *&v245 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v207(v83, v87, v84);
      CRAttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      v96 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (*v252 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v255, static UIConstants.textBoxDefaultFont);
        if ((v232 & 1) == 0)
        {
LABEL_30:
          v97 = v233;
          swift_beginAccess();
          v98 = v255.traits.rawValue;
          if ((v255.traits.rawValue & *v97) != 0)
          {
            v98 = v255.traits.rawValue & ~*v97;
LABEL_35:
            v255.traits.rawValue = v98;
            goto LABEL_36;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v255._name.value._countAndFlagsBits = v251;
        v255._name.value._object = *v252;
        v255._familyName = *&v252[8];
        LODWORD(v255.pointSize) = v253;
        v255.traits.rawValue = v254;
        if ((v232 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v99 = v233;
      swift_beginAccess();
      v98 = v255.traits.rawValue;
      if ((*v99 & ~v255.traits.rawValue) != 0)
      {
        v98 = v255.traits.rawValue | *v99;
        goto LABEL_35;
      }

LABEL_36:
      v100 = v255._name.value._countAndFlagsBits;
      v241 = *&v255._name.value._object;
      *v252 = *&v255._name.value._object;
      v251 = v255._name.value._countAndFlagsBits;
      *&v252[16] = v255._familyName.value._object;
      *&v253 = v255.pointSize;
      v254 = v98;
      v101 = Font.platformFont.getter();
      v102 = [v101 fontName];

      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      v238 = v96;
      if (v241 && (v103 == v100 && v241 == v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        v106._countAndFlagsBits = 46;
        v106._object = 0xE100000000000000;
        v107 = String.hasPrefix(_:)(v106);

        if (v107)
        {

          v103 = 0;
          v105 = 0;
        }

        v255._name.value._countAndFlagsBits = v103;
        v255._name.value._object = v105;
        v246 = v103;
        v247 = v105;
        familyName = v255._familyName;
        pointSize = v255.pointSize;
        v250 = v255.traits.rawValue;
        v108 = Font.platformFont.getter();
        v109 = [v108 familyName];

        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        Font.familyName.setter(v110, v112);
      }

      v113 = v255._name.value._countAndFlagsBits;
      object = v255._name.value._object;
      v116 = v255._familyName.value._countAndFlagsBits;
      v115 = v255._familyName.value._object;
      v117 = v255.pointSize;
      v118 = v255.traits.rawValue;
      (*v231)(v240, v257);
      result = CRAttributedString.Runs.Run.range.getter();
      v120 = v119 - result;
      if (__OFSUB__(v119, result))
      {
        goto LABEL_109;
      }

      v121 = result;
      *&v241 = v119 - result;
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
        v120 = v241;
      }

      v122 = qword_1EC7A2EB8;
      v123 = qword_1EC7A2EC0;
      v124 = *&dword_1EC7A2EC8;
      v125 = qword_1EC7A2ED0;
      if (object)
      {
        if (!qword_1EC7A2EB0)
        {
          goto LABEL_68;
        }

        if (v113 != static TextAttributeScope.FontAttribute.defaultValue || object != qword_1EC7A2EB0)
        {
          v190 = qword_1EC7A2EB8;
          v191 = qword_1EC7A2ED0;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v122 = v190;
          v125 = v191;
          v120 = v241;
          if ((result & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else if (qword_1EC7A2EB0)
      {
        goto LABEL_68;
      }

      if (v115)
      {
        if (!v123)
        {
          goto LABEL_68;
        }

        if (v116 != v122 || v115 != v123)
        {
          v126 = v125;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v120 = v241;
          if ((result & 1) != 0 && v117 == v124 && v118 == v126)
          {
            goto LABEL_65;
          }

          goto LABEL_68;
        }
      }

      else if (v123)
      {
        goto LABEL_68;
      }

      if (v117 == v124 && v118 == v125)
      {
LABEL_65:
        if (__OFADD__(v121, v120))
        {
          goto LABEL_112;
        }

        if (v121 + v120 < v121)
        {
          goto LABEL_113;
        }

        v255._name = v193;
        memset(&v255._familyName, 0, 32);

        v81 = v209;
        v127 = CRAttributedString.subscript.modify();
        CRAttributedString.Substring.subscript.setter();
        v127(&v251, 0);

        goto LABEL_71;
      }

LABEL_68:
      if (__OFADD__(v121, v120))
      {
        goto LABEL_110;
      }

      if (v121 + v120 < v121)
      {
        goto LABEL_111;
      }

      v255._name.value._countAndFlagsBits = v113;
      v255._name.value._object = object;
      v255._familyName.value._countAndFlagsBits = v116;
      v255._familyName.value._object = v115;
      *&v255.pointSize = LODWORD(v117);
      v255.traits.rawValue = v118;

      v81 = v209;
      v128 = CRAttributedString.subscript.modify();
      CRAttributedString.Substring.subscript.setter();
      v128(&v251, 0);

LABEL_71:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v243;
      v83 = v242;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *&v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v245 + 16) + 1, 1, v245);
      }

      v131 = *(v245 + 16);
      v130 = *(v245 + 24);
      if (v131 >= v130 >> 1)
      {
        *&v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v245);
      }

      (*v216)(v83, v84);
      v132 = v245;
      *(v245 + 16) = v131 + 1;
      v133 = v132 + 16 * v131;
      v134 = v241;
      *(v133 + 32) = v121;
      *(v133 + 40) = v134;
      v87 = v228;
      CRAttributedString.Runs.next()();
      if (v208(v87, 1, v84) == 1)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v56 >= v51)
    {
    }

    v55 = *(v48 + 8 * v56);
    ++v54;
    if (v55)
    {
      v54 = v56;
      goto LABEL_8;
    }
  }

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
  return result;
}

uint64_t CanvasFormattingProxy.underline.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v60 - v6;
  v7 = *(a1 + 16);
  v68 = *(a1 + 24);
  v69 = v7;
  v67 = type metadata accessor for Capsule();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v60 - v20;
  v70 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v74 = v16 + 32;
  v75 = v16 + 16;
  v65 = (v8 + 8);
  v77 = (v16 + 8);
  v78 = v21;

  v28 = 0;
  v71 = v18;
  v72 = v15;
  v64 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {

      return 0;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
  }

  while (!v25);
  while (1)
  {
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v76;
    (*(v16 + 16))(v76, *(v78 + 48) + *(v16 + 72) * (v30 | (v29 << 6)), v15);
    (*(v16 + 32))(v18, v31, v15);
    v32 = v18;
    WeakTagged_10.tagged6.getter();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v12, 1, v33) == 1)
    {
      (*v77)(v32, v15);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v28 = v29;
      v18 = v32;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v35 = v12;
    v36 = v66;
    Canvas.updatablePaper2.getter(v66);
    v37 = v73;
    WeakRef.subscript.getter();
    v38 = v36;
    v12 = v35;
    (*v65)(v38, v67);
    (*(v34 + 8))(v35, v33);
    v39 = type metadata accessor for Shape(0);
    if ((*(*(v39 - 8) + 48))(v37, 1, v39) != 1)
    {
      break;
    }

    v18 = v71;
    v40 = v72;
    (*v77)(v71, v72);
    v41 = v37;
    v15 = v40;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit5ShapeVSgMd);
    v28 = v29;
    v16 = v64;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v29 = v28;
  }

  v43 = v60;
  v42 = v61;
  v44 = v62;
  (*(v61 + 16))(v60, &v37[*(v39 + 52)], v62);
  v45 = CRAttributedString.attributedString.getter();
  v46 = [v45 string];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v37;
  if (v47 || v49 != 0xE000000000000000)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v42 + 8))(v43, v44);
    v51 = v63;
    if (v52)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    v55 = Array<A>.textStyles.getter(v59);

    swift_setDeallocating();
    (*(v57 + 8))(v59 + v58, v56);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v42 + 8))(v43, v44);
    v51 = v63;
LABEL_19:
    off_1F4F6C320();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v55 = 0;
    }

    else
    {
      v55 = CRAttributedString.Attributes<>.textStyles.getter();

      (*(v54 + 8))(v51, v53);
    }
  }

  outlined destroy of Shape(v50, type metadata accessor for Shape);
  (*v77)(v71, v72);
  return (v55 >> 2) & 1;
}

uint64_t CanvasFormattingProxy.strikethrough.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v60 - v6;
  v7 = *(a1 + 16);
  v68 = *(a1 + 24);
  v69 = v7;
  v67 = type metadata accessor for Capsule();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v60 - v20;
  v70 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v74 = v16 + 32;
  v75 = v16 + 16;
  v65 = (v8 + 8);
  v77 = (v16 + 8);
  v78 = v21;

  v28 = 0;
  v71 = v18;
  v72 = v15;
  v64 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {

      return 0;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
  }

  while (!v25);
  while (1)
  {
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v76;
    (*(v16 + 16))(v76, *(v78 + 48) + *(v16 + 72) * (v30 | (v29 << 6)), v15);
    (*(v16 + 32))(v18, v31, v15);
    v32 = v18;
    WeakTagged_10.tagged6.getter();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v12, 1, v33) == 1)
    {
      (*v77)(v32, v15);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v28 = v29;
      v18 = v32;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v35 = v12;
    v36 = v66;
    Canvas.updatablePaper2.getter(v66);
    v37 = v73;
    WeakRef.subscript.getter();
    v38 = v36;
    v12 = v35;
    (*v65)(v38, v67);
    (*(v34 + 8))(v35, v33);
    v39 = type metadata accessor for Shape(0);
    if ((*(*(v39 - 8) + 48))(v37, 1, v39) != 1)
    {
      break;
    }

    v18 = v71;
    v40 = v72;
    (*v77)(v71, v72);
    v41 = v37;
    v15 = v40;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit5ShapeVSgMd);
    v28 = v29;
    v16 = v64;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v29 = v28;
  }

  v43 = v60;
  v42 = v61;
  v44 = v62;
  (*(v61 + 16))(v60, &v37[*(v39 + 52)], v62);
  v45 = CRAttributedString.attributedString.getter();
  v46 = [v45 string];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v37;
  if (v47 || v49 != 0xE000000000000000)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v42 + 8))(v43, v44);
    v51 = v63;
    if (v52)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    v55 = Array<A>.textStyles.getter(v59);

    swift_setDeallocating();
    (*(v57 + 8))(v59 + v58, v56);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v42 + 8))(v43, v44);
    v51 = v63;
LABEL_19:
    off_1F4F6C320();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v55 = 0;
    }

    else
    {
      v55 = CRAttributedString.Attributes<>.textStyles.getter();

      (*(v54 + 8))(v51, v53);
    }
  }

  outlined destroy of Shape(v50, type metadata accessor for Shape);
  (*v77)(v71, v72);
  return (v55 >> 3) & 1;
}

void closure #1 in CanvasFormattingProxy.bold.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.underline.setter(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v194 = a6;
  v155 = a5;
  v150 = a4;
  v202 = a3;
  v169 = a1;
  v148 = *a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v7 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v160 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v176 = &v132 - v10;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v11 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v132 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v187 = &v132 - v20;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v197 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v139 = &v132 - v21;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v184 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v132 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v165 = &v132 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v140 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v132 - v35;
  v192 = type metadata accessor for Shape(0);
  v37 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192 - 8);
  v166 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v132 - v40;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v42 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v174 = &v132 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  v183 = &v132 - v49;
  v149 = a2;
  v50 = *(a2 + 8);
  v51 = v50 + 56;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 56);
  v198 = (v52 + 63) >> 6;
  v182 = v47 + 16;
  v181 = v47 + 32;
  v180 = (v42 + 48);
  v164 = (v42 + 32);
  v173 = (v37 + 48);
  v159 = (v24 + 16);
  v158 = (v24 + 8);
  v55 = v46;
  v138 = (v197 + 8);
  v186 = (v11 + 48);
  v177 = (v11 + 32);
  v195 = (v7 + 8);
  v175 = (v11 + 8);
  v137 = (v184 + 8);
  v143 = (v7 + 56);
  v152 = (v7 + 48);
  v147 = (v7 + 32);
  v151 = v202 & 1;
  v142 = (v7 + 16);
  v56 = v48;
  v161 = (v42 + 8);
  v57 = v193;
  v184 = v47;
  v178 = (v47 + 8);
  v197 = v50;

  v59 = 0;
  v196 = v23;
  v179 = v51;
  v154 = v36;
  v153 = v41;
  v163 = v55;
  v162 = v56;
  while (v54)
  {
LABEL_12:
    v63 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v64 = v184;
    v65 = v183;
    (*(v184 + 16))(v183, *(v197 + 48) + *(v184 + 72) * (v63 | (v59 << 6)), v55);
    (*(v64 + 32))(v56, v65, v55);
    WeakTagged_10.tagged6.getter();
    v66 = v199;
    if ((*v180)(v41, 1, v199) == 1)
    {
      (*v178)(v56, v55);
      v60 = v41;
      v61 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
LABEL_5:
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v60, v61);
      goto LABEL_6;
    }

    v67 = v174;
    (*v164)(v174, v41, v66);
    WeakRef.subscript.getter();
    v68 = *v173;
    v69 = v192;
    if ((*v173)(v36, 1, v192) == 1)
    {
      (*v161)(v67, v66);
      v56 = v162;
      v55 = v163;
      (*v178)(v162, v163);
      v60 = v36;
      v61 = &_s8PaperKit5ShapeVSgMd;
      goto LABEL_5;
    }

    v157 = v68;
    v70 = v166;
    _s8PaperKit5ShapeVWObTm_3(v36, v166, type metadata accessor for Shape);
    v71 = *v159;
    v72 = v70 + *(v69 + 52);
    v73 = v196;
    (*v159)(v165, v72, v196);
    v74 = CRAttributedString.attributedString.getter();
    v75 = [v74 string];

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = v156;
    if (v76 || v78 != 0xE000000000000000)
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v82 = *v158;
      (*v158)(v165, v73);
      v80 = v160;
      if ((v81 & 1) == 0)
      {
        v135 = v82;
        v134 = v71;
        v83 = v140;
        WeakRef.subscript.getter();
        v84 = v192;
        result = (v157)(v83, 1, v192);
        if (result == 1)
        {
          goto LABEL_65;
        }

        v85 = v141;
        v134(v141, v83 + *(v84 + 52), v73);
        outlined destroy of Shape(v83, type metadata accessor for Shape);
        CRAttributedString.count.getter();
        v135(v85, v73);
        KeyPath = swift_getKeyPath();
        v86 = WeakRef.subscript.modify();
        v88 = v87;
        result = (v157)(v87, 1, v84);
        if (result == 1)
        {
          goto LABEL_64;
        }

        v89 = *(v84 + 52);
        result = NSNotFound.getter();
        if (!result)
        {
          goto LABEL_62;
        }

        v133 = v86;
        v172 = v88;
        v171 = v89;
        v90 = v139;
        CRAttributedString.subscript.getter();
        v91 = v185;
        CRAttributedString.Substring.runs.getter();
        (*v138)(v90, v91);
        v92 = v187;
        CRAttributedString.Runs.next()();
        v93 = v189;
        v168 = *v186;
        v94 = v168(v92, 1, v189);
        v95 = MEMORY[0x1E69E7CC0];
        v96 = v188;
        if (v94 != 1)
        {
          v167 = *v177;
          do
          {
            v167(v96, v92, v93);
            v103 = v176;
            CRAttributedString.Runs.Run.attributes.getter();
            (*v195)(v103, v57);
            result = CRAttributedString.Runs.Run.range.getter();
            v105 = v104 - result;
            if (__OFSUB__(v104, result))
            {
              goto LABEL_57;
            }

            v106 = result;
            v107 = __OFADD__(result, v105);
            if (v202)
            {
              if (v107)
              {
                goto LABEL_58;
              }

              if (v104 < result)
              {
                goto LABEL_60;
              }

              v203 = 1;
            }

            else
            {
              if (v107)
              {
                goto LABEL_59;
              }

              if (v104 < result)
              {
                goto LABEL_61;
              }

              v203 = 2;
            }

            v108 = CRAttributedString.subscript.modify();
            v194();
            CRAttributedString.Substring.subscript.setter();
            v108(v200, 0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
            }

            v110 = *(v95 + 2);
            v109 = *(v95 + 3);
            if (v110 >= v109 >> 1)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v95);
            }

            v96 = v188;
            v93 = v189;
            (*v175)(v188, v189);
            *(v95 + 2) = v110 + 1;
            v111 = &v95[16 * v110];
            *(v111 + 4) = v106;
            *(v111 + 5) = v105;
            v92 = v187;
            CRAttributedString.Runs.next()();
            v112 = v168(v92, 1, v93);
            v57 = v193;
            v73 = v196;
          }

          while (v112 != 1);
        }

        (*v137)(v190, v191);

        v97 = v134;
        v134(v146, v172 + v171, v73);
        v98 = CRAttributedString.attributedString.getter();
        v99 = [v98 string];

        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        if (v100 || v102 != 0xE000000000000000)
        {
          v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v135(v146, v73);
          v80 = v160;
          v79 = v156;
          if ((v113 & 1) == 0)
          {
            v114 = v172;
            v115 = v171;
            v97(v141, v172 + v171, v73);
            v116 = v114 + v115;
            v117 = v136;
            v97(v136, v116, v73);
            v118 = CRAttributedString.attributedString.getter();
            v119 = v135;
            v135(v117, v73);
            v120 = [v118 length];

            result = v120 - 1;
            if (__OFSUB__(v120, 1))
            {
              goto LABEL_63;
            }

            v121 = v144;
            v122 = v141;
            CRAttributedString.attributes(at:effectiveRange:)();
            v119(v122, v73);
            (*v143)(v121, 0, 1, v57);
            outlined init with copy of Date?(v121, v145, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
            CRRegister.wrappedValue.setter();
            outlined destroy of StocksKitCurrencyCache.Provider?(v121, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
            v80 = v160;
          }
        }

        else
        {

          v135(v146, v73);
          v80 = v160;
          v79 = v156;
        }

        v133(v201, 0);
      }
    }

    else
    {

      (*v158)(v165, v73);
      v80 = v160;
    }

    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    v124 = v166;
    v172 = v123;
    CRRegister.wrappedValue.getter();
    v125 = *v152;
    if ((*v152)(v79, 1, v57) == 1)
    {
      type metadata accessor for CanvasFormattingProxy();
      CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v80);
      v126 = v125(v79, 1, v57);
      v124 = v166;
      if (v126 != 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      }
    }

    else
    {
      (*v147)(v80, v79, v57);
    }

    swift_getKeyPath();
    v201[0] = v151;
    v194();
    CRAttributedString.Attributes.subscript.setter();
    v127 = v174;
    v128 = WeakRef.subscript.modify();
    if (!v157(v129, 1, v192))
    {
      v130 = v144;
      (*v142)(v144, v80, v57);
      (*v143)(v130, 0, 1, v57);
      outlined init with copy of Date?(v130, v145, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      CRRegister.wrappedValue.setter();
      v131 = v130;
      v124 = v166;
      v80 = v160;
      v127 = v174;
      outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    }

    v128(v201, 0);
    (*v195)(v80, v57);
    outlined destroy of Shape(v124, type metadata accessor for Shape);
    (*v161)(v127, v199);
    v56 = v162;
    v55 = v163;
    result = (*v178)(v162, v163);
    v36 = v154;
    v41 = v153;
LABEL_6:
    v51 = v179;
  }

  while (1)
  {
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v62 >= v198)
    {
    }

    v54 = *(v51 + 8 * v62);
    ++v59;
    if (v54)
    {
      v59 = v62;
      goto LABEL_12;
    }
  }

  __break(1u);
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
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void CanvasFormattingProxy.fontColor.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v71 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v10 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v71 - v13;
  v14 = *(a1 + 16);
  v88 = *(a1 + 24);
  v89 = v14;
  v87 = type metadata accessor for Capsule();
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v71 - v16;
  v93 = type metadata accessor for Shape(0);
  v17 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v76 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v100 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v71 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v103);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v71 - v27;
  v28 = *(v2 + 8);
  v29 = v28 + 56;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 56);
  v80 = (v30 + 63) >> 6;
  v96 = v26 + 32;
  v97 = v26 + 16;
  v95 = (v22 + 48);
  v83 = (v22 + 32);
  v82 = (v15 + 8);
  v81 = (v17 + 48);
  v78 = (v10 + 16);
  v77 = (v10 + 8);
  v85 = (v22 + 8);
  v33 = v25;
  v99 = v26;
  v101 = (v26 + 8);

  v34 = 0;
  v72 = v2;
  v79 = v21;
  v90 = v33;
  for (i = v28; ; v28 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v32)
        {
          while (1)
          {
            v37 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            if (v37 >= v80)
            {
              break;
            }

            v32 = *(v29 + 8 * v37);
            ++v34;
            if (v32)
            {
              v35 = v21;
              v36 = v2;
              goto LABEL_11;
            }
          }

          v60 = *(type metadata accessor for Color(0) + 20);
          v61 = type metadata accessor for UnknownValueProperties();
          v33 = v73;
          (*(*(v61 - 8) + 56))(v73 + v60, 1, 1, v61);
          if (one-time initialization token for extendedSRGBColorSpace == -1)
          {
            goto LABEL_21;
          }

LABEL_29:
          swift_once();
LABEL_21:
          v62 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
          if (v62)
          {
            v63 = v62;
            CGColorRef.calculateMinimumHeadroom.getter();
            v64 = CGColorCreateWithContentHeadroom();
            if (v64)
            {
              v65 = v64;

              *v33 = v65;
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_32;
        }

        v35 = v21;
        v36 = v2;
        v37 = v34;
LABEL_11:
        v38 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v39 = v98;
        v40 = v99;
        v41 = v103;
        (*(v99 + 16))(v98, *(v28 + 48) + *(v99 + 72) * (v38 | (v37 << 6)), v103);
        (*(v40 + 32))(v33, v39, v41);
        v42 = v100;
        WeakTagged_10.tagged6.getter();
        v21 = v35;
        if ((*v95)(v42, 1, v35) != 1)
        {
          break;
        }

        (*v101)(v33, v103);
        outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
        v34 = v37;
        v2 = v36;
      }

      v43 = v94;
      (*v83)(v94, v42, v35);
      v44 = v86;
      Canvas.updatablePaper2.getter(v86);
      v45 = v102;
      WeakRef.subscript.getter();
      (*v82)(v44, v87);
      v46 = v93;
      if ((*v81)(v45, 1, v93) != 1)
      {
        break;
      }

      (*v85)(v43, v21);
      v33 = v90;
      (*v101)(v90, v103);
      outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit5ShapeVSgMd);
      v34 = v37;
      v28 = i;
      v2 = v36;
    }

    v47 = v76;
    _s8PaperKit5ShapeVWObTm_3(v102, v76, type metadata accessor for Shape);
    (*v78)(v91, v47 + *(v46 + 52), v92);
    v48 = CRAttributedString.attributedString.getter();
    v49 = [v48 string];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (!v50 && v52 == 0xE000000000000000)
    {

      (*v77)(v91, v92);
      goto LABEL_18;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v77)(v91, v92);
    if ((v53 & 1) == 0)
    {
      break;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    v54 = v74;
    CRRegister.wrappedValue.getter();
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) != 1)
    {
      v66 = v75;
      CRAttributedString.Attributes<>.fontColor.getter(v75);

      outlined destroy of Shape(v47, type metadata accessor for Shape);
      (*v85)(v94, v79);
      (*v101)(v90, v103);
      (*(v57 + 8))(v55, v56);
      v67 = type metadata accessor for Color(0);
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
LABEL_27:
      _s8PaperKit5ShapeVWObTm_3(v66, v73, type metadata accessor for Color);
      return;
    }

    outlined destroy of Shape(v47, type metadata accessor for Shape);
    v21 = v79;
    (*v85)(v94, v79);
    v33 = v90;
    (*v101)(v90, v103);
    outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v58 = type metadata accessor for Color(0);
    v59 = v75;
    (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s8PaperKit5ColorVSgMd);
    v34 = v37;
    v2 = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1D4058CF0;
  CRAttributedString.runs.getter();
  v69 = Array<A>.fontColors.getter(v68);

  v66 = v71;
  specialized Collection.first.getter(v69, v71);

  v70 = type metadata accessor for Color(0);
  if ((*(*(v70 - 8) + 48))(v66, 1, v70) != 1)
  {
    outlined destroy of Shape(v47, type metadata accessor for Shape);
    (*v85)(v94, v79);
    (*v101)(v90, v103);
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.fontColor.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v140 = a3;
  v130 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v138 = &v117 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v8 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v10 = &v117 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v142 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v117 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v17 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v123 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v117 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v124 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v117 - v28;
  v165 = type metadata accessor for Shape(0);
  v29 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v153 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v163 = &v117 - v32;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v33 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v164 = &v117 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v117 - v40;
  v131 = a2;
  v41 = *(a2 + 8);
  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 56);
  v46 = (v43 + 63) >> 6;
  v159 = v38 + 32;
  v160 = v38 + 16;
  v158 = (v33 + 48);
  v149 = (v33 + 32);
  v155 = (v29 + 48);
  v47 = v39;
  v141 = (v17 + 16);
  v144 = (v17 + 8);
  v126 = (v8 + 56);
  v137 = (v8 + 48);
  v129 = (v8 + 32);
  v125 = (v8 + 16);
  v136 = (v8 + 8);
  v48 = v37;
  v146 = (v33 + 8);
  v162 = v38;
  v157 = (v38 + 8);
  v166 = v41;

  v50 = 0;
  v156 = v46;
  v154 = a1;
  v145 = v10;
  v148 = v48;
  v147 = v47;
  if (v45)
  {
LABEL_10:
    while (1)
    {
      v52 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v53 = v161;
      v54 = v162;
      (*(v162 + 16))(v161, *(v166 + 48) + *(v162 + 72) * (v52 | (v50 << 6)), v48);
      (*(v54 + 32))(v47, v53, v48);
      v55 = v163;
      WeakTagged_10.tagged6.getter();
      v56 = v47;
      v57 = v168;
      if ((*v158)(v55, 1, v168) == 1)
      {
        break;
      }

      v58 = v164;
      (*v149)();
      v59 = v150;
      WeakRef.subscript.getter();
      v60 = v165;
      v61 = *v155;
      if ((*v155)(v59, 1, v165) == 1)
      {
        (*v146)(v58, v57);
        v47 = v147;
        v48 = v148;
        (*v157)(v147, v148);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s8PaperKit5ShapeVSgMd);
        v46 = v156;
        if (!v45)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v143 = v61;
        v62 = v153;
        _s8PaperKit5ShapeVWObTm_3(v59, v153, type metadata accessor for Shape);
        v63 = v62 + *(v60 + 52);
        v134 = *v141;
        v134(v151, v63, v152);
        v64 = CRAttributedString.attributedString.getter();
        v65 = [v64 string];

        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        if (v66 || v68 != 0xE000000000000000)
        {
          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v70 = *v144;
          v71 = v152;
          (*v144)(v151, v152);
          if ((v69 & 1) == 0)
          {
            v122 = v70;
            v72 = v124;
            WeakRef.subscript.getter();
            v73 = v165;
            result = (v143)(v72, 1, v165);
            if (result == 1)
            {
              goto LABEL_39;
            }

            v74 = v72 + *(v73 + 52);
            v75 = v73;
            v76 = v128;
            v134(v128, v74, v71);
            outlined destroy of Shape(v72, type metadata accessor for Shape);
            v120 = CRAttributedString.count.getter();
            v77 = (v122)(v76, v71);
            v121 = &v117;
            MEMORY[0x1EEE9AC00](v77);
            *(&v117 - 2) = v140;
            v78 = v75;
            v79 = v71;
            KeyPath = swift_getKeyPath();
            v81 = WeakRef.subscript.modify();
            v83 = v82;
            result = (v143)(v82, 1, v78);
            if (result == 1)
            {
              goto LABEL_38;
            }

            v119 = v81;
            v84 = *(v78 + 52);
            specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(0, v120, partial apply for closure #1 in closure #1 in closure #1 in CanvasFormattingProxy.fontColor.setter, (&v117 - 4), KeyPath);

            v121 = v84;
            v134(v133, v84 + v83, v79);
            v85 = CRAttributedString.attributedString.getter();
            v86 = [v85 string];

            v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = v88;

            if (v87 || v89 != 0xE000000000000000)
            {
              v118 = v83;
              v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v91 = v152;
              v122(v133, v152);
              if ((v90 & 1) == 0)
              {
                v92 = v118;
                v93 = v121;
                v94 = v134;
                v134(v128, v121 + v118, v91);
                v95 = v93 + v92;
                v96 = v123;
                v94(v123, v95, v91);
                v97 = CRAttributedString.attributedString.getter();
                v98 = v122;
                v122(v96, v91);
                v99 = [v97 length];

                result = v99 - 1;
                v100 = v128;
                if (__OFSUB__(v99, 1))
                {
                  goto LABEL_37;
                }

                v101 = v135;
                CRAttributedString.attributes(at:effectiveRange:)();
                v98(v100, v91);
                (*v126)(v101, 0, 1, v139);
                outlined init with copy of Date?(v101, v127, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
                CRRegister.wrappedValue.setter();
                outlined destroy of StocksKitCurrencyCache.Provider?(v135, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              }
            }

            else
            {

              v122(v133, v152);
            }

            v119(v167, 0);
          }
        }

        else
        {

          (*v144)(v151, v152);
        }

        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        v103 = v142;
        v134 = v102;
        CRRegister.wrappedValue.getter();
        v104 = v103;
        v105 = *v137;
        v106 = v139;
        if ((*v137)(v104, 1, v139) == 1)
        {
          type metadata accessor for CanvasFormattingProxy();
          v107 = v106;
          v108 = v145;
          CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v145);
          v109 = v142;
          v110 = v108;
          v106 = v107;
          if (v105(v142, 1, v107) != 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          }
        }

        else
        {
          v110 = v145;
          (*v129)(v145, v104, v106);
        }

        swift_getKeyPath();
        v111 = v138;
        _s8PaperKit5ColorVWOcTm_0(v140, v138, type metadata accessor for Color);
        v112 = type metadata accessor for Color(0);
        (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
        lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
        CRAttributedString.Attributes.subscript.setter();
        v113 = v168;
        v114 = WeakRef.subscript.modify();
        if (!v143(v115, 1, v165))
        {
          v116 = v135;
          (*v125)(v135, v145, v106);
          (*v126)(v116, 0, 1, v106);
          outlined init with copy of Date?(v116, v127, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          v110 = v145;
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v135, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }

        v114(v167, 0);
        (*v136)(v110, v106);
        outlined destroy of Shape(v153, type metadata accessor for Shape);
        (*v146)(v164, v113);
        v56 = v147;
        v48 = v148;
        result = (*v157)(v147, v148);
LABEL_33:
        v47 = v56;
        v46 = v156;
        if (!v45)
        {
          goto LABEL_6;
        }
      }
    }

    (*v157)(v56, v48);
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    goto LABEL_33;
  }

LABEL_6:
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v46)
    {
    }

    v45 = *(v42 + 8 * v51);
    ++v50;
    if (v45)
    {
      v50 = v51;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t closure #1 in CanvasFormattingProxy.boldAllowed.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - v8;
  v65 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - v11;
  v70 = a3;
  v71 = a4;
  v68 = type metadata accessor for Capsule();
  v12 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for Shape(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    Canvas.updatablePaper2.getter(v14);
    WeakRef.subscript.getter();
    (*(v12 + 8))(v14, v68);
    (*(v25 + 8))(v17, v24);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v29 = v67;
      _s8PaperKit5ShapeVWObTm_3(v20, v67, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      v30 = v64;
      CRRegister.wrappedValue.getter();
      v31 = v30;
      v32 = v66;
      _s8PaperKit5ShapeVWObTm_3(v31, v66, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v29;
      }

      else
      {
        outlined destroy of Shape(v32, type metadata accessor for ShapeType);
        v34 = v62;
        v35 = v29 + *(v21 + 52);
        v36 = v61;
        v37 = v63;
        (*(v62 + 16))(v61, v35, v63);
        v38 = CRAttributedString.attributedString.getter();
        v39 = [v38 string];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (v40 || v42 != 0xE000000000000000)
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v34 + 8))(v36, v37);
          if ((v43 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
            v54 = *(v53 - 8);
            v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_1D4058CF0;
            CRAttributedString.runs.getter();
            v57 = Array<A>.allowedTextStyles.getter(v56);
            swift_setDeallocating();
            (*(v54 + 8))(v56 + v55, v53);
            swift_deallocClassInstance();
            outlined destroy of Shape(v29, type metadata accessor for Shape);
            v27 = v57 & 1;
            return v27 & 1;
          }
        }

        else
        {

          (*(v34 + 8))(v36, v37);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        v20 = v60;
        CRRegister.wrappedValue.getter();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v20, 1, v44) == 1)
        {
          outlined destroy of Shape(v29, type metadata accessor for Shape);
          v26 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
          goto LABEL_5;
        }

        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v47 = v78;
        v46 = v79;
        v48 = v80;
        v49 = v81;
        v50 = v20;
        v51 = v82;
        v52 = v83;
        (*(v45 + 8))(v50, v44);
        if (v46 != 1)
        {
          v72 = v47;
          v73 = v46;
          v74 = v48;
          v75 = v49;
          v76 = v51;
          v77 = v52;
          Font.supportsBold.getter();
          v27 = v58;
          outlined destroy of Shape(v67, type metadata accessor for Shape);
          outlined consume of Font?(v47, v46);
          return v27 & 1;
        }

        v33 = v67;
      }

      outlined destroy of Shape(v33, type metadata accessor for Shape);
      goto LABEL_6;
    }
  }

  v26 = &_s8PaperKit5ShapeVSgMd;
LABEL_5:
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, v26);
LABEL_6:
  v27 = 0;
  return v27 & 1;
}

uint64_t CanvasFormattingProxy.strokeIsRequired.getter(void *a1, uint64_t (*a2)(char *, uint64_t, void, void, void))
{
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v19 - v5;
  v21 = v2;
  v7 = *(v2 + 8);
  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  v19[1] = v4 + 16;
  v20 = (v4 + 8);
  v24 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v4 + 16))(v6, *(v24 + 48) + *(v4 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v6, v21, a1[2], a1[3], a1[4]);
    v11 &= v11 - 1;
    (*v20)(v6, v14);
    if (v16)
    {
      v17 = 1;
LABEL_14:

      return v17;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v20)(v6, v14);
  __break(1u);
  return result;
}

uint64_t closure #1 in CanvasFormattingProxy.italicAllowed.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - v8;
  v65 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - v11;
  v70 = a3;
  v71 = a4;
  v68 = type metadata accessor for Capsule();
  v12 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for Shape(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    Canvas.updatablePaper2.getter(v14);
    WeakRef.subscript.getter();
    (*(v12 + 8))(v14, v68);
    (*(v25 + 8))(v17, v24);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v29 = v67;
      _s8PaperKit5ShapeVWObTm_3(v20, v67, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      v30 = v64;
      CRRegister.wrappedValue.getter();
      v31 = v30;
      v32 = v66;
      _s8PaperKit5ShapeVWObTm_3(v31, v66, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v29;
      }

      else
      {
        outlined destroy of Shape(v32, type metadata accessor for ShapeType);
        v34 = v62;
        v35 = v29 + *(v21 + 52);
        v36 = v61;
        v37 = v63;
        (*(v62 + 16))(v61, v35, v63);
        v38 = CRAttributedString.attributedString.getter();
        v39 = [v38 string];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (v40 || v42 != 0xE000000000000000)
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v34 + 8))(v36, v37);
          if ((v43 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
            v54 = *(v53 - 8);
            v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_1D4058CF0;
            CRAttributedString.runs.getter();
            v57 = Array<A>.allowedTextStyles.getter(v56);
            swift_setDeallocating();
            (*(v54 + 8))(v56 + v55, v53);
            swift_deallocClassInstance();
            outlined destroy of Shape(v29, type metadata accessor for Shape);
            v27 = (v57 >> 1) & 1;
            return v27 & 1;
          }
        }

        else
        {

          (*(v34 + 8))(v36, v37);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        v20 = v60;
        CRRegister.wrappedValue.getter();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v20, 1, v44) == 1)
        {
          outlined destroy of Shape(v29, type metadata accessor for Shape);
          v26 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
          goto LABEL_5;
        }

        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v47 = v78;
        v46 = v79;
        v48 = v80;
        v49 = v81;
        v50 = v20;
        v51 = v82;
        v52 = v83;
        (*(v45 + 8))(v50, v44);
        if (v46 != 1)
        {
          v72 = v47;
          v73 = v46;
          v74 = v48;
          v75 = v49;
          v76 = v51;
          v77 = v52;
          Font.supportsItalic.getter();
          LOBYTE(v27) = v58;
          outlined destroy of Shape(v67, type metadata accessor for Shape);
          outlined consume of Font?(v47, v46);
          return v27 & 1;
        }

        v33 = v67;
      }

      outlined destroy of Shape(v33, type metadata accessor for Shape);
      goto LABEL_6;
    }
  }

  v26 = &_s8PaperKit5ShapeVSgMd;
LABEL_5:
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, v26);
LABEL_6:
  LOBYTE(v27) = 0;
  return v27 & 1;
}

uint64_t CanvasFormattingProxy.hasMultipleFontSizes.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v76 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v6 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v78 = &v76 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v76 - v11;
  v12 = *(a1 + 16);
  v100 = *(a1 + 24);
  v101 = v12;
  v99 = type metadata accessor for Capsule();
  v13 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v76 - v26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v112);
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v76 - v30;
  v96 = v2;
  v31 = *(v2 + 8);
  v32 = v31 + 56;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 56);
  v36 = (v33 + 63) >> 6;
  v104 = v29 + 32;
  v105 = v29 + 16;
  v103 = (v25 + 48);
  v90 = (v25 + 32);
  v98 = (v13 + 8);
  v88 = (v8 + 16);
  v89 = (v8 + 8);
  v91 = (v25 + 8);
  v37 = v28;
  v106 = v29;
  v108 = (v29 + 8);
  v79 = v6;
  v83 = (v6 + 56);
  v110 = v31;

  v39 = 0;
  v102 = v24;
  v94 = v37;
  v111 = v23;
  while (v35)
  {
    v40 = v24;
    v41 = v112;
LABEL_12:
    v43 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v45 = v106;
    v44 = v107;
    (*(v106 + 16))(v107, *(v110 + 48) + *(v106 + 72) * (v43 | (v39 << 6)), v41);
    (*(v45 + 32))(v37, v44, v41);
    WeakTagged_10.tagged6.getter();
    v46 = v111;
    v24 = v40;
    if ((*v103)(v111, 1, v40) == 1)
    {
      (*v108)(v37, v41);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    }

    else
    {
      (*v90)(v109, v46, v40);
      v47 = v93;
      Canvas.updatablePaper2.getter(v93);
      v48 = v92;
      WeakRef.subscript.getter();
      v49 = *v98;
      (*v98)(v47, v99);
      v50 = type metadata accessor for Shape(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);
      v53 = v51 + 48;
      if (v52(v48, 1, v50) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s8PaperKit5ShapeVSgMd);
        goto LABEL_20;
      }

      v86 = v53;
      v87 = v52;
      v54 = v48 + *(v50 + 52);
      v80 = *v88;
      v80(v95, v54, v97);
      outlined destroy of Shape(v48, type metadata accessor for Shape);
      v55 = CRAttributedString.attributedString.getter();
      v56 = [v55 string];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      if (v57 || v59 != 0xE000000000000000)
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {

        v60 = 1;
      }

      v61 = *v89;
      (*v89)(v95, v97);
      if (v60)
      {
LABEL_20:
        v24 = v102;
        (*v91)(v109, v102);
        v37 = v94;
        result = (*v108)(v94, v112);
      }

      else
      {
        v76 = v61;
        v62 = v82;
        Canvas.updatablePaper2.getter(v82);
        v63 = v81;
        v64 = v109;
        WeakRef.subscript.getter();
        v49(v62, v99);
        if (v87(v63, 1, v50) != 1)
        {
          v67 = v77;
          v68 = v97;
          v80(v77, v63 + *(v50 + 52), v97);
          outlined destroy of Shape(v63, type metadata accessor for Shape);
          v69 = v84;
          CRAttributedString.runs.getter();
          v76(v67, v68);
          v70 = v79;
          v71 = v85;
          (*(v79 + 56))(v69, 0, 1, v85);
          v72 = v78;
          (*(v70 + 32))(v78, v69, v71);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
          v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_1D4058CF0;
          (*(v70 + 16))(v74 + v73, v72, v71);
          v66 = Array<A>.hasMultipleFontSizes.getter(v74);

          swift_setDeallocating();
          v75 = *(v70 + 8);
          v75(v74 + v73, v71);
          swift_deallocClassInstance();
          v75(v72, v71);
          (*v91)(v64, v102);
          (*v108)(v94, v112);
          return v66;
        }

        v24 = v102;
        (*v91)(v64, v102);
        v37 = v94;
        (*v108)(v94, v112);
        outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s8PaperKit5ShapeVSgMd);
        v65 = v84;
        (*v83)(v84, 1, 1, v85);
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMd);
      }
    }
  }

  v41 = v112;
  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v36)
    {

      return 0;
    }

    v35 = *(v32 + 8 * v42);
    ++v39;
    if (v35)
    {
      v40 = v24;
      v39 = v42;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.lineEnds.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v4 = *(a3 + 16);
  v51 = *(a3 + 24);
  v52 = v4;
  v50 = type metadata accessor for Capsule();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v59 = type metadata accessor for Shape(0);
  v13 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v41 - v19;
  v20 = *(v3 + 8);
  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = (v22 + 63) >> 6;
  v55 = v18 + 16;
  v53 = v3;
  v54 = v18 + 32;
  v46 = (v13 + 48);
  v47 = (v5 + 8);
  v57 = v18;
  v58 = (v18 + 8);
  v45 = (v13 + 56);
  v60 = v20;

  v27 = 0;
  v48 = v15;
  while (v24)
  {
    v28 = v61;
LABEL_13:
    v31 = v56;
    v30 = v57;
    (*(v57 + 16))(v56, *(v60 + 48) + *(v57 + 72) * (__clz(__rbit64(v24)) | (v27 << 6)), v15);
    (*(v30 + 32))(v28, v31, v15);
    WeakTagged_10.tagged6.getter();
    v32 = v15;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v9, 1, v33) == 1)
    {
      (*v58)(v28, v32);
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      (*v45)(v12, 1, 1, v59);
      v15 = v32;
    }

    else
    {
      v35 = v9;
      v36 = v49;
      Canvas.updatablePaper2.getter(v49);
      WeakRef.subscript.getter();
      v37 = v36;
      v9 = v35;
      (*v47)(v37, v50);
      (*(v34 + 8))(v35, v33);
      if ((*v46)(v12, 1, v59) != 1)
      {
        v40 = v42;
        _s8PaperKit5ShapeVWObTm_3(v12, v42, type metadata accessor for Shape);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
        CRRegister.wrappedValue.getter();
        CRRegister.wrappedValue.getter();

        outlined destroy of Shape(v40, type metadata accessor for Shape);
        return (*v58)(v61, v48);
      }

      v15 = v48;
      (*v58)(v61, v48);
    }

    v24 &= v24 - 1;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ShapeVSgMd);
  }

  v28 = v61;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      v39 = v43;
      v38 = v44;
      *v43 = 0;
      *(v39 + 8) = 0;
      *v38 = 0;
      *(v38 + 8) = 0;
      return result;
    }

    v24 = *(v21 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in CanvasFormattingProxy.lineEnds.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.lineEnds.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v44 = a5;
  LODWORD(v51) = a4;
  v43 = a3;
  v58 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v41 - v18;
  v19 = *(a2 + 8);
  v20 = v16;
  v21 = v19 + 56;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 56);
  v25 = (v22 + 63) >> 6;
  v54 = v16 + 32;
  v55 = v16 + 16;
  v26 = (v12 + 48);
  v45 = (v12 + 8);
  v46 = (v12 + 32);
  v27 = v17;
  v52 = (v16 + 8);
  v53 = v26;
  v59 = v19;

  v29 = 0;
  v42 = v51 & 1;
  v41 = a6 & 1;
  v50 = v10;
  v51 = v21;
  v57 = v11;
  v48 = v20;
  v49 = v14;
  v47 = v27;
  if (v24)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
    }

    v24 = *(v21 + 8 * v31);
    ++v29;
    if (v24)
    {
      v30 = v11;
      v29 = v31;
      while (1)
      {
        v32 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v33 = v56;
        (*(v20 + 16))(v56, *(v59 + 48) + *(v20 + 72) * (v32 | (v29 << 6)), v14);
        (*(v20 + 32))(v27, v33, v14);
        WeakTagged_10.tagged6.getter();
        v11 = v30;
        if ((*v53)(v10, 1, v30) == 1)
        {
          (*v52)(v27, v14);
          result = outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
          v21 = v51;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

        else
        {
          (*v46)(v63, v10, v30);
          v34 = WeakRef.subscript.modify();
          v36 = v35;
          v37 = type metadata accessor for Shape(0);
          v38 = *(*(v37 - 8) + 48);
          if (!v38(v36, 1, v37))
          {
            v60 = v43;
            v61 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
            CRRegister.wrappedValue.setter();
          }

          v34(v62, 0);
          v39 = WeakRef.subscript.modify();
          if (!v38(v40, 1, v37))
          {
            v60 = v44;
            v61 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
            CRRegister.wrappedValue.setter();
          }

          v39(v62, 0);
          v20 = v48;
          v14 = v49;
          v11 = v57;
          (*v45)(v63, v57);
          v27 = v47;
          result = (*v52)(v47, v14);
          v10 = v50;
          v21 = v51;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v30 = v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.opacity.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v45 = *(a1 + 24);
  v46 = v2;
  v44 = type metadata accessor for Capsule();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v53 = type metadata accessor for Shape(0);
  v11 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v39 - v16;
  v17 = *(v1 + 8);
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v49 = v15 + 16;
  v47 = v1;
  v48 = v15 + 32;
  v41 = (v11 + 48);
  v42 = (v3 + 8);
  v51 = (v15 + 8);
  v52 = v15;
  v40 = (v11 + 56);
  v54 = v17;

  v24 = 0;
  while (v21)
  {
    v25 = v10;
    v27 = v55;
    v26 = v56;
LABEL_13:
    v29 = v52;
    v30 = v50;
    (*(v52 + 16))(v50, *(v54 + 48) + *(v52 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v26);
    (*(v29 + 32))(v27, v30, v26);
    WeakTagged_10.tagged6.getter();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
    v32 = v26;
    v33 = *(v31 - 8);
    if ((*(v33 + 48))(v7, 1, v31) == 1)
    {
      (*v51)(v27, v32);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v10 = v25;
      (*v40)(v25, 1, 1, v53);
    }

    else
    {
      v34 = v7;
      v35 = v43;
      Canvas.updatablePaper2.getter(v43);
      WeakRef.subscript.getter();
      v36 = v35;
      v7 = v34;
      (*v42)(v36, v44);
      v37 = v31;
      v10 = v25;
      (*(v33 + 8))(v34, v37);
      if ((*v41)(v25, 1, v53) != 1)
      {
        v38 = v39;
        _s8PaperKit5ShapeVWObTm_3(v25, v39, type metadata accessor for Shape);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();

        outlined destroy of Shape(v38, type metadata accessor for Shape);
        return (*v51)(v55, v56);
      }

      (*v51)(v55, v56);
    }

    v21 &= v21 - 1;
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ShapeVSgMd);
  }

  v27 = v55;
  v26 = v56;
  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
    }

    v21 = *(v18 + 8 * v28);
    ++v24;
    if (v21)
    {
      v25 = v10;
      v24 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in CanvasFormattingProxy.opacity.setter()
{
  v0 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v1 = v0;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.opacity.setter(uint64_t a1, uint64_t a2, double a3)
{
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v8 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v44 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v33 - v15;
  v16 = *(a2 + 8);
  v17 = v7;
  v18 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;
  v41 = v11 + 32;
  v42 = v11 + 16;
  v34 = (v8 + 8);
  v35 = (v8 + 32);
  v39 = (v11 + 8);
  v40 = (v8 + 48);
  v45 = v16;

  v24 = 0;
  v36 = v13;
  for (i = v17; v21; v17 = i)
  {
LABEL_10:
    while (1)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v43;
      (*(v11 + 16))(v43, *(v45 + 48) + *(v11 + 72) * (v26 | (v24 << 6)), v10);
      (*(v11 + 32))(v13, v27, v10);
      WeakTagged_10.tagged6.getter();
      v28 = v46;
      if ((*v40)(v17, 1, v46) != 1)
      {
        break;
      }

      (*v39)(v13, v10);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    (*v35)(v44, v17, v28);
    v29 = WeakRef.subscript.modify();
    v31 = v30;
    v32 = type metadata accessor for Shape(0);
    if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
    {
      v47 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.setter();
    }

    v29(v48, 0);
    v13 = v36;
    (*v34)(v44, v46);
    result = (*v39)(v13, v10);
  }

LABEL_6:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.hasMultipleOpacities.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v35 = a1;
  v38 = v2;
  v39 = v3;
  v4 = type metadata accessor for Capsule();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Shape(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v20 = *(v1 + 8);
  specialized Collection.first.getter(v20, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    v23 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd;
    v24 = v9;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, v23);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_6;
  }

  v34 = v20;
  WeakTagged_10.tagged6.getter();
  (*(v22 + 8))(v9, v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    v23 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v24 = v12;
    goto LABEL_5;
  }

  Canvas.updatablePaper2.getter(v6);
  v29 = v38;
  WeakRef.subscript.getter();
  (*(v36 + 8))(v6, v37);
  (*(v26 + 8))(v12, v25);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v30 = _s8PaperKit5ShapeVWObTm_3(v15, v19, type metadata accessor for Shape);
    MEMORY[0x1EEE9AC00](v30);
    v31 = v39;
    *(&v34 - 6) = v29;
    *(&v34 - 5) = v31;
    v32 = v34;
    v33 = v40;
    *(&v34 - 4) = *(v35 + 32);
    *(&v34 - 3) = v33;
    *(&v34 - 2) = v19;
    v27 = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in CanvasFormattingProxy.hasMultipleOpacities.getter, (&v34 - 8), v32);
    outlined destroy of Shape(v19, type metadata accessor for Shape);
    return v27 & 1;
  }

LABEL_6:
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit5ShapeVSgMd);
  v27 = 0;
  return v27 & 1;
}

BOOL closure #1 in CanvasFormattingProxy.hasMultipleOpacities.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v22[0] = a3;
  v22[1] = a2;
  v25 = a4;
  v5 = type metadata accessor for Capsule();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for Shape(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ShapeVSgMd);
    return 0;
  }

  Canvas.updatablePaper2.getter(v7);
  WeakRef.subscript.getter();
  (*(v23 + 8))(v7, v24);
  (*(v19 + 8))(v10, v18);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v13, v17, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  v21 = v27;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v17, type metadata accessor for Shape);
  return v21 == v27;
}

unint64_t CanvasFormattingProxy.hasLink.getter()
{
  result = specialized CanvasMembers.views(in:)(*v0, *(v0 + 8));
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  v5 = result;
  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_9;
  }

  v6 = __CocoaSet.count.getter();
  result = v5;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
LABEL_6:
    v3 = v2;

    type metadata accessor for LinkCanvasElementView();
    v4 = swift_dynamicCastClass() != 0;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.init(canvas:members:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t type metadata instantiation function for CanvasFormattingProxy()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CanvasFormattingProxy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasFormattingProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for CanvasMembersFormattingState.fontName.setter in conformance CanvasFormattingProxy<A>()
{
  specialized CanvasFormattingProxy.fontName.setter();
}

void partial apply for closure #1 in CanvasFormattingProxy.strikethrough.setter()
{
  partial apply for closure #1 in CanvasFormattingProxy.strikethrough.setter();
}

{
  closure #1 in CanvasFormattingProxy.bold.setter();
}

void partial apply for closure #1 in CanvasFormattingProxy.textAlignment.setter()
{
  partial apply for closure #1 in CanvasFormattingProxy.textAlignment.setter();
}

{
  closure #1 in CanvasFormattingProxy.fontSize.setter();
}

uint64_t _s8PaperKit5ColorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8PaperKit5ShapeVWObTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Shape(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*AnyCanvas._delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

uint64_t AnyCanvas.delegate.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t AnyCanvas.delegate.setter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

void (*AnyCanvas.delegate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._delegate.modify(v4);
  return AnyCanvas.delegate.modify;
}

void AnyCanvas.overlays.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v1)
  {
    v2 = &protocol witness table for ResizeView;
    v23[0] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    v23[1] = &protocol witness table for ResizeView;
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v3)
    {
      v4 = &protocol witness table for ResizeView;
    }

    else
    {
      v4 = 0;
    }

    v23[2] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    v23[3] = v4;
    v5 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);
    v23[4] = v5;
    v23[5] = &protocol witness table for CanvasCollaborationStateView;
    v6 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
    if (!v6)
    {
      v2 = 0;
    }

    v23[6] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
    v23[7] = v2;
    v7 = v6;
    v8 = v1;
    v9 = v3;
    v10 = v5;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
    if (v11 <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 + 1;
    v15 = &v23[2 * v11];
    while (1)
    {
      if (v11 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15CanvasUIOverlay_pSgMd);
        swift_arrayDestroy();
        return;
      }

      if (v14 == ++v11)
      {
        break;
      }

      v16 = v15 + 2;
      v17 = *v15;
      v15 += 2;
      if (v17)
      {
        v18 = *(v16 - 1);
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
        }

        v21 = v12[2];
        v20 = v12[3];
        if (v21 >= v20 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v12);
        }

        v12[2] = v21 + 1;
        v22 = &v12[2 * v21];
        v22[4] = v19;
        v22[5] = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

__n128 AnyCanvas.savedCanvasState.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 80);
  v14 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 64);
  v15 = v3;
  v16 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 96);
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 16);
  v10 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState);
  v11 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 48);
  v12 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 32);
  v13 = v5;
  outlined init with copy of Date?(&v10, v9, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

void AnyCanvas.overlayViewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AnyCanvas.overlayViewControllerForPresentingUI.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_overlayViewControllerForPresentingUI;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AnyCanvas.overlayViewControllerForPresentingUI.modify;
}

void AnyCanvas.overlayViewControllerForPresentingUI.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t AnyCanvas.participantDetailsDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  [*(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  return swift_unknownObjectRelease();
}

void (*AnyCanvas.participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return AnyCanvas.participantDetailsDataSource.modify;
}

void AnyCanvas.participantDetailsDataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    [*(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  }

  free(v3);
}

id (*AnyCanvas._showParticipantCursors.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AnyCanvas._showParticipantCursors.modify;
}

id AnyCanvas._showParticipantCursors.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);

    return [v5 setNeedsLayout];
  }

  return result;
}

id AnyCanvas.showParticipantCursors.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    return [*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*AnyCanvas.showParticipantCursors.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._showParticipantCursors.modify(v4);
  return AnyCanvas.showParticipantCursors.modify;
}

uint64_t AnyCanvas.wantsDataDetection.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*AnyCanvas.wantsDataDetection.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas.wantsDataDetection.modify;
}

uint64_t AnyCanvas.isSharedViaICloud.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud;
  swift_beginAccess();
  return *(v0 + v1);
}

void AnyCanvas.wantsDataDetection.setter(char a1, uint64_t *a2, SEL *a3)
{
  v5 = v3;
  v7 = *a2;
  v8 = swift_beginAccess();
  *(v5 + v7) = a1;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))(v8);
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);

  if (v13)
  {
    [v13 *a3];
  }
}

void (*AnyCanvas.isSharedViaICloud.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas.isSharedViaICloud.modify;
}

void AnyCanvas.wantsDataDetection.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = *a1;
  v6 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v5 + 24)) + 0x440))(v6);
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(ObjectType, v9);

    if (v11)
    {
      [v11 *a3];
    }
  }

  free(v5);
}

uint64_t AnyCanvas.textualContextProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AnyCanvas.textualContextProvider.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

void (*AnyCanvas._liveStreamDrawings.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas._liveStreamDrawings.modify;
}

void AnyCanvas._liveStreamDrawings.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3[3]) + 0x468))(v4);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 canvasView];

      if (v7)
      {
        v9 = v3[3];
        v8 = v3[4];
        swift_getKeyPath();
        *v3 = v9;
        _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v7 setGenerateLiveDrawing_];
      }
    }
  }

  free(v3);
}

uint64_t AnyCanvas.showParticipantCursors.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void AnyCanvas.liveStreamDrawings.setter(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
  v5 = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
    v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))(v5);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 canvasView];

      if (v9)
      {
        swift_getKeyPath();
        _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v9 setGenerateLiveDrawing_];
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*AnyCanvas.liveStreamDrawings.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._liveStreamDrawings.modify(v4);
  return AnyCanvas.liveStreamDrawings.modify;
}

Swift::Bool __swiftcall AnyCanvas.isLiveEditing()()
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
  v1 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v35 = &v34 - v4;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x440);
  v7 = (v6)(v3);
  v8 = (*((*v5 & *v7) + 0x1B8))();

  if (v8)
  {
    return 1;
  }

  else
  {
    v10 = v6();
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 40))(ObjectType, v12);

    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v34 = v14;

    v21 = 0;
    v22 = v36;
    while (v18)
    {
      v23 = v21;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v34;
      v27 = *(v34 + 48);
      v28 = type metadata accessor for CRKeyPath();
      v29 = *(v28 - 8);
      v38 = v28;
      v39 = v29;
      v30 = v35;
      (*(v29 + 16))(v35, v27 + *(v29 + 72) * v25, v28);
      v31 = *(*(v26 + 56) + 8 * v25);
      v32 = v37;
      *(v30 + *(v37 + 48)) = v31;
      outlined init with copy of Date?(v30, v22, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
      v33 = *(v22 + *(v32 + 48));
      LOBYTE(v31) = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x1B8))(v31);

      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
      result = (*(v39 + 8))(v22, v38);
      if (v31)
      {
        v9 = 1;
LABEL_15:

        return v9;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v18 = *(v15 + 8 * v23);
      ++v21;
      if (v18)
      {
        v21 = v23;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AnyCanvas.isResizingChanged()()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = 0.0;
  if ((*(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (!v4 || (*(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) & 1) == 0)
    {
      v3 = 1.0;
    }
  }

  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView;
  [*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) alpha];
  if (v3 != v6)
  {
    v7 = objc_opt_self();
    v8 = *(v0 + v5);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v3;
    v18[4] = partial apply for closure #1 in AnyCanvas.isResizingChanged();
    v18[5] = v9;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v18[3] = &block_descriptor_212_0;
    v10 = _Block_copy(v18);
    v11 = v8;

    [v7 animateWithDuration:v10 animations:0.2];
    _Block_release(v10);
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 selectionInteraction];

    v15 = *(v0 + v1);
    if (v15)
    {
      if (*(v15 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing))
      {
        v16 = 0;
      }

      else
      {
        v17 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
        if (v17)
        {
          v16 = *(v17 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) ^ 1;
        }

        else
        {
          v16 = 1;
        }
      }

      [v14 setEnabled_];

      return;
    }

LABEL_18:
    __break(1u);
  }
}

void AnyCanvas.selection.setter(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v6 = v4;
  v7 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v8 = *&v4[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_43;
  }

  v5 = a2;
  v13 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v12 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v49 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v50 = v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  v51 = v12;

  v14 = v8;
  CanvasElementResizeView.selection.setter(a1, v5, a3, a4 & 1);

  v15 = *&v6[v7];
  if (!v15)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = v7;
  v17 = v6;
  v18 = v15 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);

  if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v13, v19))
  {
    v23 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v51, v20);

    if (v23)
    {
      if (v50)
      {
        if (v22)
        {
LABEL_28:

          return;
        }
      }

      else
      {
        if (v49 == v21)
        {
          v41 = v22;
        }

        else
        {
          v41 = 1;
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, miniMenuLogger);
  v5 = v6;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    v28 = *&v6[v16];
    if (!v28)
    {
LABEL_45:

      __break(1u);
      goto LABEL_46;
    }

    *(v27 + 4) = *(*(v28 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v29 = v27;

    _os_log_impl(&dword_1D38C4000, v25, v26, "Changing selection to have %ld elements", v29, 0xCu);
    MEMORY[0x1DA6D0660](v29, -1, -1);
  }

  else
  {

    v25 = v5;
  }

  MEMORY[0x1EEE9AC00](v30);
  AnyCanvas.updateCanvasState(_:)();
  if (([v5 isFirstResponder]& 1) != 0)
  {

    goto LABEL_33;
  }

  v32 = *&v6[v16];
  if (!v32)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v33 = v32;

  v34 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35)
  {
    v36 = [v5 window];
    if (v36)
    {
      v37 = v36;
      v38 = [objc_opt_self() activeToolPickerForWindow_];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 _visibilityUpdatesEnabled];
        [v39 _setVisibilityUpdatesEnabled_];
        [v5 becomeFirstResponder];
        [v39 _setVisibilityUpdatesEnabled_];

        goto LABEL_33;
      }
    }

    v31 = [v5 becomeFirstResponder];
  }

LABEL_33:
  v42 = *(&v5->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v42)
  {
    v43 = v42;
    HandwritingReflowView.updateForNewSelection()();
  }

  v44 = MEMORY[0x1E69E7D40];
  v45 = (*((*MEMORY[0x1E69E7D40] & v5->isa) + 0x520))(v31);
  v46 = *&v17[v16];
  if (!v46)
  {
    goto LABEL_44;
  }

  v47 = v46 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (!*(*v47 + 16) && !*(*(v47 + 8) + 16) && (*(v47 + 24) & 1) == 0)
  {
    v48 = (*((*v44 & v5->isa) + 0x468))(v45);
    [v48 _clearSelectionIfNecessary];
  }
}

void AnyCanvas.availableZAxisMovement.getter()
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v99 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v81[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v94 = &v81[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v81[-v5];
  v97 = type metadata accessor for CRKeyPath();
  v86 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v81[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v81[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v81[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81[-v17];
  v19 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v19)
  {
    goto LABEL_91;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x440))(v16);
  v23 = v22;
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 32);

  v25(ObjectType, v23);

  v26 = v18;
  if (!*(v20 + 16) || *(v20 + 16) >= CROrderedSet.count.getter())
  {

    (*(v15 + 8))(v18, v14);
    return;
  }

  CROrderedSet.subscript.getter();
  v27 = v91;
  MEMORY[0x1DA6CB7A0](v91);
  v28 = v90[1];
  v28(v6, v27);
  if (__OFSUB__(CROrderedSet.count.getter(), 1))
  {
    goto LABEL_82;
  }

  v84 = v15;
  v85 = v14;
  v83 = v26;
  CROrderedSet.subscript.getter();
  MEMORY[0x1DA6CB7A0](v27);
  v28(v6, v27);
  v29 = 0;
  v30 = 1 << *(v20 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v20 + 56);
  v33 = (v30 + 63) >> 6;
  v34 = v98;
  v87 = v99 + 32;
  v88 = v99 + 16;
  v90 = v86 + 1;
  v91 = v20;
  v86 = (v99 + 8);
  v35 = 3;
  v36 = v89;
  while (v32)
  {
LABEL_17:
    v38 = v99;
    v39 = v94;
    (*(v99 + 16))(v94, *(v91 + 48) + *(v99 + 72) * (__clz(__rbit64(v32)) | (v29 << 6)), v36);
    (*(v38 + 32))(v34, v39, v36);
    if ((v35 & 2) == 0)
    {
      goto LABEL_46;
    }

    MEMORY[0x1DA6CB5C0](v36);
    v40 = CRKeyPath.rawValue.getter();
    v42 = v41;
    v43 = CRKeyPath.rawValue.getter();
    v45 = v42 >> 62;
    v46 = v44 >> 62;
    if (v42 >> 62 == 3)
    {
      v47 = 0;
      if (!v40 && v42 == 0xC000000000000000 && v44 >> 62 == 3)
      {
        v47 = 0;
        if (!v43 && v44 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v48 = 0;
          v49 = 0xC000000000000000;
LABEL_60:
          outlined consume of Data._Representation(v48, v49);
          (*v90)(v93, v97);
          v34 = v98;
LABEL_61:
          v35 &= ~2uLL;
          if ((v35 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_47;
        }
      }
    }

    else if (v45)
    {
      if (v45 == 1)
      {
        LODWORD(v47) = HIDWORD(v40) - v40;
        if (__OFSUB__(HIDWORD(v40), v40))
        {
          goto LABEL_88;
        }

        v47 = v47;
      }

      else
      {
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        v52 = __OFSUB__(v50, v51);
        v47 = v50 - v51;
        if (v52)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v47 = BYTE6(v42);
    }

    if (v46 > 1)
    {
      if (v46 != 2)
      {
        if (!v47)
        {
LABEL_59:
          outlined consume of Data._Representation(v43, v44);
          v48 = v40;
          v49 = v42;
          goto LABEL_60;
        }

LABEL_45:
        outlined consume of Data._Representation(v43, v44);
        outlined consume of Data._Representation(v40, v42);
        (*v90)(v93, v97);
        v34 = v98;
        goto LABEL_46;
      }

      v54 = *(v43 + 16);
      v53 = *(v43 + 24);
      v52 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v52)
      {
        goto LABEL_84;
      }

      if (v47 != v55)
      {
        goto LABEL_45;
      }
    }

    else if (v46)
    {
      if (__OFSUB__(HIDWORD(v43), v43))
      {
        goto LABEL_83;
      }

      if (v47 != HIDWORD(v43) - v43)
      {
        goto LABEL_45;
      }
    }

    else if (v47 != BYTE6(v44))
    {
      goto LABEL_45;
    }

    if (v47 < 1)
    {
      goto LABEL_59;
    }

    v56 = v43;
    v57 = v44;
    outlined copy of Data._Representation(v43, v44);
    v82 = specialized Data.withUnsafeBytes<A>(_:)(v40, v42, v56, v57);
    v58 = v57;
    v36 = v89;
    outlined consume of Data._Representation(v56, v58);
    outlined consume of Data._Representation(v40, v42);
    (*v90)(v93, v97);
    v34 = v98;
    if (v82)
    {
      goto LABEL_61;
    }

LABEL_46:
    if ((v35 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_47:
    MEMORY[0x1DA6CB5C0](v36);
    v59 = CRKeyPath.rawValue.getter();
    v61 = v60;
    v62 = CRKeyPath.rawValue.getter();
    v64 = v61 >> 62;
    v65 = v63 >> 62;
    if (v61 >> 62 == 3)
    {
      v66 = 0;
      if (!v59 && v61 == 0xC000000000000000 && v63 >> 62 == 3)
      {
        v66 = 0;
        if (!v62 && v63 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v67 = 0;
          v68 = 0xC000000000000000;
LABEL_77:
          outlined consume of Data._Representation(v67, v68);
          (*v90)(v92, v97);
          v34 = v98;
LABEL_78:
          v35 &= ~1uLL;
          goto LABEL_11;
        }
      }

LABEL_64:
      if (v65 <= 1)
      {
        goto LABEL_65;
      }

      goto LABEL_70;
    }

    if (v64 == 2)
    {
      v70 = *(v59 + 16);
      v69 = *(v59 + 24);
      v52 = __OFSUB__(v69, v70);
      v66 = v69 - v70;
      if (v52)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }

    if (v64 == 1)
    {
      LODWORD(v66) = HIDWORD(v59) - v59;
      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_89;
      }

      v66 = v66;
      if (v65 <= 1)
      {
LABEL_65:
        if (v65)
        {
          LODWORD(v71) = HIDWORD(v62) - v62;
          if (__OFSUB__(HIDWORD(v62), v62))
          {
            goto LABEL_86;
          }

          v71 = v71;
        }

        else
        {
          v71 = BYTE6(v63);
        }

        goto LABEL_72;
      }
    }

    else
    {
      v66 = BYTE6(v61);
      if (v65 <= 1)
      {
        goto LABEL_65;
      }
    }

LABEL_70:
    if (v65 != 2)
    {
      if (!v66)
      {
        goto LABEL_76;
      }

LABEL_10:
      outlined consume of Data._Representation(v62, v63);
      outlined consume of Data._Representation(v59, v61);
      (*v90)(v92, v97);
      v34 = v98;
      goto LABEL_11;
    }

    v73 = *(v62 + 16);
    v72 = *(v62 + 24);
    v52 = __OFSUB__(v72, v73);
    v71 = v72 - v73;
    if (v52)
    {
      goto LABEL_85;
    }

LABEL_72:
    if (v66 != v71)
    {
      goto LABEL_10;
    }

    if (v66 < 1)
    {
LABEL_76:
      outlined consume of Data._Representation(v62, v63);
      v67 = v59;
      v68 = v61;
      goto LABEL_77;
    }

    v74 = v62;
    v75 = v63;
    outlined copy of Data._Representation(v62, v63);
    v82 = specialized Data.withUnsafeBytes<A>(_:)(v59, v61, v74, v75);
    v76 = v75;
    v36 = v89;
    outlined consume of Data._Representation(v74, v76);
    outlined consume of Data._Representation(v59, v61);
    (*v90)(v92, v97);
    v34 = v98;
    if (v82)
    {
      goto LABEL_78;
    }

LABEL_11:
    v32 &= v32 - 1;
    (*v86)(v34, v36);
    if (!v35)
    {

      v79 = *v90;
      v80 = v97;
      (*v90)(v95, v97);
      v79(v96, v80);
      (*(v84 + 8))(v83, v85);
      return;
    }
  }

  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v77 = *v90;
      v78 = v97;
      (*v90)(v95, v97);
      v77(v96, v78);
      (*(v84 + 8))(v83, v85);

      return;
    }

    v32 = *(v20 + 56 + 8 * v37);
    ++v29;
    if (v32)
    {
      v29 = v37;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
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
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t AnyCanvas.updateCanvasState(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    v5 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v5);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd);
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();

    return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x518))(v6);
  }

  return result;
}

uint64_t AnyCanvas.canvasUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__canvasUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void AnyCanvas.selectedCanvasElementIds.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v1);
  }

  else
  {
    __break(1u);
  }
}

void AnyCanvas.selectedCanvasElementIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v129 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v120 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v106 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v122 = *(v128 - 8);
  v11 = MEMORY[0x1EEE9AC00](v128);
  v118 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v106 - v13;
  v121 = type metadata accessor for CRKeyPath();
  v14 = *(v121 - 8);
  v15 = MEMORY[0x1EEE9AC00](v121);
  v117 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v106 - v17);
  v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v20 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v21 = v20 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v23 = *v21;
  v22 = *(v21 + 8);
  v107 = *(v21 + 16);
  v108 = *(v21 + 24);
  v24 = *(a1 + 16);
  v111 = v23;
  v110 = v22;
  v112 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (v24)
  {
    v126 = v6;
    v25 = (*MEMORY[0x1E69E7D40] & *v2);
    v134 = v2;
    v25 += 136;
    v26 = *v25;
    v28 = *(v14 + 16);
    v27 = v14 + 16;
    v132 = v28;
    v133 = v25;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v109 = a1;
    v30 = a1 + v29;
    v125 = (v7 + 48);
    v115 = (v7 + 32);
    v114 = (v7 + 16);
    v131 = *(v27 + 56);
    v113 = (v7 + 8);
    v31 = (v27 - 8);
    v124 = (v122 + 32);

    v130 = MEMORY[0x1E69E7CC0];
    v32 = v121;
    v116 = v27;
    v123 = v26;
    do
    {
      v33 = v132(v18, v30, v32);
      v34 = v26(v33);
      v36 = v35;
      ObjectType = swift_getObjectType();
      v38 = (*(v36 + 40))(ObjectType, v36);

      if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);

        v43 = v129;
        (*((*MEMORY[0x1E69E7D40] & *v41) + 0xF0))(v42);
        v44 = v126;
        if ((*v125)(v43, 1, v126) == 1)
        {

          (*v31)(v18, v32);
          outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          v26 = v123;
        }

        else
        {
          v45 = v119;
          (*v115)(v119, v43, v44);
          v46 = v120;
          (*v114)(v120, v45, v44);
          WeakTagged_10.tag.getter();
          v135 = v137;
          v136 = v138;
          MEMORY[0x1DA6CB7A0](v44);
          lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
          v47 = v118;
          WeakTagged_10.init(_:id:)();

          v48 = *v113;
          (*v113)(v46, v44);
          v49 = v45;
          v32 = v121;
          v48(v49, v44);
          (*v31)(v18, v32);
          v50 = *v124;
          (*v124)(v127, v47, v128);
          v51 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
          }

          v26 = v123;
          v53 = v51[2];
          v52 = v51[3];
          v130 = v51;
          if (v53 >= v52 >> 1)
          {
            v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v130);
          }

          v54 = v130;
          v130[2] = v53 + 1;
          v50(&v54[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v53], v127, v128);
        }
      }

      else
      {

        (*v31)(v18, v32);
      }

      v30 += v131;
      --v24;
    }

    while (v24);

    v2 = v134;
    v19 = v112;
    v55 = v130;
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v55);

  v57 = *(v2 + v19);
  if (!v57)
  {
    goto LABEL_68;
  }

  v58 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v59 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v18 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v60 = v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  swift_bridgeObjectRetain_n();
  v61 = v57;
  CanvasElementResizeView.selection.setter(v56, v59, v18, v60);

  v62 = *(v2 + v19);
  if (!v62)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v63 = v62 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = *(v63 + 16);
  v67 = *(v63 + 24);

  if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v58, v64))
  {
    v68 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v59, v65);

    v69 = MEMORY[0x1E69E7D40];
    if (v68)
    {
      if (v60)
      {
        if (v67)
        {
LABEL_44:

          v78 = v111;
          v74 = v112;
          goto LABEL_54;
        }
      }

      else
      {
        if (v18 == v66)
        {
          v90 = v67;
        }

        else
        {
          v90 = 1;
        }

        if ((v90 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }
  }

  else
  {

    v69 = MEMORY[0x1E69E7D40];
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, miniMenuLogger);
  v18 = v2;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v112;
  if (v73)
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    v76 = *(v2 + v74);
    if (!v76)
    {
LABEL_72:

      __break(1u);
      goto LABEL_73;
    }

    *(v75 + 4) = *(*(v76 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v77 = v75;

    _os_log_impl(&dword_1D38C4000, v71, v72, "Changing selection to have %ld elements", v77, 0xCu);
    MEMORY[0x1DA6D0660](v77, -1, -1);
  }

  else
  {

    v71 = v18;
  }

  v78 = v111;

  MEMORY[0x1EEE9AC00](v79);
  *(&v106 - 2) = v18;
  AnyCanvas.updateCanvasState(_:)();
  if (![v18 isFirstResponder])
  {
    v81 = *(v2 + v74);
    if (!v81)
    {
LABEL_73:
      __break(1u);
      return;
    }

    v82 = v81;

    v83 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v83 >> 62)
    {
      v84 = __CocoaSet.count.getter();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v84)
    {
      goto LABEL_47;
    }

    v85 = [v18 window];
    if (v85)
    {
      v86 = v85;
      v87 = [objc_opt_self() activeToolPickerForWindow_];
      if (v87)
      {
        v88 = v87;
        v89 = [v87 _visibilityUpdatesEnabled];
        [v88 _setVisibilityUpdatesEnabled_];
        [v18 becomeFirstResponder];
        [v88 _setVisibilityUpdatesEnabled_];

        goto LABEL_47;
      }
    }

    v80 = [v18 becomeFirstResponder];
    goto LABEL_47;
  }

LABEL_47:
  v91 = *(&v18->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v91)
  {
    v92 = v91;
    HandwritingReflowView.updateForNewSelection()();
  }

  v93 = (*((*v69 & v18->isa) + 0x520))(v80);
  v94 = *(v2 + v74);
  if (!v94)
  {
    goto LABEL_71;
  }

  v95 = v94 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (!*(*v95 + 16) && !*(*(v95 + 8) + 16) && (*(v95 + 24) & 1) == 0)
  {
    v96 = (*((*v69 & v18->isa) + 0x468))(v93);
    [v96 _clearSelectionIfNecessary];
  }

LABEL_54:
  v97 = *(v2 + v74);
  if (!v97)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v98 = v97 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v99 = *v98;
  v100 = *(v98 + 8);
  v101 = *(v98 + 16);
  v102 = *(v98 + 24);

  if ((_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v99, v78) & 1) == 0)
  {

    goto LABEL_61;
  }

  v103 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v100, v110);

  if ((v103 & 1) == 0)
  {
LABEL_61:
    (*((*v69 & *v2) + 0x520))(v104);
    return;
  }

  if (v102)
  {
    if (v108)
    {
      return;
    }

    goto LABEL_61;
  }

  v105 = v108;
  if (v101 != v107)
  {
    v105 = 1;
  }

  if (v105)
  {
    goto LABEL_61;
  }
}

void (*AnyCanvas.selectedCanvasElementIds.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  *(result + 1) = v1;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {
    v2 = result;

    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v3);

    *v2 = v4;
    return AnyCanvas.selectedCanvasElementIds.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AnyCanvas.selectedCanvasElementIds.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    AnyCanvas.selectedCanvasElementIds.setter(v2);
  }

  else
  {
    AnyCanvas.selectedCanvasElementIds.setter(*a1);
  }
}

void AnyCanvas.hasSelectedCanvasElements.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v1);
  }

  else
  {
    __break(1u);
  }
}

void (*AnyCanvas._isInCanvasSelectionMode.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return AnyCanvas._isInCanvasSelectionMode.modify;
}

void AnyCanvas._isInCanvasSelectionMode.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  AnyCanvas._isInCanvasSelectionMode.didset(v4);
}

uint64_t AnyCanvas.isCurrentlyLiveEditing.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void AnyCanvas.isInCanvasSelectionMode.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = v2;

    AnyCanvas._isInCanvasSelectionMode.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*AnyCanvas.isInCanvasSelectionMode.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._isInCanvasSelectionMode.modify(v4);
  return AnyCanvas.isInCanvasSelectionMode.modify;
}

void AnyCanvas.startCroppingRootElement()()
{
  if (!*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView))
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x450))();
    if (v2)
    {
      v3 = v2;
      AnyCanvas.canvasWillEnterCrop()();
      v4 = v3;
      [v4 safeAreaInsets];
      v6 = v5;
      [v4 safeAreaInsets];
      if (v6 > v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      v64 = v8 + v8;
      [v4 safeAreaInsets];
      v10 = v9;
      [v4 safeAreaInsets];
      if (v10 > v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      [v4 zoomScale];
      v14 = v13;
      [v4 frame];
      Width = CGRectGetWidth(v71);
      v16 = [v0 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 == 1)
      {
        v18 = 16.0;
      }

      else
      {
        v18 = 20.0;
      }

      v19 = *((*v1 & *v0) + 0x440);
      v20 = v19();
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v72.origin.x = v22;
      v72.origin.y = v24;
      v72.size.width = v26;
      v72.size.height = v28;
      v29 = CGRectGetWidth(v72);
      [v4 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v73.origin.x = v31;
      v73.origin.y = v33;
      v73.size.width = v35;
      v73.size.height = v37;
      Height = CGRectGetHeight(v73);
      v39 = [v0 traitCollection];
      v40 = [v39 horizontalSizeClass];

      v41 = 16.0;
      if (v40 != 1)
      {
        v41 = 20.0;
      }

      v42 = (Width - v64 - v18) / v29;
      v43 = Height - v63 - v41;
      v44 = v19();
      [v44 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v74.origin.x = v46;
      v74.origin.y = v48;
      v74.size.width = v50;
      v74.size.height = v52;
      v53 = v43 / CGRectGetHeight(v74);
      if (v53 >= v42)
      {
        v53 = v42;
      }

      v54 = fmax(v53, 0.0001);
      if (v54 < v14)
      {
        v14 = v54;
      }

      v55 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v4;
      *(v56 + 24) = v14;
      v69 = partial apply for closure #1 in AnyCanvas.startCroppingRootElement();
      v70 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v68 = &block_descriptor_199;
      v57 = _Block_copy(&aBlock);
      v58 = v4;

      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v0;
      v69 = partial apply for closure #2 in AnyCanvas.startCroppingRootElement();
      v70 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v68 = &block_descriptor_205_0;
      v60 = _Block_copy(&aBlock);
      v61 = v58;
      v62 = v0;

      [v55 animateWithDuration:v57 animations:v60 completion:0.25];
      _Block_release(v60);
      _Block_release(v57);
    }
  }
}

BOOL AnyCanvas.isHDRActive.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride;
  v2 = 1.0;
  if (*&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] >= 1.0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *&v0[v1];
  }

  else
  {
    v3 = [v0 window];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 screen];

      [v5 potentialEDRHeadroom];
      v2 = v6;
    }
  }

  if (one-time initialization token for headroomLimitForHDR != -1)
  {
    swift_once();
  }

  return *&static AnyCanvas.headroomLimitForHDR < v2;
}

uint64_t AnyCanvas.isCurrentlyLiveEditing.setter(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AnyCanvas.potentialHeadroomOverride.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
}

void AnyCanvas.potentialHeadroomOverride.setter(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
  if (v3 == a1)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = a1;

    AnyCanvas._potentialHeadroomOverride.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AnyCanvas.addTextBox(_:frame:setSelected:)(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v136 = a2;
  v105 = a1;
  v10 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v135 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v90 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v13 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v91 = &v90 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v90 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v90 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v90 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v90 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v90 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v90 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v90 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v115 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v139);
  v97 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v90 - v38;
  v141 = &v90 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v90 - v41;
  v143 = &v90 - v41;
  v138 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v138);
  v94 = &v90 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v93 = &v90 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v142 = &v90 - v47;
  v48 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v90 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v116 = &v90 - v52;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v90 - v53;
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for Color(0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v55 + 56;
  v56(v42, 1, 1, v54);
  v56(v39, 1, 1, v54);
  v95 = v57;
  v96 = v56;
  v103 = v13;
  v58 = *(v13 + 16);
  v108 = v32;
  v59 = v140;
  v58(v32, v105, v140);
  (*(v13 + 56))(v32, 0, 1, v59);
  type metadata accessor for CGRect(0);
  v102 = v60;
  v100 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v144 = 0u;
  v145 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  v92 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v105 = v48[6];
  v56(v36, 1, 1, v54);
  v61 = v97;
  outlined init with copy of Date?(v36, v97, &_s8PaperKit5ColorVSgMd);
  v99 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s8PaperKit5ColorVSgMd);
  v101 = v48[7];
  v96(v36, 1, 1, v54);
  v98 = v36;
  outlined init with copy of Date?(v36, v61, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s8PaperKit5ColorVSgMd);
  v97 = v48[8];
  *&v144 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v96 = v48[9];
  v62 = v93;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v62, v94);
  v95 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v62);
  *&v144 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  BYTE8(v144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  BYTE8(v144) = 0;
  CRRegister.init(wrappedValue:)();
  v63 = v48[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v94 = v63;
  CRAttributedString.init(_:)();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v65 = v104;
  (*(*(v64 - 8) + 56))(v104, 1, 1, v64);
  outlined init with copy of Date?(v65, v106, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v66 = v48[15];
  *&v144 = 0;
  v67 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v107 = v66;
  v106 = v67;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v68 = type metadata accessor for StrokeStyle(0);
  v69 = v109;
  (*(*(v68 - 8) + 56))(v109, 1, 1, v68);
  outlined init with copy of Date?(v69, v110, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit11StrokeStyleOSgMd);
  v70 = type metadata accessor for Shadow();
  v71 = v112;
  (*(*(v70 - 8) + 56))(v112, 1, 1, v70);
  outlined init with copy of Date?(v71, v113, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit6ShadowVSgMd);
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v114 = v48;
  UnknownProperties.init()();
  *&v144 = a3;
  *(&v144 + 1) = a4;
  *&v145 = a5;
  *(&v145 + 1) = a6;
  v72 = v117;
  CRRegister.init(_:)();
  (*(v120 + 40))(v50, v72, v122);
  outlined init with copy of ShapeType(v142, v62);
  v73 = v123;
  CRRegister.init(_:)();
  (*(v124 + 40))(v96 + v50, v73, v125);
  *&v144 = 0;
  v74 = v126;
  CRRegister.init(_:)();
  (*(v127 + 40))(&v50[v97], v74, v128);
  v75 = v98;
  outlined init with copy of Date?(v143, v98, &_s8PaperKit5ColorVSgMd);
  v76 = v129;
  CRRegister.init(_:)();
  v77 = *(v130 + 40);
  v78 = v131;
  v77(&v50[v101], v76, v131);
  outlined init with copy of Date?(v141, v75, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v79 = v78;
  v80 = v108;
  v77(&v50[v105], v76, v79);
  v81 = v115;
  v82 = v140;
  outlined init with copy of Date?(v80, v115, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v83 = v103;
  if ((*(v103 + 48))(v81, 1, v82) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v84 = v91;
    (*(v83 + 32))(v91, v81, v82);
    (*(v83 + 40))(&v50[v94], v84, v82);
  }

  *&v144 = 0;
  v85 = v132;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit5ColorVSgMd);
  outlined destroy of ShapeType(v142);
  (*(v133 + 40))(&v50[v107], v85, v134);
  outlined init with take of Shape(v50, v116);
  static CRKeyPath.unique.getter();
  v86 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v87 = v118;
  v88 = v114;
  Capsule.init(_:id:)();
  (*((*MEMORY[0x1E69E7D40] & *v137) + 0x700))(v87, v136 & 1, 0, 0, v88, v86, &protocol witness table for Shape);
  return (*(v119 + 8))(v87, v121);
}

uint64_t AnyCanvas.acceptedDropLayouts.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts);
  }

  else
  {
    v2 = closure #1 in AnyCanvas.acceptedDropLayouts.getter();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t AnyCanvas.merge<A>(_:from:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a2;
  v8 = v12;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x7D8))(a1, &v12);
  if (!v8)
  {
    (*((*v9 & *v4) + 0x7D0))(a1, a3, a4);
  }

  v11 = v8;
  return (*((*v9 & *v4) + 0x7B0))(&v11);
}

Swift::Void __swiftcall AnyCanvas.forwardChanges(from:)(PaperKit::AnyCanvas::MergeSource from)
{
  v2 = *from;
  if (v2 <= 1)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7E0))();
    (*((*v4 & *v1) + 0x7C8))(v5);
  }

  else if (v2 == 2)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7E0))();
    (*((*v6 & *v1) + 0x7E8))(v7);
  }

  else if (v2 == 3)
  {
    v3 = MEMORY[0x1EEE9AC00](from);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7C0))(partial apply for closure #1 in AnyCanvas.forwardChanges(from:), v3);
  }

  else
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7B8))();
    v10 = (*((*v8 & *v1) + 0x7E8))(v9);
    (*((*v8 & *v1) + 0x7F0))(v10);
  }

  v11 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
    if (v12)
    {
      *(v12 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall AnyCanvas.hit(byTouchLocation:canvasBounds:)(CGPoint byTouchLocation, __C::CGRect canvasBounds)
{
  y = byTouchLocation.y;
  x = byTouchLocation.x;
  v5.x = x;
  v5.y = y;
  return CGRectContainsPoint(canvasBounds, v5);
}

void *AnyCanvas.height(from:delta:)(void *result)
{
  if (result)
  {
    [result bounds];
    CGRectGetHeight(v6);
    v2 = MEMORY[0x1E69E7D40];
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x450))();
    if (v3)
    {
      v4 = v3;
      [v3 zoomScale];
    }

    return (*((*v2 & *v1) + 0x858))(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AnyCanvas.beginLiveResize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v1)
  {
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AnyCanvas.endLiveResize(discard:)(Swift::Bool discard)
{
  v2 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 setNeedsLayout];
  v4 = *(v1 + v2);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v4 setHidden_];
}

double AnyCanvas.drawingTransformOverride.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

void (*AnyCanvas._viewControllerForPresentingUI.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__viewControllerForPresentingUI;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AnyCanvas._viewControllerForPresentingUI.modify;
}

void AnyCanvas._viewControllerForPresentingUI.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    v6 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))();
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(ObjectType, v8);
  }

  free(v3);
}

uint64_t AnyCanvas.viewControllerForPresentingUI.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void AnyCanvas.viewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIViewController);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v7 = swift_unknownObjectWeakAssign();
      v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x440))(v7);
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(ObjectType, v10);

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*AnyCanvas.viewControllerForPresentingUI.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._viewControllerForPresentingUI.modify(v4);
  return AnyCanvas.viewControllerForPresentingUI.modify;
}

double AnyCanvas.scaleFactorForNewElements.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x348))();
  if ((v2 & 1) != 0 || (v3 = *&v1, (v4 = [v0 window]) == 0))
  {
    [v0 bounds];
    v12 = v11;
    [v0 bounds];
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v10 = 1.0;
    if (v14 > 1024.0)
    {
      v10 = v14 * 0.0009765625;
    }
  }

  else
  {
    v5 = v3;
    v6 = v4;
    v7 = [v4 screen];

    [v7 scale];
    v9 = v8;

    v10 = v9 / v5;
  }

  v15 = v10 * 10.0;
  v16 = floor(v15);
  v17 = v15 - v16;
  v18 = ceil(v15);
  if (v17 < 0.49)
  {
    v18 = v16;
  }

  return fmax(v18 / 10.0, 0.1);
}

CGSize __swiftcall AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(CGSize withSize)
{
  height = withSize.height;
  width = withSize.width;
  v2 = [v1 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 screen];

    [v4 scale];
    v13 = v5;
  }

  else
  {
    v13 = 1.0;
  }

  v6 = AnyCanvas.scaleFactorForNewElements.getter();
  v7.f64[0] = width;
  v7.f64[1] = height;
  v8 = vmulq_n_f64(vmulq_n_f64(v7, v6), v13);
  v9 = vrndmq_f64(v8);
  v10 = vdivq_f64(vbslq_s8(vcgeq_f64(vsubq_f64(v8, v9), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v8), v9), vdupq_lane_s64(*&v13, 0));
  v11 = v10.f64[1];
  result.width = v10.f64[0];
  result.height = v11;
  return result;
}

UIContextMenuConfiguration_optional __swiftcall AnyCanvas.customContextMenuInteraction(canvasElementViews:suggestedActions:)(Swift::OpaquePointer canvasElementViews, Swift::OpaquePointer suggestedActions)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = v33 - v10;
  swift_getKeyPath();
  aBlock[0] = v2;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33[0] = *(v11 + 8);
    if (canvasElementViews._rawValue >> 62)
    {
      goto LABEL_25;
    }

    v13 = *((canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v33[1] = Strong;
      v34 = v3;
      rawValue = suggestedActions._rawValue;
      if (!v13)
      {
        break;
      }

      v14 = 0;
      v15 = canvasElementViews._rawValue & 0xC000000000000001;
      v3 = v38;
      suggestedActions._rawValue = (v37 + 48);
      v39 = (v37 + 32);
      v40 = canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8;
      v16 = MEMORY[0x1E69E7CC0];
      v36 = canvasElementViews._rawValue & 0xC000000000000001;
      while (1)
      {
        if (v15)
        {
          Strong = MEMORY[0x1DA6CE0C0](v14, canvasElementViews._rawValue);
        }

        else
        {
          if (v14 >= *(v40 + 16))
          {
            goto LABEL_24;
          }

          Strong = *(canvasElementViews._rawValue + v14 + 4);
        }

        v17 = Strong;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF0))();

        if ((*suggestedActions._rawValue)(v8, 1, v3) == 1)
        {
          Strong = outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        }

        else
        {
          v19 = v13;
          v20 = canvasElementViews._rawValue;
          v21 = *v39;
          (*v39)(v41, v8, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v23 = v16[2];
          v22 = v16[3];
          if (v23 >= v22 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v16);
          }

          v16[2] = v23 + 1;
          v24 = v16 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23;
          v3 = v38;
          Strong = (v21)(v24, v41, v38);
          canvasElementViews._rawValue = v20;
          v13 = v19;
          v15 = v36;
        }

        ++v14;
        if (v18 == v13)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v32 = Strong;
      v13 = __CocoaSet.count.getter();
      Strong = v32;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
    ObjectType = swift_getObjectType();
    v28 = (*(v33[0] + 32))(v34, v16, rawValue, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = swift_allocObject();
    v25[2]._rawValue = suggestedActions._rawValue;
    v26 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_54;
    v27 = _Block_copy(aBlock);

    v28 = [v26 configurationWithIdentifier:0 previewProvider:0 actionProvider:v27];

    _Block_release(v27);
  }

  v31 = v28;
  result.value.super.isa = v31;
  result.is_nil = v29;
  return result;
}