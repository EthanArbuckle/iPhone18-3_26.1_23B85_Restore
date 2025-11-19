uint64_t NewCanvasElementDelegate.addNewSignatureItem(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  if (a1)
  {
    v41 = v12;
    v15 = a1;
    v16 = SignatureItem.size.getter();
    v18 = 400.0 / v16;
    if (400.0 / v16 > 1.0)
    {
      v18 = 1.0;
    }

    v19 = v16 * v18;
    v20 = v17 * v18;
    v21 = 72.0 / v20;
    if (72.0 / v20 > 1.0)
    {
      v21 = 1.0;
    }

    v22 = (*(a3 + 24))(a2, a3, v19 * v21, v20 * v21);
    v24 = v23;
    v25 = (*(a3 + 32))(a2, a3);
    v27 = v26;
    v29 = v28;
    v39 = v4;
    v40 = a2;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v30 = SignatureItem.size.getter();
    v32 = 400.0 / v30;
    if (400.0 / v30 > 1.0)
    {
      v32 = 1.0;
    }

    v33 = v30 * v32;
    v34 = v31 * v32;
    v35 = 72.0 / v34;
    if (72.0 / v34 > 1.0)
    {
      v35 = 1.0;
    }

    v42[0] = v33 * v35;
    v42[1] = v34 * v35;
    Signature.init()();
    static CRKeyPath.unique.getter();
    v36 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v37 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v37);
    *(&v39 - 4) = v15;
    *(&v39 - 3) = v25;
    *(&v39 - 2) = v27;
    *(&v39 - 1) = v42;
    v38 = Capsule.callAsFunction<A>(_:)();
    MEMORY[0x1EEE9AC00](v38);
    *(&v39 - 6) = v25 - v22 * 0.5;
    *(&v39 - 5) = v27 - v24 * 0.5;
    *(&v39 - 4) = v22;
    *(&v39 - 3) = v24;
    *(&v39 - 2) = v29;
    Capsule.callAsFunction<A>(_:)();
    (*(a3 + 16))(v14, v9, v36, &protocol witness table for Signature, v40, a3);

    return (*(v41 + 8))(v14, v10);
  }

  return result;
}

uint64_t NewCanvasElementDelegate.addLine(_:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v44[1] = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v44 - v20);
  v22 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v44 - v26;
  _s8PaperKit9ShapeTypeOWOcTm_0(a1, v44 - v26, type metadata accessor for Shape);
  v28 = (*(a3 + 24))(a2, a3, a4, a5);
  v30 = v29;
  v31 = *(a3 + 32);
  v32 = v28 / a4;
  v47 = a2;
  v48 = v5;
  v33 = v31(a2, a3);
  v35 = v34;
  v49 = v33 - v28 * 0.5;
  v50 = v36 - v30 * 0.5;
  v51 = v28;
  v52 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  if (vabdd_f64(v49, v35) > 0.01)
  {
    v49 = v35;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  v49 = fmax(round(v32 * v49), 1.0);
  CRRegister.wrappedValue.setter();
  v37 = type metadata accessor for Color(0);
  v38 = *(v37 + 20);
  v39 = type metadata accessor for UnknownValueProperties();
  (*(*(v39 - 8) + 56))(v21 + v38, 1, 1, v39);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v41 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v42 = result;

      *v21 = v42;
      (*(*(v37 - 8) + 56))(v21, 0, 1, v37);
      outlined init with copy of Date?(v21, v18, &_s8PaperKit5ColorVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit9ShapeTypeOWOcTm_0(v27, v24, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      v43 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      Capsule.init(_:id:)();
      (*(a3 + 16))(v15, v22, v43, &protocol witness table for Shape, v47, a3);
      (*(v45 + 8))(v15, v46);
      return outlined destroy of ShapeType(v27, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NewCanvasElementDelegate.addShape(_:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - v14;
  v52 = type metadata accessor for Color(0);
  v15 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  _s8PaperKit9ShapeTypeOWOcTm_0(a1, &v45 - v27, type metadata accessor for Shape);
  v29 = (*(a3 + 24))(a2, a3, a4, a5);
  v31 = v30;
  v32 = *(a3 + 32);
  v50 = a2;
  v51 = v5;
  v33 = v32(a2, a3);
  v35 = v34;
  v53 = v33 - v29 * 0.5;
  v54 = v36 - v31 * 0.5;
  v55 = v29;
  v56 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  if (vabdd_f64(v53, v35) > 0.01)
  {
    v53 = v35;
    CRRegister.value.setter();
  }

  v37 = v52;
  v38 = *(v52 + 20);
  v39 = type metadata accessor for UnknownValueProperties();
  (*(*(v39 - 8) + 56))(v17 + v38, 1, 1, v39);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51440);
  if (result)
  {
    v41 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v42 = result;

      *v17 = v42;
      _s8PaperKit5ShapeVWObTm_1(v17, v23, type metadata accessor for Color);
      (*(v15 + 56))(v23, 0, 1, v37);
      outlined init with copy of Date?(v23, v20, &_s8PaperKit5ColorVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit5ColorVSgMd);
      _s8PaperKit9ShapeTypeOWOcTm_0(v28, v45, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      v43 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      v44 = v46;
      Capsule.init(_:id:)();
      (*(a3 + 16))(v44, v24, v43, &protocol witness table for Shape, v50, a3);
      (*(v48 + 8))(v44, v49);
      return outlined destroy of ShapeType(v28, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in NewCanvasElementDelegate.addNewSignatureItem(_:)()
{
  swift_getKeyPath();
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

uint64_t _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void CanvasGenerationTool.magicGenerativeState.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState;
  v5 = v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
  LOBYTE(v50[0]) = v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
  LOBYTE(v49) = v3;
  if (specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(v50, &v49))
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, generativeLogger);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_56;
    }

    v10 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v10 = 136315650;
    v11 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v50);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    if (v5 > 4)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          v16 = 0x80000001D4081340;
          v15 = 0xD000000000000011;
        }

        else if (v5 == 8)
        {
          v15 = 0x65746172656E6567;
          v16 = 0xE900000000000064;
        }

        else
        {
          v16 = 0x80000001D4081360;
          v15 = 0xD000000000000010;
        }

        goto LABEL_25;
      }

      if (v5 != 5)
      {
        v14 = "composingProvidedRecipe";
        goto LABEL_24;
      }

      v16 = 0x80000001D4081300;
      v15 = 0xD000000000000018;
    }

    else
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          v15 = 0x696C616974696E69;
          v16 = 0xEB0000000064657ALL;
        }

        else
        {
          v15 = 0x616974696E696E75;
          v16 = 0xED000064657A696CLL;
        }

        goto LABEL_25;
      }

      if (v5 == 2)
      {
        v15 = 0x656C6553646E6177;
        v16 = 0xED00006E6F697463;
      }

      else
      {
        if (v5 == 3)
        {
          v14 = "composingFromEmptyState";
LABEL_24:
          v16 = (v14 - 32) | 0x8000000000000000;
          v15 = 0xD000000000000017;
          goto LABEL_25;
        }

        v16 = 0x80000001D40812E0;
        v15 = 0xD000000000000016;
      }
    }

LABEL_25:
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v50);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    if (v3 > 4)
    {
      v26 = 0x80000001D4081340;
      v27 = 0xD000000000000011;
      v28 = 0x65746172656E6567;
      v29 = 0x80000001D4081360;
      if (v3 == 8)
      {
        v29 = 0xE900000000000064;
      }

      else
      {
        v28 = 0xD000000000000010;
      }

      if (v3 != 7)
      {
        v27 = v28;
        v26 = v29;
      }

      v30 = 0x80000001D4081300;
      if (v3 == 5)
      {
        v31 = 0xD000000000000018;
      }

      else
      {
        v31 = 0xD000000000000017;
      }

      if (v3 != 5)
      {
        v30 = 0x80000001D4081320;
      }

      if (v3 <= 6)
      {
        v24 = v31;
      }

      else
      {
        v24 = v27;
      }

      if (v3 <= 6)
      {
        v25 = v30;
      }

      else
      {
        v25 = v26;
      }
    }

    else
    {
      v18 = 0x656C6553646E6177;
      v19 = 0xED00006E6F697463;
      v20 = 0x80000001D40812C0;
      v21 = 0xD000000000000016;
      if (v3 == 3)
      {
        v21 = 0xD000000000000017;
      }

      else
      {
        v20 = 0x80000001D40812E0;
      }

      if (v3 != 2)
      {
        v18 = v21;
        v19 = v20;
      }

      v22 = 0x696C616974696E69;
      v23 = 0xEB0000000064657ALL;
      if (!v3)
      {
        v22 = 0x616974696E696E75;
        v23 = 0xED000064657A696CLL;
      }

      if (v3 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }

      if (v3 <= 1)
      {
        v25 = v23;
      }

      else
      {
        v25 = v19;
      }
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v50);

    *(v10 + 24) = v32;
    _os_log_impl(&dword_1D38C4000, v8, v9, "%s state transition from '%s' to '%s'", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v48, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
LABEL_56:

    v2[v4] = v3;
    LOBYTE(v50[0]) = v5;
    CanvasGenerationTool.magicGenerativePlaygroundStateDidChange(_:)(v50);
    return;
  }

  lazy protocol witness table accessor for type MagicGenerativePlaygroundState.TransitionError and conformance MagicGenerativePlaygroundState.TransitionError();
  v33 = swift_allocError();
  *v34 = v5;
  v34[1] = v3;
  swift_willThrow();
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, generativeLogger);
  v36 = v1;
  v37 = v33;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50[0] = v41;
    *v40 = 136315394;
    v42 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v50);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    swift_getErrorValue();
    v45 = Error.localizedDescription.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v50);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_1D38C4000, v38, v39, "%s: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v41, -1, -1);
    MEMORY[0x1DA6D0660](v40, -1, -1);
  }

  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  MEMORY[0x1DA6CD010](0xD000000000000017, 0x80000001D4090D80);
  LOBYTE(v49) = v5;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](0x74617473206F7420, 0xEB00000000203A65);
  LOBYTE(v49) = v3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](0xD000000000000014, 0x80000001D4090DA0);
  v49 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xED000064657A696CLL;
  v3 = 0xD000000000000017;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x80000001D4081340;
    v14 = 0xD000000000000011;
    v15 = 0x65746172656E6567;
    v16 = 0x80000001D4081360;
    if (a1 == 8)
    {
      v16 = 0xE900000000000064;
    }

    else
    {
      v15 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x80000001D4081300;
    if (a1 == 5)
    {
      v18 = 0xD000000000000018;
    }

    else
    {
      v18 = 0xD000000000000017;
    }

    if (a1 != 5)
    {
      v17 = 0x80000001D4081320;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x656C6553646E6177;
    v6 = 0xED00006E6F697463;
    v7 = 0x80000001D40812C0;
    v8 = 0xD000000000000016;
    if (a1 == 3)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v7 = 0x80000001D40812E0;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x696C616974696E69;
    v10 = 0xEB0000000064657ALL;
    if (!a1)
    {
      v9 = 0x616974696E696E75;
      v10 = 0xED000064657A696CLL;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = "composingProvidedRecipe";
        goto LABEL_50;
      }

      v2 = 0x80000001D4081300;
      v3 = 0xD000000000000018;
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001D4081340;
      v3 = 0xD000000000000011;
    }

    else if (a2 == 8)
    {
      v3 = 0x65746172656E6567;
      v2 = 0xE900000000000064;
    }

    else
    {
      v2 = 0x80000001D4081360;
      v3 = 0xD000000000000010;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0x696C616974696E69;
      v2 = 0xEB0000000064657ALL;
    }

    else
    {
      v3 = 0x616974696E696E75;
    }
  }

  else if (a2 == 2)
  {
    v3 = 0x656C6553646E6177;
    v2 = 0xED00006E6F697463;
  }

  else
  {
    if (a2 == 3)
    {
      v19 = "composingFromEmptyState";
LABEL_50:
      v2 = (v19 - 32) | 0x8000000000000000;
      goto LABEL_51;
    }

    v2 = 0x80000001D40812E0;
    v3 = 0xD000000000000016;
  }

LABEL_51:
  if (v11 == v3 && v12 == v2)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 1684632949;
    }

    if (v2)
    {
      v3 = 0x80000001D4081050;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x65646E4974726F73;
    v3 = 0xE900000000000078;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x74616D726F66;
  }

  else
  {
    v3 = 0x80000001D4081080;
    v4 = 0xD000000000000013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 1684632949;
    }

    if (a2)
    {
      v6 = 0x80000001D4081050;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE900000000000078;
    if (v4 != 0x65646E4974726F73)
    {
LABEL_34:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x74616D726F66;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001D4081080;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

{
  v2 = 0xEE00646572696150;
  v3 = 0x6C69636E65507369;
  v4 = a1;
  v5 = 0x6E695F6563617073;
  v6 = 0xEE00646574726573;
  if (a1 != 6)
  {
    v5 = 1868852853;
    v6 = 0xE400000000000000;
  }

  v7 = 0x6F7274735F6D756ELL;
  v8 = 0xEB0000000073656BLL;
  if (a1 != 4)
  {
    v7 = 0x747865745F6D756ELL;
    v8 = 0xEF7370756F72675FLL;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0x6874616D5F6D756ELL;
  v10 = 0xEF7370756F72675FLL;
  if (a1 != 2)
  {
    v9 = 0xD000000000000012;
    v10 = 0x80000001D40804E0;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656C61636F6CLL;
  if (!a1)
  {
    v12 = 0x6C69636E65507369;
    v11 = 0xEE00646572696150;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE00646574726573;
        if (v13 != 0x6E695F6563617073)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v13 != 1868852853)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v2 = 0xEB0000000073656BLL;
      if (v13 != 0x6F7274735F6D756ELL)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v15 = 0x747865745F6D756ELL;
LABEL_35:
    v2 = 0xEF7370756F72675FLL;
    if (v13 != v15)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656C61636F6CLL)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (a2 == 2)
  {
    v15 = 0x6874616D5F6D756ELL;
    goto LABEL_35;
  }

  v3 = 0xD000000000000012;
  v2 = 0x80000001D40804E0;
LABEL_38:
  if (v13 != v3)
  {
LABEL_42:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_43;
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v16 = 1;
LABEL_43:

  return v16 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 16) + 16) rawValue];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [*(*(a2 + 16) + 16) rawValue];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  LOBYTE(v7) = specialized static Data.== infix(_:_:)(v4, v6, v8, v10);
  outlined consume of Data._Representation(v8, v10);
  outlined consume of Data._Representation(v4, v6);
  return v7 & 1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = type metadata accessor for PKStroke();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9PencilKit8PKStrokeVSgMd);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PKStroke();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v25 - v15;
  v33 = *(a3 + 16);
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  v27 = v14;
  v31 = (v14 + 32);
  v32 = (v14 + 48);
  v17 = MEMORY[0x1E69E7CC0];
  v28 = a2;
  v29 = a3;
  v25 = a1;
  v26 = v12;
  while (1)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd) - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit8PKStrokeVSgMd);
    }

    else
    {
      v19 = v30;
      v20 = *v31;
      (*v31)(v30, v9, v10);
      v20(v12, v19, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      }

      v22 = v17[2];
      v21 = v17[3];
      if (v22 >= v21 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v17);
      }

      v17[2] = v22 + 1;
      v23 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
      v12 = v26;
      v20(v23, v26, v10);
      a3 = v29;
      a1 = v25;
    }

    if (v33 == ++v16)
    {
      return v17;
    }
  }

  return v17;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v25 = &v22 - v16;
  if (a3 != a4)
  {
    if (a4 >= a3)
    {
      v27 = (v26 + 32);
      v28 = (v26 + 48);
      v17 = MEMORY[0x1E69E7CC0];
      v23 = a1;
      v24 = a4;
      v22 = v13;
      while (a4 != a3)
      {
        v30 = a3;
        a1(&v30, v15);
        if (v4)
        {

          return;
        }

        if ((*v28)(v10, 1, v11) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
        }

        else
        {
          v18 = *v27;
          v19 = v25;
          (*v27)(v25);
          (v18)(v13, v19, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
          }

          v21 = v17[2];
          v20 = v17[3];
          if (v21 >= v20 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v17);
          }

          v17[2] = v21 + 1;
          v13 = v22;
          (v18)(v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v22, v11);
          a1 = v23;
          a4 = v24;
        }

        if (a4 == ++a3)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence7WeakRefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF9CRKeyPathVs5NeverOTg503_s8h179Kit20CanvasGenerationToolC011updateImageD5Event33_FE3FAB02C6CA4145E805E0C2C3C9776ELL14elementMembers06strokeS010invocationyAA0cS0V_AJSo010PPKGPMagicagD10InvocationVtYaF9Coherence9lm4VAM7ef6VyAM10g6VyAA12jK9OGGXEfU3_Tf1cn_n(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v31 - v4;
  v40 = type metadata accessor for CRKeyPath();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = v7;
    v31[1] = v1;
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = v5;
    v12 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v39 = v11;
    v34 = v3;
    v35 = v11 + 32;
    v32 = a1 + 64;
    v33 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v43 = *(a1 + 36);
      v17 = v41;
      v16 = v42;
      (*(v3 + 16))(v41, *(a1 + 48) + *(v3 + 72) * v10, v42);
      v18 = a1;
      v19 = v38;
      WeakRef.id.getter();
      (*(v3 + 8))(v17, v16);
      v20 = v45;
      v46 = v45;
      v22 = *(v45 + 16);
      v21 = *(v45 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v45 = v20;
      result = (*(v39 + 32))(v20 + v23 + *(v39 + 72) * v22, v19, v40);
      v13 = 1 << *(v18 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v24 = *(v44 + 8 * v15);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v18;
      if (v43 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v33;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v14 = v33;
        v28 = (v32 + 8 * v15);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v43, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v43, 0);
      }

LABEL_4:
      ++v12;
      v10 = v13;
      v3 = v34;
      if (v12 == v14)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int AnyObjectWeakRef.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyObjectWeakRef<A>()
{
  Hasher.init(_seed:)();
  AnyObjectWeakRef.hash(into:)();
  return Hasher._finalize()();
}

double CanvasGenerationTool.generationFrameInCanvas.getter()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_knownCanvasGenerationFrameInModelSpace];
  if ((v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_knownCanvasGenerationFrameInModelSpace + 32] & 1) == 0)
  {
    v3 = v1[2];
    v2 = v1[3];
    v5 = *v1;
    v4 = v1[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = MEMORY[0x1E69E7D40];
      v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
      (*((*v8 & *v9) + 0x2C0))(v44);
      v39 = v44[1];
      v40 = v44[0];
      v10 = v45;
      v11 = v46;

      (*((*v8 & *v7) + 0x858))(&v47);
      if (v48)
      {
        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

      v13 = vdupq_n_s64(v12);
      *&t1.a = v40;
      *&t1.c = v39;
      t1.tx = v10;
      t1.ty = v11;
      *&t2.a = vbslq_s8(v13, xmmword_1D4059320, *&v47.a);
      *&t2.c = vbslq_s8(v13, xmmword_1D4059310, *&v47.c);
      *&t2.tx = vbicq_s8(*&v47.tx, v13);
      CGAffineTransformConcat(&v41, &t1, &t2);
      t1 = v41;
      v49.origin.x = v5;
      v49.origin.y = v4;
      v49.size.width = v3;
      v49.size.height = v2;
      v14 = CGRectApplyAffineTransform(v49, &t1);
LABEL_18:
      v31 = *&v14;

      return v31;
    }
  }

  v15 = &v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  x = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  y = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
  width = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
  height = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
  [v0 bounds];
  v21 = v20;
  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v22 = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
    if (v22 > 0.0 && v21 > 0.0)
    {
      CGAffineTransformMakeScale(&v47, v21 / v22, v21 / v22);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectApplyAffineTransform(v50, &v47);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
    }
  }

  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v7 = v23;
      v24 = *v15;
      v25 = v15[1];
      v26 = v15[2];
      v27 = v15[3];
      [v0 bounds];
      v29 = v28;
      if (CGRect.isFinite.getter(v24, v25, v26, v27))
      {
        v30 = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
        if (v30 > 0.0 && v29 > 0.0)
        {
          CGAffineTransformMakeScale(&v47, v29 / v30, v29 / v30);
          v52.origin.x = v24;
          v52.origin.y = v25;
          v52.size.width = v26;
          v52.size.height = v27;
          v53 = CGRectApplyAffineTransform(v52, &v47);
          v24 = v53.origin.x;
          v25 = v53.origin.y;
          v26 = v53.size.width;
          v27 = v53.size.height;
        }
      }

      [v0 convertRect:v7 toCoordinateSpace:{v24, v25, v26, v27}];
      goto LABEL_18;
    }
  }

  v31 = *v15;
  v32 = v15[1];
  v33 = v15[2];
  v34 = v15[3];
  [v0 bounds];
  v36 = v35;
  if (CGRect.isFinite.getter(v31, v32, v33, v34))
  {
    v37 = *&v0[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
    if (v37 > 0.0 && v36 > 0.0)
    {
      CGAffineTransformMakeScale(&v47, v36 / v37, v36 / v37);
      v54.origin.x = v31;
      v54.origin.y = v32;
      v54.size.width = v33;
      v54.size.height = v34;
      *&v31 = CGRectApplyAffineTransform(v54, &v47);
    }
  }

  return v31;
}

void CanvasGenerationTool.continuation.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
  swift_beginAccess();
  outlined init with copy of Date?(v0 + v4, v3, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  if (v4 == 1)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, generativeLogger);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v12 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D38C4000, v8, v9, "%s continuation is set to nil", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1DA6D0660](v11, -1, -1);
      MEMORY[0x1DA6D0660](v10, -1, -1);
    }
  }
}

void CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, generativeLogger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, aBlock);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x80000001D4091070, aBlock);
    _os_log_impl(&dword_1D38C4000, v9, v10, "%s - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v12, -1, -1);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v13 = &v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_cachedMagicFrame];
  if (v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_cachedMagicFrame + 32] == 1)
  {
    v14 = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
    if (!v14)
    {
      goto LABEL_17;
    }

    [v14 magicViewFullFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *v13;
    v18 = v13[1];
    v20 = v13[2];
    v22 = v13[3];
  }

  if (CGRect.isFinite.getter(v16, v18, v20, v22))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))();

      if (v25)
      {
        *v13 = v16;
        v13[1] = v18;
        v13[2] = v20;
        v13[3] = v22;
        *(v13 + 32) = 0;
        v26 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = a2;
        *(v27 + 24) = v4;
        *(v27 + 32) = v25;
        *(v27 + 40) = v16;
        *(v27 + 48) = v18;
        *(v27 + 56) = v20;
        *(v27 + 64) = v22;
        aBlock[4] = partial apply for closure #1 in CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:);
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_226_1;
        v28 = _Block_copy(aBlock);
        v29 = v4;
        v30 = v25;

        [v26 animateWithDuration:a1 delay:v28 options:0 animations:a3 completion:0.0];
        _Block_release(v28);
        v31 = *&v29[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_eatTapGestureRecognizer];
        if (v31)
        {
          [v31 setEnabled_];
        }

        v32 = *&v29[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_eatPanGestureRecognizer];
        if (v32)
        {
          v33 = v32;
          [v33 setEnabled_];
        }

        return;
      }
    }
  }

LABEL_17:
  oslog = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, aBlock);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x80000001D4091070, aBlock);
    _os_log_impl(&dword_1D38C4000, oslog, v34, "%s - %s Returning because MagicViewFullFrame is not set up properly.", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v36, -1, -1);
    MEMORY[0x1DA6D0660](v35, -1, -1);
  }

  else
  {
  }
}

id closure #1 in CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(char *a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView;
  v15 = *&a1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView];
  [a2 adjustedContentInset];
  if (a3 <= 100.0)
  {
    [v15 setContentInset_];

    [a2 adjustedContentInset];
    v24 = v23;
    v30.origin.x = a4;
    v30.origin.y = a5;
    v30.size.width = a6;
    v30.size.height = a7;
    v25 = CGRectGetMinY(v30) + -15.0;
    if (v25 >= v24)
    {
      v25 = v24;
    }

    [*&a1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint] setConstant_];
    v18 = *&a1[v14];
    v31.origin.x = a4;
    v31.origin.y = a5;
    v31.size.width = a6;
    v31.size.height = a7;
    CGRectGetMaxY(v31);
    [v18 contentSize];
    [v18 setContentSize_];
  }

  else
  {
    [v15 setContentInset_];

    [*&a1[v14] setContentSize_];
    v16 = *&a1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint];
    if (v16)
    {
      v17 = v16;
      v28.origin.x = a4;
      v28.origin.y = a5;
      v28.size.width = a6;
      v28.size.height = a7;
      [v17 setConstant_];
    }

    v18 = *&a1[v14];
    [v18 contentSize];
    v20 = v19;
    [*&a1[v14] bounds];
    v21 = v20 - CGRectGetHeight(v29);
    [*&a1[v14] contentInset];
    [v18 setContentOffset:0 animated:{0.0, v21 + v22 + 0.0}];
  }

  return [a1 layoutIfNeeded];
}

void closure #1 in static CanvasGenerationTool.prewarmEffect()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in static CanvasGenerationTool.prewarmEffect();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_233;
  v9 = _Block_copy(aBlock);

  [v6 prewarmEffectWithCompletion_];
  _Block_release(v9);
}

Swift::Void __swiftcall CanvasGenerationTool.prewarm()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286D726177657270, 0xE900000000000029, &v17);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC;
  if (!*&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC])
  {
    v11 = [objc_allocWithZone(PPKGPInProcessMagicPaperViewController) initWithTokenProvider_];
    v18 = 1;
    CanvasGenerationTool.magicGenerativeState.setter(&v18);
    v12 = *&v2[v10];
    *&v2[v10] = v11;
    v16 = v11;

    v13 = &v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasGenerationToolDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(v2, v16, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:), v5, v4);
}

{
  v3 = *v2;
  v4 = *v2;
  v10 = *v2;
  v4[43] = a1;
  v4[44] = a2;

  v5 = swift_task_alloc();
  v4[45] = v5;
  *v5 = v10;
  v5[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);
  v6 = v3[40];
  v7 = v3[13];
  v8 = v3[19];

  return specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:)(v8, v6, v7);
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:)()
{
  v36 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v32 = v7;
    *v6 = 136315394;
    v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x80000001D4091030, &v32);
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v12 = *(v0 + 96);
    AnyCanvas.updateCanvasAttachmentProvider()();
    BoundingBox = CGPathGetBoundingBox(v12);
    v13 = AnyCanvas.elementCanvasMembers(in:)(BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height);
    *(v0 + 152) = v13;
    *(v0 + 160) = v14;
    *(v0 + 168) = v15;
    *(v0 + 89) = v16;
    AnyCanvas.textPromptsFromElementCanvasMembers(_:)(v13, v14, v15, v16 & 1, &v32);
    *(v0 + 176) = v32;
    v17 = v34;
    *(v0 + 192) = v33;
    *(v0 + 200) = v17;
    *(v0 + 90) = v35;
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);
    v19 = *(v0 + 96);

    return AnyCanvas.textPromptLookupFor(_:)(v0 + 16, v19);
  }

  else
  {
    v21 = *(v0 + 112);

    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v32 = v26;
      *v25 = 136315138;
      v27 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D38C4000, v23, v24, "%s: returning (canvas is nil)", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA6D0660](v26, -1, -1);
      MEMORY[0x1DA6D0660](v25, -1, -1);
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v30 = xmmword_1D4076F40;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = *(v0 + 8);

    return v31(0);
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 27) = *(v2 + 1);
  *(v2 + 29) = v3;
  v2[31] = v1[6];
  *(v2 + 91) = *(v2 + 56);
  *(v2 + 16) = *(v2 + 4);
  v2[34] = v1[10];
  *(v2 + 92) = *(v2 + 88);

  v4 = v1[17];
  v5 = v1[16];

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:), v5, v4);
}

{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v0 + 176);
    if (v2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 176);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, *(v0 + 176));
      }

      v5 = *(v3 + 2);
      v6 = 16 * v5;
      v7 = (v1 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = *(v3 + 3);

        if (v5 >= v10 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v5 + 1, 1, v3);
        }

        *(v3 + 2) = v5 + 1;
        v11 = &v3[v6];
        *(v11 + 4) = v9;
        *(v11 + 5) = v8;
        v6 += 16;
        v7 += 2;
        ++v5;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v3 = *(v0 + 176);
  }

  *(v0 + 280) = v3;
  v12 = *(v0 + 232);
  if (v12)
  {
    v13 = *(v0 + 256);
    v14 = *(v0 + 91);
    if (v13)
    {
      v15 = *(v0 + 92);
      v17 = *(v0 + 264);
      v16 = *(v0 + 272);
      v18 = *(v0 + 240);
      v19 = *(v0 + 248);
      goto LABEL_16;
    }

    outlined consume of CanvasMembers?(v12);
  }

  v20 = *(v0 + 256);
  v13 = AnyCanvas.strokeCanvasMembers(for:)(*(v0 + 96));
  v17 = v21;
  v16 = v22;
  v14 = v23;
  outlined consume of CanvasMembers?(v20);
  v15 = v14 & 1;

  v12 = v13;
  v18 = v17;
  v19 = v16;
LABEL_16:
  *(v0 + 94) = v14 & 1;
  *(v0 + 320) = v18;
  *(v0 + 328) = v19;
  *(v0 + 93) = v15;
  *(v0 + 304) = v16;
  *(v0 + 312) = v12;
  *(v0 + 288) = v13;
  *(v0 + 296) = v17;
  v24 = *(v0 + 90);
  v25 = *((*MEMORY[0x1E69E7D40] & **(v0 + 144)) + 0x908);
  v31 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);

  return (v31)(v29, v27, v28, v24, v13, v17, v16, v15 & 1);
}

{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 288);

  outlined consume of CanvasMembers?(v3);
  v4 = *(v0 + 8);
  v5 = *(v0 + 95);

  return v4(v5);
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[18];
  outlined consume of CanvasMembers?(v0[36]);

  v4 = v0[1];

  return v4(0);
}

void CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:)()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 368) = v3;
  *v3 = v2;
  v3[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);

  JUMPOUT(0x1D3EEA13CLL);
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:)(char a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);
  }

  else
  {
    *(v4 + 95) = a1 & 1;
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = v6;
  *(v7 + 33) = a4;
  *(v7 + 56) = a3;
  *(v7 + 64) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 88) = type metadata accessor for Image(0);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  *(v7 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  *(v7 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  *(v7 + 144) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 176) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 184) = v11;
  *(v7 + 192) = v10;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:), v11, v10);
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)()
{
  v115 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  *(v0 + 200) = __swift_project_value_buffer(v2, generativeLogger);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v114[0] = v9;
    *v8 = 136315906;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v114);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001D4090F80, v114);
    *(v8 + 22) = 2048;
    v13 = *(v7 + 16);

    *(v8 + 24) = v13;

    *(v8 + 32) = 2048;
    v14 = *(v6 + 16);

    *(v8 + 34) = v14;

    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s: (elementMembers = %ld, strokeMembers = %ld)", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v15 = *(v0 + 64);
  if (v15)
  {
    v16 = *(v0 + 80);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v114[0] = v21;
      *v20 = 136315394;
      v22 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v114);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001D4090F80, v114);
      _os_log_impl(&dword_1D38C4000, v18, v19, "%s - %s: setting canvas", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v21, -1, -1);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }

    swift_unknownObjectWeakAssign();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 208) = Strong;
  if (!Strong)
  {
    v33 = *(v0 + 80);

    v34 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v114[0] = v38;
      *v37 = 136315394;
      v39 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v114);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001D4090F80, v114);
      _os_log_impl(&dword_1D38C4000, v35, v36, "%s - %s returning: canvas is nil", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v38, -1, -1);
      MEMORY[0x1DA6D0660](v37, -1, -1);
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v42 = xmmword_1D4076F40;
    *(v42 + 16) = 2;
    swift_willThrow();

    v43 = *(v0 + 8);
    goto LABEL_38;
  }

  v26 = Strong;
  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  v29 = *(v0 + 144);
  v30 = *(v0 + 33);
  CanvasMembers.singleImageSelected()(*(v0 + 40), *(v0 + 48), v29);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v31 = *(v0 + 144);
    v32 = &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd;
    goto LABEL_18;
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 120);
  v46 = *(v0 + 128);
  v47 = *(v0 + 112);
  (*(*(v0 + 160) + 32))(v44, *(v0 + 144), *(v0 + 152));
  (*((*MEMORY[0x1E69E7D40] & *v26) + 0xAB8))(v44);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    v48 = *(v0 + 112);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v32 = &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd;
    v31 = v48;
LABEL_18:
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, v32);
    if (*(*(v0 + 48) + 16) || *(*(v0 + 40) + 16))
    {
      v49 = *(v0 + 80);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v114[0] = v53;
        *v52 = 136315138;
        v54 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v114);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_1D38C4000, v50, v51, "%s: Initiating magic generative playground from selection.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1DA6D0660](v53, -1, -1);
        MEMORY[0x1DA6D0660](v52, -1, -1);
      }

      AnyCanvas.canvasGenerationToolFrameForSelection(_:to:)(*(v0 + 40), *(v0 + 48), *(v0 + 56), v30 & 1, *(v0 + 80));
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = swift_task_alloc();
      *(v0 + 248) = v65;
      *v65 = v0;
      v65[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
      v66 = *(v0 + 72);
      v67 = *(v0 + 48);
      v68 = *(v0 + 56);
      v69 = *(v0 + 40);

      return specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:)(v69, v67, v68, v30 & 1, v66, v58, v60, v62, v64);
    }

    v101 = *(v0 + 80);

    v102 = v101;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v114[0] = v106;
      *v105 = 136315138;
      v107 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v114);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_1D38C4000, v103, v104, "%s : returning (method called with incorrect parameters)", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x1DA6D0660](v106, -1, -1);
      MEMORY[0x1DA6D0660](v105, -1, -1);
    }

    goto LABEL_37;
  }

  v71 = *(v0 + 80);
  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  v72 = v71;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v114[0] = v76;
    *v75 = 136315138;
    v77 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v114);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_1D38C4000, v73, v74, "%s: Initiating magic generative playground from single image.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x1DA6D0660](v76, -1, -1);
    MEMORY[0x1DA6D0660](v75, -1, -1);
  }

  v81 = *(v0 + 96);
  v80 = *(v0 + 104);
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit5ImageVWOhTm_2(v81, type metadata accessor for Image);
  v82 = type metadata accessor for CRAssetOrData();
  if ((*(*(v82 - 8) + 48))(v80, 1, v82) == 1)
  {
    v83 = *(v0 + 104);

    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s8PaperKit13CRAssetOrDataOSgMd);
    v84 = *(v0 + 80);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 208);
    v90 = *(v0 + 160);
    v89 = *(v0 + 168);
    v91 = *(v0 + 152);
    v92 = *(v0 + 128);
    v93 = *(v0 + 136);
    v94 = *(v0 + 120);
    if (v87)
    {
      v113 = *(v0 + 168);
      v112 = *(v0 + 136);
      v95 = swift_slowAlloc();
      v111 = v88;
      v96 = swift_slowAlloc();
      v114[0] = v96;
      *v95 = 136315138;
      v97 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v110 = v91;
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v114);

      *(v95 + 4) = v99;
      _os_log_impl(&dword_1D38C4000, v85, v86, "%s: returning (image is nil)", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x1DA6D0660](v96, -1, -1);
      MEMORY[0x1DA6D0660](v95, -1, -1);

      (*(v92 + 8))(v112, v94);
      (*(v90 + 8))(v113, v110);
    }

    else
    {

      (*(v92 + 8))(v93, v94);
      (*(v90 + 8))(v89, v91);
    }

LABEL_37:

    v43 = *(v0 + 8);
LABEL_38:

    return v43();
  }

  v100 = swift_task_alloc();
  *(v0 + 216) = v100;
  *v100 = v0;
  v100[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);

  return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 1, 0);
}

{
  v2 = *v1;
  *(v2 + 240) = v0;

  v3 = *(v2 + 208);
  outlined consume of MagicGenerativePlaygroundContext(*(v2 + 16), *(v2 + 24), *(v2 + 32));

  v4 = *(v2 + 184);
  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
  }

  else
  {
    v6 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
  }

  else
  {
    v5 = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 224) = a1;

  _s8PaperKit5ImageVWOhTm_2(v3, type metadata accessor for CRAssetOrData);
  v4 = *(v2 + 192);
  v5 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:), v5, v4);
}

void CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)()
{
  v71 = v0;
  if (v0[28])
  {
    v1 = *&v0[26][OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    if (v1)
    {
      v66 = v0[28];
      v2 = v1;
      v3 = CanvasElementResizeView.resizingCanvasElements.getter();

      if (v3 >> 62)
      {
        goto LABEL_25;
      }

      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v0; v4; i = v0)
      {
        v5 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        v0 = &selRef_PDFView;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1DA6CE0C0](v5, v3);
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v7 = *(v3 + 8 * v5 + 32);
          }

          v8 = v7;
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          [v7 frame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          v20 = &v6[32 * v19];
          *(v20 + 4) = v11;
          *(v20 + 5) = v13;
          *(v20 + 6) = v15;
          *(v20 + 7) = v17;
          ++v5;
          if (v9 == v4)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v4 = __CocoaSet.count.getter();
      }

      v6 = MEMORY[0x1E69E7CC0];
LABEL_27:

      v38 = *MEMORY[0x1E695F050];
      v39 = *(MEMORY[0x1E695F050] + 8);
      v40 = *(MEMORY[0x1E695F050] + 16);
      v41 = *(MEMORY[0x1E695F050] + 24);
      v42 = *(v6 + 2);
      if (v42)
      {
        v43 = v6 + 56;
        v44 = i;
        do
        {
          *&v38 = CGRectUnion(*&v38, *(v43 - 24));
          v43 += 32;
          --v42;
        }

        while (v42);
      }

      else
      {
        v44 = i;
      }

      v45 = v44[28];
      v46 = v44[26];
      v47 = v44[10];
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;

      [v46 convertRect:v47 toCoordinateSpace:{v48, v49, v50, v51}];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v44[2] = v45;
      v44[3] = 0;
      *(v44 + 32) = 2;
      v60 = v66;
      v61 = v46;
      v62 = swift_task_alloc();
      v44[29] = v62;
      *v62 = v44;
      *(v62 + 1) = CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:);
      v63 = v44[9];

      CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)((v44 + 2), v61, v63, v53, v55, v57, v59);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v21 = v0[10];
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[26];
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    v29 = v0[16];
    v30 = v0[17];
    v31 = v0[15];
    if (v24)
    {
      v69 = v0[21];
      v67 = v0[17];
      v32 = swift_slowAlloc();
      v65 = v25;
      v33 = swift_slowAlloc();
      v70 = v33;
      *v32 = 136315138;
      v34 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v64 = v28;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v70);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D38C4000, v22, v23, "%s: returning (image is nil)", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1DA6D0660](v33, -1, -1);
      MEMORY[0x1DA6D0660](v32, -1, -1);

      (*(v29 + 1))(v67, v31);
      (*(v27 + 1))(v69, v64);
    }

    else
    {

      (*(v29 + 1))(v30, v31);
      (*(v27 + 1))(v26, v28);
    }

    v37 = v0[1];

    v37();
  }
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v8 + 80) = a3;
  *(v8 + 88) = v7;
  *(v8 + 72) = a2;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 96) = *a1;
  *(v8 + 33) = *(a1 + 16);
  type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 120) = v10;
  *(v8 + 128) = v9;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:), v10, v9);
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)()
{
  v107 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 33);
  v5 = type metadata accessor for Logger();
  *(v0 + 136) = __swift_project_value_buffer(v5, generativeLogger);
  v6 = v3;
  outlined copy of MagicGenerativePlaygroundContext(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined consume of MagicGenerativePlaygroundContext(v2, v1, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 33);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v106[0] = v11;
    *v10 = 136315906;
    v12 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v106);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x80000001D4090EE0, v106);
    v16 = 0xE900000000000063;
    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v17 = 0x6974616D6F747561;
    if (v9 == 2)
    {
      v17 = 0x6567616D69;
      v16 = 0xE500000000000000;
    }

    v18 = 1954047348;
    if (v9)
    {
      v18 = 1953720684;
    }

    if (v9 <= 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v9 <= 1)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = v16;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v106);

    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    v22 = CGRect.debugDescription.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v106);

    *(v10 + 34) = v24;
    _os_log_impl(&dword_1D38C4000, v7, v8, "%s - %s: (context = %s, bounds = %s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  v25 = *(v0 + 72);
  v26 = *(v0 + 88);
  if (v25)
  {
    v27 = v26;
    v28 = v25;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v106[0] = v32;
      *v31 = 136315394;
      v33 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v106);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x80000001D4090EE0, v106);
      _os_log_impl(&dword_1D38C4000, v29, v30, "%s - %s: setting canvas", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v32, -1, -1);
      MEMORY[0x1DA6D0660](v31, -1, -1);
    }

    swift_unknownObjectWeakAssign();
  }

  else
  {
    v36 = v26;
    v28 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v106[0] = v39;
      *v38 = 136315394;
      v40 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v106);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x80000001D4090EE0, v106);
      _os_log_impl(&dword_1D38C4000, v28, v37, "%s - %s: setting a nil canvas", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v39, -1, -1);
      MEMORY[0x1DA6D0660](v38, -1, -1);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (!Strong)
  {
    v55 = *(v0 + 88);

    v56 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v106[0] = v60;
      *v59 = 136315138;
      v61 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v106);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1D38C4000, v57, v58, "%s: returning (canvas is nil)", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1DA6D0660](v60, -1, -1);
      MEMORY[0x1DA6D0660](v59, -1, -1);
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v64 = xmmword_1D4076F40;
    *(v64 + 16) = 2;
    swift_willThrow();
    v65 = *(v0 + 8);
    goto LABEL_71;
  }

  v44 = Strong;
  if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x7A0))())
  {
    v45 = *(v0 + 88);

    v46 = v45;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v106[0] = v50;
      *v49 = 136315138;
      v51 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v106);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1D38C4000, v47, v48, "%s AutoRefine is running, cancel magic generative playground.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1DA6D0660](v50, -1, -1);
      v54 = v49;
LABEL_69:
      MEMORY[0x1DA6D0660](v54, -1, -1);
    }

LABEL_70:

    v65 = *(v0 + 8);
LABEL_71:

    return v65();
  }

  v66 = *(v0 + 88);
  AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  v67 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState;
  v105 = *(v66 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
  LOBYTE(v106[0]) = 1;
  if ((specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(&v105, v106) & 1) == 0)
  {
    v78 = *(v0 + 88);

    v79 = v78;
    v47 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v80))
    {
      goto LABEL_70;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v106[0] = v82;
    *v81 = 136315394;
    v83 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v106);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = *(v66 + v67);
    if (v86 > 4)
    {
      if (*(v66 + v67) > 6u)
      {
        if (v86 == 7)
        {
          v92 = 0x80000001D4081340;
          v93 = 0xD000000000000011;
        }

        else if (v86 == 8)
        {
          v92 = 0xE900000000000064;
          v93 = 0x65746172656E6567;
        }

        else
        {
          v92 = 0x80000001D4081360;
          v93 = 0xD000000000000010;
        }

        goto LABEL_68;
      }

      if (v86 != 5)
      {
        v87 = "composingProvidedRecipe";
        goto LABEL_67;
      }

      v92 = 0x80000001D4081300;
      v93 = 0xD000000000000018;
    }

    else
    {
      if (*(v66 + v67) <= 1u)
      {
        if (*(v66 + v67))
        {
          v92 = 0xEB0000000064657ALL;
          v93 = 0x696C616974696E69;
        }

        else
        {
          v92 = 0xED000064657A696CLL;
          v93 = 0x616974696E696E75;
        }

        goto LABEL_68;
      }

      if (v86 == 2)
      {
        v92 = 0xED00006E6F697463;
        v93 = 0x656C6553646E6177;
      }

      else
      {
        if (v86 == 3)
        {
          v87 = "composingFromEmptyState";
LABEL_67:
          v92 = (v87 - 32) | 0x8000000000000000;
          v93 = 0xD000000000000017;
          goto LABEL_68;
        }

        v92 = 0x80000001D40812E0;
        v93 = 0xD000000000000016;
      }
    }

LABEL_68:
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, v106);

    *(v81 + 14) = v104;
    _os_log_impl(&dword_1D38C4000, v47, v80, "%s Unsupported state transition from %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v82, -1, -1);
    v54 = v81;
    goto LABEL_69;
  }

  v68 = *(v0 + 33);
  v70 = *(v0 + 56);
  v69 = *(v0 + 64);
  v72 = *(v0 + 40);
  v71 = *(v0 + 48);
  [*(v0 + 88) setHidden_];
  v109.origin.x = v72;
  v109.origin.y = v71;
  v109.size.width = v70;
  v109.size.height = v69;
  MidX = CGRectGetMidX(v109);
  v110.origin.x = v72;
  v110.origin.y = v71;
  v110.size.width = v70;
  v110.size.height = v69;
  *&v74 = CGRectGetMidY(v110);
  CanvasGenerationTool.allocateGenerationFrame(for:with:)(__PAIR128__(0x4074000000000000, 0x4074000000000000), __PAIR128__(v74, *&MidX));
  if (v68 > 2)
  {
    v88 = *(v0 + 88);
    outlined consume of MagicGenerativePlaygroundContext(*(v0 + 96), *(v0 + 104), 3u);
    outlined consume of MagicGenerativePlaygroundContext(0, 0, 3u);
    v89 = [v88 window];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 firstResponder];
    }

    else
    {
      v91 = 0;
    }

    swift_unknownObjectWeakAssign();

    v94 = swift_unknownObjectWeakLoadStrong();
    [v94 resignFirstResponder];
  }

  else
  {
    v75 = *(v0 + 96);
    v76 = *(v0 + 104);
    v77 = *(v0 + 33);
    outlined copy of MagicGenerativePlaygroundContext(v75, v76, v77);
    outlined consume of MagicGenerativePlaygroundContext(v75, v76, v77);
    outlined consume of MagicGenerativePlaygroundContext(0, 0, 3u);
  }

  v95 = *(*(v0 + 88) + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
  if (v95)
  {
    v96 = v95;
    v97 = [v96 imageGenerationEvent];
    if (!v97)
    {
      v97 = [objc_allocWithZone(PPKGPMagicPaperImageGenerationEvent) init];
    }

    v98 = *(v0 + 33);
    [v97 setInvocation_];
    if (v98 == 2)
    {
      v100 = &selRef_setImagesCount_;
      v99 = 1;
    }

    else
    {
      if (v98)
      {
LABEL_53:
        [v96 setImageGenerationEvent_];

        goto LABEL_54;
      }

      v99 = specialized CanvasGenerationTool.countWords(in:)();
      v100 = &selRef_setWordsCount_;
    }

    [v97 *v100];
    goto LABEL_53;
  }

LABEL_54:
  v101 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v101;
  v102 = swift_task_alloc();
  *(v0 + 152) = v102;
  *v102 = v0;
  v102[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);

  return specialized CanvasGenerationTool.generateImageAndReset(context:invocation:)(v0 + 16);
}

{
  v26 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 160));
    if (v2)
    {
      v3 = v2;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      *(v0 + 192) = v4;
      *(v0 + 200) = v6;
      v7 = swift_task_alloc();
      *(v0 + 208) = v7;
      *v7 = v0;
      v7[1] = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);
      v8 = *(v0 + 168);
      v9 = *(v0 + 176);

      return CanvasGenerationTool.addCanvasElement(for:with:)(v1, v8, v9, v4, v6);
    }

    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);

    outlined consume of ImageWithEncodedRecipe?(v13, v11, v12);
  }

  else
  {
  }

  v14 = *(v0 + 88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 144);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1D38C4000, v15, v16, "%s: returning (no image returned)", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1DA6D0660](v20, -1, -1);
    MEMORY[0x1DA6D0660](v19, -1, -1);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);
  }

  else
  {
    v5 = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[11];

  [v7 setHidden_];
  outlined consume of Data._Representation(v1, v2);
  outlined consume of ImageWithEncodedRecipe?(v5, v4, v3);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];

  outlined consume of Data._Representation(v1, v2);
  outlined consume of ImageWithEncodedRecipe?(v5, v4, v3);

  v7 = v0[1];

  return v7();
}

uint64_t CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = v3;

  v6 = v5[15];
  v7 = v5[16];
  if (v3)
  {
    v8 = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);
  }

  else
  {
    v8 = CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t closure #1 in CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v21 = a6;
  v22 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  outlined copy of Data._Representation(a2, a3);
  CRContext.assetManager.getter();
  CRAsset.init(data:assetManager:)();
  v15 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v14, v11, &_s8PaperKit13CRAssetOrDataOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit13CRAssetOrDataOSgMd);
  v16(v25, 0);
  v18 = v21;
  v17 = v22;
  outlined copy of Data._Representation(v21, v22);
  v19 = Capsule.Ref.root.modify();
  v23 = v18;
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.setter();
  return v19(v25, 0);
}

id @objc CanvasGenerationTool.magicGenerativeViewForHitTesting.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
  if (v4)
  {
    v4 = [v4 *a3];
    v3 = vars8;
  }

  return v4;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString) -> () with result type String(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = *(*(v1 + 64) + 40);
  *v3 = v2;
  v3[1] = v4;

  return swift_continuation_resume();
}

uint64_t CanvasGenerationTool.waitForGeneratedImageAndReset()()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.waitForGeneratedImageAndReset(), v3, v2);
}

{
  v18 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001D4090EC0, &v17);
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[20];
  v12 = static MainActor.shared.getter();
  v0[27] = v12;
  v13 = swift_task_alloc();
  v0[28] = v13;
  *(v13 + 16) = v11;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = CanvasGenerationTool.waitForGeneratedImageAndReset();
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 14, v12, v15, 0xD00000000000001FLL, 0x80000001D4090EC0, partial apply for closure #1 in CanvasGenerationTool.waitForGeneratedImageAndReset(), v13, &type metadata for ImageWithEncodedRecipe);
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = CanvasGenerationTool.waitForGeneratedImageAndReset();
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = CanvasGenerationTool.waitForGeneratedImageAndReset();
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[20];
  v5 = v0[21];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
  swift_beginAccess();
  outlined assign with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v5, v4 + v7);
  swift_endAccess();
  CanvasGenerationTool.continuation.didset();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  if (v1)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = partial apply for closure #2 in CanvasGenerationTool.waitForGeneratedImageAndReset();
    v0[7] = v9;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_171;
    v10 = _Block_copy(v0 + 2);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[12] = partial apply for closure #3 in CanvasGenerationTool.waitForGeneratedImageAndReset();
    v0[13] = v11;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v0[11] = &block_descriptor_175;
    v12 = _Block_copy(v0 + 8);

    [v8 animateWithDuration:0x10000 delay:v10 options:v12 animations:0.5 completion:0.25];
    _Block_release(v12);
    _Block_release(v10);
  }

  else
  {
    CanvasGenerationTool.resetGenerativeTool()();
  }

  v13 = v0[1];

  return v13(v1, v2, v3);
}

{
  v24 = v0;
  v1 = v0[30];
  v2 = v0[20];

  v3 = v2;
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136315394;
    v12 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_1D38C4000, v5, v6, "%s Catch error: %@", v9, 0x16u);
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v9, -1, -1);
  }

  else
  {
  }

  v18 = v0[20];
  v17 = v0[21];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
  swift_beginAccess();
  outlined assign with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v17, v18 + v20);
  swift_endAccess();
  CanvasGenerationTool.continuation.didset();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  CanvasGenerationTool.resetGenerativeTool()();

  v21 = v0[1];

  return v21(0, 0, 0);
}

uint64_t closure #1 in CanvasGenerationTool.waitForGeneratedImageAndReset()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
  swift_beginAccess();
  outlined assign with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v6, a2 + v9);
  swift_endAccess();
  CanvasGenerationTool.continuation.didset();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
}

void closure #2 in CanvasGenerationTool.waitForGeneratedImageAndReset()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = [v3 view];

      if (v4)
      {
        [v4 setAlpha_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void closure #3 in CanvasGenerationTool.waitForGeneratedImageAndReset()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CanvasGenerationTool.resetGenerativeTool()();
  }
}

uint64_t closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:), v9, v8);
}

uint64_t closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:)()
{
  v41 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
    *(v0 + 96) = v3;
    if (v3)
    {
      v4 = *(v0 + 120);
      v5 = v3;
      v6 = [v2 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = objc_opt_self();
      v9 = &selRef_blackColor;
      if (v7 != 2)
      {
        v9 = &selRef_whiteColor;
      }

      v10 = [v8 *v9];
      *(v0 + 104) = v10;
      [v5 beginRecipe];
      if (v4 > 1)
      {
        if (v4 != 2)
        {
LABEL_26:
          v35 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
          v36 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
          v37 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
          v38 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
          [v2 bounds];
          CGRect.isFinite.getter(v35, v36, v37, v38);
          v39 = swift_task_alloc();
          *(v0 + 112) = v39;
          *v39 = v0;
          v39[1] = closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:);

          return specialized CanvasGenerationTool.addTitleAndSuggestions(at:)();
        }

        v31 = *(v0 + 48);
        Width = CGImageGetWidth(v31);
        [v5 setSourceImageRatio_];
        v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
        v14.super.isa = UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(v10, 512.0);

        v34 = &selRef_setSourceImage_;
      }

      else
      {
        if (v4)
        {
          v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v12 = *(v0 + 48);
          v11 = *(v0 + 56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1D4058CF0;
          *(v13 + 32) = v12;
          *(v13 + 40) = v11;

          v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        v34 = &selRef_addConcepts_;
      }

      [v5 *v34];

      goto LABEL_26;
    }

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, generativeLogger);
    v21 = v2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v26 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v40);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1D38C4000, v22, v23, "%s returning from the task (magicGenerativeVC is nil)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1DA6D0660](v25, -1, -1);
      MEMORY[0x1DA6D0660](v24, -1, -1);
    }
  }

  else
  {

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, generativeLogger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, &v40);
      _os_log_impl(&dword_1D38C4000, v16, v17, "%s returning from the task (self is nil)", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:), v3, v2);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  [v2 commitRecipe];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:), v8, v7);
}

uint64_t closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:)()
{
  v22 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, generativeLogger);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, &v21);
      _os_log_impl(&dword_1D38C4000, v2, v7, "%s returning from the task (self is nil)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1DA6D0660](v9, -1, -1);
      MEMORY[0x1DA6D0660](v8, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
  if (v3)
  {
    v4 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 setEncodedRecipe_];

LABEL_8:
    goto LABEL_14;
  }

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, generativeLogger);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1D38C4000, v12, v13, "%s returning from the task (magicGenerativeVC is nil)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1DA6D0660](v15, -1, -1);
    MEMORY[0x1DA6D0660](v14, -1, -1);
  }

LABEL_14:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t $defer #1 () in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6CE0C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 setHidden_];

      if (v8 == i)
      {
        return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x798))(MEMORY[0x1E69E7CC0]);
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x798))(MEMORY[0x1E69E7CC0]);
}

uint64_t closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = v14;
  *(v5 + 112) = v15;
  *(v5 + 88) = v13;
  *(v5 + 72) = v12;
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  *(v5 + 120) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 184) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 192) = v9;
  *(v5 + 200) = v8;

  return MEMORY[0x1EEE6DFA0](closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:), v9, v8);
}

uint64_t closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)()
{
  v119 = v0;
  v1 = *(*(v0 + 7) + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
  *(v0 + 26) = v1;
  if (v1)
  {
    v2 = *(v0 + 21);
    v3 = *(v0 + 17);
    v4 = *(v0 + 8);
    v109 = v1;
    [v109 beginRecipe];
    v5 = v4 + 56;
    v6 = -1;
    v7 = -1 << *(v4 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v4 + 56);
    v9 = (63 - v7) >> 6;
    v111 = (v3 + 48);
    v107 = (v3 + 32);
    v108 = v3;
    v114 = v4;

    v10 = 0;
    v110 = MEMORY[0x1E69E7CC0];
    v117 = v0;
    while (1)
    {
      v11 = v10;
      if (!v8)
      {
        break;
      }

LABEL_9:
      v12 = *(v0 + 22);
      v13 = *(v0 + 20);
      v15 = *(v0 + 15);
      v14 = *(v0 + 16);
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v2 + 16))(v12, *(v114 + 48) + *(v2 + 72) * (v16 | (v10 << 6)), v13);
      WeakTagged_10.tagged2.getter();
      (*(v2 + 8))(v12, v13);
      if ((*v111)(v15, 1, v14) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 15), &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
      }

      else
      {
        v17 = *(v0 + 18);
        v18 = *(v0 + 15);
        v19 = *(v0 + 16);
        v20 = *v107;
        (*v107)(v17, v18, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
        }

        v22 = v110[2];
        v21 = v110[3];
        if (v22 >= v21 >> 1)
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v110);
        }

        v23 = *(v117 + 18);
        v24 = *(v117 + 16);
        v110[2] = v22 + 1;
        v20(v110 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v22, v23, v24);
        v0 = v117;
      }
    }

    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_81:
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
        goto LABEL_87;
      }

      if (v10 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v25 = v110[2];
    if (v25)
    {
      v26 = *(v0 + 17);
      v115 = *((*MEMORY[0x1E69E7D40] & **(v0 + 9)) + 0xAC0);
      v27 = v110 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
      v112 = *(v108 + 72);
      v28 = *(v26 + 16);
      v29 = (v26 + 8);
      v30 = MEMORY[0x1E69E7CC0];
      do
      {
        v32 = *(v117 + 19);
        v33 = *(v117 + 16);
        v28(v32, v27, v33);
        v34 = v115(v32);
        v36 = v35;
        (*v29)(v32, v33);
        if (v36 >> 60 != 15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v38 = *(v30 + 2);
          v37 = *(v30 + 3);
          if (v38 >= v37 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v30);
          }

          *(v30 + 2) = v38 + 1;
          v31 = &v30[16 * v38];
          *(v31 + 4) = v34;
          *(v31 + 5) = v36;
        }

        v27 += v112;
        --v25;
      }

      while (v25);

      v39 = *(v30 + 2);
      if (v39)
      {
        goto LABEL_26;
      }

LABEL_45:
      v42 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
      v39 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v39)
      {
        goto LABEL_45;
      }

LABEL_26:
      v40 = 0;
      v116 = v39;
      v113 = v39 - 1;
      v41 = v30 + 40;
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v0 = &v41[16 * v40];
        v43 = v40;
        while (1)
        {
          if (v43 >= *(v30 + 2))
          {
            goto LABEL_81;
          }

          v44 = v42;
          v45 = *(v0 - 1);
          v46 = *v0;
          v40 = v43 + 1;
          v47 = objc_opt_self();
          outlined copy of Data._Representation(v45, v46);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v49 = [v47 promptsFromRecipeData_];

          if (v49)
          {
            break;
          }

          outlined consume of Data._Representation(v45, v46);
          v0 += 16;
          ++v43;
          v42 = v44;
          if (v116 == v40)
          {
            goto LABEL_46;
          }
        }

        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        outlined consume of Data._Representation(v45, v46);

        v42 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
        }

        v52 = v42[2];
        v51 = v42[3];
        if (v52 >= v51 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v42);
        }

        v42[2] = v52 + 1;
        v42[v52 + 4] = v50;
        v41 = v30 + 40;
      }

      while (v113 != v43);
    }

LABEL_46:

    v66 = v42[2];
    if (v66)
    {
      v0 = 0;
      v67 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v0 >= v42[2])
        {
          goto LABEL_82;
        }

        v68 = v42[v0 + 4];
        v69 = *(v68 + 16);
        v70 = *(v67 + 2);
        v71 = v70 + v69;
        if (__OFADD__(v70, v69))
        {
          goto LABEL_83;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v71 <= *(v67 + 3) >> 1)
        {
          if (!*(v68 + 16))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v70 <= v71)
          {
            v73 = v70 + v69;
          }

          else
          {
            v73 = v70;
          }

          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v73, 1, v67);
          if (!*(v68 + 16))
          {
LABEL_48:

            if (v69)
            {
              goto LABEL_84;
            }

            goto LABEL_49;
          }
        }

        if ((*(v67 + 3) >> 1) - *(v67 + 2) < v69)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        if (v69)
        {
          v74 = *(v67 + 2);
          v75 = __OFADD__(v74, v69);
          v76 = v74 + v69;
          if (v75)
          {
            goto LABEL_86;
          }

          *(v67 + 2) = v76;
        }

LABEL_49:
        ++v0;
      }

      while (v66 != v0);
    }

    v77 = *(v117 + 10);

    v78 = Array._bridgeToObjectiveC()().super.isa;

    [v109 setConcepts_];

    v79 = *(v117 + 11);
    if (v77)
    {
      v80 = *(v117 + 10);
      v81 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v82 = v80;
      v83 = [v81 initWithWhite:0.0 alpha:0.0];
      v84 = UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(v83, 512.0);

      v85 = UIImage.alphaMaskForSketch()();
      [v109 setSketchMask_];
      v86 = v109;
      if (v79)
      {
        v87 = *(v117 + 12);
        v88 = *(v117 + 11);
        [v88 size];
        v90 = v89;
        [v88 size];
        v92 = v90 / v91;
        v93 = UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(v87, 512.0);
        *(v117 + 5) = &type metadata for PencilAndPaperFeatureFlags;
        *(v117 + 6) = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
        v117[16] = 12;
        v94 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0((v117 + 16));
        v95 = v117;
        if (v94)
        {
          [v109 setSketchImage_];
        }

        [v109 setSourceImage_];
        [v109 setSourceImageRatio_];
        [v109 setGenerateCaptionFromImage_];
        [v109 setSanitizationCategory_];
      }

      else
      {
        [v109 setSketchImage_];
        [v109 setSanitizationCategory_];

        v95 = v117;
      }
    }

    else if (v79)
    {
      v96 = *(v117 + 12);
      v97 = v79;
      [v97 size];
      v99 = v98;
      v95 = v117;
      [v97 size];
      v101 = v99 / v100;
      v102 = UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(v96, 512.0);
      v86 = v109;
      [v109 setSourceImage_];

      [v109 setSourceImageRatio_];
      [v109 setGenerateCaptionFromImage_];
      [v109 setSanitizationCategory_];
    }

    else
    {
      v86 = v109;
      [v109 setSourceImage_];
      [v109 setSanitizationCategory_];
      v95 = v117;
    }

    v103 = *(v95 + 13);
    [v86 setSketchComplexityMeasure_];
    if (*(v103 + 16))
    {
      v104 = Array._bridgeToObjectiveC()().super.isa;
      [v86 addConcepts_];
    }

    if (*(*(v95 + 14) + 16))
    {
      v105 = Array._bridgeToObjectiveC()().super.isa;
      [v86 addSuggestions_];
    }

    [*(v95 + 7) frame];
    v106 = swift_task_alloc();
    *(v95 + 27) = v106;
    *v106 = v95;
    v106[1] = closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:);

    return specialized CanvasGenerationTool.addTitleAndSuggestions(at:)();
  }

  else
  {

    if (one-time initialization token for generativeLogger != -1)
    {
LABEL_87:
      swift_once();
    }

    v53 = v0;
    v54 = *(v0 + 7);
    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, generativeLogger);
    v56 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v118 = v60;
      *v59 = 136315138;
      v61 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v118);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1D38C4000, v57, v58, "%s returning (magicGenerativeVC is nil)", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1DA6D0660](v60, -1, -1);
      MEMORY[0x1DA6D0660](v59, -1, -1);
    }

    v64 = *(v53 + 1);

    return v64();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:), v3, v2);
}

{
  v1 = *(v0 + 208);

  [v1 commitRecipe];

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CanvasGenerationTool.placeMagicGenerativePlayground(for:)(PaperKit::MagicGenerativePlaygroundState a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v59 - v5;
  v7 = *v3;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, generativeLogger);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v59[0] = v6;
    v59[1] = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v60.a = v13;
    *v12 = 136315650;
    v14 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v60);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001D4090E90, &v60);
    *(v12 + 22) = 2080;
    if (v7 > 4)
    {
      v25 = 0x80000001D4081340;
      v26 = 0xD000000000000011;
      v27 = 0x65746172656E6567;
      v28 = 0x80000001D4081360;
      if (v7 == 8)
      {
        v28 = 0xE900000000000064;
      }

      else
      {
        v27 = 0xD000000000000010;
      }

      if (v7 != 7)
      {
        v26 = v27;
        v25 = v28;
      }

      v29 = 0x80000001D4081300;
      if (v7 == 5)
      {
        v30 = 0xD000000000000018;
      }

      else
      {
        v30 = 0xD000000000000017;
      }

      if (v7 != 5)
      {
        v29 = 0x80000001D4081320;
      }

      if (v7 <= 6)
      {
        v23 = v30;
      }

      else
      {
        v23 = v26;
      }

      if (v7 <= 6)
      {
        v24 = v29;
      }

      else
      {
        v24 = v25;
      }
    }

    else
    {
      v17 = 0x656C6553646E6177;
      v18 = 0xED00006E6F697463;
      v19 = 0x80000001D40812C0;
      v20 = 0xD000000000000016;
      if (v7 == 3)
      {
        v20 = 0xD000000000000017;
      }

      else
      {
        v19 = 0x80000001D40812E0;
      }

      if (v7 != 2)
      {
        v17 = v20;
        v18 = v19;
      }

      v21 = 0x696C616974696E69;
      v22 = 0xEB0000000064657ALL;
      if (!v7)
      {
        v21 = 0x616974696E696E75;
        v22 = 0xED000064657A696CLL;
      }

      if (v7 <= 1)
      {
        v23 = v21;
      }

      else
      {
        v23 = v17;
      }

      if (v7 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v60);

    *(v12 + 24) = v31;
    _os_log_impl(&dword_1D38C4000, v10, v11, "%s - %s: (state = %s)", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v13, -1, -1);
    MEMORY[0x1DA6D0660](v12, -1, -1);

    v6 = v59[0];
  }

  else
  {
  }

  *&v60.d = &type metadata for PencilAndPaperFeatureFlags;
  *&v60.tx = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v60.a) = 2;
  v32 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v60);
  if ((v32 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v33 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC;
  v34 = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
  if (!v34)
  {
    v35 = [objc_allocWithZone(PPKGPInProcessMagicPaperViewController) initWithTokenProvider_];
    LOBYTE(v60.a) = 1;
    CanvasGenerationTool.magicGenerativeState.setter(&v60);
    v36 = *&v9[v33];
    *&v9[v33] = v35;
    v37 = v35;

    v38 = &v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasGenerationToolDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(v38 + 1);
      ObjectType = swift_getObjectType();
      (*(v39 + 8))(v9, v37, ObjectType, v39);

      swift_unknownObjectRelease();
      v34 = *&v9[v33];
      if (!v34)
      {
        goto LABEL_46;
      }
    }

    else
    {

      v34 = *&v9[v33];
      if (!v34)
      {
LABEL_46:
        lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
        swift_allocError();
        *v43 = xmmword_1D405FCB0;
        *(v43 + 16) = 2;
        swift_willThrow();
        return;
      }
    }
  }

  v41 = v34;
  v42 = [(PPKGPInProcessMagicPaperViewController *)v41 view];
  if (!v42)
  {

    goto LABEL_46;
  }

  LOBYTE(v60.a) = v7;
  CanvasGenerationTool.magicGenerativeState.setter(&v60);
  [(PPKGPInProcessMagicPaperViewController *)v41 setDelegate:v9];
  if (v7 == 2)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      v53 = type metadata accessor for TaskPriority();
      (*(*(v53 - 8) + 56))(v6, 1, 1, v53);
      type metadata accessor for MainActor();
      v54 = v9;
      v55 = v41;
      v56 = static MainActor.shared.getter();
      v57 = swift_allocObject();
      v58 = MEMORY[0x1E69E85E0];
      v57[2] = v56;
      v57[3] = v58;
      v57[4] = v54;
      v57[5] = v55;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:), v57);

      return;
    }
  }

  CanvasGenerationTool.insertMagicGenerationViewController(_:)(v41);
  x = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  y = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
  width = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
  height = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
  [v9 bounds];
  v50 = v49;
  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v51 = *&v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth];
    if (v51 > 0.0 && v50 > 0.0)
    {
      CGAffineTransformMakeScale(&v60, v50 / v51, v50 / v51);
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v62 = CGRectApplyAffineTransform(v61, &v60);
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
    }
  }

  v52 = [objc_allocWithZone(PPKGPMagicPaperState) initWithFrame:0 isEditing:{x, y, width, height}];
  [(PPKGPInProcessMagicPaperViewController *)v41 setState:v52];
}

uint64_t closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:), v7, v6);
}

uint64_t closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:)()
{
  v19 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  CanvasGenerationTool.hideToolPickerIfNeeded()();
  CanvasGenerationTool.insertMagicGenerationViewController(_:)(v1);
  x = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  y = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 8];
  width = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 16];
  height = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame + 24];
  [v2 bounds];
  v8 = v7;
  if (CGRect.isFinite.getter(x, y, width, height))
  {
    v9 = *(*(v0 + 64) + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth);
    if (v9 > 0.0 && v8 > 0.0)
    {
      CGAffineTransformMakeScale(&v18, v8 / v9, v8 / v9);
      v10 = *&v18.c;
      v11 = *&v18.tx;
      *(v0 + 16) = *&v18.a;
      *(v0 + 32) = v10;
      *(v0 + 48) = v11;
      v12 = x;
      *&v10 = y;
      *&v11 = width;
      v13 = height;
      v21 = CGRectApplyAffineTransform(*(&v10 - 8), (v0 + 16));
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
    }
  }

  v14 = *(v0 + 72);
  v15 = [objc_allocWithZone(PPKGPMagicPaperState) initWithFrame:1 isEditing:{x, y, width, height}];
  [v14 setState_];

  CanvasGenerationTool.addMagicGenerativeBackgroundView()();
  v16 = *(v0 + 8);

  return v16();
}

Swift::Void __swiftcall CanvasGenerationTool.insertMagicGenerationViewController(_:)(PPKGPInProcessMagicPaperViewController *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView];
  if (v4 || (CanvasGenerationTool.addMagicGenerativeBackgroundView()(), (v4 = *&v1[v3]) != 0))
  {
    v15 = v4;
    v5 = [(PPKGPInProcessMagicPaperViewController *)a1 view];
    if (v5)
    {
      v6 = &v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_cachedMagicFrame];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      v6[32] = 1;
      v7 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      LODWORD(v8) = 1148846080;
      [v7 setContentHuggingPriority:1 forAxis:v8];
      LODWORD(v9) = 1148846080;
      [v7 setContentCompressionResistancePriority:1 forAxis:v9];
      v10 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView;
      [*&v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView] addSubview_];
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addChildViewController_];

      v12 = *&v1[v10];
      [v1 frame];
      Width = CGRectGetWidth(v17);
      [v1 frame];
      [v12 setContentSize_];

      specialized static NSLayoutConstraint.constrain(_:to:)(v7, v15);
      [v1 layoutIfNeeded];

      v14 = v7;
    }

    else
    {
      v14 = v15;
    }
  }
}

Swift::Void __swiftcall CanvasGenerationTool.showBlurEffect(animationDuration:)(Swift::Double animationDuration)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315138;
    v9 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D38C4000, v5, v6, "%s: show blur effect", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1DA6D0660](v8, -1, -1);
    MEMORY[0x1DA6D0660](v7, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_blurView];
  if (v12)
  {
    v21 = v12;
    if ([v21 isHidden])
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v21;
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for closure #1 in CanvasGenerationTool.showBlurEffect(animationDuration:);
      *(v15 + 24) = v14;
      v26 = partial apply for thunk for @callee_guaranteed () -> ();
      v27 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed () -> ();
      v25 = &block_descriptor_154_0;
      v16 = _Block_copy(&aBlock);
      v17 = v21;

      [v13 performWithoutAnimation_];
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if (v16)
      {
        __break(1u);
      }

      else
      {
        if (animationDuration <= 0.0)
        {
          animationDuration = 0.5;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        v26 = partial apply for closure #2 in CanvasGenerationTool.showBlurEffect(animationDuration:);
        v27 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v25 = &block_descriptor_160_0;
        v19 = _Block_copy(&aBlock);
        v20 = v17;

        [v13 animateWithDuration:v19 animations:animationDuration];
        _Block_release(v19);
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CanvasGenerationTool.hideBlurEffect(animationDuration:)(Swift::Double animationDuration)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315138;
    v9 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D38C4000, v5, v6, "%s: hide blur effect", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1DA6D0660](v8, -1, -1);
    MEMORY[0x1DA6D0660](v7, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_blurView];
  if (v12)
  {
    v20 = v12;
    if ([v20 isHidden])
    {
    }

    else
    {
      if (animationDuration <= 0.0)
      {
        animationDuration = 0.5;
      }

      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v20;
      v25 = partial apply for closure #1 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      v26 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v24 = &block_descriptor_139;
      v15 = _Block_copy(&aBlock);
      v16 = v20;

      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      v25 = partial apply for closure #2 in CanvasGenerationTool.hideBlurEffect(animationDuration:);
      v26 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v24 = &block_descriptor_145;
      v18 = _Block_copy(&aBlock);
      v19 = v16;

      [v13 animateWithDuration:v15 animations:v18 completion:animationDuration];
      _Block_release(v18);
      _Block_release(v15);
    }
  }
}

Swift::Void __swiftcall CanvasGenerationTool.addMagicGenerativeBackgroundView()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v46);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001D4090E40, &v46);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView;
  if (*&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView])
  {
    v11 = v2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v13 = 136315138;
      v15 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v46);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D38C4000, oslog, v12, "%s returning (magicGenerativeBackgroundView is NOT nil)", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1DA6D0660](v14, -1, -1);
      MEMORY[0x1DA6D0660](v13, -1, -1);
    }

    v18 = oslog;
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    [v19 setUserInteractionEnabled_];
    v21 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView;
    [*&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_containerScrollView] setContentInset_];
    v22 = [v19 topAnchor];
    v23 = [*&v2[v21] contentLayoutGuide];
    v24 = [v23 topAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    v26 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint;
    v27 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint];
    *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint] = v25;

    [*&v2[v21] addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D4072790;
    v29 = [v19 widthAnchor];
    v30 = [v2 widthAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v28 + 32) = v31;
    v32 = [v19 trailingAnchor];
    v33 = [v2 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v28 + 40) = v34;
    v35 = [v19 heightAnchor];
    [v2 frame];
    v36 = [v35 constraintEqualToConstant_];

    *(v28 + 48) = v36;
    v37 = *&v2[v26];
    if (!v37)
    {
      __break(1u);
      return;
    }

    v38 = objc_opt_self();
    *(v28 + 56) = v37;
    v39 = v37;
    v40 = [v19 leadingAnchor];
    v41 = [*&v2[v21] contentLayoutGuide];
    v42 = [v41 leadingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v28 + 64) = v43;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints_];

    v18 = *&v2[v10];
    *&v2[v10] = v19;
  }
}

Swift::Void __swiftcall CanvasGenerationTool.allocateGenerationFrame(for:with:)(CGSize a1, CGPoint with)
{
  y = with.y;
  x = with.x;
  height = a1.height;
  width = a1.width;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, generativeLogger);
  v8 = v2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v93[0].i64[0] = v12;
    *v11 = 136315906;
    v13 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v93[0].i64);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001D4090E10, v93[0].i64);
    *(v11 + 22) = 2080;
    v16 = CGSize.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v93[0].i64);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2080;
    v19 = CGPoint.debugDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v93[0].i64);

    *(v11 + 34) = v21;
    _os_log_impl(&dword_1D38C4000, v9, v10, "%s - %s: (imageSize = %s, preferredCenter = %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v12, -1, -1);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  if (width == 0.0 && height == 0.0)
  {
    v22 = 320.0;
    v23 = 320.0;
  }

  else
  {
    v24 = 800.0;
    if (width <= 800.0)
    {
      v25 = width;
    }

    else
    {
      v25 = 800.0;
    }

    if (height <= 800.0)
    {
      v24 = height;
    }

    if (v25 > 320.0)
    {
      v22 = v25;
    }

    else
    {
      v22 = 320.0;
    }

    if (v24 > 320.0)
    {
      v23 = v24;
    }

    else
    {
      v23 = 320.0;
    }
  }

  [v8 bounds];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (x == 0.0 && y == 0.0 || (v95.x = x, v95.y = y, !CGRectContainsPoint(*&v26, v95)))
  {
    v96.origin.x = v30;
    v96.origin.y = v31;
    v96.size.width = v32;
    v96.size.height = v33;
    x = CGRectGetMidX(v96);
    v97.origin.x = v30;
    v97.origin.y = v31;
    v97.size.width = v32;
    v97.size.height = v33;
    y = CGRectGetMidY(v97);
  }

  v34 = y - v23 * 0.5;
  v35 = 80.0;
  v83 = v34;
  v98.top = 80.0;
  v98.left = 80.0;
  v98.bottom = 80.0;
  v98.right = 80.0;
  v103.origin.x = v30;
  v103.origin.y = v31;
  v103.size.width = v32;
  v103.size.height = v33;
  v99 = CGRect.withSafeArea(insets:in:)(v98, v103);
  v36 = &v8[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  *v36 = v99;
  [v8 bounds];
  v37 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth;
  *&v8[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth] = v38;
  v39 = *v36;
  if (v36[1] > 80.0)
  {
    v35 = v36[1];
  }

  v40 = v36[2];
  if (v36[3] > 530.0)
  {
    v41 = v36[3];
  }

  else
  {
    v41 = 530.0;
  }

  v36[1] = v35;
  v36[3] = v41;
  if (CGRect.isFinite.getter(v39, v35, v40, v41) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v43 = Strong;
    v44 = [v8 convertRect:Strong toCoordinateSpace:{v39, v35, v40, v41}];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = MEMORY[0x1E69E7D40];
    v54 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x440))(v44);
    (*((*v53 & *v54) + 0x2C0))(v90);
    v84 = v90[1];
    v85 = v90[0];
    v55 = v91;
    v56 = v92;

    (*((*v53 & *v43) + 0x858))(v93);
    if (v94)
    {
      v57 = -1;
    }

    else
    {
      v57 = 0;
    }

    v58 = vdupq_n_s64(v57);
    *&t1.a = v85;
    *&t1.c = v84;
    t1.tx = v55;
    t1.ty = v56;
    *&t2.a = vbslq_s8(v58, xmmword_1D4059320, v93[0]);
    *&t2.c = vbslq_s8(v58, xmmword_1D4059310, v93[1]);
    *&t2.tx = vbicq_s8(v93[2], v58);
    CGAffineTransformConcat(&v87, &t1, &t2);
    t1 = v87;
    CGAffineTransformInvert(&t2, &t1);
    t1 = t2;
    v100.origin.x = v46;
    v100.origin.y = v48;
    v100.size.width = v50;
    v100.size.height = v52;
    v101 = CGRectApplyAffineTransform(v100, &t1);
    v59 = v101.origin.x;
    v60 = v101.origin.y;
    v61 = v101.size.width;
    v62 = v101.size.height;

    v63 = &v8[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_knownCanvasGenerationFrameInModelSpace];
    *v63 = v59;
    v63[1] = v60;
    v63[2] = v61;
    v63[3] = v62;
    *(v63 + 32) = 0;
  }

  else
  {
    v64 = &v8[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_knownCanvasGenerationFrameInModelSpace];
    *v64 = 0u;
    *(v64 + 1) = 0u;
    v64[32] = 1;
  }

  v65 = v8;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v86 = v37;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&t2.a = v69;
    *v68 = 136315394;
    v70 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &t2);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    v73 = *v36;
    v74 = v36[1];
    v75 = v36[2];
    v76 = v36[3];
    [v65 bounds];
    v78 = v77;
    if (CGRect.isFinite.getter(v73, v74, v75, v76))
    {
      v79 = *&v8[v86];
      if (v79 > 0.0 && v78 > 0.0)
      {
        CGAffineTransformMakeScale(&t1, v78 / v79, v78 / v79);
        v102.origin.x = v73;
        v102.origin.y = v74;
        v102.size.width = v75;
        v102.size.height = v76;
        CGRectApplyAffineTransform(v102, &t1);
      }
    }

    v80 = CGRect.debugDescription.getter();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &t2);

    *(v68 + 14) = v82;
    _os_log_impl(&dword_1D38C4000, v66, v67, "%s Calculated generationFrame = %s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v69, -1, -1);
    MEMORY[0x1DA6D0660](v68, -1, -1);
  }
}

uint64_t CanvasGenerationTool.addCanvasElement(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v6[45] = type metadata accessor for MainActor();
  v6[46] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[47] = v8;
  v6[48] = v7;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.addCanvasElement(for:with:), v8, v7);
}

uint64_t CanvasGenerationTool.addCanvasElement(for:with:)()
{
  v60 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v59.a = v7;
    *v6 = 136315394;
    v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v59);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001D4090DF0, &v59);
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 392) = Strong;
  if (Strong)
  {
    v12 = Strong;
    v13 = CanvasGenerationTool.generationFrameInCanvas.getter();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = MEMORY[0x1E69E7D40];
    v21 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x440))();
    (*((*v20 & *v21) + 0x2C0))();
    v55 = *(v0 + 88);
    v56 = *(v0 + 72);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);

    (*((*v20 & *v12) + 0x858))();
    if (*(v0 + 64))
    {
      v24 = xmmword_1D4059310;
      v25 = xmmword_1D4059320;
      v26 = 0uLL;
    }

    else
    {
      v24 = *(v0 + 32);
      v26 = *(v0 + 48);
      v25 = *(v0 + 16);
    }

    v30 = *(v0 + 352);
    v32 = *(v0 + 336);
    v31 = *(v0 + 344);
    v58 = *(v0 + 328);
    v57 = *(v0 + 312);
    *(v0 + 136) = v55;
    *(v0 + 120) = v56;
    *(v0 + 152) = v22;
    *(v0 + 160) = v23;
    *(v0 + 168) = v25;
    *(v0 + 184) = v24;
    *(v0 + 200) = v26;
    CGAffineTransformConcat(&v59, (v0 + 120), (v0 + 168));
    v33 = *&v59.c;
    v34 = *&v59.tx;
    *(v0 + 216) = *&v59.a;
    *(v0 + 232) = v33;
    *(v0 + 248) = v34;
    CGAffineTransformInvert(&v59, (v0 + 216));
    v35 = *&v59.c;
    v36 = *&v59.tx;
    *(v0 + 264) = *&v59.a;
    *(v0 + 280) = v35;
    *(v0 + 296) = v36;
    v37 = v13;
    *&v35 = v15;
    *&v36 = v17;
    v38 = v19;
    v62 = CGRectApplyAffineTransform(*(&v35 - 8), (v0 + 264));
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    v43 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v45 = [v43 initWithData_];

    v46 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    *(v0 + 400) = v46;

    v47 = v46;
    [v47 setContentMode_];
    [v47 setFrame_];
    [v47 setAlpha_];

    [v12 addSubview_];
    v48 = *(v30 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_blurView);
    *(v0 + 408) = v48;
    v49 = v48;
    v50 = static MainActor.shared.getter();
    *(v0 + 416) = v50;
    v51 = swift_task_alloc();
    *(v0 + 424) = v51;
    *(v51 + 16) = x;
    *(v51 + 24) = y;
    *(v51 + 32) = width;
    *(v51 + 40) = height;
    *(v51 + 48) = v47;
    *(v51 + 56) = v48;
    *(v51 + 64) = v12;
    *(v51 + 72) = v32;
    *(v51 + 80) = v31;
    *(v51 + 88) = v57;
    *(v51 + 104) = v58;
    *(v51 + 112) = v30;
    v52 = swift_task_alloc();
    *(v0 + 432) = v52;
    *v52 = v0;
    v52[1] = CanvasGenerationTool.addCanvasElement(for:with:);
    v53 = MEMORY[0x1E69E85E0];
    v54 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 65, v50, v53, 0xD00000000000001BLL, 0x80000001D4090DF0, partial apply for closure #1 in CanvasGenerationTool.addCanvasElement(for:with:), v51, v54);
  }

  else
  {

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v27 = xmmword_1D4076F40;
    *(v27 + 16) = 2;
    swift_willThrow();
    v28 = *(v0 + 8);

    return v28(0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.addCanvasElement(for:with:), v3, v2);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);

  v4 = *(v0 + 65);
  v5 = *(v0 + 8);

  return v5(v4);
}

void closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, double a9, double a10, double a11, double a12, unint64_t a13, void *a14)
{
  v53 = a7;
  v54 = a8;
  v52 = a6;
  v43 = a5;
  v44 = a4;
  v49 = a1;
  v50 = a14;
  v45 = a13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v22 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v24 = &v41 - v23;
  v42 = &v41 - v23;
  v55 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v60 = partial apply for closure #1 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:);
  v61 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v47 = &v58;
  v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v59 = &block_descriptor_62;
  v51 = _Block_copy(&aBlock);
  v48 = a3;
  v26 = a2;

  v27 = v46;
  (*(v22 + 16))(v24, v49, v46);
  v28 = (*(v22 + 80) + 120) & ~*(v22 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a9;
  *(v29 + 32) = a10;
  *(v29 + 40) = a11;
  *(v29 + 48) = a12;
  *(v29 + 56) = a5;
  v30 = v52;
  *(v29 + 64) = v52;
  *(v29 + 72) = a4;
  v31 = v53;
  v32 = v54;
  *(v29 + 80) = v53;
  *(v29 + 88) = v32;
  *(v29 + 96) = a13;
  v33 = v50;
  *(v29 + 104) = v50;
  *(v29 + 112) = v26;
  (*(v22 + 32))(v29 + v28, v42, v27);
  v60 = partial apply for closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:);
  v61 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v59 = &block_descriptor_112_0;
  v34 = _Block_copy(&aBlock);
  v35 = v26;
  v36 = v48;
  outlined copy of Data._Representation(v43, v30);
  v37 = v44;
  v38 = v31;
  outlined copy of Data._Representation(v32, v45);
  v39 = v33;

  v40 = v51;
  [v55 animateWithDuration:0x10000 delay:v51 options:v34 animations:0.5 completion:0.25];
  _Block_release(v34);
  _Block_release(v40);
}

uint64_t closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(int a1, void *a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8, double a9, double a10, double a11, double a12, void *a13, void *a14)
{
  v62 = a6;
  v63 = a7;
  v61 = a4;
  v65 = a1;
  v67 = a14;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v60 = &v60 - v23;
  v24 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v25 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = objc_opt_self();
  [v64 begin];
  if (a2)
  {
    [a2 setHidden_];
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v66 = swift_allocBox();
  v28 = v27;
  Image.init()();
  static CRKeyPath.unique.getter();
  v29 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v30 = Capsule.init(_:id:)();
  MEMORY[0x1EEE9AC00](v30);
  *(&v60 - 10) = a9;
  *(&v60 - 9) = a10;
  *(&v60 - 8) = a11;
  *(&v60 - 7) = a12;
  v32 = v61;
  v31 = v62;
  *(&v60 - 6) = a3;
  *(&v60 - 5) = v32;
  *(&v60 - 4) = a5;
  *(&v60 - 3) = v31;
  *(&v60 - 2) = v63;
  *(&v60 - 1) = a8;
  v33 = Capsule.callAsFunction<A>(_:)();
  v34 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x440))(v33);
  v36 = v35;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7CapsuleVy8PaperKit5ImageVGGMd);
  v38 = *(v26 - 8);
  v39 = *(v38 + 80);
  v63 = a5;
  v40 = (v39 + 32) & ~v39;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D4058CF0;
  (*(v38 + 16))(v41 + v40, v28, v26);
  (*(v36 + 88))(v41, v25, v29, &protocol witness table for Image, ObjectType, v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  [v64 commit];
  if (v65)
  {
    v42 = type metadata accessor for TaskPriority();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v45 = v67;
    v46 = v66;

    v47 = static MainActor.shared.getter();
    v48 = swift_allocObject();
    v49 = MEMORY[0x1E69E85E0];
    v48[2] = v47;
    v48[3] = v49;
    v48[4] = v44;
    v48[5] = v45;
    v48[6] = v46;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:), v48);

    LOBYTE(v68) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, generativeLogger);
    v51 = a13;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68 = v55;
      *v54 = 136315138;
      v56 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v68);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1D38C4000, v52, v53, "%s: animation has been cancelled", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1DA6D0660](v55, -1, -1);
      MEMORY[0x1DA6D0660](v54, -1, -1);
    }

    [v67 removeFromSuperview];
  }
}

uint64_t closure #1 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v24 - v20;
  swift_getKeyPath();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  v24 = 0.0;
  v25 = 0.0;
  v26 = a3;
  v27 = a4;
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  outlined copy of Data._Representation(a6, a7);
  CRContext.assetManager.getter();
  CRAsset.init(data:assetManager:)();
  v22 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  v24 = *&a10;
  v25 = *&a11;
  outlined copy of Data._Representation(a10, a11);
  return Capsule.Ref.subscript.setter();
}

uint64_t closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for CRKeyPath();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_projectBox();
  v5[17] = type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[19] = v8;
  *v8 = v5;
  v8[1] = closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:);

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)()
{
  *(*v1 + 160) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:);
  }

  else
  {
    v4 = closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = [*(v0 + 72) removeFromSuperview];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x440))(v7);
    v10 = v9;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    (*(v6 + 16))(v3, v4, v5);
    Capsule.rootID.getter();
    (*(v6 + 8))(v3, v5);
    v12 = (*(v10 + 40))(ObjectType, v10);

    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 96)), (v14 & 1) != 0))
    {
      v15 = *(v0 + 96);
      v16 = *(v0 + 80);
      v17 = *(*(v0 + 88) + 8);
      v18 = *(*(v12 + 56) + 8 * v13);
      v17(v15, v16);

      v19 = v18;
      v20 = specialized CanvasMembers.init(_:)(v19);
      AnyCanvas.selection.setter(v20, v22, v23, v21 & 1);
    }

    else
    {
      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 80);

      (*(v25 + 8))(v24, v26);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void CanvasGenerationTool.removeMagicGenerativeBackgroundViewIfNeeded()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x80000001D4090DC0, &v23);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView;
  v11 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView];
  if (v11)
  {
    v22 = v11;
    [v22 removeFromSuperview];
    v12 = *&v2[v10];
    *&v2[v10] = 0;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if ([Strong canBecomeFirstResponder])
      {
        [v14 becomeFirstResponder];

        swift_unknownObjectWeakAssign();
        return;
      }
    }
  }

  else
  {
    v15 = v2;
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D38C4000, v22, v16, "%s returning (magicGenerativeBackgroundView is nil)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1DA6D0660](v18, -1, -1);
      MEMORY[0x1DA6D0660](v17, -1, -1);
    }
  }
}

Swift::Void __swiftcall CanvasGenerationTool.resetGenerativeTool()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v26);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001D4090D30, &v26);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC;
  v11 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
  if (v11)
  {
    v12 = v2;
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D38C4000, v14, v15, "%s magicGenerativeVC clean up", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1DA6D0660](v17, -1, -1);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    LOBYTE(v26) = 0;
    CanvasGenerationTool.magicGenerativeState.setter(&v26);
    v21 = *&v2[v10];
    *&v2[v10] = 0;

    v22 = [v13 view];
    [v22 removeFromSuperview];

    [v13 removeFromParentViewController];
  }

  CanvasGenerationTool.removeMagicGenerativeBackgroundViewIfNeeded()();
  [v2 setHidden_];
  v23 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath];
  *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath] = 0;

  v24 = &v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame];
  v25 = *(MEMORY[0x1E695F050] + 16);
  *v24 = *MEMORY[0x1E695F050];
  *(v24 + 1) = v25;
  *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth] = 0;
  CanvasGenerationTool.showToolPickerIfNeeded()();
  CanvasGenerationTool.hideBlurEffect(animationDuration:)(0.0);
}

Swift::Void __swiftcall CanvasGenerationTool.didMoveToWindow()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CanvasGenerationTool();
  objc_msgSendSuper2(&v12, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, generativeLogger);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D38C4000, v4, v5, "%s magicGenerativeVC did move to nil window", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1DA6D0660](v7, -1, -1);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    CanvasGenerationTool.showToolPickerIfNeeded()();
  }
}

Swift::Void __swiftcall CanvasGenerationTool.hideToolPickerIfNeeded()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001D4090D10, &v15);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v10 = [v2 window];
  if (v10)
  {
    v11 = v10;
    v14 = [objc_opt_self() activeToolPickerForWindow_];

    if (v14)
    {
      if ([v14 isVisible])
      {
        v12 = *&v2[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
        if (v12)
        {
          [v12 becomeFirstResponder];
        }

        if (([v14 isVisible] & 1) == 0)
        {
          v13 = [objc_opt_self() defaultCenter];
          [v13 addObserver:v2 selector:sel_handleToolPickerVisibilityDidChange_ name:*MEMORY[0x1E6978600] object:0];
        }
      }
    }
  }
}

void CanvasGenerationTool.handleToolPickerVisibilityDidChange(_:)()
{
  v1 = v0;
  Notification.object.getter();
  if (!v18[3])
  {
    v17 = v18;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sypSgMd);
    return;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v19;
  v3 = Notification.userInfo.getter();
  if (!v3)
  {

    v19 = 0u;
    v20 = 0u;
    goto LABEL_19;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v18);
    v19 = 0u;
    v20 = 0u;

LABEL_19:
    v17 = &v19;
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v19);
  outlined destroy of AnyHashable(v18);

  if (!*(&v20 + 1))
  {

    goto LABEL_19;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIWindowScene);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v7 = v18[0];
  v8 = [v1 window];
  v9 = [v8 windowScene];

  if (!v9)
  {

    goto LABEL_25;
  }

  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
LABEL_25:

    return;
  }

  v11 = v2;
  v12 = [v1 window];
  if (v12 && (v13 = v12, v14 = [objc_opt_self() activeToolPickerForWindow_], v13, v14))
  {
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      if ([v11 isVisible])
      {
        v16 = [objc_opt_self() defaultCenter];
        [v16 removeObserver:v1 name:*MEMORY[0x1E6978600] object:0];
      }
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall CanvasGenerationTool.showToolPickerIfNeeded()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    v7 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001D4090CF0, &v10);
    _os_log_impl(&dword_1D38C4000, v3, v4, "%s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  if ([v2 isFirstResponder])
  {

    [v2 resignFirstResponder];
  }
}

uint64_t CanvasGenerationTool.sendFeedback(action:canvas:)(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v3[42] = type metadata accessor for FeedbackInput();
  v3[43] = swift_task_alloc();
  v4 = type metadata accessor for FBKSInteraction.Content();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v6 = type metadata accessor for FBKSInteraction.StructuredValue();
  v3[51] = v6;
  v3[52] = *(v6 - 8);
  v3[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentVSgMd);
  v3[54] = swift_task_alloc();
  v3[55] = type metadata accessor for Image(0);
  v3[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  v3[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v3[58] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3[59] = v7;
  v3[60] = *(v7 - 8);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  v3[63] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v3[64] = v8;
  v3[65] = *(v8 - 8);
  v3[66] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[67] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[68] = v10;
  v3[69] = v9;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.sendFeedback(action:canvas:), v10, v9);
}

uint64_t CanvasGenerationTool.sendFeedback(action:canvas:)()
{
  v122 = v0;
  v1 = v0[40];
  if (v1)
  {
    v2 = one-time initialization token for generativeLogger;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = v0[41];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, generativeLogger);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v121 = v10;
      *v9 = 136315394;
      v11 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v121);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000001D4090CD0, &v121);
      _os_log_impl(&dword_1D38C4000, v7, v8, "%s - %s: setting canvas", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v10, -1, -1);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }

    swift_unknownObjectWeakAssign();
  }

  result = swift_unknownObjectWeakLoadStrong();
  v0[70] = result;
  if (!result)
  {

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v25 = v0[41];
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, generativeLogger);
    v27 = v25;
    v15 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v121 = v30;
      *v29 = 136315138;
      v31 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v121);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D38C4000, v15, v28, "%s: returning (canvas is nil)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1DA6D0660](v30, -1, -1);
      MEMORY[0x1DA6D0660](v29, -1, -1);
    }

    goto LABEL_25;
  }

  v15 = result;
  v16 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v16)
  {
    __break(1u);
    return result;
  }

  if (*(*(v16 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) != 1)
  {

LABEL_20:
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v38 = v0[41];
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, generativeLogger);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v121 = v44;
      *v43 = 136315138;
      v45 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v121);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1D38C4000, v41, v42, "%s: returning (no selected image)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1DA6D0660](v44, -1, -1);
      MEMORY[0x1DA6D0660](v43, -1, -1);
    }

LABEL_25:
LABEL_26:

    v48 = v0[1];

    return v48();
  }

  v17 = v0[62];

  specialized Collection.first.getter(v18, v17);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v21 = v0[65];
    v23 = v0[63];
    v22 = v0[64];
    v24 = v0[62];

    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    (*(v21 + 56))(v23, 1, 1, v22);
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[63], &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
    goto LABEL_20;
  }

  v34 = v0[65];
  v36 = v0[63];
  v35 = v0[64];
  v37 = v0[62];
  WeakTagged_10.tagged2.getter();
  (*(v20 + 8))(v37, v19);
  if ((*(v34 + 48))(v36, 1, v35) == 1)
  {

    goto LABEL_19;
  }

  v49 = v0[66];
  v50 = v0[59];
  v51 = v0[60];
  v52 = v0[58];
  (*(v0[65] + 32))(v49, v0[63], v0[64]);
  v53 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v15->isa) + 0xAB8))(v49);
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    v54 = v0[58];

    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v55 = v0[41];
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, generativeLogger);
    v57 = v55;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = v0[66];
    v62 = v0[65];
    v63 = v0[64];
    if (v60)
    {
      v118 = v0[66];
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v121 = v65;
      *v64 = 136315138;
      v66 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v121);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_1D38C4000, v58, v59, "%s: returning (selected image does not have an ImageElement)", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1DA6D0660](v65, -1, -1);
      MEMORY[0x1DA6D0660](v64, -1, -1);

      (*(v62 + 8))(v118, v63);
    }

    else
    {

      (*(v62 + 8))(v61, v63);
    }

    goto LABEL_26;
  }

  v69 = v0[66];
  (*(v0[60] + 32))(v0[61], v0[58], v0[59]);
  v0[71] = (*((*v53 & v15->isa) + 0xAC0))(v69);
  v0[72] = v70;
  if (v70 >> 60 == 15)
  {

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v71 = v0[41];
    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, generativeLogger);
    v73 = v71;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    v76 = os_log_type_enabled(v74, v75);
    v77 = v0[66];
    v78 = v0[65];
    v79 = v0[64];
    v81 = v0[60];
    v80 = v0[61];
    v82 = v0[59];
    if (v76)
    {
      v119 = v0[66];
      v117 = v0[59];
      v83 = swift_slowAlloc();
      v115 = v79;
      v84 = swift_slowAlloc();
      v121 = v84;
      *v83 = 136315138;
      v85 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v113 = v80;
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v121);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_1D38C4000, v74, v75, "%s: returning (selected image does not have image generation recipe)", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x1DA6D0660](v84, -1, -1);
      MEMORY[0x1DA6D0660](v83, -1, -1);

      (*(v81 + 8))(v113, v117);
      (*(v78 + 8))(v119, v115);
    }

    else
    {

      (*(v81 + 8))(v80, v82);
      (*(v78 + 8))(v77, v79);
    }

    goto LABEL_26;
  }

  v89 = v0[56];
  v88 = v0[57];
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit5ImageVWOhTm_2(v89, type metadata accessor for Image);
  v90 = type metadata accessor for CRAssetOrData();
  if ((*(*(v90 - 8) + 48))(v88, 1, v90) == 1)
  {
    v91 = v0[57];

    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit13CRAssetOrDataOSgMd);
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v92 = v0[41];
    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, generativeLogger);
    v94 = v92;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[71];
    v99 = v0[70];
    v100 = v0[66];
    v101 = v0[65];
    v102 = v0[64];
    v104 = v0[60];
    v103 = v0[61];
    v120 = v0[59];
    if (v97)
    {
      v112 = v0[72];
      v116 = v0[64];
      v105 = swift_slowAlloc();
      v114 = v103;
      v106 = swift_slowAlloc();
      v121 = v106;
      *v105 = 136315138;
      v107 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v111 = v99;
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v121);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_1D38C4000, v95, v96, "%s: returning (image is nil)", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x1DA6D0660](v106, -1, -1);
      MEMORY[0x1DA6D0660](v105, -1, -1);
      outlined consume of Data?(v98, v112);

      (*(v104 + 8))(v114, v120);
      (*(v101 + 8))(v100, v116);
    }

    else
    {
      outlined consume of Data?(v98, v0[72]);

      (*(v104 + 8))(v103, v120);
      (*(v101 + 8))(v100, v102);
    }

    goto LABEL_26;
  }

  v110 = swift_task_alloc();
  v0[73] = v110;
  *v110 = v0;
  v110[1] = CanvasGenerationTool.sendFeedback(action:canvas:);

  return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 1, 0);
}

{
  v88 = v0;
  v1 = *(v0 + 592);
  if (!v1)
  {

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 328);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, generativeLogger);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 560);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v15 = *(v0 + 512);
    v17 = *(v0 + 480);
    v16 = *(v0 + 488);
    v84 = *(v0 + 472);
    if (v11)
    {
      v72 = *(v0 + 568);
      v74 = *(v0 + 576);
      v79 = *(v0 + 512);
      v18 = swift_slowAlloc();
      v76 = v16;
      v19 = swift_slowAlloc();
      v87[0] = v19;
      *v18 = 136315138;
      v20 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v71 = v12;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v87);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D38C4000, v9, v10, "%s: returning (image is nil)", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      MEMORY[0x1DA6D0660](v18, -1, -1);
      outlined consume of Data?(v72, v74);

      (*(v17 + 8))(v76, v84);
      (*(v14 + 8))(v13, v79);
    }

    else
    {
      outlined consume of Data?(*(v0 + 568), *(v0 + 576));

      (*(v17 + 8))(v16, v84);
      (*(v14 + 8))(v13, v15);
    }

    goto LABEL_30;
  }

  v2 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [v2 decodeRecipeData_];

  if (v4)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v24 = UIImagePNGRepresentation(v23);

  if (!v24)
  {
    v25 = 0;
    v27 = 0xF000000000000000;
    if (v5)
    {
      goto LABEL_16;
    }

LABEL_20:
    v82 = v27;
    v85 = v25;

    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, generativeLogger);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 576);
    v35 = *(v0 + 568);
    v36 = *(v0 + 560);
    v37 = *(v0 + 520);
    v75 = *(v0 + 512);
    v77 = *(v0 + 528);
    v38 = *(v0 + 480);
    v73 = *(v0 + 488);
    v39 = *(v0 + 472);
    if (v43)
    {
      v80 = v1;
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Recipe data is nil";
      goto LABEL_24;
    }

    outlined consume of Data?(v35, v34);

    outlined consume of Data?(v85, v82);
LABEL_28:

    goto LABEL_29;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v0 + 600) = v25;
  *(v0 + 608) = v27;
  if (!v5)
  {
    goto LABEL_20;
  }

  if (v27 >> 60 != 15)
  {
    *(v0 + 232) = 0x6369447475706E69;
    *(v0 + 240) = 0xE900000000000074;
    outlined copy of Data._Representation(v25, v27);
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 16), (v29 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v28, v0 + 136);
      outlined destroy of AnyHashable(v0 + 16);
    }

    else
    {
      outlined destroy of AnyHashable(v0 + 16);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
    }

    *(v0 + 248) = 0x6D49656372756F73;
    *(v0 + 256) = 0xEB00000000656761;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 56), (v47 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v46, v0 + 168);
      outlined destroy of AnyHashable(v0 + 56);
      v48 = swift_dynamicCast();
      if (v48)
      {
        v49 = *(v0 + 296);
      }

      else
      {
        v49 = 0;
      }

      if (v48)
      {
        v50 = *(v0 + 304);
      }

      else
      {
        v50 = 0xF000000000000000;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v0 + 56);
      v49 = 0;
      v50 = 0xF000000000000000;
    }

    *(v0 + 624) = v50;
    *(v0 + 616) = v49;
    *(v0 + 264) = 0x6D49686374656B73;
    *(v0 + 272) = 0xEB00000000656761;
    AnyHashable.init<A>(_:)();
    v86 = v25;
    if (*(v5 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 96), (v52 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v51, v0 + 200);
      outlined destroy of AnyHashable(v0 + 96);

      v53 = swift_dynamicCast();
      if (v53)
      {
        v54 = *(v0 + 280);
      }

      else
      {
        v54 = 0;
      }

      if (v53)
      {
        v55 = *(v0 + 288);
      }

      else
      {
        v55 = 0xF000000000000000;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v0 + 96);
      v54 = 0;
      v55 = 0xF000000000000000;
    }

    *(v0 + 640) = v55;
    *(v0 + 632) = v54;
    v87[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v87[0] = swift_allocObject();
    outlined init with copy of Date?(v0 + 136, v87[0] + 16, &_sypSgMd);
    FBKSInteraction.StructuredValue.init(_:)();
    static FBKSInteraction.AnnotatedContent.makeDiagnosticsContent(structuredContent:)(*(v0 + 424));
    if (v50 >> 60 == 15)
    {
      v56 = v27;
      if (v55 >> 60 == 15)
      {
        v57 = 1;
LABEL_58:
        v58 = *(v0 + 432);
        v59 = *(v0 + 392);
        v60 = *(v0 + 384);
        v78 = *(v0 + 376);
        v62 = *(v0 + 360);
        v61 = *(v0 + 368);
        v63 = *(v0 + 344);
        v64 = *(v0 + 352);
        v81 = *(v0 + 336);
        v83 = *(v0 + 400);
        (*(v60 + 56))(v58, v57, 1);
        *v61 = v86;
        v61[1] = v56;
        (*(v62 + 104))(v61, *MEMORY[0x1E699C5F0], v64);
        outlined copy of Data._Representation(v86, v56);
        static FBKSInteraction.AnnotatedContent.makeCreatedImageContent(_:)(v61);
        (*(v62 + 8))(v61, v64);
        outlined init with copy of Date?(v58, v63, &_s15FeedbackService15FBKSInteractionC16AnnotatedContentVSgMd);
        v65 = *(v60 + 16);
        v65(v63 + *(v81 + 20), v59, v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15FeedbackService15FBKSInteractionC16AnnotatedContentVGMd);
        v66 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1D4058CF0;
        v65(v67 + v66, v83, v78);
        *(v63 + *(v81 + 24)) = v67;
        v68 = swift_task_alloc();
        *(v0 + 648) = v68;
        *v68 = v0;
        v68[1] = CanvasGenerationTool.sendFeedback(action:canvas:);
        v69 = *(v0 + 344);
        v70 = *(v0 + 312);

        return specialized FeedbackManager.sendFeedback(action:feedbackInput:from:)(v70, v69);
      }

      outlined copy of Data._Representation(v54, v55);
      static FBKSInteraction.AnnotatedContent.makeOriginalSketchContent(sketchData:)(v54, v55);
      v50 = v55;
      v49 = v54;
    }

    else
    {
      v56 = v27;
      outlined copy of Data._Representation(v49, v50);
      static FBKSInteraction.AnnotatedContent.makeOriginalImageContent(imageData:)(v49, v50);
    }

    outlined consume of Data?(v49, v50);
    v57 = 0;
    goto LABEL_58;
  }

LABEL_16:
  v82 = v27;
  v85 = v25;

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, generativeLogger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 576);
  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 520);
  v75 = *(v0 + 512);
  v77 = *(v0 + 528);
  v38 = *(v0 + 480);
  v73 = *(v0 + 488);
  v39 = *(v0 + 472);
  if (!v33)
  {
    outlined consume of Data?(v35, v34);

    goto LABEL_28;
  }

  v80 = v1;
  v40 = swift_slowAlloc();
  *v40 = 0;
  v41 = "Output image data is nil";
LABEL_24:
  _os_log_impl(&dword_1D38C4000, v31, v32, v41, v40, 2u);
  MEMORY[0x1DA6D0660](v40, -1, -1);
  outlined consume of Data?(v35, v34);

  outlined consume of Data?(v85, v82);
LABEL_29:
  (*(v38 + 8))(v73, v39);
  (*(v37 + 8))(v77, v75);
LABEL_30:

  v44 = *(v0 + 8);

  return v44();
}

{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.sendFeedback(action:canvas:), v3, v2);
}

{
  v14 = v0[79];
  v15 = v0[80];
  v16 = v0[77];
  v17 = v0[78];
  v1 = v0[76];
  v2 = v0[75];
  v19 = v0[74];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[66];
  v6 = v0[60];
  v24 = v0[59];
  v25 = v0[61];
  v22 = v0[53];
  v23 = v0[54];
  v7 = v0[52];
  v20 = v0[50];
  v21 = v0[51];
  v18 = v0[49];
  v9 = v0[47];
  v8 = v0[48];
  v13 = v0[43];

  outlined consume of Data?(v4, v3);

  outlined consume of Data?(v2, v1);
  outlined consume of Data?(v14, v15);
  outlined consume of Data?(v16, v17);
  outlined consume of Data?(v2, v1);

  _s8PaperKit5ImageVWOhTm_2(v13, type metadata accessor for FeedbackInput);
  v10 = *(v8 + 8);
  v10(v18, v9);
  v10(v20, v9);
  (*(v7 + 8))(v22, v21);
  outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s15FeedbackService15FBKSInteractionC16AnnotatedContentVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 17), &_sypSgMd);
  (*(v6 + 8))(v25, v24);
  (*(v26 + 8))(v28, v27);

  v11 = v0[1];

  return v11();
}

uint64_t CanvasGenerationTool.sendFeedback(action:canvas:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  *(*v1 + 592) = a1;

  _s8PaperKit5ImageVWOhTm_2(v3, type metadata accessor for CRAssetOrData);
  v4 = *(v2 + 552);
  v5 = *(v2 + 544);

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.sendFeedback(action:canvas:), v5, v4);
}

id CanvasGenerationTool.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasGenerationTool();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CanvasGenerationTool.authenticate()()
{
  v1[15] = v0;
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x1EEE6DFA0](CanvasGenerationTool.authenticate(), v3, v2);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC8PaperKit13TiledTextView_magicGenerativePlaygroundTokenProvider;
    v3 = Strong;
    swift_beginAccess();
    outlined init with copy of Date?(v3 + v2, v0 + 56, &_s8PaperKit38MagicGenerativePlaygroundTokenProvider_pSgMd);

    if (*(v0 + 80))
    {
      outlined init with take of PaperKitHashable((v0 + 56), v0 + 16);
      v4 = *(v0 + 40);
      v5 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
      v10 = (*(v5 + 8) + **(v5 + 8));
      v6 = swift_task_alloc();
      *(v0 + 152) = v6;
      *v6 = v0;
      v6[1] = CanvasGenerationTool.authenticate();

      return v10(v4, v5);
    }
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 56, &_s8PaperKit38MagicGenerativePlaygroundTokenProvider_pSgMd);
  lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
  swift_allocError();
  *v8 = 0xD000000000000025;
  *(v8 + 8) = 0x80000001D4090CA0;
  *(v8 + 16) = 0;
  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

{

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1 = v0[1];
  v3 = v0[21];
  v2 = v0[22];

  return v1(v2, v3);
}

{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CanvasGenerationTool.authenticate()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = v6[17];
    v8 = v6[18];
    v9 = CanvasGenerationTool.authenticate();
  }

  else
  {
    v6[21] = a2;
    v6[22] = a1;
    v7 = v6[17];
    v8 = v6[18];
    v9 = CanvasGenerationTool.authenticate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t @objc closure #1 in CanvasGenerationTool.authenticate()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in CanvasGenerationTool.authenticate(), v4, v3);
}

{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x1DA6CCED0](a1, a2);

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v7 + 40);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t @objc closure #1 in CanvasGenerationTool.authenticate()()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in CanvasGenerationTool.authenticate();

  return CanvasGenerationTool.authenticate()();
}

Swift::Void __swiftcall CanvasGenerationTool.magicGenerativePlaygroundStateDidChange(_:)(PaperKit::MagicGenerativePlaygroundState a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
  v5 = MEMORY[0x1E69E7D40];
  if (v4 == 2)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0 && *(v1 + v3) - 3 > 3)
    {
      goto LABEL_9;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*((*v5 & *Strong) + 0x468))();

    if (v9)
    {
      [v9 setRulerEnabled_];
    }
  }

LABEL_9:
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v18 = (*((*v5 & *v10) + 0x468))();

    if (v18)
    {
      v12 = type metadata accessor for TiledTextView();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = OBJC_IVAR____TtC8PaperKit13TiledTextView_magicGenerativePlaygroundContainerStateObserver;
        swift_beginAccess();
        outlined init with copy of Date?(v14 + v15, v24, &_s8PaperKit47MagicGenerativePlaygroundContainerStateObserver_pSgMd);
        if (v25)
        {
          outlined init with copy of FindResult(v24, v21);
          outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit47MagicGenerativePlaygroundContainerStateObserver_pSgMd);
          v16 = v22;
          v17 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v20[3] = v12;
          v20[4] = &protocol witness table for TiledTextView;
          v20[0] = v14;
          v19 = v2;
          (*(v17 + 8))(v20, &v19, v16, v17);
          __swift_destroy_boxed_opaque_existential_0(v20);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        else
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit47MagicGenerativePlaygroundContainerStateObserver_pSgMd);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t partial apply for @objc closure #1 in CanvasGenerationTool.authenticate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return @objc closure #1 in CanvasGenerationTool.authenticate()(v2, v3);
}

id specialized static CanvasGenerationTool.preload()()
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, generativeLogger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, &v7);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2864616F6C657270, 0xE900000000000029, &v7);
    _os_log_impl(&dword_1D38C4000, v1, v2, "%s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v4, -1, -1);
    MEMORY[0x1DA6D0660](v3, -1, -1);
  }

  v5 = objc_opt_self();

  return [v5 preload];
}

uint64_t specialized static CanvasGenerationTool.prewarmEffect()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](specialized static CanvasGenerationTool.prewarmEffect(), v2, v1);
}

{
  v12 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, generativeLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4076FF0, &v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x456D726177657270, 0xEF29287463656666, &v11);
    _os_log_impl(&dword_1D38C4000, v2, v3, "%s - %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v5, -1, -1);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  v6 = static MainActor.shared.getter();
  *(v0 + 48) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = specialized static CanvasGenerationTool.prewarmEffect();
  v8 = MEMORY[0x1E69E85E0];
  v9 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 64, v6, v8, 0x456D726177657270, 0xEF29287463656666, closure #1 in static CanvasGenerationTool.prewarmEffect(), 0, v9);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](specialized static CanvasGenerationTool.prewarmEffect(), v3, v2);
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized CanvasGenerationTool.countWords(in:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &_sSnySS5IndexVGMd);
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for CRKeyPath();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  v4[46] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v4[50] = v8;
  v4[51] = *(v8 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v4[54] = v9;
  v4[55] = *(v9 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v10 = type metadata accessor for PKDrawing();
  v4[58] = v10;
  v4[59] = *(v10 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  v4[63] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v4[64] = v11;
  v4[65] = *(v11 - 8);
  v4[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  v4[67] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v4[68] = v12;
  v4[69] = *(v12 - 8);
  v4[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  v4[71] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v4[72] = v13;
  v4[73] = *(v13 - 8);
  v4[74] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4[75] = v14;
  v4[76] = *(v14 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[80] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[81] = v16;
  v4[82] = v15;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:), v16, v15);
}

uint64_t specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2[83] = Strong;
  if (Strong)
  {
    v4 = *(v2[39] + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
    v2[84] = v4;
    if (v4)
    {
      v148 = Strong;
      v149 = v4;
      v5 = [v149 imageGenerationEvent];
      if (!v5)
      {
        v5 = [objc_allocWithZone(PPKGPMagicPaperImageGenerationEvent) init];
      }

      v157 = v5;
      v2[85] = v5;
      v6 = v2[76];
      v7 = v2[36];
      v10 = *(v7 + 56);
      v9 = v7 + 56;
      v8 = v10;
      v11 = -1;
      v12 = -1 << *(v2[36] + 32);
      if (-v12 < 64)
      {
        v11 = ~(-1 << -v12);
      }

      v13 = v11 & v8;
      v14 = (63 - v12) >> 6;
      v15 = v2[73];
      v162 = (v6 + 8);
      v158 = (v15 + 48);
      v139 = v15;
      v144 = (v15 + 32);
      v165 = v2[36];

      v16 = 0;
      v152 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v17 = v16;
        if (!v13)
        {
          break;
        }

LABEL_12:
        v1 = v2[79];
        v0 = v2[75];
        v18 = v2[72];
        v19 = v2[71];
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        (*(v6 + 16))(v1, *(v165 + 48) + *(v6 + 72) * (v20 | (v16 << 6)), v0);
        WeakTagged_10.tagged2.getter();
        (*(v6 + 8))(v1, v0);
        if ((*v158)(v19, 1, v18) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v2[71], &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
        }

        else
        {
          v0 = *v144;
          (*v144)(v2[74], v2[71], v2[72]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152[2] + 1, 1, v152);
          }

          v22 = v152[2];
          v21 = v152[3];
          v1 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v152);
          }

          v23 = v2[74];
          v24 = v2[72];
          v152[2] = v1;
          (v0)(v152 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v22, v23, v24);
        }
      }

      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v16 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v16);
        ++v17;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v25 = v2[69];
      v1 = v2[36];

      v0 = v152[2];

      [v157 setImagesCount_];
      v26 = -1;
      v27 = -1 << *(v165 + 32);
      if (-v27 < 64)
      {
        v26 = ~(-1 << -v27);
      }

      v28 = v26 & *(v165 + 56);
      v29 = (63 - v27) >> 6;
      v159 = (v25 + 48);
      v140 = v25;
      v145 = (v25 + 32);

      v30 = 0;
      v153 = MEMORY[0x1E69E7CC0];
      while (v28)
      {
        v16 = v30;
LABEL_27:
        v1 = v2[78];
        v0 = v2[75];
        v31 = v2[68];
        v32 = v2[67];
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        (*(v6 + 16))(v1, *(v165 + 48) + *(v6 + 72) * (v33 | (v16 << 6)), v0);
        WeakTagged_10.tagged6.getter();
        (*(v6 + 8))(v1, v0);
        if ((*v159)(v32, 1, v31) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v2[67], &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
          v30 = v16;
        }

        else
        {
          v0 = *v145;
          (*v145)(v2[70], v2[67], v2[68]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153[2] + 1, 1, v153);
          }

          v35 = v153[2];
          v34 = v153[3];
          v1 = v35 + 1;
          if (v35 >= v34 >> 1)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v153);
          }

          v36 = v2[70];
          v37 = v2[68];
          v153[2] = v1;
          (v0)(v153 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v35, v36, v37);
          v30 = v16;
        }
      }

      while (1)
      {
        v16 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_96;
        }

        if (v16 >= v29)
        {
          break;
        }

        v28 = *(v9 + 8 * v16);
        ++v30;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      v38 = v2[65];
      v1 = v2[36];

      v0 = v153[2];

      [v157 setShapesCount_];
      v39 = -1;
      v40 = -1 << *(v165 + 32);
      if (-v40 < 64)
      {
        v39 = ~(-1 << -v40);
      }

      v41 = v39 & *(v165 + 56);
      v42 = (63 - v40) >> 6;
      v160 = (v38 + 48);
      v141 = v38;
      v146 = (v38 + 32);

      v43 = 0;
      v154 = MEMORY[0x1E69E7CC0];
      while (v41)
      {
        v16 = v43;
LABEL_42:
        v1 = v2[77];
        v0 = v2[75];
        v45 = v2[63];
        v44 = v2[64];
        v46 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        (*(v6 + 16))(v1, *(v165 + 48) + *(v6 + 72) * (v46 | (v16 << 6)), v0);
        WeakTagged_10.tagged7.getter();
        (*(v6 + 8))(v1, v0);
        if ((*v160)(v45, 1, v44) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v2[63], &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
          v43 = v16;
        }

        else
        {
          v0 = *v146;
          (*v146)(v2[66], v2[63], v2[64]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v154[2] + 1, 1, v154);
          }

          v48 = v154[2];
          v47 = v154[3];
          v1 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v154);
          }

          v49 = v2[66];
          v50 = v2[64];
          v154[2] = v1;
          (v0)(v154 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v48, v49, v50);
          v43 = v16;
        }
      }

      while (1)
      {
        v16 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_97;
        }

        if (v16 >= v42)
        {
          break;
        }

        v41 = *(v9 + 8 * v16);
        ++v43;
        if (v41)
        {
          goto LABEL_42;
        }
      }

      v51 = v2[37];

      v52 = v154[2];

      [v157 setSignaturesCount_];
      [v157 setStrokesCount_];
      v53 = [v149 concepts];
      v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v2[33] = v54;
      v55 = [v149 suggestions];
      v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v1 = (v2 + 33);
      specialized Array.append<A>(contentsOf:)(v0);
      v56 = [v149 title];
      v162 = v2;
      if (!v56)
      {
        v16 = v2[33];
        v61 = *(v16 + 2);
        goto LABEL_57;
      }

      v57 = v56;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v58;

      v16 = v2[33];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_101;
      }

      while (1)
      {
        v60 = *(v16 + 2);
        v59 = *(v16 + 3);
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v16);
        }

        *(v16 + 2) = v61;
        v62 = &v16[16 * v60];
        *(v62 + 4) = v1;
        *(v62 + 5) = v0;
        v2[33] = v16;
LABEL_57:
        v64 = 0;
        v65 = (v16 + 40);
        v163 = -v61;
        v66 = -1;
        v161 = v16;
        while (v163 + v66 != -1)
        {
          if (++v66 >= *(v16 + 2))
          {
            goto LABEL_98;
          }

          v166 = v65 + 2;
          v67 = *(v65 - 1);
          v0 = *v65;
          v68 = HIBYTE(*v65) & 0xF;
          if ((v0 & 0x2000000000000000) == 0)
          {
            v68 = v67;
          }

          v69 = 7;
          if (((v0 >> 60) & ((v67 & 0x800000000000000) == 0)) != 0)
          {
            v69 = 11;
          }

          v70 = v69 | (v68 << 16);
          v71 = swift_allocObject();
          *(v71 + 16) = 0;
          v72 = (v71 + 16);
          v2 = v162;
          v162[27] = v67;
          v162[28] = v0;
          v162[29] = 15;
          v162[30] = v70;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd);
          lazy protocol witness table accessor for type String and conformance String();
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &_sSnySS5IndexVGMd);
          StringProtocol.enumerateSubstrings<A>(in:options:_:)();

          swift_beginAccess();
          v1 = *v72;

          v65 = v166;
          v16 = v161;
          v73 = __OFADD__(v64, v1);
          v64 += v1;
          if (v73)
          {
            __break(1u);
            break;
          }
        }

        v2 = v162;
        v74 = v162[37];
        [v157 setWordsCount_];
        v75 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence7WeakRefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF9CRKeyPathVs5NeverOTg503_s8h179Kit20CanvasGenerationToolC011updateImageD5Event33_FE3FAB02C6CA4145E805E0C2C3C9776ELL14elementMembers06strokeS010invocationyAA0cS0V_AJSo010PPKGPMagicagD10InvocationVtYaF9Coherence9lm4VAM7ef6VyAM10g6VyAA12jK9OGGXEfU3_Tf1cn_n(v74);
        if (!*(v75 + 16) || (v76 = (*((*MEMORY[0x1E69E7D40] & *v148) + 0x468))()) == 0)
        {

          goto LABEL_104;
        }

        v77 = v76;
        v0 = [v76 attachmentViews];

        type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
        v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v78 >> 62)
        {
          break;
        }

        v1 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v1)
        {
          goto LABEL_103;
        }

LABEL_71:
        v79 = 0;
        v80 = v162[55];
        v164 = v78 & 0xFFFFFFFFFFFFFF8;
        v167 = v78 & 0xC000000000000001;
        v157 = (v78 + 32);
        v81 = v162[51];
        v147 = (v80 + 16);
        v148 = (v80 + 8);
        v82 = v162[44];
        v130 = (v81 + 16);
        v150 = (v82 + 48);
        v142 = (v82 + 32);
        v125 = (v162[41] + 8);
        v126 = (v82 + 8);
        v127 = (v162[48] + 8);
        v128 = (v81 + 8);
        v83 = &off_1E845F000;
        v129 = v78;
        v155 = v1;
        while (1)
        {
          if (v167)
          {
            v84 = MEMORY[0x1DA6CE0C0](v79, v78);
          }

          else
          {
            if (v79 >= *(v164 + 16))
            {
              goto LABEL_100;
            }

            v84 = *(v157 + v79);
          }

          v16 = v84;
          v162[86] = v84;
          v73 = __OFADD__(v79++, 1);
          if (v73)
          {
            break;
          }

          v0 = v162[58];
          v85 = [v84 v83[31]];
          static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for PKDrawingCoherence(0);
          if (swift_dynamicCast())
          {
            v138 = v16;
            v86 = v162[57];
            v88 = v162[53];
            v87 = v162[54];
            v89 = v162[50];
            v131 = v162[52];
            v132 = v162[46];
            v134 = v162[43];
            v90 = v162[34];
            v91 = OBJC_IVAR___PKDrawingCoherence_model;
            swift_beginAccess();
            v137 = v90;
            v123 = *v147;
            (*v147)(v86, &v90[v91], v87);
            swift_getKeyPath();
            Capsule.subscript.getter();

            v124 = *v148;
            (*v148)(v86, v87);
            (*v130)(v131, v88, v89);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
            dispatch thunk of Sequence.makeIterator()();
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
            dispatch thunk of IteratorProtocol.next()();
            v92 = *v150;
            if ((*v150)(v132, 1, v134) != 1)
            {
              v95 = *v142;
              v135 = *v142;
              while (2)
              {
                v95(v162[45], v162[46], v162[43]);
                Ref.id.getter();
                v96 = 0;
                v97 = *(v75 + 16);
                while (v97 != v96)
                {
                  v98 = v96 + 1;
                  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
                  v99 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v96 = v98;
                  if (v99)
                  {
                    v104 = v162[60];
                    v105 = v162[59];
                    v133 = v162[58];
                    v136 = v162[61];
                    v151 = v162[56];
                    v106 = v162[53];
                    v143 = v162[54];
                    v107 = v162[49];
                    v108 = v162[50];
                    v109 = v162[47];
                    v110 = v162[45];
                    v111 = v162[43];
                    v156 = v162[37];
                    (*v125)(v162[42], v162[40]);
                    (*v126)(v110, v111);

                    (*v127)(v107, v109);
                    (*v128)(v106, v108);

                    v112 = [v138 drawing];
                    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

                    (*(v105 + 32))(v136, v104, v133);
                    swift_dynamicCast();
                    v113 = v162[35];
                    v114 = OBJC_IVAR___PKDrawingCoherence_model;
                    swift_beginAccess();
                    v123(v151, &v113[v114], v143);
                    v115 = swift_task_alloc();
                    *(v115 + 16) = v151;
                    specialized Sequence.compactMap<A>(_:)(closure #1 in CanvasMembers.strokeArray(in:)partial apply, v115, v156);

                    v124(v151, v143);
                    type metadata accessor for PKStroke();
                    isa = Array._bridgeToObjectiveC()().super.isa;
                    v162[87] = isa;

                    v162[2] = v162;
                    v162[7] = v162 + 31;
                    v162[3] = specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:);
                    v117 = swift_continuation_init();
                    v162[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5NeverOGMd);
                    v162[10] = MEMORY[0x1E69E9820];
                    v162[11] = 1107296256;
                    v162[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString) -> () with result type String;
                    v162[13] = &block_descriptor_215;
                    v162[14] = v117;
                    [v138 fetchTranscriptionForStrokes:isa completion:?];

                    return MEMORY[0x1EEE6DEC8](v162 + 2);
                  }
                }

                v100 = v162[46];
                v101 = v162[45];
                v102 = v162[43];
                (*v125)(v162[42], v162[40]);
                (*v126)(v101, v102);
                dispatch thunk of IteratorProtocol.next()();
                v103 = v92(v100, 1, v102);
                v95 = v135;
                if (v103 != 1)
                {
                  continue;
                }

                break;
              }
            }

            v93 = v162[53];
            v94 = v162[49];
            v0 = v162[50];
            v16 = v162[47];

            (*v127)(v94, v16);
            (*v128)(v93, v0);

            v78 = v129;
            v83 = &off_1E845F000;
          }

          else
          {
          }

          v1 = v155;
          if (v79 == v155)
          {
            goto LABEL_103;
          }
        }

LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v1 = __CocoaSet.count.getter();
      if (v1)
      {
        goto LABEL_71;
      }

LABEL_103:

LABEL_104:

      v118 = v162[85];
      v119 = v162[84];
      v120 = v162[83];
      [v118 setInvocation_];
      v63 = v118;
      [v119 setImageGenerationEvent_];
    }

    else
    {
      v63 = Strong;
    }
  }

  else
  {
  }

  v121 = v2[1];

  return v121();
}

{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 648);

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:), v2, v1);
}

{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  v4 = specialized CanvasGenerationTool.countWords(in:)();

  [v3 setHandwrittenWordsCount_];

  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  [v5 setInvocation_];
  v8 = v5;
  [v6 setImageGenerationEvent_];

  v9 = v0[1];

  return v9();
}

uint64_t specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v18;
  *(v9 + 96) = v8;
  *(v9 + 80) = v17;
  *(v9 + 64) = v16;
  *(v9 + 281) = a8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 280) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v9 + 104) = swift_task_alloc();
  v10 = type metadata accessor for CRKeyPath();
  *(v9 + 112) = v10;
  *(v9 + 120) = *(v10 - 8);
  *(v9 + 128) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = type metadata accessor for MainActor();
  *(v9 + 168) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 176) = v13;
  *(v9 + 184) = v12;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:), v13, v12);
}

uint64_t specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)()
{
  v94 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  v92 = Strong;
  if (Strong)
  {
    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[2];
    v5 = [v0[12] traitCollection];
    v6 = [v5 userInterfaceStyle];

    v7 = objc_opt_self();
    v8 = &selRef_blackColor;
    if (v6 != 2)
    {
      v8 = &selRef_whiteColor;
    }

    v79 = [v7 *v8];
    v0[25] = v79;
    v9 = MEMORY[0x1E69E7CC0];
    v93 = MEMORY[0x1E69E7CC0];
    v10 = v4 + 56;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v4 + 56);
    v14 = (63 - v12) >> 6;
    v87 = v4;
    v89 = v2;
    v80 = (v2 + 8);
    v81 = (v3 + 8);

    v15 = 0;
    v82 = v14;
    v83 = v4 + 56;
    v91 = v0;
LABEL_7:
    v0[26] = v9;
    v85 = v9;
    while (v13)
    {
LABEL_14:
      v21 = v0[17];
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v23 = (*(v89 + 16))(v0[19], *(v87 + 48) + *(v89 + 72) * (v22 | (v15 << 6)), v21);
      v24 = (*((*MEMORY[0x1E69E7D40] & *v92) + 0x440))(v23);
      v26 = v25;
      ObjectType = swift_getObjectType();
      MEMORY[0x1DA6CB5C0](v21);
      v0 = v91;
      v28 = (*(v26 + 40))(ObjectType, v26);

      if (*(v28 + 16))
      {
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v91[16]);
        if (v30)
        {
          v31 = v91[19];
          v32 = v91[16];
          v33 = v91[17];
          v34 = v91[14];
          v35 = *v81;
          v36 = *(*(v28 + 56) + 8 * v29);
          v35(v32, v34);
          (*v80)(v31, v33);

          MEMORY[0x1DA6CD190](v37);
          if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v93;
          v0 = v91;
          v14 = v82;
          v10 = v83;
          goto LABEL_7;
        }
      }

      v16 = v91[19];
      v18 = v91[16];
      v17 = v91[17];
      v19 = v91[14];

      (*v81)(v18, v19);
      (*v80)(v16, v17);
      v10 = v83;
      v9 = v85;
      v14 = v82;
    }

    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v20 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v20);
      ++v15;
      if (v13)
      {
        v15 = v20;
        goto LABEL_14;
      }
    }

    if (v9 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v39 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1DA6CE0C0](v39, v9);
        }

        else
        {
          if (v39 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v40 = *(v9 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        [v40 setHidden_];

        ++v39;
        if (v42 == i)
        {
          goto LABEL_40;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:
    v56 = v0[6];
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9Coherence7WeakRefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(*(v56 + 16), 0);
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd) - 8);
      specialized Sequence._copySequenceContents(initializing:)(&v93, (v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80))), v57, v56);
      v61 = v60;

      outlined consume of Set<UIColor>.Iterator._Variant();
      if (v61 == v57)
      {
LABEL_44:
        v62 = v0[12];
        v63 = v0[13];
        v86 = v63;
        v64 = v0[10];
        v65 = v0[11];
        v66 = v0[8];
        v84 = v0[9];
        v90 = *(v0 + 280);
        v67 = v0[3];
        v88 = v0[4];
        v68 = v0[2];
        (*((*MEMORY[0x1E69E7D40] & *v92) + 0x790))(v58);

        v69 = type metadata accessor for TaskPriority();
        (*(*(v69 - 8) + 56))(v63, 1, 1, v69);
        v70 = v66;

        v71 = v62;

        v72 = v79;

        v73 = v92;
        v74 = v84;
        v75 = static MainActor.shared.getter();
        v76 = swift_allocObject();
        v77 = MEMORY[0x1E69E85E0];
        *(v76 + 16) = v75;
        *(v76 + 24) = v77;
        *(v76 + 32) = v71;
        *(v76 + 40) = v68;
        *(v76 + 48) = v67;
        *(v76 + 56) = v88;
        *(v76 + 64) = v90 & 1;
        *(v76 + 72) = v73;
        *(v76 + 80) = v84;
        *(v76 + 88) = v66;
        *(v76 + 96) = v72;
        *(v76 + 104) = v64;
        *(v76 + 112) = v65;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v86, &async function pointer to partial apply for closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:), v76);

        v78 = swift_task_alloc();
        v0[27] = v78;
        *v78 = v0;
        v78[1] = specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:);

        return CanvasGenerationTool.waitForGeneratedImageAndReset()();
      }

      __break(1u);
    }

    v58 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v43 = v0[12];
  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, generativeLogger);
  v45 = v43;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93 = v49;
    *v48 = 136315138;
    v50 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v93);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1D38C4000, v46, v47, "%s: returning (canvas is nil)", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1DA6D0660](v49, -1, -1);
    MEMORY[0x1DA6D0660](v48, -1, -1);
  }

  lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
  swift_allocError();
  *v53 = xmmword_1D4076F40;
  *(v53 + 16) = 2;
  swift_willThrow();

  v54 = v0[1];

  return v54(0);
}

{
  v30 = v0;
  v1 = v0[28];
  if (v1)
  {
    v2 = UIImagePNGRepresentation(v0[28]);
    if (v2)
    {
      v3 = v0[24];
      v4 = v2;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v0[31] = v5;
      v0[32] = v7;
      v8 = [v3 undoManager];
      [v8 beginUndoGrouping];

      v9 = swift_task_alloc();
      v0[33] = v9;
      *v9 = v0;
      v9[1] = specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:);
      v10 = v0[29];
      v11 = v0[30];

      return CanvasGenerationTool.addCanvasElement(for:with:)(v1, v10, v11, v5, v7);
    }

    v13 = v0[29];
    v14 = v0[30];
    v15 = v0[28];

    outlined consume of ImageWithEncodedRecipe?(v15, v13, v14);
  }

  else
  {
  }

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v16 = v0[12];
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, generativeLogger);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    v23 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v29);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1D38C4000, v19, v20, "%s returning (generated image/data is nil)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1DA6D0660](v22, -1, -1);
    MEMORY[0x1DA6D0660](v21, -1, -1);
  }

  v26 = v0[25];
  v27 = v0[24];
  $defer #1 () in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(v0[26], v27);

  v28 = v0[1];

  return v28(0);
}

{
  v1 = *(v0 + 282);

  if (v1 == 1)
  {
    v2 = *(v0 + 281);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v0 + 192)) + 0x718);
    v6(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 280) & 1);
    v6(v5, v4, v3, v2 & 1);
  }

  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v13 = [v12 undoManager];

  [v13 endUndoGrouping];
  outlined consume of Data._Representation(v7, v8);
  outlined consume of ImageWithEncodedRecipe?(v11, v10, v9);

  v14 = *(v0 + 282);
  v15 = *(v0 + 200);
  v16 = *(v0 + 192);
  $defer #1 () in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(*(v0 + 208), v16);

  v17 = *(v0 + 8);

  return v17(v14);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];

  outlined consume of Data._Representation(v1, v2);
  outlined consume of ImageWithEncodedRecipe?(v5, v4, v3);
  $defer #1 () in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(v6, v8);

  v9 = v0[1];

  return v9(0);
}

uint64_t specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;

  v6 = v4[23];
  v7 = v4[22];

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:), v7, v6);
}

uint64_t specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(char a1)
{
  v3 = *v2;
  *(v3 + 282) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:);
  }

  else
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = specialized CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t _s8PaperKit5ImageVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MagicGenerativePlaygroundState.TransitionError and conformance MagicGenerativePlaygroundState.TransitionError()
{
  result = lazy protocol witness table cache variable for type MagicGenerativePlaygroundState.TransitionError and conformance MagicGenerativePlaygroundState.TransitionError;
  if (!lazy protocol witness table cache variable for type MagicGenerativePlaygroundState.TransitionError and conformance MagicGenerativePlaygroundState.TransitionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicGenerativePlaygroundState.TransitionError and conformance MagicGenerativePlaygroundState.TransitionError);
  }

  return result;
}

id partial apply for closure #1 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) setAlpha_];
  if (v1)
  {

    return [v1 setAlpha_];
  }

  return result;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in closure #2 in closure #1 in CanvasGenerationTool.addCanvasElement(for:with:)(a1, v4, v5, v6, v7);
}

id partial apply for closure #2 in CanvasGenerationTool.hideBlurEffect(animationDuration:)(id result)
{
  if (result)
  {
    return [*(v1 + 16) setHidden_];
  }

  return result;
}

id partial apply for closure #1 in CanvasGenerationTool.showBlurEffect(animationDuration:)()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];

  return [v1 setHidden_];
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.placeMagicGenerativePlayground(for:)(a1, v4, v5, v7, v6);
}

uint64_t outlined assign with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized CanvasGenerationTool.generateImageAndReset(context:invocation:)(uint64_t a1)
{
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *a1;
  *(v2 + 112) = *(a1 + 16);
  *(v2 + 48) = type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageAndReset(context:invocation:), v5, v4);
}

uint64_t specialized CanvasGenerationTool.generateImageAndReset(context:invocation:)()
{
  v36 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, generativeLogger);
  v6 = v3;
  outlined copy of MagicGenerativePlaygroundContext(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined consume of MagicGenerativePlaygroundContext(v2, v1, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136315650;
    v12 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001D4090F30, v35);
    v16 = 0xE900000000000063;
    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v17 = 0x6974616D6F747561;
    if (v9 == 2)
    {
      v17 = 0x6567616D69;
      v16 = 0xE500000000000000;
    }

    v18 = 1954047348;
    if (v9)
    {
      v18 = 1953720684;
    }

    if (v9 <= 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v9 <= 1)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = v16;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v35);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_1D38C4000, v7, v8, "%s - %s: (context = %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  LOBYTE(v35[0]) = 5;
  CanvasGenerationTool.placeMagicGenerativePlayground(for:)(v35);
  if (v22)
  {

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 40);
    v26 = *(v0 + 24);
    v27 = *(v0 + 32);
    v28 = *(v0 + 112);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined copy of MagicGenerativePlaygroundContext(v27, v25, v28);

    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    *(v32 + 32) = v30;
    *(v32 + 40) = v27;
    *(v32 + 48) = v25;
    *(v32 + 56) = v28;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:), v32);

    v34 = swift_task_alloc();
    *(v0 + 80) = v34;
    *v34 = v0;
    v34[1] = specialized CanvasGenerationTool.generateImageAndReset(context:invocation:);

    return CanvasGenerationTool.waitForGeneratedImageAndReset()();
  }
}

{

  v1 = v0[1];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  return v1(v4, v2, v3);
}

uint64_t specialized CanvasGenerationTool.generateImageAndReset(context:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;

  v6 = v4[9];
  v7 = v4[8];

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageAndReset(context:invocation:), v7, v6);
}

void *outlined consume of ImageWithEncodedRecipe?(void *result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.generateImageAndReset(context:invocation:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *(v10 + 184) = a5;
  *(v10 + 192) = v9;
  *(v10 + 168) = a8;
  *(v10 + 176) = a9;
  *(v10 + 152) = a6;
  *(v10 + 160) = a7;
  *(v10 + 89) = a4;
  *(v10 + 136) = a2;
  *(v10 + 144) = a3;
  *(v10 + 128) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();
  *(v10 + 224) = type metadata accessor for PKDrawing();
  *(v10 + 232) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v10 + 240) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v10 + 248) = v13;
  *(v10 + 256) = v12;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:), v13, v12);
}

uint64_t specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:)()
{
  v100 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, generativeLogger);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v96 = v9;
    *v8 = 136316162;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v96);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x80000001D4090FC0, &v96);
    *(v8 + 22) = 2048;
    v13 = *(v6 + 16);

    *(v8 + 24) = v13;

    *(v8 + 32) = 2048;
    v14 = *(v7 + 16);

    *(v8 + 34) = v14;

    *(v8 + 42) = 2080;
    v15 = CGRect.debugDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v96);

    *(v8 + 44) = v17;
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s: (selectedStrokes.count = %ld, selectedElements.count = %ld, bounds = %s", v8, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
    v38 = *(v0 + 192);

    v39 = v38;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v96 = v43;
      *v42 = 136315138;
      v44 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v96);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1D38C4000, v40, v41, "%s: returning (canvas is nil)", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1DA6D0660](v43, -1, -1);
      MEMORY[0x1DA6D0660](v42, -1, -1);
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v47 = xmmword_1D4076F40;
    *(v47 + 16) = 2;
    swift_willThrow();

    v48 = *(v0 + 8);
    goto LABEL_57;
  }

  v19 = Strong;
  v20 = MEMORY[0x1E69E7D40];
  v21 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v23 = v22;
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 16))(ObjectType, v23);
  *(v0 + 272) = v25;

  if (!v25)
  {

LABEL_17:
    v49 = *(v0 + 192);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v96 = v53;
      *v52 = 136315138;
      v54 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v96);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1D38C4000, v50, v51, "%s: returning (drawing is nil)", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1DA6D0660](v53, -1, -1);
      MEMORY[0x1DA6D0660](v52, -1, -1);
    }

    goto LABEL_56;
  }

  v26 = [v25 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for PKDrawingCoherence(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v27 = *(v0 + 120);
  *(v0 + 280) = v27;
  AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  if ((*((*v20 & *v19) + 0x7A0))())
  {
    v28 = *(v0 + 192);

    v29 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v96 = v33;
      *v32 = 136315138;
      v34 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v96);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D38C4000, v30, v31, "%s AutoRefine is running, cancel magic generative playground.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1DA6D0660](v33, -1, -1);
      v37 = v32;
LABEL_54:
      MEMORY[0x1DA6D0660](v37, -1, -1);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  v57 = *(v0 + 192);
  v58 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState;
  v95 = *(v57 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
  LOBYTE(v96) = 1;
  if ((specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(&v95, &v96) & 1) == 0)
  {
    v70 = *(v0 + 192);

    v71 = v70;
    v30 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v72))
    {
      v94 = v72;
      v73 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v96 = v93;
      *v73 = 136315394;
      v74 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v96);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      v77 = *(v57 + v58);
      if (v77 > 4)
      {
        v86 = 0x80000001D4081340;
        v87 = 0xD000000000000011;
        v88 = 0xE900000000000064;
        v89 = 0x65746172656E6567;
        if (v77 != 8)
        {
          v89 = 0xD000000000000010;
          v88 = 0x80000001D4081360;
        }

        if (v77 != 7)
        {
          v87 = v89;
          v86 = v88;
        }

        v90 = 0x80000001D4081300;
        if (v77 == 5)
        {
          v91 = 0xD000000000000018;
        }

        else
        {
          v91 = 0xD000000000000017;
        }

        if (v77 != 5)
        {
          v90 = 0x80000001D4081320;
        }

        if (*(v57 + v58) <= 6u)
        {
          v84 = v91;
        }

        else
        {
          v84 = v87;
        }

        if (*(v57 + v58) <= 6u)
        {
          v85 = v90;
        }

        else
        {
          v85 = v86;
        }
      }

      else
      {
        v78 = 0xED000064657A696CLL;
        v79 = 0x616974696E696E75;
        v80 = 0xED00006E6F697463;
        v81 = 0x656C6553646E6177;
        v82 = 0xD000000000000017;
        v83 = 0x80000001D40812C0;
        if (v77 != 3)
        {
          v82 = 0xD000000000000016;
          v83 = 0x80000001D40812E0;
        }

        if (v77 != 2)
        {
          v81 = v82;
          v80 = v83;
        }

        if (*(v57 + v58))
        {
          v79 = 0x696C616974696E69;
          v78 = 0xEB0000000064657ALL;
        }

        if (*(v57 + v58) <= 1u)
        {
          v84 = v79;
        }

        else
        {
          v84 = v81;
        }

        if (*(v57 + v58) <= 1u)
        {
          v85 = v78;
        }

        else
        {
          v85 = v80;
        }
      }

      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v96);

      *(v73 + 14) = v92;
      _os_log_impl(&dword_1D38C4000, v30, v94, "%s Unsupported state transition from %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v93, -1, -1);
      v37 = v73;
      goto LABEL_54;
    }

LABEL_55:

LABEL_56:

    v48 = *(v0 + 8);
LABEL_57:

    return v48();
  }

  v60 = *(v0 + 208);
  v59 = *(v0 + 216);
  v61 = *(v0 + 200);
  v62 = *(v0 + 136);
  [*(v0 + 192) setHidden_];
  AnyCanvas.updateCanvasAttachmentProvider()();

  AnyCanvas.textPromptsFromElementCanvasMembers(_:)(v63, MEMORY[0x1E69E7CD0], 6, 0, &v96);
  *(v0 + 288) = v96;
  v64 = v98;
  *(v0 + 304) = v97;
  *(v0 + 312) = v64;
  *(v0 + 90) = v99;

  v65 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v60 + 16))(v59, &v27[v65], v61);
  v66 = swift_task_alloc();
  *(v66 + 16) = v59;
  swift_bridgeObjectRetain_n();
  v67 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in CanvasMembers.strokeArray(in:), v66, v62);
  *(v0 + 320) = v67;
  *(v0 + 328) = 0;

  (*(v60 + 8))(v59, v61);
  v68 = swift_task_alloc();
  *(v0 + 336) = v68;
  *v68 = v0;
  v68[1] = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);

  return AnyCanvas.textPromptLookupFor(_:)(v0 + 16, v67);
}

{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 43) = *(v2 + 1);
  v3 = v1[4];
  *(v2 + 45) = *(v2 + 4);
  v2[47] = v1[10];
  *(v2 + 91) = *(v2 + 88);

  outlined consume of CanvasMembers?(v3);
  v4 = v1[32];
  v5 = v1[31];

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:), v5, v4);
}

{
  v44 = v0;
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v0 + 288);
    if (v2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 288);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, *(v0 + 288));
      }

      v5 = *(v3 + 2);
      v6 = 16 * v5;
      v7 = (v1 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = *(v3 + 3);

        if (v5 >= v10 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v5 + 1, 1, v3);
        }

        *(v3 + 2) = v5 + 1;
        v11 = &v3[v6];
        *(v11 + 4) = v9;
        *(v11 + 5) = v8;
        v6 += 16;
        v7 += 2;
        ++v5;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v3 = *(v0 + 288);
  }

  *(v0 + 384) = v3;
  v12 = *(v0 + 136);
  if (*(v0 + 360))
  {

    v13 = *(v0 + 91);
    v15 = *(v0 + 368);
    v14 = *(v0 + 376);
    v16 = *(v0 + 360);
    v12 = *(v0 + 136);
  }

  else
  {
    v13 = 0;
    v16 = MEMORY[0x1E69E7CD0];
    v14 = 6;
    v15 = *(v0 + 136);
  }

  *(v0 + 92) = v13;
  *(v0 + 400) = v15;
  *(v0 + 408) = v14;
  *(v0 + 392) = v16;
  AnyCanvas.canvasGenerationToolFrameForSelection(_:to:)(*(v0 + 128), v12, *(v0 + 144), *(v0 + 89) & 1, *(v0 + 192));
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  if (CGRectIsEmpty(v46))
  {
    v21 = 0x4074000000000000;
    v22 = 0.0;
    MidY = 0.0;
    v24 = 0x4074000000000000;
  }

  else
  {
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v25 = CGRectGetWidth(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v26 = CGRectGetHeight(v48);
    if (v26 < v25)
    {
      v25 = v26;
    }

    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v27 = x + (CGRectGetWidth(v49) - v25) * 0.5;
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v28 = y + (CGRectGetHeight(v50) - v25) * 0.5;
    v51.origin.x = v27;
    v51.origin.y = v28;
    v51.size.width = v25;
    v51.size.height = v25;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = v27;
    v52.origin.y = v28;
    v52.size.width = v25;
    v52.size.height = v25;
    MidY = CGRectGetMidY(v52);
    v21 = *&v25;
    v24 = *&v25;
    v22 = MidX;
  }

  CanvasGenerationTool.allocateGenerationFrame(for:with:)(__PAIR128__(v24, v21), __PAIR128__(*&MidY, *&v22));
  v43 = 5;
  CanvasGenerationTool.placeMagicGenerativePlayground(for:)(&v43);
  if (v30)
  {
    v41 = v16;
    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v33 = *(v0 + 264);

    outlined consume of CanvasMembers?(v41);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 90);
    v42 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 264)) + 0x908) + **((*MEMORY[0x1E69E7D40] & **(v0 + 264)) + 0x908));
    v37 = swift_task_alloc();
    *(v0 + 416) = v37;
    *v37 = v0;
    v37[1] = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);
    v38 = *(v0 + 304);
    v39 = *(v0 + 312);
    v40 = *(v0 + 296);

    return v42(v40, v38, v39, v36, v16, v15, v14, v13 & 1);
  }
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);
  }

  else
  {
    v5 = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[24];

  [v6 setHidden_];

  v7 = v0[1];

  return v7();
}

{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 272);
  v4 = *(v0 + 264);

  v5 = *(v0 + 8);

  return v5();
}