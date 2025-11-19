uint64_t specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 392);
  v11 = *v2;
  v4[53] = a1;
  v4[54] = a2;

  outlined consume of CanvasMembers?(v5);
  v6 = swift_task_alloc();
  v4[55] = v6;
  *v6 = v11;
  v6[1] = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);
  v7 = v3[23];
  v8 = v3[17];
  v9 = v3[37];

  return specialized CanvasGenerationTool.updateImageGenerationEvent(elementMembers:strokeMembers:invocation:)(v9, v8, v7);
}

void specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:)()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 448) = v3;
  *v3 = v2;
  v3[1] = specialized CanvasGenerationTool.initiateMagicGenerativePlayground(selection:in:canvas:invocation:);

  JUMPOUT(0x1D3EEA13CLL);
}

void specialized CanvasGenerationTool.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_eatTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_eatPanGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_blurView) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath) = 0;
  v1 = v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = (v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame);
  v4 = *(MEMORY[0x1E695F050] + 16);
  *v3 = *MEMORY[0x1E695F050];
  v3[1] = v4;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth) = 0;
  v5 = v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_knownCanvasGenerationFrameInModelSpace;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_isScrollable) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeBackgroundView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasGenerationToolDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_cachedMagicFrame;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC) = 0;
  v7 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_backgroundViewTopAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized CanvasGenerationTool.generateImageAndReset(with:invocation:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageAndReset(with:invocation:), v5, v4);
}

uint64_t specialized CanvasGenerationTool.generateImageAndReset(with:invocation:)()
{
  v40 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  outlined copy of Data._Representation(v3, v1);
  outlined copy of Data._Representation(v3, v1);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v6, v7))
  {
    v20 = v0[2];
    v19 = v0[3];
    outlined consume of Data._Representation(v20, v19);
    outlined consume of Data._Representation(v20, v19);
    goto LABEL_16;
  }

  v8 = v0[3];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v39[0] = v10;
  *v9 = 136315650;
  v11 = CanvasGenerationTool.nameAndPointerDescription.getter();
  v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v39);

  *(v9 + 4) = v13;
  *(v9 + 12) = 2080;
  *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001D4091120, v39);
  *(v9 + 22) = 2048;
  v14 = v8 >> 62;
  v15 = v0[2];
  v16 = v0[3];
  if ((v8 >> 62) > 1)
  {
    if (v14 != 2)
    {
      outlined consume of Data._Representation(v15, v16);
      v18 = 0;
      goto LABEL_15;
    }

    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    v15 = outlined consume of Data._Representation(v15, v16);
    v18 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v23 = HIDWORD(v15);
    v24 = v15;
    result = outlined consume of Data._Representation(v15, v16);
    LODWORD(v18) = v23 - v24;
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_12;
  }

  v17 = v0[3];
  outlined consume of Data._Representation(v15, v16);
  v18 = BYTE6(v17);
LABEL_15:
  v26 = v0[2];
  v27 = v0[3];
  *(v9 + 24) = v18;
  outlined consume of Data._Representation(v26, v27);
  _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s: (encodedRecipe.count = %ld", v9, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1DA6D0660](v10, -1, -1);
  MEMORY[0x1DA6D0660](v9, -1, -1);
LABEL_16:

  LOBYTE(v39[0]) = 6;
  CanvasGenerationTool.placeMagicGenerativePlayground(for:)(v39);
  v28 = v0[5];
  if (v29)
  {

    v30 = v0[1];

    return v30();
  }

  else
  {
    v31 = v0[3];
    v32 = v0[2];
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined copy of Data._Representation(v32, v31);

    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;
    v36[5] = v32;
    v36[6] = v31;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:), v36);

    v38 = swift_task_alloc();
    v0[10] = v38;
    *v38 = v0;
    v38[1] = specialized CanvasGenerationTool.generateImageAndReset(with:invocation:);

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

uint64_t specialized CanvasGenerationTool.generateImageAndReset(with:invocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;

  v6 = v4[9];
  v7 = v4[8];

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.generateImageAndReset(with:invocation:), v7, v6);
}

uint64_t specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CRKeyPath();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:), v7, v6);
}

uint64_t specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:)()
{
  v172 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v171[0] = v7;
    *v6 = 136315394;
    v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v171);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000035, 0x80000001D40910E0, v171);
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = *(v0 + 24);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v171[0] = v17;
      *v16 = 136315394;
      v18 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v171);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000035, 0x80000001D40910E0, v171);
      _os_log_impl(&dword_1D38C4000, v14, v15, "%s - %s: setting canvas", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v17, -1, -1);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    swift_unknownObjectWeakAssign();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (!Strong)
  {
    v35 = *(v0 + 24);

    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v171[0] = v40;
      *v39 = 136315394;
      v41 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v171);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000035, 0x80000001D40910E0, v171);
      _os_log_impl(&dword_1D38C4000, v37, v38, "%s - %s returning: canvas is nil", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v40, -1, -1);
      MEMORY[0x1DA6D0660](v39, -1, -1);
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    swift_allocError();
    *v44 = xmmword_1D4076F40;
    *(v44 + 16) = 2;
    swift_willThrow();

    v45 = *(v0 + 8);
    goto LABEL_55;
  }

  v22 = Strong;
  v23 = *(v0 + 24);
  v24 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState;
  v170 = *(v23 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
  LOBYTE(v171[0]) = 1;
  result = specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(&v170, v171);
  if ((result & 1) == 0)
  {
    v46 = *(v0 + 24);

    v47 = v46;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_53;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v171[0] = v51;
    *v50 = 136315394;
    v52 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v171);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v55 = *(v23 + v24);
    if (v55 > 4)
    {
      if (*(v23 + v24) > 6u)
      {
        if (v55 == 7)
        {
          v57 = 0x80000001D4081340;
          v58 = 0xD000000000000011;
        }

        else if (v55 == 8)
        {
          v57 = 0xE900000000000064;
          v58 = 0x65746172656E6567;
        }

        else
        {
          v57 = 0x80000001D4081360;
          v58 = 0xD000000000000010;
        }

        goto LABEL_51;
      }

      if (v55 != 5)
      {
        v56 = "composingProvidedRecipe";
        goto LABEL_50;
      }

      v57 = 0x80000001D4081300;
      v58 = 0xD000000000000018;
    }

    else
    {
      if (*(v23 + v24) <= 1u)
      {
        if (*(v23 + v24))
        {
          v57 = 0xEB0000000064657ALL;
          v58 = 0x696C616974696E69;
        }

        else
        {
          v57 = 0xED000064657A696CLL;
          v58 = 0x616974696E696E75;
        }

        goto LABEL_51;
      }

      if (v55 == 2)
      {
        v57 = 0xED00006E6F697463;
        v58 = 0x656C6553646E6177;
      }

      else
      {
        if (v55 == 3)
        {
          v56 = "composingFromEmptyState";
LABEL_50:
          v57 = (v56 - 32) | 0x8000000000000000;
          v58 = 0xD000000000000017;
          goto LABEL_51;
        }

        v57 = 0x80000001D40812E0;
        v58 = 0xD000000000000016;
      }
    }

LABEL_51:
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, v171);

    *(v50 + 14) = v109;
    _os_log_impl(&dword_1D38C4000, v48, v49, "%s Unsupported state transition from %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v51, -1, -1);
    v70 = v50;
    goto LABEL_52;
  }

  v26 = *(v22 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v26)
  {
    __break(1u);
    return result;
  }

  if (*(*(v26 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) != 1)
  {

    goto LABEL_32;
  }

  v27 = *(v0 + 88);

  specialized Collection.first.getter(v28, v27);

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    v31 = *(v0 + 104);
    v32 = *(v0 + 112);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);

    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    (*(v32 + 56))(v33, 1, 1, v31);
LABEL_31:
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 96), &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
LABEL_32:
    v63 = *(v0 + 24);
    v48 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v171[0] = v66;
      *v65 = 136315138;
      v67 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v171);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_1D38C4000, v48, v64, "%s: returning (no selected image)", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x1DA6D0660](v66, -1, -1);
      v70 = v65;
LABEL_52:
      MEMORY[0x1DA6D0660](v70, -1, -1);
    }

LABEL_53:

LABEL_54:

    v45 = *(v0 + 8);
LABEL_55:

    return v45();
  }

  v59 = *(v0 + 104);
  v60 = *(v0 + 112);
  v61 = *(v0 + 88);
  v62 = *(v0 + 96);
  WeakTagged_10.tagged2.getter();
  (*(v30 + 8))(v61, v29);
  if ((*(v60 + 48))(v62, 1, v59) == 1)
  {

    goto LABEL_31;
  }

  v71 = *(v0 + 120);
  v72 = *(v0 + 64);
  v73 = *(v0 + 72);
  v74 = *(v0 + 56);
  (*(*(v0 + 112) + 32))(v71, *(v0 + 96), *(v0 + 104));
  AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  v75 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0xAB8))(v71);
  if ((*(v73 + 48))(v74, 1, v72) == 1)
  {
    v76 = *(v0 + 56);
    v77 = *(v0 + 24);

    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    v78 = v77;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    v81 = os_log_type_enabled(v79, v80);
    v83 = *(v0 + 112);
    v82 = *(v0 + 120);
    v84 = *(v0 + 104);
    if (v81)
    {
      v167 = *(v0 + 120);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v171[0] = v86;
      *v85 = 136315138;
      v87 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v171);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_1D38C4000, v79, v80, "%s: returning (selected image does not have an ImageElement)", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x1DA6D0660](v86, -1, -1);
      MEMORY[0x1DA6D0660](v85, -1, -1);

      (*(v83 + 8))(v167, v84);
    }

    else
    {

      (*(v83 + 8))(v82, v84);
    }

    goto LABEL_54;
  }

  v90 = *(v0 + 120);
  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  v91 = (*((*v75 & *v22) + 0xAC0))(v90);
  *(v0 + 168) = v91;
  *(v0 + 176) = v92;
  if (v92 >> 60 == 15)
  {
    v93 = *(v0 + 24);

    v94 = v93;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    v97 = os_log_type_enabled(v95, v96);
    v99 = *(v0 + 112);
    v98 = *(v0 + 120);
    v100 = *(v0 + 104);
    v102 = *(v0 + 72);
    v101 = *(v0 + 80);
    v103 = *(v0 + 64);
    if (v97)
    {
      v168 = *(v0 + 120);
      v165 = *(v0 + 64);
      v104 = swift_slowAlloc();
      v163 = v100;
      v105 = swift_slowAlloc();
      v171[0] = v105;
      *v104 = 136315138;
      v106 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v161 = v101;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v171);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_1D38C4000, v95, v96, "%s: returning (selected image does not have image generation recipe)", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x1DA6D0660](v105, -1, -1);
      MEMORY[0x1DA6D0660](v104, -1, -1);

      (*(v102 + 8))(v161, v165);
      (*(v99 + 8))(v168, v163);
    }

    else
    {

      (*(v102 + 8))(v101, v103);
      (*(v99 + 8))(v98, v100);
    }

    goto LABEL_54;
  }

  v166 = v91;
  v169 = v92;
  v110 = (*((*v75 & *v22) + 0x440))();
  v112 = v111;
  ObjectType = swift_getObjectType();
  Capsule.rootID.getter();
  v114 = (*(v112 + 40))(ObjectType, v112);

  if (!*(v114 + 16) || (v115 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 48)), (v116 & 1) == 0))
  {
    v141 = *(v0 + 40);
    v140 = *(v0 + 48);
    v143 = *(v0 + 24);
    v142 = *(v0 + 32);

    (*(v141 + 8))(v140, v142);
    v144 = v143;
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();

    v147 = os_log_type_enabled(v145, v146);
    v149 = *(v0 + 112);
    v148 = *(v0 + 120);
    v150 = *(v0 + 104);
    v152 = *(v0 + 72);
    v151 = *(v0 + 80);
    v153 = *(v0 + 64);
    if (v147)
    {
      v164 = *(v0 + 120);
      v160 = *(v0 + 80);
      v154 = swift_slowAlloc();
      v162 = v150;
      v155 = swift_slowAlloc();
      v171[0] = v155;
      *v154 = 136315138;
      v156 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v159 = v153;
      v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, v171);

      *(v154 + 4) = v158;
      _os_log_impl(&dword_1D38C4000, v145, v146, "%s returning (imageView is nil)", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x1DA6D0660](v155, -1, -1);
      MEMORY[0x1DA6D0660](v154, -1, -1);
      outlined consume of Data?(v166, v169);

      (*(v152 + 8))(v160, v159);
      (*(v149 + 8))(v164, v162);
    }

    else
    {
      outlined consume of Data?(v166, v169);

      (*(v152 + 8))(v151, v153);
      (*(v149 + 8))(v148, v150);
    }

    goto LABEL_54;
  }

  v118 = *(v0 + 40);
  v117 = *(v0 + 48);
  v119 = *(v0 + 24);
  v120 = *(v0 + 32);
  v121 = *(*(v114 + 56) + 8 * v115);
  *(v0 + 184) = v121;
  v122 = *(v118 + 8);
  v123 = v121;
  v122(v117, v120);

  [v119 setHidden_];
  v124 = v123;
  [v124 setHidden_];
  [v124 frame];
  [v22 convertRect:v119 toCoordinateSpace:?];
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  [v124 frame];
  v134 = v133;
  v136 = v135;

  v174.origin.x = v126;
  v174.origin.y = v128;
  v174.size.width = v130;
  v174.size.height = v132;
  MidX = CGRectGetMidX(v174);
  v175.origin.x = v126;
  v175.origin.y = v128;
  v175.size.width = v130;
  v175.size.height = v132;
  *&v138 = CGRectGetMidY(v175);
  CanvasGenerationTool.allocateGenerationFrame(for:with:)(__PAIR128__(v136, v134), __PAIR128__(v138, *&MidX));
  v139 = swift_task_alloc();
  *(v0 + 192) = v139;
  *v139 = v0;
  v139[1] = specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:);

  return specialized CanvasGenerationTool.generateImageAndReset(with:invocation:)(v166, v169);
}

{
  v47 = v0;
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = UIImagePNGRepresentation(v2);
    if (v3)
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 208);
      v6 = *(v0 + 160);
      v38 = *(v0 + 184);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v41 = *(v0 + 112);
      v42 = *(v0 + 104);
      v44 = *(v0 + 120);
      v7 = *(v0 + 80);
      v36 = *(v0 + 200);
      v37 = *(v0 + 72);
      v8 = *(v0 + 64);
      v35 = *(v0 + 24);
      v9 = v3;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = swift_task_alloc();
      v12[2] = v34;
      v12[3] = v11;
      v12[4] = v6;
      v12[5] = v2;
      v12[6] = v5;
      v12[7] = v4;
      Capsule.callAsFunction<A>(_:)();

      v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x7F8);
      v14 = type metadata accessor for Image(0);
      v15 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v13(v7, v14, v15);
      [v35 setHidden_];
      outlined consume of Data._Representation(v34, v11);
      outlined consume of ImageWithEncodedRecipe?(v36, v5, v4);
      [v38 setHidden_];
      outlined consume of Data?(v39, v40);

      (*(v37 + 8))(v7, v8);
      (*(v41 + 8))(v44, v42);
      goto LABEL_8;
    }

    outlined consume of ImageWithEncodedRecipe?(*(v0 + 200), *(v0 + 208), *(v0 + 216));
  }

  v16 = *(v0 + 24);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315138;
    v21 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v46);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1D38C4000, v17, v18, "%s: returning (Image generation has been cancelled or no recipe provided)", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1DA6D0660](v20, -1, -1);
    MEMORY[0x1DA6D0660](v19, -1, -1);
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 184);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 112);
  v43 = *(v0 + 104);
  v45 = *(v0 + 120);
  v29 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = *(v0 + 64);
  [*(v0 + 24) setHidden_];
  [v25 setHidden_];
  outlined consume of Data?(v26, v24);

  (*(v29 + 8))(v30, v31);
  (*(v28 + 8))(v45, v43);
LABEL_8:

  v32 = *(v0 + 8);

  return v32();
}

{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v12 = v0[15];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];

  [v2 setHidden_];
  outlined consume of Data?(v3, v1);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v12, v5);

  v10 = v0[1];

  return v10();
}

uint64_t specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[25] = a1;
  v6[26] = a2;
  v6[27] = a3;
  v6[28] = v3;

  v7 = v5[18];
  v8 = v5[17];
  if (v3)
  {
    v9 = specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:);
  }

  else
  {
    v9 = specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t specialized CanvasGenerationTool.addTitleAndSuggestions(at:)()
{
  v1[53] = v0;
  v2 = type metadata accessor for CharacterSet();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[57] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[58] = v4;
  v1[59] = v3;

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.addTitleAndSuggestions(at:), v4, v3);
}

{
  v87 = v0;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = type metadata accessor for Logger();
  *(v0 + 480) = __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v86[0] = v7;
    *v6 = 136315394;
    v8 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v86);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001D4090F60, v86);
    _os_log_impl(&dword_1D38C4000, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 488) = Strong;
  if (!Strong)
  {
    goto LABEL_32;
  }

  *(v0 + 400) = Strong;
  v12 = Strong;
  type metadata accessor for AnyCanvas();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB10Attachment_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 152) = 0;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 120, &_s8PaperKit0aB10Attachment_pSgMd);
LABEL_36:
    v58 = *(v0 + 424);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v86[0] = v62;
      *v61 = 136315138;
      v63 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v86);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1D38C4000, v59, v60, "%s returning (paperKitAttachment/magicGenerativeVC/textualContext is nil)", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x1DA6D0660](v62, -1, -1);
      MEMORY[0x1DA6D0660](v61, -1, -1);
    }

    v66 = *(v0 + 8);

    return v66();
  }

  v80 = v13;
  v14 = *(v0 + 424);
  outlined init with take of PaperKitHashable((v0 + 120), v0 + 80);
  v15 = *(v14 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC);
  *(v0 + 496) = v15;
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);

LABEL_32:

    goto LABEL_36;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

LABEL_35:
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);
    goto LABEL_36;
  }

  v17 = v16 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  v18 = v16;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = *(v17 + 8);
  v21 = v15;

  if (!v19)
  {

    goto LABEL_35;
  }

  ObjectType = swift_getObjectType();
  (*(v20 + 8))(v86, v0 + 80, ObjectType, v20);
  swift_unknownObjectRelease();
  v23 = v86[1];
  *(v0 + 16) = v86[0];
  *(v0 + 32) = v23;
  v24 = v86[3];
  *(v0 + 48) = v86[2];
  *(v0 + 64) = v24;
  if (!*(v0 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);

    goto LABEL_32;
  }

  v25 = *(v0 + 32);
  v27 = String.replaceNewlineTabAndTrim()();
  countAndFlagsBits = v27.value._countAndFlagsBits;
  if (v27.value._object)
  {
    object = v27.value._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v29 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

  [v21 setTitle_];

  *&v86[0] = v25;

  specialized Array.append<A>(contentsOf:)(v30);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit0A24AttachmentTextualContextVSgMd);
  result = *&v86[0];
  v32 = *(*&v86[0] + 16);
  if (v32)
  {
    v33 = 0;
    v81 = -v32;
    v82 = (*(v0 + 440) + 8);
    v34 = *&v86[0] + 40;
    v35 = MEMORY[0x1E69E7CC0];
    v83 = *&v86[0];
    v78 = *&v86[0] + 40;
    do
    {
      v79 = v35;
      v36 = (v34 + 16 * v33++);
      while (1)
      {
        if ((v33 - 1) >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v85 = v33;
        v37 = *(v0 + 448);
        v38 = *(v0 + 432);
        v39 = *v36;
        *(v0 + 256) = *(v36 - 1);
        *(v0 + 264) = v39;
        *(v0 + 272) = 10;
        *(v0 + 280) = 0xE100000000000000;
        *(v0 + 288) = 32;
        *(v0 + 296) = 0xE100000000000000;
        v84 = v36;
        lazy protocol witness table accessor for type String and conformance String();

        *(v0 + 304) = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(v0 + 312) = v40;
        *(v0 + 320) = 9;
        *(v0 + 328) = 0xE100000000000000;
        *(v0 + 336) = 32;
        *(v0 + 344) = 0xE100000000000000;
        v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v43 = v42;

        *(v0 + 352) = v41;
        *(v0 + 360) = v43;
        static CharacterSet.whitespacesAndNewlines.getter();
        v44 = StringProtocol.trimmingCharacters(in:)();
        v46 = v45;
        v47 = *v82;
        (*v82)(v37, v38);

        *(v0 + 368) = v44;
        *(v0 + 376) = v46;
        static CharacterSet.punctuationCharacters.getter();
        v48 = StringProtocol.trimmingCharacters(in:)();
        v50 = v49;
        v47(v37, v38);

        *(v0 + 384) = v48;
        *(v0 + 392) = v50;
        static CharacterSet.whitespacesAndNewlines.getter();
        v51 = StringProtocol.trimmingCharacters(in:)();
        v53 = v52;
        v47(v37, v38);

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          break;
        }

        ++v33;
        result = v83;
        v36 = v84 + 2;
        if (v81 + v85 + 1 == 1)
        {
          v35 = v79;
          goto LABEL_43;
        }
      }

      v35 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
      }

      v34 = v78;
      v56 = *(v35 + 2);
      v55 = *(v35 + 3);
      if (v56 >= v55 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v35);
      }

      *(v35 + 2) = v56 + 1;
      v57 = &v35[16 * v56];
      *(v57 + 4) = v51;
      *(v57 + 5) = v53;
      result = v83;
    }

    while (v81 + v33);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

LABEL_43:
  v67 = *(v0 + 424);

  *(v0 + 408) = v35;
  v68 = AnyCanvas.suggestionsFromOnScreenTextCanvasElements()();
  specialized Array.append<A>(contentsOf:)(v68);
  v69 = v67;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v86[0] = v73;
    *v72 = 136315394;
    v74 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v86);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2048;
    swift_beginAccess();
    *(v72 + 14) = *(*(v0 + 408) + 16);
    _os_log_impl(&dword_1D38C4000, v70, v71, "%s suggestions count is %ld", v72, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x1DA6D0660](v73, -1, -1);
    MEMORY[0x1DA6D0660](v72, -1, -1);
  }

  v77 = swift_task_alloc();
  *(v0 + 504) = v77;
  *v77 = v0;
  v77[1] = specialized CanvasGenerationTool.addTitleAndSuggestions(at:);

  return AnyCanvas.suggestionsFromOnScreenTextStrokes()();
}

{
  v24 = v0;
  v1 = v0[64];

  if (v1)
  {
    v2 = v0[64];
    v3 = v0[53];
    swift_bridgeObjectRetain_n();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315394;
      v9 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      v12 = *(v2 + 16);

      *(v7 + 14) = v12;

      _os_log_impl(&dword_1D38C4000, v5, v6, "%s handwritten text length is %ld", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1DA6D0660](v8, -1, -1);
      MEMORY[0x1DA6D0660](v7, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v2);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = v0[51];
  v15 = v0[61];
  v14 = v0[62];
  if (*(v13 + 16))
  {
    v0[52] = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v16 = BidirectionalCollection<>.joined(separator:)();
    v18 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D4058CF0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 addSuggestions_];

    __swift_destroy_boxed_opaque_existential_0((v0 + 10));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 10));
  }

  v21 = v0[1];

  return v21();
}

uint64_t specialized CanvasGenerationTool.addTitleAndSuggestions(at:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 512) = a1;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);

  return MEMORY[0x1EEE6DFA0](specialized CanvasGenerationTool.addTitleAndSuggestions(at:), v4, v3);
}

uint64_t partial apply for closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(uint64_t a1)
{
  v4 = v1[3];
  v9 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #3 in CanvasGenerationTool.generateImageDestructively(elementMembers:strokeMembers:elementsImage:strokesImage:textPrompts:textSuggestions:invocation:)(a1, v9, v4, v5, v6);
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in static CanvasGenerationTool.prewarmEffect()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t get_enum_tag_for_layout_string_8PaperKit25CanvasGenerationToolErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for CanvasGenerationToolError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasGenerationToolError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CanvasGenerationToolError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.generateImageAndReset(with:invocation:)(a1, v4, v5, v6, v7, v8);
}

void (*ReflowTextView.spacingAdjustment.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  *(v3 + 408) = v5;
  swift_beginAccess();
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  *(v4 + 43) = *(v5 + 203);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = v5[10];
  v10 = v5[11];
  v11 = v5[12];
  *(v4 + 107) = *(v5 + 203);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  outlined init with copy of ReflowSpacingAdjustment?(v4, (v4 + 8));
  return ReflowTextView.spacingAdjustment.modify;
}

void ReflowTextView.spacingAdjustment.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 408);
  if (a2)
  {
    v4 = v2[5];
    v2[16] = v2[4];
    v2[17] = v4;
    v6 = v2[4];
    v5 = v2[5];
    v2[18] = v2[6];
    *(v2 + 299) = *(v2 + 107);
    v8 = v3[11];
    v7 = v3[12];
    v9 = v3[10];
    *(v2 + 235) = *(v3 + 203);
    v2[13] = v8;
    v2[14] = v7;
    v2[12] = v9;
    v10 = v2[6];
    *(v3 + 203) = *(v2 + 107);
    v3[11] = v5;
    v3[12] = v10;
    v3[10] = v6;
    outlined init with copy of ReflowSpacingAdjustment?((v2 + 16), (v2 + 20));
    outlined destroy of ReflowSpacingAdjustment?((v2 + 12));
    v11 = v2[5];
    v2[8] = v2[4];
    v2[9] = v11;
    v2[10] = v2[6];
    *(v2 + 171) = *(v2 + 107);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v14 = v3[10];
    *(v2 + 171) = *(v3 + 203);
    v2[9] = v13;
    v2[10] = v12;
    v2[8] = v14;
    v15 = v2[4];
    v16 = v2[5];
    v17 = v2[6];
    *(v3 + 203) = *(v2 + 107);
    v3[11] = v16;
    v3[12] = v17;
    v3[10] = v15;
  }

  outlined destroy of ReflowSpacingAdjustment?((v2 + 8));

  free(v2);
}

void one-time initialization function for showDebugUI()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1DA6CCED0](0xD00000000000001FLL, 0x80000001D4091350);
  v2 = [v0 BOOLForKey_];

  static ReflowTextView.showDebugUI = v2;
}

uint64_t closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_4:
        v11 = swift_allocObject();
        v24 = a2;
        v12 = MEMORY[0x1E69E7CC0];
        *(v11 + 16) = MEMORY[0x1E69E7CC0];
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        v14 = swift_allocObject();
        v14[2] = v11 + 16;
        v14[3] = v13 + 16;
        v14[4] = a1;
        v14[5] = a3;
        v15 = swift_allocObject();
        *(v15 + 16) = partial apply for closure #1 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:);
        *(v15 + 24) = v14;
        aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_78;
        v16 = _Block_copy(aBlock);

        v17 = a3;

        [v24 performAsCurrentTraitCollection_];
        _Block_release(v16);
        LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

        if (v12)
        {
          __break(1u);
        }

        else
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          v22 = MEMORY[0x1E69E85E0];
          v21[2] = v20;
          v21[3] = v22;
          v21[4] = v13;
          v21[5] = v11;
          v21[6] = a4;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:), v21);
        }

        return result;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  **(*(a4 + 64) + 40) = 0;

  return swift_continuation_resume();
}

uint64_t closure #1 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)(uint64_t *a1, void *a2, unint64_t a3, void *a4)
{
  v6 = specialized static ReflowLayoutManager.process(lines:in:)(a3, a4);
  v8 = v7;
  *a1 = v6;

  *a2 = v8;
}

uint64_t closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for PKStroke();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:), v9, v8);
}

uint64_t closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)()
{
  v1 = v0[11];

  swift_beginAccess();
  v2 = *(v1 + 16);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v0[15];
    v11 = *(v8 + 16);
    v9 = v8 + 16;
    v10 = v11;
    v12 = v2 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v14 = v0[16];
      v15 = v0[14];
      v10(v14, v12, v15);
      PKStroke.renderBounds.getter();
      v30.origin.x = v16;
      v30.origin.y = v17;
      v30.size.width = v18;
      v30.size.height = v19;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v29 = CGRectUnion(v28, v30);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      (*(v9 - 8))(v14, v15);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[11];
  swift_beginAccess();
  v23 = *(v20 + 16);
  swift_beginAccess();
  v24 = *(v22 + 16);
  objc_allocWithZone(type metadata accessor for ReflowTextView());

  **(*(v21 + 64) + 40) = ReflowTextView.init(contents:frame:strokesToReflow:)(v23, v24, x, y, width, height);
  swift_continuation_resume();

  v25 = v0[1];

  return v25();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CHReflowableTextLine]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHReflowableTextLine);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

_BYTE *ReflowTextView.init(contents:frame:strokesToReflow:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  i = &_s8PaperKit0aB10Attachment_pMd;
  v15 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_annotationLayer;
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_annotationLayer] = 0;
  v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationEnabled] = 1;
  swift_unknownObjectWeakInit();
  v16 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_nonReflowableStrokesToRemove] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___weakBackpointer] = 0;
  v17 = &v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime];
  *v17 = 0;
  v17[8] = 1;
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationTargetEndTime] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___displayLink] = 0;
  v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations] = v16;
  v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationSmoothstep] = 0;
  type metadata accessor for ReflowLayoutManager();
  swift_allocObject();
  ReflowLayoutManager.init(contents:frame:strokesToReflow:)(a1, a2, a3, a4, a5, a6);
  v18 = &_s8PaperKit0aB10Attachment_pMd;
  *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager] = v19;
  if (one-time initialization token for showDebugUI != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (static ReflowTextView.showDebugUI == 1)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      v21 = *&v7[v15];
      *&v7[v15] = v20;
    }

    v22 = type metadata accessor for ReflowTextView();
    v42.receiver = v7;
    v42.super_class = v22;
    v7 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a3, a4, a5, a6);
    v23 = *&v7[v18[11]];
    swift_beginAccess();
    v18 = *(v23 + 88);
    v41 = v18[2];
    if (!v41)
    {
      break;
    }

    v40 = v18 + 4;

    v24 = 0;
    v39 = v18;
    while (v24 < v18[2])
    {
      v15 = v40[21 * v24];
      if (v15 >> 62)
      {
        v25 = __CocoaSet.count.getter();
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      if (v25 < 1)
      {
        goto LABEL_29;
      }

      for (i = 0; i != v25; i = (i + 1))
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1DA6CE0C0](i, v15);
        }

        else
        {
          v26 = *(v15 + 8 * i + 32);
        }

        v27 = (*(*v26 + 304))();
        if (v27)
        {
          v28 = v27;
          v29 = [v7 layer];
          [v29 addSublayer_];

          if (static ReflowTextView.showDebugUI)
          {
            [v28 setBorderWidth_];
          }
        }

        else
        {
        }
      }

      v18 = v39;
LABEL_7:
      if (++v24 == v41)
      {

        i = &_s8PaperKit0aB10Attachment_pMd;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_25:
  v30 = *&v7[i[12]];
  if (v30)
  {
    v31 = v30;
    v32 = [v7 layer];
    [v32 addSublayer_];

    v33 = [v7 layer];
    v34 = [objc_opt_self() blueColor];
    v35 = [v34 colorWithAlphaComponent_];

    v36 = [v35 CGColor];
    [v33 setBorderColor_];

    v37 = [v7 layer];
    [v37 setBorderWidth_];
  }

  return v7;
}

id ReflowTextView.adjustSizeForSingleLineManipulation(in:)(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  result = swift_beginAccess();
  if (*(*(v4 + 88) + 16) == 1)
  {
    v6 = [v2 frame];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x440))(v6);
    v9 = (*((*v7 & *v8) + 0x280))();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16.origin.x = v9;
    v16.origin.y = v11;
    v16.size.width = v13;
    v16.size.height = v15;
    CGRectGetMaxX(v16);
    [v2 frame];
    CGRectGetMinX(v17);
    [v2 frame];
    return [v2 setFrame_];
  }

  return result;
}

uint64_t ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PKStroke();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x1EEE6DFA0](ReflowTextView.addToCanvas(_:hasHiddenStrokes:), v7, v6);
}

uint64_t ReflowTextView.addToCanvas(_:hasHiddenStrokes:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0x440))();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  *(v0 + 136) = v6;

  if (v6)
  {
    v57 = v6;
    v7 = *(v0 + 48);
    v8 = (*((*v1 & **(v0 + 24)) + 0x468))();
    v9 = [v8 canvasView];

    [v9 cancelCurrentStroke];
    v10 = *(*(v7 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager) + 104);
    v11 = *(v10 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v13 = *(v0 + 64);
      v70 = MEMORY[0x1E69E7CC0];

      v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v22 = 0;
      v12 = v70;
      v62 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v64 = v10;
      v66 = v10 + v62;
      v68 = v13;
      v58 = (v13 + 32);
      v60 = (v13 + 8);
      while (v22 < *(v10 + 16))
      {
        v23 = *(v68 + 72);
        (*(v68 + 16))(*(v0 + 88), v66 + v23 * v22, *(v0 + 56));
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v25 = [(objc_class *)isa copyForMutation];

        if (!v25)
        {
          goto LABEL_26;
        }

        v26 = *(v0 + 88);
        v27 = *(v0 + 56);
        [v25 _setHidden_];
        v28 = v25;
        static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

        (*v60)(v26, v27);
        v30 = *(v70 + 16);
        v29 = *(v70 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        }

        ++v22;
        v31 = *(v0 + 96);
        v32 = *(v0 + 56);
        *(v70 + 16) = v30 + 1;
        v14 = (*v58)(v70 + v62 + v30 * v23, v31, v32);
        v10 = v64;
        if (v11 == v22)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      v33 = *(v0 + 48);
      *(v0 + 16) = v12;
      v34 = *(v33 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_nonReflowableStrokesToRemove);
      v35 = *(v34 + 16);
      v36 = MEMORY[0x1E69E7CC0];
      if (!v35)
      {
LABEL_18:
        v51 = *(v0 + 32);
        v50 = *(v0 + 40);
        v52 = *(v0 + 24);
        specialized Array.append<A>(contentsOf:)(v36);
        v53 = static MainActor.shared.getter();
        *(v0 + 144) = v53;
        v54 = swift_task_alloc();
        *(v0 + 152) = v54;
        v54[2] = v52;
        v54[3] = v0 + 16;
        v54[4] = v57;
        v54[5] = v33;
        v54[6] = v51;
        v54[7] = v50;
        v14 = swift_task_alloc();
        *(v0 + 160) = v14;
        *v14 = v0;
        v14[1] = ReflowTextView.addToCanvas(_:hasHiddenStrokes:);
        v16 = MEMORY[0x1E69E85E0];
        v19 = partial apply for closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:);
        v18 = 0x80000001D4091300;
        v21 = MEMORY[0x1E69E7CA8] + 8;
        v15 = v53;
        v17 = 0xD000000000000020;
        v20 = v54;

        return MEMORY[0x1EEE6DDE0](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v37 = *(v0 + 64);
      v71 = MEMORY[0x1E69E7CC0];

      v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v38 = 0;
      v36 = v71;
      v63 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v65 = v34;
      v67 = v34 + v63;
      v69 = v37;
      v59 = (v37 + 32);
      v61 = (v37 + 8);
      while (v38 < *(v34 + 16))
      {
        v39 = v36;
        v40 = *(v69 + 72);
        (*(v69 + 16))(*(v0 + 72), v67 + v40 * v38, *(v0 + 56));
        v41 = PKStroke._bridgeToObjectiveC()().super.isa;
        v42 = [(objc_class *)v41 copyForMutation];

        if (!v42)
        {
          goto LABEL_27;
        }

        v43 = *(v0 + 72);
        v44 = *(v0 + 56);
        [v42 _setHidden_];
        v45 = v42;
        static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

        (*v61)(v43, v44);
        v36 = v39;
        v47 = *(v39 + 16);
        v46 = *(v39 + 24);
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1);
          v36 = v39;
        }

        ++v38;
        v48 = *(v0 + 80);
        v49 = *(v0 + 56);
        *(v36 + 16) = v47 + 1;
        v14 = (*v59)(v36 + v63 + v47 * v40, v48, v49);
        v34 = v65;
        if (v35 == v38)
        {

          v33 = *(v0 + 48);
          goto LABEL_18;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v55 = *(v0 + 8);

  return v55();
}

{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](ReflowTextView.addToCanvas(_:hasHiddenStrokes:), v3, v2);
}

{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

void closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v36 = a1;
  v37 = a5;
  v35 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PKDrawing();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x468))(v14);
  if (v17)
  {
    v34 = v17;
    type metadata accessor for PKStroke();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v35 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    PKDrawing._bridgeToObjectiveC()(v19);
    v21 = v20;
    (*(v13 + 8))(v16, v12);
    (*(v9 + 16))(v11, v36, v8);
    v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v23 = swift_allocObject();
    v25 = v37;
    v24 = v38;
    *(v23 + 2) = a2;
    *(v23 + 3) = v25;
    v26 = v39;
    *(v23 + 4) = v24;
    *(v23 + 5) = v26;
    (*(v9 + 32))(&v23[v22], v11, v8);
    aBlock[4] = partial apply for closure #1 in closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_63;
    v27 = _Block_copy(aBlock);
    v28 = a2;
    v29 = v25;
    outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(v24, v26);

    v31 = isa;
    v30 = v34;
    [v34 _setAdditionalStrokes_inDrawing_completion_];
    _Block_release(v27);
  }
}

void closure #1 in closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v7 = [v6 layer];
  [v7 setAnchorPoint_];

  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x858))(v34);
  v9 = sqrt(vaddvq_f64(vmulq_f64(v34[0], v34[0])));
  if (v35)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 layer];
  CGAffineTransformMakeScale(&v33, v10, v10);
  [v11 setAffineTransform_];

  v12 = &selRef_PDFView;
  [v6 setFrame_];
  v13 = (*((*v8 & *a1) + 0x440))([v6 addSubview_]);
  [v13 addSubview_];

  swift_unknownObjectWeakAssign();
  v14 = *(a2 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  swift_beginAccess();
  v15 = *(v14 + 80);
  if (v15 >> 62)
  {
LABEL_44:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_6:
      if (v16 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1DA6CE0C0](i, v15);
        }

        else
        {
          v18 = *(v15 + 8 * i + 32);
        }

        if ((~*(v18 + 48) & 0x7FF0000000000000) != 0)
        {
          v19 = (~*(v18 + 56) & 0x7FF0000000000000) == 0 || (*(v18 + 64) & 0x7FF0000000000000) == 0x7FF0000000000000;
          if (!v19 && (*(v18 + 72) & 0x7FF0000000000000) != 0x7FF0000000000000)
          {
            v21 = (*(*v18 + 304))();
            if (v21)
            {
              v22 = v21;
              [v21 *(v12 + 3976)];
            }
          }
        }
      }
    }
  }

  swift_beginAccess();
  v23 = *(v14 + 88);
  v14 = v23 + 32;

  v24 = 0;
  v12 = 1;
  while (1)
  {
    v26 = *(v23 + 16);
    if (v24 == v26)
    {
      break;
    }

    if (v24 >= v26)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v15 = *(v14 + 168 * v24);
    if (v15 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      if (!v27)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_25;
      }
    }

    if (v27 < 1)
    {
      goto LABEL_43;
    }

    for (j = 0; j != v27; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1DA6CE0C0](j, v15);
      }

      else
      {
      }

      *(v29 + 128) = v24;
    }

LABEL_25:
    v24 = v12;
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_42;
    }
  }

  if (a3)
  {
    a3(v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  CheckedContinuation.resume(returning:)();
}

uint64_t ReflowTextView.weakBackpointer.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___weakBackpointer;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___weakBackpointer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___weakBackpointer);
  }

  else
  {
    type metadata accessor for ReflowTextView.WeakBackpointer();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

id ReflowTextView.displayLink.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___displayLink;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___displayLink);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___displayLink);
  }

  else
  {
    v4 = ReflowTextView.weakBackpointer.getter();
    v5 = [objc_opt_self() displayLinkWithTarget:v4 selector:sel_stepAnimation];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

Swift::Void __swiftcall ReflowTextView.startAnimating(endingIn:smoothstep:)(Swift::Double endingIn, Swift::Bool smoothstep)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating;
  if ((*(v2 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating) & 1) == 0)
  {
    v11 = ReflowTextView.displayLink.getter();
    v12 = [objc_opt_self() mainRunLoop];
    [v11 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];

    *(v3 + v10) = 1;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v15 = v3 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime;
    *v15 = v14;
    *(v15 + 8) = 0;
  }

  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  *(v3 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationTargetEndTime) = v17 + endingIn;
  *(v3 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationSmoothstep) = smoothstep;
}

Swift::Void __swiftcall ReflowTextView.stopAnimating()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  swift_beginAccess();
  v5 = *(v4 + 80);
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    v27 = v0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6CE0C0](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = (*v8 + 304);
    v10 = *v9;
    v11 = (*v9)();
    if (v11)
    {
      v12 = v11;
      [v11 setFrame_];
    }

    v13 = v10();
    if (v13)
    {
      LODWORD(v14) = 1.0;
      v15 = v13;
      [v13 setOpacity_];
    }
  }

  v0 = v27;
LABEL_14:
  v16 = ReflowTextView.displayLink.getter();
  v17 = [objc_opt_self() mainRunLoop];
  [v16 removeFromRunLoop:v17 forMode:*MEMORY[0x1E695DA28]];

  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating) = 0;
  v18 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations;
  v19 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations);
  v20 = *(v19 + 16);
  if (v20)
  {
    v25 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations;
    v21 = *(v26 + 16);
    v22 = v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v23 = *(v26 + 72);
    v24 = (v26 + 8);

    do
    {
      v21(v3, v22, v1);
      CheckedContinuation.resume(returning:)();
      (*v24)(v3, v1);
      v22 += v23;
      --v20;
    }

    while (v20);

    v0 = v27;
    v18 = v25;
  }

  *(v0 + v18) = MEMORY[0x1E69E7CC0];
}

uint64_t closure #1 in ReflowTextView.endOfAnimation()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  if (*(a2 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating) != 1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

Swift::Void __swiftcall ReflowTextView.stepAnimation()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationEnabled) == 1)
  {
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    v8 = v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime;
    v9 = *(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime);
    v10 = *(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime + 8);
    *v8 = v7;
    *(v8 + 8) = 0;
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions_];
    v12 = *(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationTargetEndTime);
    if (v12 <= v7)
    {
      ReflowTextView.stopAnimating()();
      goto LABEL_52;
    }

    v13 = v7 - v9;
    v14 = 0.0;
    if (v10)
    {
      v13 = 0.0;
    }

    v15 = v13 / (v12 - v7);
    v16 = fmin(v15, 1.0);
    if (*(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationSmoothstep) == 1)
    {
      if (v16 >= 0.0)
      {
        v14 = v16;
      }

      if (v15 >= 1.0)
      {
        v14 = 1.0;
      }

      v16 = v14 * (v14 * 3.0) - v14 * (v14 * (v14 + v14));
    }

    v17 = *(v1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
    swift_beginAccess();
    v18 = *(v17 + 80);
    if (v18 >> 62)
    {
      v19 = __CocoaSet.count.getter();
      if (!v19)
      {
LABEL_52:
        [v11 commit];
        return;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_52;
      }
    }

    v46 = v11;
    if (v19 >= 1)
    {
      v48 = v18 & 0xC000000000000001;

      swift_beginAccess();
      v20 = 0;
      v47 = 0.01;
      while (1)
      {
        if (v48)
        {
          v21 = MEMORY[0x1DA6CE0C0](v20, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = (*(*v21 + 304))();
        if (v22)
        {
          break;
        }

LABEL_16:
        if (v19 == ++v20)
        {

          v11 = v46;
          goto LABEL_52;
        }
      }

      v23 = v22;
      v21[16] = v21[16] + v16 * (v21[10] - v21[16]);
      *(v63 + 11) = *(v17 + 203);
      v24 = *(v17 + 176);
      v62[0] = *(v17 + 160);
      v62[1] = v24;
      v63[0] = *(v17 + 192);
      v25 = BYTE9(v63[1]);
      if (*&v62[0])
      {
        v56 = *&v62[0];
        v57 = *(v17 + 168);
        v58 = *(v17 + 184);
        v59 = *(v17 + 200);
        v60 = *(v17 + 216);
        v61 = *(&v63[1] + 9);
        outlined init with copy of ReflowSpacingAdjustment?(v62, v54);
        outlined destroy of ReflowSpacingAdjustment?(&v56);
        if ((v25 & 1) == 0)
        {
          goto LABEL_29;
        }

        v26 = *(v17 + 176);
        v54[0] = *(v17 + 160);
        v54[1] = v26;
        v55[0] = *(v17 + 192);
        *(v55 + 11) = *(v17 + 203);
        v27 = *&v54[0];
        if (*&v54[0])
        {
          v50 = *&v54[0];
          v51 = *(v17 + 168);
          v52 = *(v17 + 184);
          *v53 = *(v17 + 200);
          *&v53[15] = *(v17 + 215);
          outlined init with copy of ReflowSpacingAdjustment?(v54, v49);

          outlined destroy of ReflowSpacingAdjustment?(&v50);
          v28 = *(v27 + 80);

          if (vabdd_f64(v21[16], v28) < v47)
          {
            [v23 setFrame_];
LABEL_49:

            goto LABEL_16;
          }

LABEL_29:
          [v23 frame];
          v65.origin.x = 0.0;
          v65.origin.y = 0.0;
          v65.size.width = 0.0;
          v65.size.height = 0.0;
          if (CGRectEqualToRect(v64, v65))
          {
            v30 = [v23 setFrame_];
            v21[16] = v21[10];
          }

          else
          {
            [v23 frame];
            v30 = [v23 setFrame_];
          }

          (*(*v21 + 384))(v30);
          v35 = v21[16];
          v36 = vabdd_f64(v35, v21[10]);
          if (v36 >= 0.5)
          {
            v41 = (vabdd_f64(v35, round(v35)) + -0.2) / -0.2;
            if (v41 < 0.0)
            {
              v42 = 0.0;
            }

            else
            {
              v42 = v41;
            }

            if (v41 >= 1.0)
            {
              v43 = 1.0;
            }

            else
            {
              v43 = v42;
            }

            v44 = v43 * (v43 * 3.0) - v43 * (v43 * (v43 + v43));
            [v23 opacity];
            if (*&v40 > v44)
            {
              *&v40 = v44;
            }
          }

          else
          {
            v37 = (v36 + -0.2) / -0.2;
            if (v37 < 0.0)
            {
              v38 = 0.0;
            }

            else
            {
              v38 = (v36 + -0.2) / -0.2;
            }

            if (v37 >= 1.0)
            {
              v39 = 1.0;
            }

            else
            {
              v39 = v38;
            }

            v40 = v39 * (v39 * 3.0) - v39 * (v39 * (v39 + v39));
            *&v40 = v40;
          }

          [v23 setOpacity_];
          goto LABEL_49;
        }

        v50 = 0;
        v51 = *(v17 + 168);
        v52 = *(v17 + 184);
        *v53 = *(v17 + 200);
        *&v53[15] = *(v17 + 215);
        outlined init with copy of ReflowSpacingAdjustment?(v54, v49);
        v29 = &v50;
      }

      else
      {
        v56 = 0;
        v57 = *(v17 + 168);
        v58 = *(v17 + 184);
        v59 = *(v17 + 200);
        v60 = *(v17 + 216);
        v61 = *(&v63[1] + 9);
        outlined init with copy of ReflowSpacingAdjustment?(v62, v54);
        v29 = &v56;
      }

      outlined destroy of ReflowSpacingAdjustment?(v29);
      goto LABEL_29;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ReflowTextView.lineDebug()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_annotationLayer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
    v3 = *(v2 + 112);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CALayer);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 setSublayers_];

    swift_beginAccess();
    v6 = *(v2 + 96);
    v7 = *(v6 + 16);
    if (v7)
    {
      v39 = v4;
      v43 = v3 / 100.0;
      v38 = objc_opt_self();
      transform.a = 1.0;
      transform.b = 0.0;
      transform.c = 0.0;
      transform.d = 1.0;
      transform.tx = 0.0;
      transform.ty = 0.0;

      v42 = v7 - 1;
      v8 = 32;
      for (i = v6; ; v6 = i)
      {
        v9 = v8;
        v10 = *(v6 + v8);
        v11 = *(v6 + v8 + 32);
        v45[1] = *(v6 + v8 + 16);
        v46 = v11;
        v45[0] = v10;
        v12 = *(v6 + v8 + 48);
        v13 = *(v6 + v8 + 64);
        v14 = *(v6 + v8 + 96);
        v49 = *(v6 + v8 + 80);
        v50 = v14;
        v47 = v12;
        v48 = v13;
        v15 = *(v6 + v8 + 112);
        v16 = *(v6 + v8 + 128);
        v17 = *(v6 + v8 + 144);
        v54 = *(v6 + v8 + 160);
        v52 = v16;
        v53 = v17;
        v51 = v15;
        v18 = *(&v46 + 1);
        v19 = v47;
        v40 = *&v48;
        v20 = objc_allocWithZone(MEMORY[0x1E69794A0]);
        outlined init with copy of ReflowTextLine(v45, v44);
        v21 = [v20 init];
        [v21 setLineWidth_];
        v22 = [v38 systemMintColor];
        v23 = [v22 colorWithAlphaComponent_];

        v24 = [v23 CGColor];
        [v21 setStrokeColor_];

        [v21 setFillColor_];
        Mutable = CGPathCreateMutable();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D405C990;
        *(v26 + 32) = v43 * *(&v19 + 1) + 0.0;
        v27 = sqrt((*(&v19 + 1) - v18) * (*(&v19 + 1) - v18) + (v40 - *&v19) * (v40 - *&v19));
        v28 = (v40 - *&v19) / v27 * *&v46;
        v29 = *(&v19 + 1) - (*(&v19 + 1) - v18) / v27 * *&v46;
        v30.f64[0] = v40;
        v31 = v43 * (v40 - v28) + 20.0;
        v30.f64[1] = v29;
        v41 = vmulq_n_f64(v30, v43);
        *(v26 + 40) = vaddq_f64(v41, xmmword_1D4077540);
        *(v26 + 56) = v31;
        CGMutablePathRef.addLines(between:transform:)(v26, &transform);

        [v21 setPath_];

        [v39 addSublayer_];
        v32 = [v38 systemLightGrayColor];
        v33 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
        [v33 setLineWidth_];
        v34 = [v32 CGColor];
        [v33 setStrokeColor_];

        [v33 setFillColor_];
        v35 = CGPathCreateMutable();
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1D405C990;
        *(v36 + 32) = v43 * v18;
        *(v36 + 40) = v43 * *&v19;
        *(v36 + 48) = v43 * *(&v19 + 1);
        *(v36 + 56) = v41.f64[0];
        CGMutablePathRef.addLines(between:transform:)(v36, &transform);

        [v33 setPath_];

        [v39 addSublayer_];
        outlined destroy of ReflowTextLine(v45);

        if (!v42)
        {
          break;
        }

        --v42;
        v8 = v9 + 168;
      }
    }

    else
    {
    }
  }
}

id ReflowTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflowTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of ReflowSpacingAdjustment?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  closure #1 in closure #3 in ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(v1, v2, v3, v4);
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized static ReflowTextView.reflowTextView(at:strokes:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  v5 = type metadata accessor for PKDrawing();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = type metadata accessor for MainActor();
  *(v4 + 256) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 264) = v7;
  *(v4 + 272) = v6;

  return MEMORY[0x1EEE6DFA0](specialized static ReflowTextView.reflowTextView(at:strokes:in:), v7, v6);
}

uint64_t specialized static ReflowTextView.reflowTextView(at:strokes:in:)()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  v6 = [v4 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v1, v2, v5);
  type metadata accessor for PKDrawingCoherence(0);
  swift_dynamicCast();
  v7 = v0[20];
  [v7 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v0[35] = v0[21];
  v0[36] = [v4 traitCollection];
  v8 = static MainActor.shared.getter();
  v0[37] = v8;
  if (v8)
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

  return MEMORY[0x1EEE6DFA0](specialized static ReflowTextView.reflowTextView(at:strokes:in:), v9, v11);
}

{
  v1 = *(v0 + 35);
  v2 = *(v0 + 36);
  v3 = *(v0 + 26);
  v5 = v0[23];
  v4 = v0[24];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 22;
  *(v0 + 3) = specialized static ReflowTextView.reflowTextView(at:strokes:in:);
  v6 = swift_continuation_init();
  v7 = [v3 recognitionController];
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v6;
  *(v0 + 14) = partial apply for closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:);
  *(v0 + 15) = v9;
  *(v0 + 10) = MEMORY[0x1E69E9820];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = thunk for @escaping @callee_guaranteed (@guaranteed [CHReflowableTextLine]?) -> ();
  *(v0 + 13) = &block_descriptor_63_2;
  v10 = _Block_copy(v0 + 10);
  v11 = v2;
  v12 = v1;

  v13 = [v7 reflowableLinesInitialStrokes:isa atLocation:v10 completion:{v5, v4}];
  _Block_release(v10);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  *(*v0 + 304) = *(*v0 + 176);
  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](specialized static ReflowTextView.reflowTextView(at:strokes:in:), v3, v2);
}

{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);
  v3 = *(v0 + 304);

  return v2(v3);
}

void specialized ReflowTextView.caretRect(for:in:in:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  [v3 convertPoint:a1 fromCoordinateSpace:?];
  v10 = ReflowLayoutManager.closestPosition(to:)(v8, v9);
  v11 = v10;
  v12 = 0uLL;
  if (v10)
  {
    ReflowLayoutManager.caretRect(for:)(v10);
    [v3 convertRect:a1 toCoordinateSpace:?];
    v25 = CGRectInset(v24, 0.0, -2.0);
    y = v25.origin.y;
    v13 = [v3 superview];
    v14 = xmmword_1D4077550;
    if (v13)
    {
      v15 = v13;
      v16 = a3 + -2.0 + -1.0;
      [v4 frame];
      [v15 convertRect:a1 toCoordinateSpace:?];
      x = v26.origin.x;
      v18 = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      MinX = CGRectGetMinX(v26);
      v27.origin.x = x;
      v27.origin.y = v18;
      v27.size.width = width;
      v27.size.height = height;
      MaxX = CGRectGetMaxX(v27);

      if (MinX > v16)
      {
        *&v12 = MinX;
      }

      else
      {
        *&v12 = v16;
      }

      if (*&v12 >= MaxX)
      {
        *&v12 = MaxX;
      }

      v14 = xmmword_1D4077550;
      *(&v12 + 1) = y;
    }

    else
    {
      v12 = 0uLL;
    }
  }

  else
  {
    v14 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 24) = v14;
}

void specialized ReflowTextView.caretRect(for:lines:in:in:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [v4 convertPoint_fromCoordinateSpace_];
  v9 = v8;
  v11 = v10;
  v12 = *&v4[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  swift_beginAccess();
  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a2 = *(v12 + 88);
  v14 = *(a2 + 16);
  if (v14 < a1 || v14 < v13)
  {
    goto LABEL_20;
  }

  if (v13 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 == v13 - a1)
  {

    goto LABEL_10;
  }

LABEL_22:
  specialized _copyCollectionToContiguousArray<A>(_:)(a2, a2 + 32, a1, (2 * v13) | 1);
  a2 = v26;
LABEL_10:
  v16 = specialized ReflowLayoutManager.closestLine(to:lines:)(a2, v9, v11);
  v18 = v17;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= *(*(v12 + 88) + 16))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v27 = ReflowTextLine.caretRect(at:)(__PAIR128__(*&v11, *&v9));
  [v4 convertRect:a3 toCoordinateSpace:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
  v20 = [v4 superview];
  if (v20)
  {
    v21 = v20;
    [v4 frame];
    [v21 convertRect:a3 toCoordinateSpace:?];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    CGRectGetMinX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetMaxX(v30);
  }
}

void specialized ReflowTextView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_annotationLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationEnabled) = 1;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_nonReflowableStrokesToRemove) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___weakBackpointer) = 0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_lastAnimationTime;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationTargetEndTime) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView____lazy_storage___displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_endAnimationContinuations) = v1;
  *(v0 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_animationSmoothstep) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in closure #1 in closure #1 in static ReflowTextView.reflowTextView(at:strokes:in:)(a1, v4, v5, v6, v7, v8);
}

void specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() activePencil];
  v5 = [v4 isConnected];

  *v2 = v5;
  static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v6 = v2;
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  *(v6 + 1) = v7;
  *(v6 + 2) = v9;
  if (a1)
  {
    v10 = a1;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v10);
  }
}

{
  v2 = v1;
  v4 = [objc_opt_self() activePencil];
  v5 = [v4 isConnected];

  *v2 = v5;
  static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v6 = v2;
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  *(v6 + 1) = v7;
  *(v6 + 2) = v9;
  if (a1)
  {
    v10 = a1;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v10);
  }
}

{
  v2 = v1;
  v4 = [objc_opt_self() activePencil];
  v5 = [v4 isConnected];

  *(v2 + 1) = v5;
  static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v6 = v2;
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  *(v6 + 8) = v7;
  *(v6 + 16) = v9;
  if (a1)
  {
    v10 = a1;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v10);
  }
}

void specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(void *a1)
{
  v42 = type metadata accessor for PKDrawing();
  v2 = *(v42 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v42).n128_u64[0];
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[1] = a1;
  v6 = [a1 attachmentViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_53:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = 0;
  v12 = (v2 + 8);
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1DA6CE0C0](v10, v7);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_48;
      }

      v13 = *(v7 + 8 * v10 + 32);
    }

    v2 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v14 = [v13 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = PKDrawing.strokes.getter();
    (*v12)(v5, v42);
    v2 = *(v15 + 16);

    ++v10;
    v16 = __OFADD__(v11, v2);
    v11 += v2;
    if (v16)
    {
      goto LABEL_49;
    }
  }

  v17 = type metadata accessor for MagicPaperUsageReflowEvent();
  *(v41 + *(v17 + 36)) = v11;
  type metadata accessor for TiledTextView();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v42 = v17;
    v5 = v18;
    v19 = TiledTextView.paperAttachments.getter();
    v7 = v19;
    v43 = MEMORY[0x1E69E7CC0];
    if (v19 >> 62)
    {
      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x1E69E7D40];
    if (v20)
    {
      v22 = 0;
      v8 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v23 = MEMORY[0x1DA6CE0C0](v22, v7);
        }

        else
        {
          if (v22 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v23 = *(v7 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_50;
        }

        v26 = (*((*v21 & *v23) + 0x440))();
        v28 = v27;
        ObjectType = swift_getObjectType();
        v2 = (*(v28 + 40))(ObjectType, v28);

        v5 = &v43;
        specialized Array.append<A>(contentsOf:)(v2);
        ++v22;
        if (v25 == v20)
        {
          v30 = v43;
          if (v43 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_38:
    v30 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_39:
      v31 = __CocoaSet.count.getter();
      if (!v31)
      {
LABEL_40:
        v32 = 0;
        v8 = 0;
LABEL_41:

        v35 = specialized Sequence.flatMap<A>(_:)(v7);

        v36 = specialized Sequence<>.uniqueElements()(v35);

        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = __CocoaSet.count.getter();
        }

        else
        {
          v37 = *(v36 + 16);
        }

        v39 = v41;
        v38 = v42;
        *(v41 + *(v42 + 48)) = v37;
        *(v39 + *(v38 + 40)) = v8;
        if (!__OFSUB__(v32, v37))
        {
          *(v39 + *(v38 + 44)) = (v32 - v37) & ~((v32 - v37) >> 63);
          return;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_26:
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_40;
      }
    }

    if (v31 >= 1)
    {
      v32 = 0;
      v8 = 0;
      v33 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x1DA6CE0C0](v33, v30);
        }

        else
        {
          v34 = *(v30 + 8 * v33 + 32);
        }

        v5 = v34;
        v2 = (*((*v21 & *v34) + 0x120))();

        if (v2)
        {
          v16 = __OFADD__(v8++, 1);
          if (v16)
          {
            __break(1u);
            goto LABEL_38;
          }
        }

        else
        {
          v16 = __OFADD__(v32++, 1);
          if (v16)
          {
            goto LABEL_52;
          }
        }

        if (v31 == ++v33)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_56;
  }
}

{
  v37 = type metadata accessor for PKDrawing();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 attachmentViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_53:
    v38 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v38 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = 0;
  v10 = (v2 + 1);
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6CE0C0](v8, v6);
    }

    else
    {
      if (v8 >= *(v38 + 16))
      {
        goto LABEL_48;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v2 = v11;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v12 = [v11 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = PKDrawing.strokes.getter();
    (*v10)(v4, v37);
    v2 = *(v13 + 16);

    ++v8;
    v14 = __OFADD__(v9, v2);
    v9 += v2;
    if (v14)
    {
      goto LABEL_49;
    }
  }

  v36[10] = v9;
  type metadata accessor for TiledTextView();
  if (swift_dynamicCastClass())
  {
    v15 = TiledTextView.paperAttachments.getter();
    v16 = v15;
    v39 = MEMORY[0x1E69E7CC0];
    if (v15 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7D40];
    if (v17)
    {
      v6 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1DA6CE0C0](v6, v16);
        }

        else
        {
          if (v6 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v18 = *(v16 + 8 * v6 + 32);
        }

        v19 = v18;
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_50;
        }

        v20 = (*((*v2 & *v18) + 0x440))();
        v22 = v21;
        ObjectType = swift_getObjectType();
        v24 = (*(v22 + 40))(ObjectType, v22);

        specialized Array.append<A>(contentsOf:)(v24);
        ++v6;
        if (v4 == v17)
        {
          v25 = v39;
          if (v39 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_38:
    v25 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_39:
      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
LABEL_40:
        v26 = 0;
        v4 = 0;
LABEL_41:

        v31 = specialized Sequence.flatMap<A>(_:)(v16);

        v32 = specialized Sequence<>.uniqueElements()(v31);

        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = __CocoaSet.count.getter();
        }

        else
        {
          v33 = *(v32 + 16);
        }

        v34 = v36;

        v34[13] = v33;
        v34[11] = v4;
        if (!__OFSUB__(v26, v33))
        {
          v34[12] = (v26 - v33) & ~((v26 - v33) >> 63);
          return;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_26:
      v6 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_40;
      }
    }

    if (v6 >= 1)
    {
      v26 = 0;
      v4 = 0;
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1DA6CE0C0](v27, v25);
        }

        else
        {
          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = (*((*v2 & *v28) + 0x120))();

        if (v30)
        {
          v14 = __OFADD__(v4++, 1);
          if (v14)
          {
            __break(1u);
            goto LABEL_38;
          }
        }

        else
        {
          v14 = __OFADD__(v26++, 1);
          if (v14)
          {
            goto LABEL_52;
          }
        }

        if (v6 == ++v27)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_56;
  }
}

{
  v38 = type metadata accessor for PKDrawing();
  v2 = *(v38 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v38).n128_u64[0];
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 attachmentViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_53:
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  v11 = (v2 + 1);
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v9, v7);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      v12 = *(v7 + 8 * v9 + 32);
    }

    v2 = v12;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v13 = [v12 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = PKDrawing.strokes.getter();
    (*v11)(v5, v38);
    v2 = *(v14 + 16);

    ++v9;
    v15 = __OFADD__(v10, v2);
    v10 += v2;
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v37[4] = v10;
  type metadata accessor for TiledTextView();
  if (swift_dynamicCastClass())
  {
    v16 = TiledTextView.paperAttachments.getter();
    v17 = v16;
    v40 = MEMORY[0x1E69E7CC0];
    if (v16 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7D40];
    if (v18)
    {
      v7 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6CE0C0](v7, v17);
        }

        else
        {
          if (v7 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v19 = *(v17 + 8 * v7 + 32);
        }

        v20 = v19;
        v5 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_50;
        }

        v21 = (*((*v2 & *v19) + 0x440))();
        v23 = v22;
        ObjectType = swift_getObjectType();
        v25 = (*(v23 + 40))(ObjectType, v23);

        specialized Array.append<A>(contentsOf:)(v25);
        ++v7;
        if (v5 == v18)
        {
          v26 = v40;
          if (v40 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_38:
    v26 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_39:
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_40:
        v27 = 0;
        v5 = 0;
LABEL_41:

        v32 = specialized Sequence.flatMap<A>(_:)(v17);

        v33 = specialized Sequence<>.uniqueElements()(v32);

        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = __CocoaSet.count.getter();
        }

        else
        {
          v34 = *(v33 + 16);
        }

        v35 = v37;

        v35[7] = v34;
        v35[5] = v5;
        if (!__OFSUB__(v27, v34))
        {
          v35[6] = (v27 - v34) & ~((v27 - v34) >> 63);
          return;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_26:
      v7 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    if (v7 >= 1)
    {
      v27 = 0;
      v5 = 0;
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA6CE0C0](v28, v26);
        }

        else
        {
          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = (*((*v2 & *v29) + 0x120))();

        if (v31)
        {
          v15 = __OFADD__(v5++, 1);
          if (v15)
          {
            __break(1u);
            goto LABEL_38;
          }
        }

        else
        {
          v15 = __OFADD__(v27++, 1);
          if (v15)
          {
            goto LABEL_52;
          }
        }

        if (v7 == ++v28)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_56;
  }
}

{
  v38 = type metadata accessor for PKDrawing();
  v2 = *(v38 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v38).n128_u64[0];
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 attachmentViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_53:
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  v11 = (v2 + 1);
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v9, v7);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      v12 = *(v7 + 8 * v9 + 32);
    }

    v2 = v12;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v13 = [v12 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = PKDrawing.strokes.getter();
    (*v11)(v5, v38);
    v2 = *(v14 + 16);

    ++v9;
    v15 = __OFADD__(v10, v2);
    v10 += v2;
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v37[3] = v10;
  type metadata accessor for TiledTextView();
  if (swift_dynamicCastClass())
  {
    v16 = TiledTextView.paperAttachments.getter();
    v17 = v16;
    v40 = MEMORY[0x1E69E7CC0];
    if (v16 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7D40];
    if (v18)
    {
      v7 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6CE0C0](v7, v17);
        }

        else
        {
          if (v7 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v19 = *(v17 + 8 * v7 + 32);
        }

        v20 = v19;
        v5 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_50;
        }

        v21 = (*((*v2 & *v19) + 0x440))();
        v23 = v22;
        ObjectType = swift_getObjectType();
        v25 = (*(v23 + 40))(ObjectType, v23);

        specialized Array.append<A>(contentsOf:)(v25);
        ++v7;
        if (v5 == v18)
        {
          v26 = v40;
          if (v40 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_38:
    v26 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_39:
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_40:
        v27 = 0;
        v5 = 0;
LABEL_41:

        v32 = specialized Sequence.flatMap<A>(_:)(v17);

        v33 = specialized Sequence<>.uniqueElements()(v32);

        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = __CocoaSet.count.getter();
        }

        else
        {
          v34 = *(v33 + 16);
        }

        v35 = v37;

        v35[6] = v34;
        v35[4] = v5;
        if (!__OFSUB__(v27, v34))
        {
          v35[5] = (v27 - v34) & ~((v27 - v34) >> 63);
          return;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_26:
      v7 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    if (v7 >= 1)
    {
      v27 = 0;
      v5 = 0;
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA6CE0C0](v28, v26);
        }

        else
        {
          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = (*((*v2 & *v29) + 0x120))();

        if (v31)
        {
          v15 = __OFADD__(v5++, 1);
          if (v15)
          {
            __break(1u);
            goto LABEL_38;
          }
        }

        else
        {
          v15 = __OFADD__(v27++, 1);
          if (v15)
          {
            goto LABEL_52;
          }
        }

        if (v7 == ++v28)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_56;
  }
}

{
  v38 = type metadata accessor for PKDrawing();
  v2 = *(v38 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v38).n128_u64[0];
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 attachmentViews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_53:
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  v11 = (v2 + 1);
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v9, v7);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      v12 = *(v7 + 8 * v9 + 32);
    }

    v2 = v12;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v13 = [v12 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = PKDrawing.strokes.getter();
    (*v11)(v5, v38);
    v2 = *(v14 + 16);

    ++v9;
    v15 = __OFADD__(v10, v2);
    v10 += v2;
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v37[5] = v10;
  type metadata accessor for TiledTextView();
  if (swift_dynamicCastClass())
  {
    v16 = TiledTextView.paperAttachments.getter();
    v17 = v16;
    v40 = MEMORY[0x1E69E7CC0];
    if (v16 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7D40];
    if (v18)
    {
      v7 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6CE0C0](v7, v17);
        }

        else
        {
          if (v7 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v19 = *(v17 + 8 * v7 + 32);
        }

        v20 = v19;
        v5 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_50;
        }

        v21 = (*((*v2 & *v19) + 0x440))();
        v23 = v22;
        ObjectType = swift_getObjectType();
        v25 = (*(v23 + 40))(ObjectType, v23);

        specialized Array.append<A>(contentsOf:)(v25);
        ++v7;
        if (v5 == v18)
        {
          v26 = v40;
          if (v40 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_38:
    v26 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_39:
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_40:
        v27 = 0;
        v5 = 0;
LABEL_41:

        v32 = specialized Sequence.flatMap<A>(_:)(v17);

        v33 = specialized Sequence<>.uniqueElements()(v32);

        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = __CocoaSet.count.getter();
        }

        else
        {
          v34 = *(v33 + 16);
        }

        v35 = v37;

        v35[8] = v34;
        v35[6] = v5;
        if (!__OFSUB__(v27, v34))
        {
          v35[7] = (v27 - v34) & ~((v27 - v34) >> 63);
          return;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_26:
      v7 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    if (v7 >= 1)
    {
      v27 = 0;
      v5 = 0;
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA6CE0C0](v28, v26);
        }

        else
        {
          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = (*((*v2 & *v29) + 0x120))();

        if (v31)
        {
          v15 = __OFADD__(v5++, 1);
          if (v15)
          {
            __break(1u);
            goto LABEL_38;
          }
        }

        else
        {
          v15 = __OFADD__(v27++, 1);
          if (v15)
          {
            goto LABEL_52;
          }
        }

        if (v7 == ++v28)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_56;
  }
}

unint64_t specialized Sequence<>.uniqueElements()(unint64_t a1)
{
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    goto LABEL_2;
  }

LABEL_17:
  if (!__CocoaSet.count.getter())
  {
LABEL_2:
    result = MEMORY[0x1E69E7CD0];
    goto LABEL_3;
  }

  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Calculate0E10ExpressionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_3:
  v9 = result;
  if (a1 >> 62)
  {
    v7 = result;
    v3 = __CocoaSet.count.getter();
    result = v7;
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_5:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1DA6CE0C0](i, a1);
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return v9;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * i + 32);

          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        specialized Set._Variant.insert(_:)(&v8, v5);

        if (v6 == v3)
        {
          return v9;
        }
      }
    }
  }

  return result;
}

id specialized TiledPaperKitView.visibleStandInPaperAttachmentView()()
{
  [v0 updateEndAttachment];
  result = [v0 standInAttachmentView];
  if (result)
  {
    v2 = result;
    v3 = [result attachmentContainerView];

    if (!v3)
    {
      return 0;
    }

    type metadata accessor for AnyCanvas();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v3 = v3;
      v6 = v5;
      if ([v5 isHidden])
      {

        goto LABEL_6;
      }

      v7 = [v5 window];

      v8 = [v0 window];
      if (!v7)
      {
        if (v8)
        {

          goto LABEL_6;
        }

        return v6;
      }

      if (!v8)
      {

        goto LABEL_6;
      }

      v9 = v8;

      if (v7 == v9)
      {
        return v6;
      }
    }

LABEL_6:

    return 0;
  }

  return result;
}

void *specialized TiledPaperKitView.endPaperAttachment()()
{
  v0 = TiledTextView.paperAttachments.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ((*((*v4 & *v5) + 0x810))())
      {
        goto LABEL_16;
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v6 = 0;
LABEL_16:

  return v6;
}

uint64_t TiledTextView.paperAttachments.getter()
{
  v1 = [v0 scrollView];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 textContainer];
      v6 = [v5 textLayoutManager];

      if (v6)
      {

        v30 = MEMORY[0x1E69E7CC0];
        v7 = [v4 textStorage];
        v8 = [v7 length];

        MEMORY[0x1EEE9AC00](v9);
        v28[2] = &v30;
        v10 = [v4 textStorage];
        v11 = *MEMORY[0x1E69DB5F8];
        v12 = swift_allocObject();
        *(v12 + 16) = v4;
        *(v12 + 24) = 0;
        *(v12 + 32) = partial apply for closure #1 in TiledTextView.paperAttachments.getter;
        *(v12 + 40) = v28;
        v13 = swift_allocObject();
        *(v13 + 16) = partial apply for closure #1 in UITextView.enumeratePaperTextAttachments(in:createIfNeeded:options:using:);
        *(v13 + 24) = v12;
        aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        aBlock[3] = &block_descriptor_64;
        v14 = _Block_copy(aBlock);
        v15 = v2;

        [v10 enumerateAttribute:v11 inRange:0 options:v8 usingBlock:{0, v14}];

        _Block_release(v14);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if ((v15 & 1) == 0)
        {
          return v30;
        }

        __break(1u);
        return result;
      }
    }
  }

  v18 = [v0 attachmentContainerView];
  v17 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 subviews];

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = v17;
    if (v21 >> 62)
    {
LABEL_26:
      v22 = __CocoaSet.count.getter();
      if (v22)
      {
LABEL_10:
        v23 = 0;
        do
        {
          v24 = v23;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1DA6CE0C0](v24, v21);
            }

            else
            {
              if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v25 = *(v21 + 8 * v24 + 32);
            }

            v26 = v25;
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            type metadata accessor for PaperTextAttachmentView();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v24;
            if (v23 == v22)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x1DA6CD190]();
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v17 = aBlock[0];
        }

        while (v23 != v22);
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_10;
      }
    }

LABEL_27:
  }

  if (!(v17 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for AnyCanvas();

    return v17;
  }

  type metadata accessor for AnyCanvas();

  v27 = _bridgeCocoaArray<A>(_:)();
  swift_bridgeObjectRelease_n();
  return v27;
}

uint64_t closure #1 in TiledTextView.paperAttachments.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a1;
  MEMORY[0x1DA6CD190]();
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id TiledTextView.imageWandTipController.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit13TiledTextView____lazy_storage___imageWandTipController;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit13TiledTextView____lazy_storage___imageWandTipController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit13TiledTextView____lazy_storage___imageWandTipController);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ImageWandTipController()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void TiledTextView.initiateMagicGenerativePlayground(context:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *&v12 = MEMORY[0x1EEE9AC00](v11 - 8).n128_u64[0];
  v14 = &v27 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = [v5 window];
  if (!v18 || (v19 = v18, v20 = [objc_opt_self() sharedInstance], v21 = objc_msgSend(v20, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v19), v20, v19, (v21 & 1) == 0))
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    type metadata accessor for MainActor();
    v23 = v5;
    outlined copy of MagicGenerativePlaygroundContext(v15, v16, v17);
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = v23;
    *(v25 + 40) = v15;
    *(v25 + 48) = v16;
    *(v25 + 56) = v17;
    *(v25 + 64) = a2;
    *(v25 + 72) = a3;
    *(v25 + 80) = a4;
    *(v25 + 88) = a5;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:), v25);
  }
}

uint64_t closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 + 88) = a4;
  *(v11 + 96) = a5;
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;
  *(v11 + 33) = a11;
  *(v11 + 56) = a9;
  *(v11 + 64) = a10;
  *(v11 + 40) = a1;
  *(v11 + 48) = a8;
  type metadata accessor for MainActor();
  *(v11 + 104) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v11 + 112) = v13;
  *(v11 + 120) = v12;

  return MEMORY[0x1EEE6DFA0](closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:), v13, v12);
}

uint64_t closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:)()
{
  v1 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v3)
  {
    v4 = *(v0 + 33);
    v5 = *(v3 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
    *(v0 + 128) = v5;
    v5;
    v13 = *(v0 + 56);

    *(v0 + 16) = v13;
    *(v0 + 32) = v4;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);

    return CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(v0 + 16, 0, 2, v9, v10, v7, v8);
  }

  else
  {

    **(v0 + 40) = 1;
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:);
  }

  else
  {

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{

  **(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  **(v0 + 40) = 1;
  v1 = *(v0 + 8);

  return v1();
}

void __swiftcall TiledTextView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if (!with.value.super.isa || [(objc_class *)with.value.super.isa type]!= 11)
  {
LABEL_7:
    v12 = TiledTextView.canvasGenerationToolOverlayController.getter();
    v13 = *&v12[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

      if (([v14 isHidden] & 1) == 0)
      {
        [v14 convertPoint:v3 fromCoordinateSpace:{x, y}];
        [v14 hitTest:isa withEvent:?];

        return;
      }

      v12 = v14;
    }

    v16.receiver = v3;
    v16.super_class = type metadata accessor for TiledTextView();
    v15 = [(UIView_optional *)&v16 hitTest:isa withEvent:x, y];
    return;
  }

  v7 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v8 = v7;
  v9 = *&v7[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = *(v9 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

  v11 = [v10 isHidden];
  if (v11)
  {
    goto LABEL_7;
  }
}

id TiledTextView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit13TiledTextView_currentPaperView + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PaperKit13TiledTextView_paperLinedPaper] = 0;
  v3 = OBJC_IVAR____TtC8PaperKit13TiledTextView_canvasElementController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  *&v1[OBJC_IVAR____TtC8PaperKit13TiledTextView_selectionInteractionDelegate] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit13TiledTextView____lazy_storage___imageWandTipController] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit13TiledTextView____lazy_storage___canvasGenerationToolOverlayController] = 0;
  v4 = &v1[OBJC_IVAR____TtC8PaperKit13TiledTextView_magicGenerativePlaygroundTokenProvider];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v1[OBJC_IVAR____TtC8PaperKit13TiledTextView_magicGenerativePlaygroundContainerStateObserver];
  v6 = type metadata accessor for TiledTextView();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id TiledTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TiledTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for TiledPaperKitView.currentPaperView.setter in conformance TiledTextView(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit13TiledTextView_currentPaperView + 8) = a2;
  swift_unknownObjectWeakAssign();
}

id protocol witness for CanvasElementControllerDelegate.canvasElementControllerCanvasForInsertion.getter in conformance TiledTextView()
{
  result = specialized TiledPaperKitView.mostVisibleAttachment()();
  if (!result)
  {
    result = specialized TiledPaperKitView.endPaperAttachment()();
    if (!result)
    {
      return specialized TiledPaperKitView.visibleStandInPaperAttachmentView()();
    }
  }

  return result;
}

void TiledTextView.magicGenerativePlaygroundContainerState.getter(char *a1@<X8>)
{
  v2 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v3 = *&v2[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

    v5 = v4[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
    v2 = v4;
  }

  else
  {
    v5 = 10;
  }

  *a1 = v5;
}

id TiledTextView.magicGenerativePlaygroundUndoManager.getter()
{
  v0 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 undoManager];
  return v3;
}

uint64_t protocol witness for MagicGenerativePlaygroundContainer.magicGenerativePlaygroundTokenProvider.getter in conformance TiledTextView@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v6 + v7, a3, a2);
}

uint64_t protocol witness for MagicGenerativePlaygroundContainer.magicGenerativePlaygroundTokenProvider.setter in conformance TiledTextView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *v5;
  v9 = *a4;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v8 + v9, a5);
  return swift_endAccess();
}

uint64_t specialized AnalyticsEvent.caEventPayload.getter()
{
  v0 = type metadata accessor for AnalyticsEventEncoder();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v5[3] = v0;
  v5[4] = lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder();
  v5[0] = v1;

  MagicPaperUsageAutoRefineEvent.encode(to:)(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  v3 = *(v1 + 40);

  return ~(v3 >> 1) & 0x4000000000000000 | v3;
}

{
  v0 = type metadata accessor for AnalyticsEventEncoder();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v5[3] = v0;
  v5[4] = lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder();
  v5[0] = v1;

  MagicPaperUsageProofreadingEvent.encode(to:)(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  v3 = *(v1 + 40);

  return ~(v3 >> 1) & 0x4000000000000000 | v3;
}

uint64_t partial apply for closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 56);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in TiledTextView.initiateMagicGenerativePlayground(context:in:)(a1, v9, v10, v11, v12, v4, v5, v6, v7, v8, v13);
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized TiledTextView._canvasView(_:didCompleteRefinementEntry:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v48 - v9;
  [a1 duration];
  v12 = v11;
  v13 = [a1 refinedStrokes];
  type metadata accessor for PKStroke();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);

  v16 = [a1 originalStrokes];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  v19 = [a1 refinedWordCount];
  [a1 tokenDeviation];
  v21 = v20;
  [a1 tokenTranslation];
  v23 = v22;
  v24 = [a1 locale];
  if (v24)
  {
    v25 = v24;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for Locale();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  }

  else
  {
    v26 = type metadata accessor for Locale();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  }

  v27 = v15 - v18;
  outlined init with take of Locale?(v6, v10);
  type metadata accessor for Locale();
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v10, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s10Foundation6LocaleVSgMd);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = Locale.identifier.getter();
    v30 = v31;
    (*(v28 + 8))(v10, v26);
  }

  v34 = [a1 isAutoRefined] ^ 1;
  v49[0] = 0;
  v50 = 0;
  v51 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  swift_unknownObjectWeakInit();
  v35 = v12 * 1000.0;
  v54 = v35;
  v57 = v34;
  v55 = v27;
  v56 = v19;
  v32 = v21;
  v59 = v32;
  v33 = v23;
  v60 = v33;
  v58 = [v2 isAutoRefineEnabled];
  swift_unknownObjectWeakAssign();
  v52 = v29;
  v53 = v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = [objc_opt_self() activePencil];
  v38 = [v37 isConnected];

  v49[0] = v38;
  v48[1] = static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v50 = v39;
  v51 = v41;
  if (Strong)
  {
    v42 = Strong;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v42);
  }

  v43 = v53;
  if (v53)
  {
    v44 = v52;

    v50 = v44;
    v51 = v43;
  }

  v63 = 1;
  v45 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4081D40);
  if (specialized AnalyticsEvent.caEventPayload.getter())
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v46.super.isa = 0;
  }

  AnalyticsSendEvent();

  return outlined destroy of MagicPaperUsageAutoRefineEvent(v49);
}

uint64_t SecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized SecureHostingController.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v3;
}

void *SecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for SecureHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id SecureHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t specialized SecureHostingController.init(rootView:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return UIHostingController.init(rootView:)();
}

uint64_t ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[88] = v7;
  v8[87] = a7;
  v8[86] = a6;
  v8[85] = a5;
  v8[84] = a4;
  v8[83] = a3;
  v8[82] = a2;
  v8[81] = a1;
  v9 = type metadata accessor for PKDrawing();
  v8[89] = v9;
  v8[90] = *(v9 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8[95] = v10;
  v8[96] = *(v10 - 8);
  v8[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v8[98] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v8[99] = v11;
  v8[100] = *(v11 - 8);
  v8[101] = swift_task_alloc();
  v12 = type metadata accessor for CRKeyPath();
  v8[102] = v12;
  v8[103] = *(v12 - 8);
  v8[104] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8[105] = v13;
  v8[106] = *(v13 - 8);
  v8[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v8[108] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8[109] = v14;
  v8[110] = *(v14 - 8);
  v8[111] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v8[112] = v15;
  v8[113] = *(v15 - 8);
  v8[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

uint64_t ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)()
{
  v119 = v0;
  v1 = *(v0 + 664);
  CGContextSaveGState(*(v0 + 648));
  if (*(v1 + 16) == 1)
  {
    if (*(*(v0 + 664) + 72))
    {
      goto LABEL_6;
    }

    v2 = *(v0 + 688);
    v3 = *(v0 + 672);
    v4 = *(v0 + 648);
    v5 = (*(*(v2 + 8) + 32))(v3);
    v6 = (*(v2 + 40))(v3, v2);
    v8 = v7;
    v114 = v9;
    rect = v10;
    CGAffineTransformMakeRotation(&v118, v5);
    a = v118.a;
    b = v118.b;
    c = v118.c;
    d = v118.d;
    tx = v118.tx;
    ty = v118.ty;
    *(v0 + 288) = v118.a;
    *(v0 + 296) = b;
    *(v0 + 304) = c;
    *(v0 + 312) = d;
    *(v0 + 320) = tx;
    *(v0 + 328) = ty;
    v121.origin.x = v6;
    v121.origin.y = v8;
    v121.size.width = v114;
    v121.size.height = rect;
    v122 = CGRectApplyAffineTransform(v121, (v0 + 288));
    CGAffineTransformMakeTranslation(&v118, v6 - v122.origin.x, v8 - v122.origin.y);
    v17 = *&v118.a;
    v18 = *&v118.c;
    v19 = *&v118.tx;
    *(v0 + 336) = a;
    *(v0 + 344) = b;
    *(v0 + 352) = c;
    *(v0 + 360) = d;
    *(v0 + 368) = tx;
    *(v0 + 376) = ty;
    *(v0 + 384) = v17;
    *(v0 + 400) = v18;
    *(v0 + 416) = v19;
    CGAffineTransformConcat(&v118, (v0 + 336), (v0 + 384));
    v20 = *&v118.c;
    v21 = *&v118.tx;
    *(v0 + 432) = *&v118.a;
    *(v0 + 448) = v20;
    *(v0 + 464) = v21;
    v22 = (v0 + 432);
    v23 = v4;
  }

  else
  {
    v24 = *(v0 + 688);
    v25 = *(v0 + 672);
    v26 = *(v0 + 648);
    v27 = *(*(v24 + 8) + 8);
    v28 = *(v27 + 8);
    v123.origin.x = v28(v25, v27);
    Width = CGRectGetWidth(v123);
    v124.origin.x = (*(v24 + 16))(v25, v24);
    v30 = CGRectGetWidth(v124);
    CGAffineTransformMakeScale(&v118, Width / v30, Width / v30);
    v31 = v118.tx;
    v32 = v118.ty;
    recta = *&v118.a;
    v115 = *&v118.c;
    v125.origin.x = v28(v25, v27);
    MinX = CGRectGetMinX(v125);
    v126.origin.x = v28(v25, v27);
    MinY = CGRectGetMinY(v126);
    CGAffineTransformMakeTranslation(&v118, MinX, MinY);
    v35 = *&v118.a;
    v36 = *&v118.c;
    v37 = *&v118.tx;
    *(v0 + 144) = recta;
    *(v0 + 160) = v115;
    *(v0 + 176) = v31;
    *(v0 + 184) = v32;
    *(v0 + 192) = v35;
    *(v0 + 208) = v36;
    *(v0 + 224) = v37;
    CGAffineTransformConcat(&v118, (v0 + 144), (v0 + 192));
    v38 = *&v118.c;
    v39 = *&v118.tx;
    *(v0 + 240) = *&v118.a;
    *(v0 + 256) = v38;
    *(v0 + 272) = v39;
    v23 = v26;
    v22 = (v0 + 240);
  }

  CGContextConcatCTM(v23, v22);
LABEL_6:
  v40 = *(v0 + 888);
  v41 = *(v0 + 880);
  v42 = *(v0 + 872);
  v111 = *(v0 + 864);
  v43 = *(v0 + 848);
  v116 = *(v0 + 840);
  v44 = *(v0 + 688);
  v45 = *(v0 + 672);
  v46 = *(v0 + 664);
  ClipBoundingBox = CGContextGetClipBoundingBox(*(v0 + 648));
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  v49 = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  *(v0 + 920) = ClipBoundingBox;
  outlined init with copy of PaperRenderableOptions(v46, v0 + 16);
  *(v0 + 32) = 0;
  v51 = *(v44 + 16);
  *(v0 + 952) = v51;
  *(v0 + 960) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0x3EB1000000000000;
  *(v0 + 40) = v51(v45, v44);
  *(v0 + 48) = v52;
  *(v0 + 56) = v53;
  *(v0 + 64) = v54;
  *(v0 + 72) = 0;
  (*(v44 + 88))(v45, v44);
  CROrderedSet.makeIterator()();
  (*(v41 + 8))(v40, v42);
  CROrderedSet.Iterator.next()();
  v55 = *(v43 + 48);
  *(v0 + 968) = v55;
  if (v55(v111, 1, v116) == 1)
  {
LABEL_10:
    v78 = *(v0 + 800);
    v79 = *(v0 + 792);
    v80 = *(v0 + 784);
    v81 = *(v0 + 688);
    v82 = *(v0 + 672);
    (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
    (*(v81 + 64))(v82, v81);
    if ((*(v78 + 48))(v80, 1, v79) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 784), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      CGContextRestoreGState(*(v0 + 648));
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v83 = *(v0 + 8);

      return v83();
    }

    else
    {
      v85 = *(v0 + 776);
      v86 = *(v0 + 768);
      v87 = *(v0 + 760);
      (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 784), *(v0 + 792));
      type metadata accessor for Capsule();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      Capsule.encapsulateTransient<A>(_:)();
      v88 = type metadata accessor for PKDrawingCoherence(0);
      v89 = objc_allocWithZone(v88);
      (*(v86 + 16))(v89 + OBJC_IVAR___PKDrawingCoherence_model, v85, v87);
      *(v0 + 632) = v89;
      *(v0 + 640) = v88;
      v90 = objc_msgSendSuper2((v0 + 632), sel_init);
      *(v0 + 992) = v90;
      (*(v86 + 8))(v85, v87);
      v91 = swift_task_alloc();
      *(v0 + 1000) = v91;
      *v91 = v0;
      v91[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v92 = *(v0 + 944);
      v93 = *(v0 + 936);
      v94 = *(v0 + 928);
      v95 = *(v0 + 920);
      v96 = *(v0 + 688);
      v97 = *(v0 + 680);
      v98 = *(v0 + 672);
      v99 = *(v0 + 664);
      v100 = *(v0 + 648);

      return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v90, v100, v99, v98, v95, v94, v93, v92, v97, v96);
    }
  }

  else
  {
    *(v0 + 976) = *(*(v0 + 848) + 32);
    *(v0 + 600) = x;
    *(v0 + 608) = y;
    *(v0 + 616) = v49;
    *(v0 + 624) = height;
    while (1)
    {
      v56 = *(v0 + 600);
      v57 = *(v0 + 608);
      v58 = *(v0 + 616);
      v59 = *(v0 + 624);
      v60 = *(v0 + 952);
      v61 = *(v0 + 688);
      v62 = *(v0 + 672);
      (*(v0 + 976))(*(v0 + 856), *(v0 + 864), *(v0 + 840));
      SharedTagged_10.subscript.getter();
      v63 = *(v0 + 504);
      v64 = *(v0 + 512);
      __swift_project_boxed_opaque_existential_1((v0 + 480), v63);
      *(v0 + 560) = v60(v62, v61);
      *(v0 + 568) = v65;
      *(v0 + 576) = v66;
      *(v0 + 584) = v67;
      *(v0 + 592) = 0;
      v68 = (*(v64 + 136))(v0 + 560, v63, v64);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      __swift_destroy_boxed_opaque_existential_0(v0 + 480);
      v128.origin.x = v68;
      v128.origin.y = v70;
      v128.size.width = v72;
      v128.size.height = v74;
      v129.origin.x = v56;
      v129.origin.y = v57;
      v129.size.width = v58;
      v129.size.height = v59;
      if (CGRectIntersectsRect(v128, v129))
      {
        break;
      }

      (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
      v75 = *(v0 + 968);
      v76 = *(v0 + 864);
      v77 = *(v0 + 840);
      CROrderedSet.Iterator.next()();
      if (v75(v76, 1, v77) == 1)
      {
        goto LABEL_10;
      }
    }

    v101 = *(v0 + 840);
    SharedTagged_10.subscript.getter();
    v102 = *(v0 + 544);
    v103 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v102);
    MEMORY[0x1DA6CB7A0](v101);
    v104 = *(v103 + 8);
    v117 = (*(v104 + 16) + **(v104 + 16));
    v105 = swift_task_alloc();
    *(v0 + 984) = v105;
    *v105 = v0;
    v105[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v106 = *(v0 + 832);
    v107 = *(v0 + 696);
    v108 = *(v0 + 680);
    v109 = *(v0 + 656);
    v110 = *(v0 + 648);

    return v117(v110, v106, v109, v0 + 16, v108, v107, v102, v104);
  }
}

{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 824);
  v3 = *(*v0 + 816);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
  __swift_destroy_boxed_opaque_existential_0(v0 + 520);
  while (1)
  {
    v1 = *(v0 + 968);
    v2 = *(v0 + 864);
    v3 = *(v0 + 840);
    CROrderedSet.Iterator.next()();
    if (v1(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 600);
    v5 = *(v0 + 608);
    v6 = *(v0 + 616);
    v7 = *(v0 + 624);
    v8 = *(v0 + 952);
    v9 = *(v0 + 688);
    v10 = *(v0 + 672);
    (*(v0 + 976))(*(v0 + 856), *(v0 + 864), *(v0 + 840));
    SharedTagged_10.subscript.getter();
    v11 = *(v0 + 504);
    v12 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v11);
    *(v0 + 560) = v8(v10, v9);
    *(v0 + 568) = v13;
    *(v0 + 576) = v14;
    *(v0 + 584) = v15;
    *(v0 + 592) = 0;
    v16 = (*(v12 + 136))(v0 + 560, v11, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(v0 + 480);
    v58.origin.x = v16;
    v58.origin.y = v18;
    v58.size.width = v20;
    v58.size.height = v22;
    v59.origin.x = v4;
    v59.origin.y = v5;
    v59.size.width = v6;
    v59.size.height = v7;
    if (CGRectIntersectsRect(v58, v59))
    {
      v30 = *(v0 + 840);
      SharedTagged_10.subscript.getter();
      v31 = *(v0 + 544);
      v32 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v31);
      MEMORY[0x1DA6CB7A0](v30);
      v33 = *(v32 + 8);
      v56 = (*(v33 + 16) + **(v33 + 16));
      v34 = swift_task_alloc();
      *(v0 + 984) = v34;
      *v34 = v0;
      v34[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v35 = *(v0 + 832);
      v36 = *(v0 + 696);
      v37 = *(v0 + 680);
      v38 = *(v0 + 656);
      v39 = *(v0 + 648);

      return v56(v39, v35, v38, v0 + 16, v37, v36, v31, v33);
    }

    (*(*(v0 + 848) + 8))(*(v0 + 856), *(v0 + 840));
  }

  v23 = *(v0 + 800);
  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  v26 = *(v0 + 688);
  v27 = *(v0 + 672);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
  (*(v26 + 64))(v27, v26);
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 784), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    CGContextRestoreGState(*(v0 + 648));
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v40 = *(v0 + 776);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 784), *(v0 + 792));
    type metadata accessor for Capsule();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.encapsulateTransient<A>(_:)();
    v43 = type metadata accessor for PKDrawingCoherence(0);
    v44 = objc_allocWithZone(v43);
    (*(v41 + 16))(v44 + OBJC_IVAR___PKDrawingCoherence_model, v40, v42);
    *(v0 + 632) = v44;
    *(v0 + 640) = v43;
    v45 = objc_msgSendSuper2((v0 + 632), sel_init);
    *(v0 + 992) = v45;
    (*(v41 + 8))(v40, v42);
    v46 = swift_task_alloc();
    *(v0 + 1000) = v46;
    *v46 = v0;
    v46[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v47 = *(v0 + 944);
    v48 = *(v0 + 936);
    v49 = *(v0 + 928);
    v50 = *(v0 + 920);
    v51 = *(v0 + 688);
    v52 = *(v0 + 680);
    v53 = *(v0 + 672);
    v54 = *(v0 + 664);
    v55 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v45, v55, v54, v53, v50, v49, v48, v47, v52, v51);
  }
}

{

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = v0[124];
  v2 = v0[83];
  v3 = [objc_opt_self() sharedCache];
  v0[126] = v3;
  v4 = swift_task_alloc();
  v0[127] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[128] = v5;
  *v5 = v0;
  v5[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
  v6 = v0[94];
  v7 = v0[92];

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000026, 0x80000001D4082110, partial apply for closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), v4, v7);
}

{

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  outlined init with copy of Date?(*(v0 + 752), v1, &_s9PencilKit9PKDrawingVSgMd);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 992);
    v5 = *(v0 + 808);
    v6 = *(v0 + 800);
    v7 = *(v0 + 792);
    v8 = *(v0 + 752);
    v9 = *(v0 + 744);

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
    (*(*(v0 + 720) + 32))(*(v0 + 728), *(v0 + 744), *(v0 + 712));
    PKDrawing._bridgeToObjectiveC()(v12);
    v14 = v13;
    *(v0 + 1032) = v13;
    v15 = swift_task_alloc();
    *(v0 + 1040) = v15;
    *v15 = v0;
    v15[1] = ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
    v16 = *(v0 + 944);
    v17 = *(v0 + 936);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    v20 = *(v0 + 688);
    v21 = *(v0 + 680);
    v22 = *(v0 + 672);
    v23 = *(v0 + 664);
    v24 = *(v0 + 648);

    return specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v14, v24, v23, v22, v19, v18, v17, v16, v21, v20);
  }
}

{
  v1 = *(*v0 + 1032);

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(v0 + 992);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 752);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  (*(v7 + 8))(v6, v8);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9PencilKit9PKDrawingVSgMd);
  (*(v3 + 8))(v2, v4);
  CGContextRestoreGState(*(v0 + 648));
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9PencilKit9PKDrawingVSgs5NeverOGMd);
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = aBlock - v11;
  v13 = [a3 uuid];
  v14 = *(a4 + 8);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed PKDrawing?) -> ();
  aBlock[3] = &block_descriptor_65;
  v17 = _Block_copy(aBlock);

  [a2 overlayDrawingForDrawingUUID:v13 tintColor:v14 completion:v17];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9PencilKit9PKDrawingVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9PencilKit9PKDrawingVSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9PencilKit9PKDrawingVSgs5NeverOGMd);

  return closure #1 in closure #1 in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed PKDrawing?) -> ()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = a2;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for PKDrawing();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for PKDrawing();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  v7(v6);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9PencilKit9PKDrawingVSgMd);
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  *(v12 + 240) = a7;
  *(v12 + 248) = v11;
  *(v12 + 224) = a5;
  *(v12 + 232) = a6;
  *(v12 + 208) = a3;
  *(v12 + 216) = a4;
  *(v12 + 200) = a2;
  *(v12 + 184) = a10;
  *(v12 + 192) = a11;
  *(v12 + 176) = a9;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd) - 8);
  *(v12 + 256) = v15;
  *(v12 + 264) = *(v15 + 64);
  *(v12 + 272) = swift_task_alloc();
  *(v12 + 280) = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd) - 8);
  *(v12 + 288) = v16;
  *(v12 + 296) = *(v16 + 64);
  *(v12 + 304) = swift_task_alloc();
  *(v12 + 312) = swift_task_alloc();
  v17 = type metadata accessor for CRKeyPath();
  *(v12 + 320) = v17;
  *(v12 + 328) = *(v17 - 8);
  *(v12 + 336) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGMd);
  *(v12 + 344) = v18;
  *(v12 + 352) = *(v18 - 8);
  *(v12 + 360) = swift_task_alloc();
  type metadata accessor for PKDrawingStruct(0);
  *(v12 + 368) = swift_task_alloc();
  v19 = *(a4 - 8);
  *(v12 + 376) = v19;
  *(v12 + 384) = *(v19 + 64);
  *(v12 + 392) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  *(v12 + 400) = v20;
  *(v12 + 408) = *(v20 - 8);
  *(v12 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  *(v12 + 424) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  *(v12 + 432) = v21;
  *(v12 + 440) = *(v21 - 8);
  v22 = swift_task_alloc();
  v23 = *a1;
  *(v12 + 448) = v22;
  *(v12 + 456) = v23;

  return MEMORY[0x1EEE6DFA0](ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:), 0, 0);
}

uint64_t ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  (*(*(v0 + 232) + 64))(*(v0 + 216));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 424), &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v110 = 0;
    goto LABEL_14;
  }

  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 400);
  v88 = *(v0 + 392);
  v7 = *(v0 + 376);
  v92 = *(v0 + 384);
  v95 = *(v0 + 328);
  v102 = *(v0 + 368);
  v104 = *(v0 + 320);
  v86 = *(v0 + 248);
  v107 = *(v0 + 240);
  v8 = *(v0 + 216);
  v90 = *(v0 + 208);
  v97 = *(v0 + 200);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v111 = *(v0 + 224);
  (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  Capsule.encapsulateTransient<A>(_:)();
  v11 = type metadata accessor for PKDrawingCoherence(0);
  v12 = objc_allocWithZone(v11);
  (*(v4 + 16))(v12 + OBJC_IVAR___PKDrawingCoherence_model, v5, v6);
  *(v0 + 144) = v12;
  *(v0 + 152) = v11;
  v13 = objc_msgSendSuper2((v0 + 144), sel_init);
  (*(v4 + 8))(v5, v6);
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v7 + 16))(v88, v86, v8);
  outlined init with copy of Date?(v90, v0 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  v22 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v23 = v92 + v22;
  v93 = *MEMORY[0x1E69780D8];
  v24 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v8;
  *(v25 + 24) = v111;
  *(v25 + 40) = v107;
  *(v25 + 48) = v15;
  *(v25 + 56) = v17;
  *(v25 + 64) = v19;
  *(v25 + 72) = v21;
  (*(v7 + 32))(v25 + v22, v88, v8);
  *(v25 + v24) = v13;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(v0 + 64);
  v26[2] = *(v0 + 48);
  v26[3] = v27;
  v28 = *(v0 + 32);
  *v26 = *(v0 + 16);
  v26[1] = v28;
  *(v26 + 109) = *(v0 + 125);
  v29 = *(v0 + 112);
  v26[5] = *(v0 + 96);
  v26[6] = v29;
  v26[4] = *(v0 + 80);
  v30 = type metadata accessor for CanvasElementPDFAnnotation();
  v31 = objc_allocWithZone(v30);
  v32 = &v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_render];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_containerBounds];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = 0;
  v34 = &v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
  *v34 = 0;
  v34[1] = 0;
  (*(v95 + 56))(&v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId], 1, 1, v104);
  v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
  *&v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas] = 0;
  *&v31[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
  v105 = v13;
  v113.origin.x = v15;
  v113.origin.y = v17;
  v113.size.width = v19;
  v113.size.height = v21;
  MinX = CGRectGetMinX(v113);
  v36 = v9 + v10 + v10;
  v114.origin.x = v15;
  v114.origin.y = v17;
  v114.size.width = v19;
  v114.size.height = v21;
  v37 = v36 - CGRectGetMaxY(v114);
  v115.origin.x = v15;
  v115.origin.y = v17;
  v115.size.width = v19;
  v115.size.height = v21;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v15;
  v116.origin.y = v17;
  v116.size.width = v19;
  v116.size.height = v21;
  Height = CGRectGetHeight(v116);
  v40 = *v32;
  *v32 = partial apply for closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:);
  v32[1] = v25;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *(v0 + 160) = v31;
  *(v0 + 168) = v30;
  v41 = objc_msgSendSuper2((v0 + 160), sel_initWithBounds_forType_withProperties_, v93, 0, MinX, v37, Width, Height);

  v42 = [objc_allocWithZone(MEMORY[0x1E6978020]) init];
  [v42 setLineWidth_];
  v43 = v41;
  [v43 setBorder_];
  v44 = objc_opt_self();
  v45 = [v44 clearColor];
  [v43 setColor_];

  v46 = [v44 clearColor];
  [v43 setInteriorColor_];

  [v43 setReadOnly_];
  [v43 setLocked_];
  [v43 setContentsLocked_];
  Ref.subscript.getter();
  v47 = PKDrawingStruct.requiredContentVersion<A>(in:)(v97, v111, v107);
  outlined destroy of PKDrawingStruct(v102);
  if (v47 == 1)
  {
    v48 = [objc_allocWithZone(MEMORY[0x1E698A9B0]) &selRef_name];
    if (v48)
    {
      v50 = v48;
      v51 = *(v0 + 184);
      v108 = *(v0 + 192);
      PKDrawingCoherence.concreteDrawing()(v49);
      v53 = v52;
      v54 = v50;
      [v54 setDrawing_];
      [v53 bounds];
      x = v117.origin.x;
      y = v117.origin.y;
      v57 = v117.size.width;
      v58 = v117.size.height;
      v59 = CGRectGetMinX(v117);
      v118.origin.x = x;
      v118.origin.y = y;
      v118.size.width = v57;
      v118.size.height = v58;
      v60 = v36 - CGRectGetMaxY(v118);
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = v57;
      v119.size.height = v58;
      v61 = CGRectGetWidth(v119);
      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = v57;
      v120.size.height = v58;
      [v54 setRectangle_];
      [v54 setDrawingSize_];

      [v54 setOriginalExifOrientation_];
      v62 = *&v43[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
      *&v43[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = v50;
    }
  }

  v63 = *(v0 + 456);
  v64 = v63;
  v110 = v43;
  if (!(v63 >> 62))
  {
    goto LABEL_9;
  }

  if (v63 >> 62 == 1)
  {
    v64 = v63 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_9:
    v109 = v64;
    v65 = *(v0 + 448);
    v66 = *(v0 + 352);
    v67 = *(v0 + 360);
    v91 = v42;
    v68 = *(v0 + 344);
    v69 = *(v0 + 312);
    v94 = *(v0 + 280);
    v96 = *(v0 + 304);
    v98 = *(v0 + 272);
    v99 = *(v0 + 288);
    v101 = *(v0 + 296);
    v103 = *(v0 + 264);
    v100 = *(v0 + 256);
    v70 = *(v0 + 200);
    v87 = *(v0 + 232);
    v89 = *(v0 + 216);
    outlined copy of PaperDocument.PDFDocumentUse(v63);
    static CRKeyPath.unique.getter();
    v71 = swift_task_alloc();
    *(v71 + 16) = v89;
    *(v71 + 32) = v87;
    *(v71 + 48) = v70;
    *(v71 + 56) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
    Capsule.init(id:initClosure:)();

    LODWORD(v65) = Capsule.minAppFormatVersion.getter();

    v72 = 846688868;
    if (v65 < 7)
    {
      v72 = 2002874980;
    }

    v106 = v72;
    (*(v66 + 32))(v69, v67, v68);
    (*(v66 + 56))(v69, 0, 1, v68);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    (*(*(v73 - 8) + 56))(v94, 1, 1, v73);
    outlined init with take of Range<AttributedString.Index>(v69, v96, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd);
    outlined init with take of Range<AttributedString.Index>(v94, v98, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v74 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v75 = (v101 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v100 + 80) + v75 + 8) & ~*(v100 + 80);
    v77 = swift_allocObject();
    outlined init with take of Range<AttributedString.Index>(v96, v77 + v74, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd);
    *(v77 + v75) = v109;
    v43 = v110;
    outlined init with take of Range<AttributedString.Index>(v98, v77 + v76, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    *(v77 + v76 + v103) = 0;
    v78 = v77 + ((v76 + v103) & 0xFFFFFFFFFFFFFFF8);
    *(v78 + 8) = v106;
    *(v78 + 16) = 0xE400000000000000;
    v79 = &v110[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    v80 = *&v110[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    *v79 = partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:);
    v79[1] = v77;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v80);
    goto LABEL_13;
  }

LABEL_13:
  v81 = *(v0 + 440);
  v82 = *(v0 + 448);
  v83 = *(v0 + 432);

  (*(v81 + 8))(v82, v83);
LABEL_14:

  v84 = *(v0 + 8);

  return v84(v110);
}

void closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(CGContext *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v57 = a8;
  v56 = a7;
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v51 - v25;
  ClipBoundingBox = CGContextGetClipBoundingBox(a1);
  v60.origin.x = a9;
  v60.origin.y = a10;
  v60.size.width = a11;
  v60.size.height = a12;
  v61 = CGRectIntersection(v60, ClipBoundingBox);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  if (!CGRectIsEmpty(v61))
  {
    v55 = dispatch_semaphore_create(0);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
    v32 = *(v22 + 16);
    v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32(v53, a2, a5);
    outlined init with copy of Date?(a4, v58, &_s8PaperKit0A17RenderableOptionsVSgMd);
    v33 = (*(v22 + 80) + 96) & ~*(v22 + 80);
    v34 = (v23 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = a3;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
    v52 = a1;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = v26;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = a5;
    *(v38 + 40) = a6;
    v39 = v57;
    *(v38 + 48) = v56;
    *(v38 + 56) = v39;
    *(v38 + 64) = a9;
    *(v38 + 72) = a10;
    *(v38 + 80) = a11;
    *(v38 + 88) = a12;
    (*(v22 + 32))(v38 + v33, v53, a5);
    v40 = v51;
    *(v38 + v34) = v51;
    v41 = (v38 + v35);
    *v41 = x;
    v41[1] = y;
    v41[2] = width;
    v41[3] = height;
    v42 = v52;
    *(v38 + v36) = v52;
    v43 = (v38 + v37);
    v44 = v58[5];
    v43[4] = v58[4];
    v43[5] = v44;
    v43[6] = v59[0];
    *(v43 + 109) = *(v59 + 13);
    v45 = v58[1];
    *v43 = v58[0];
    v43[1] = v45;
    v46 = v58[3];
    v43[2] = v58[2];
    v43[3] = v46;
    v47 = v55;
    *(v38 + ((v37 + 132) & 0xFFFFFFFFFFFFFFF8)) = v55;
    v48 = v40;
    v49 = v42;
    v50 = v47;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:), v38);

    OS_dispatch_semaphore.wait()();
  }
}

void partial apply for closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(CGContext *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 80) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(a1, v1 + v2, *(v1 + v3), v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 280) = v18;
  *(v16 + 288) = v19;
  *(v16 + 264) = a15;
  *(v16 + 272) = a16;
  *(v16 + 256) = a14;
  *(v16 + 240) = a7;
  *(v16 + 248) = a8;
  *(v16 + 224) = a5;
  *(v16 + 232) = a6;
  *(v16 + 216) = a13;
  *(v16 + 200) = a3;
  *(v16 + 208) = a4;
  *(v16 + 184) = a1;
  *(v16 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:), 0, 0);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v19.origin.x = v4;
  v19.origin.y = v3;
  v19.size.width = v2;
  v19.size.height = v1;
  Width = CGRectGetWidth(v19);
  v20.origin.x = v4;
  v20.origin.y = v3;
  v20.size.width = v2;
  v20.size.height = v1;
  Height = CGRectGetHeight(v20);
  if (Width > Height)
  {
    Height = Width;
  }

  v7 = Height + Height;
  v8 = 2.0;
  if (v7 > 2048.0)
  {
    v8 = 2048.0 / v7 + 2048.0 / v7;
  }

  outlined init with copy of Date?(*(v0 + 264), v0 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  if (*(v0 + 24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 137);
    outlined destroy of PaperRenderableOptions(v0 + 16);
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 216);
  v12 = *(v0 + 240);
  *(v0 + 144) = *(v0 + 224);
  *(v0 + 160) = v12;
  *(v0 + 176) = 0;
  v13 = swift_task_alloc();
  *(v0 + 296) = v13;
  v14 = *(v10 + 8);
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:);
  v15 = *(v0 + 280);
  v16 = *(v0 + 256);

  return specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:)(v11, v0 + 144, v16, 1, 0, v9, v15, v14, v8);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:), 0, 0);
}

{
  OS_dispatch_semaphore.signal()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v13[1] = a1;
  v15 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  type metadata accessor for Capsule();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  Capsule.encapsulate<A>(_:)();
  type metadata accessor for PKDrawingStruct(0);
  lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct();
  Capsule.Ref.import<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a2, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  return CRRegister.init(_:)();
}

unint64_t lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct()
{
  result = lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct;
  if (!lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct)
  {
    type metadata accessor for PKDrawingStruct(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 4);
  v5 = (*(*(v4 - 8) + 80) + 96) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 3);
  v24 = *(v1 + 2);
  v11 = v1[8];
  v12 = v1[9];
  v13 = *(v1 + v6);
  v14 = v1[10];
  v15 = v1[11];
  v16 = *(v1 + v7);
  v17 = *(v1 + v7 + 8);
  v18 = *(v1 + v7 + 16);
  v19 = *(v1 + v7 + 24);
  v20 = *(v1 + v8);
  v21 = *(v1 + ((v9 + 132) & 0xFFFFFFFFFFFFFFF8));
  v22 = swift_task_alloc();
  *(v3 + 16) = v22;
  *v22 = v3;
  v22[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #1 in ContainerCanvasElement.drawingAnnotation<A>(use:mediaBox:capsule:options:)(v11, v12, v14, v15, v16, v17, v18, v19, a1, v24, v10, v1 + v5, v13, v20, v1 + v9, v21);
}

uint64_t specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 176) = a7;
  *(v9 + 184) = a8;
  *(v9 + 143) = a6;
  *(v9 + 142) = a5;
  *(v9 + 141) = a4;
  *(v9 + 168) = a3;
  *(v9 + 160) = a9;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:), 0, 0);
}

uint64_t specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:)()
{
  *(v0 + 16) = *(v0 + 141);
  v1 = *(v0 + 143);
  v2 = *(v0 + 142);
  v3 = *(v0 + 168);
  *(v0 + 24) = 0;
  *(v0 + 138) = 0;
  *(v0 + 18) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 121) = 0u;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 17) = v2;
  *(v0 + 137) = v1;
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
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:);
  v8 = *(v0 + 168);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);

  return specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(v11, v10, v8, v0 + 16, v9);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:), 0, 0);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 256) = a4;
  *(v10 + 264) = a10;
  *(v10 + 240) = a2;
  *(v10 + 248) = a3;
  *(v10 + 224) = a7;
  *(v10 + 232) = a8;
  *(v10 + 208) = a5;
  *(v10 + 216) = a6;
  *(v10 + 200) = a1;
  v11 = type metadata accessor for PKDrawing();
  *(v10 + 272) = v11;
  *(v10 + 280) = *(v11 - 8);
  *(v10 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

unint64_t MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6C69636E65507369;
    v6 = 0xD000000000000012;
    if (a1 == 3)
    {
      v6 = 0x6874616D5F6D756ELL;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 0x656C61636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    if (a1 == 9)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000025;
    }

    v2 = 0x6F7274735F6D756ELL;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0x747865745F6D756ELL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageProofreadingEvent.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageProofreadingEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageProofreadingEvent.CodingKeys()
{
  MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageProofreadingEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageProofreadingEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageProofreadingEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageProofreadingEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageProofreadingEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageProofreadingEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageProofreadingEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageProofreadingEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageProofreadingEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall MagicPaperUsageProofreadingEvent.finalize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if ((*(v1 + 72) & 1) == 0)
  {
    v12 = type metadata accessor for MagicPaperUsageProofreadingEvent();
    outlined init with copy of Date?(v1 + *(v12 + 68), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of Date?(v4);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v14 = v13;
      v15 = *(v6 + 8);
      v15(v8, v5);
      v15(v11, v5);
      v16 = v14;
      *(v1 + 68) = v16 * 1000.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = [objc_opt_self() activePencil];
    v19 = [v18 isConnected];

    *(v1 + 1) = v19;
    v24[1] = static Locale.preferredLanguages.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    *(v1 + 8) = v20;
    *(v1 + 16) = v22;
    if (Strong)
    {
      v23 = Strong;
      specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v23);
    }

    *(v1 + 72) = 1;
  }
}

uint64_t MagicPaperUsageProofreadingEvent.undoEvent()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MagicPaperUsageProofreadingEvent();
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 65))
  {
    v8 = *(v4 + 56);

    return v8(a1, 1, 1, v3, v5);
  }

  else
  {
    v16 = v4;
    outlined init with copy of MagicPaperUsageProofreadingEvent(v1, v7);
    v10 = *(v3 + 68);
    outlined destroy of Date?(&v7[v10]);
    v11 = type metadata accessor for Date();
    result = (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
    v7[72] = 0;
    v7[65] = 1;
    v12 = *(v1 + 56);
    v13 = __OFSUB__(0, v12);
    v14 = -v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(v7 + 7) = v14;
      outlined init with copy of MagicPaperUsageProofreadingEvent(v7, a1);
      (*(v16 + 56))(a1, 0, 1, v3);
      return outlined destroy of MagicPaperUsageProofreadingEvent(v7);
    }
  }

  return result;
}

uint64_t MagicPaperUsageProofreadingEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD22UsageProofreadingEventV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[5] = *v3;
    v10[4] = 10;
    lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t specialized static MagicPaperUsageProofreadingEvent.ProofreadingType.from(_:)(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.CodingKeys and conformance MagicPaperUsageProofreadingEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent.ProofreadingType and conformance MagicPaperUsageProofreadingEvent.ProofreadingType);
  }

  return result;
}

uint64_t type metadata accessor for MagicPaperUsageProofreadingEvent()
{
  result = type metadata singleton initialization cache for MagicPaperUsageProofreadingEvent;
  if (!type metadata singleton initialization cache for MagicPaperUsageProofreadingEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MagicPaperUsageProofreadingEvent()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t instantiation function for generic protocol witness table for MagicPaperUsageProofreadingEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent(&lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent(&lazy protocol witness table cache variable for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MagicPaperUsageProofreadingEvent and conformance MagicPaperUsageProofreadingEvent(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagicPaperUsageProofreadingEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MagicPaperUsageProofreadingEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPaperUsageProofreadingEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized MagicPaperUsageProofreadingEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageProofreadingEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t Capsule<>.logSubelementHeadroomsOnInternalBuilds()(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v53.n128_u64[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v45 - v14;
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    v51 = v13;
    v20 = a2;
    if (one-time initialization token for logger != -1)
    {
LABEL_19:
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, logger);
    (*(v15 + 16))(v18, v58, a1);
    v55 = v22;
    v23 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v23, v49);
    v50 = v10;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v46 = v25;
      v48 = v23;
      *v25 = 134217984;
      MEMORY[0x1EEE9AC00](v25);
      v26 = *(a1 + 16);
      v56 = *(a1 + 24);
      v27 = v56;
      v57 = v26;
      *(&v45 - 4) = v26;
      *(&v45 - 3) = v27;
      v47 = v20;
      *(&v45 - 2) = v20;
      swift_getKeyPath();
      v28 = v52;
      Capsule.subscript.getter();

      v29 = CROrderedSet.count.getter();
      v30 = a1;
      v31 = v12;
      v32 = v51;
      (*(v51 + 8))(v28, v31);
      (*(v15 + 8))(v18, v30);
      v33 = v46;
      *(v46 + 1) = v29;
      v34 = v48;
      _os_log_impl(&dword_1D38C4000, v48, v49, "Loaded paper with %ld subelements.", v33, 0xCu);
      MEMORY[0x1DA6D0660](v33, -1, -1);

      v36 = v57;
    }

    else
    {
      (*(v15 + 8))(v18, a1);

      v36 = *(a1 + 16);
      v31 = v12;
      v32 = v51;
      v28 = v52;
    }

    MEMORY[0x1EEE9AC00](v35);
    v56 = v37;
    v57 = v36;
    *(&v45 - 4) = v36;
    *(&v45 - 3) = v37;
    *(&v45 - 2) = v38;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CROrderedSet.makeIterator()();
    v39 = (*(v32 + 8))(v28, v31);
    a1 = 0;
    v12 = (v53.n128_u64[0] + 48);
    v18 = (v53.n128_u64[0] + 32);
    v20 = (v53.n128_u64[0] + 8);
    v39.n128_u64[0] = 134218240;
    v53 = v39;
    v15 = v54;
    while (1)
    {
      CROrderedSet.Iterator.next()();
      if ((*v12)(v9, 1, v4) == 1)
      {
        return (*(v50 + 8))(v59, v15);
      }

      (*v18)(v6, v9, v4);
      v41 = SharedTagged_10<>.hdrHeadroom<A>(in:)(v58);
      v42 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v10))
      {
        v43 = swift_slowAlloc();
        *v43 = v53.n128_u32[0];
        v40 = __OFADD__(a1++, 1);
        if (v40)
        {
          goto LABEL_18;
        }

        v44 = v43;
        *(v43 + 4) = a1;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v41;
        _os_log_impl(&dword_1D38C4000, v42, v10, "Subelement %ld has headroom: %f", v43, 0x16u);
        MEMORY[0x1DA6D0660](v44, -1, -1);

        v10 = 0;
        v15 = v54;
      }

      else
      {

        v40 = __OFADD__(a1++, 1);
        v10 = v40;
      }

      (*v20)(v6, v4);
      if (v10)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t key path setter for ContainerCanvasElement.subelements : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return (*(v6 + 96))(v10, v5, v6);
}

double CRRegister<>.maxHDRHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v111 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v113 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v91 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v90 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v98 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v107 = *(v15 - 8);
  v108 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v90 - v20;
  v95 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v112 = a2;
  v110 = a3;
  v119 = type metadata accessor for Capsule();
  v100 = *(v119 - 1);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v94 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - v28;
  v30 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v101 = &v90 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v90 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v90 - v41;
  v43 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v93 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v99 = &v90 - v46;
  v114 = v7;
  v104 = v4;
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v39, v36, type metadata accessor for TaggedStroke);
  v102 = v30;
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit15PKDrawingStructVWOhTm_4(v36, type metadata accessor for TaggedStroke);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v48 = v42;
    (*(*(v47 - 8) + 56))(v42, 1, 1, v47);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v50 = *(v49 - 8);
    v48 = v42;
    (*(v50 + 32))(v42, v36, v49);
    (*(v50 + 56))(v42, 0, 1, v49);
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v52 = *(v51 - 8);
  v53 = (*(v52 + 48))(v48, 1, v51);
  v54 = v109;
  if (v53 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    v55 = 0.0;
    v56 = v110;
    v57 = v112;
  }

  else
  {
    v58 = v93;
    v59 = v48;
    v60 = v111;
    Ref.subscript.getter();
    (*(v52 + 8))(v59, v51);
    _s8PaperKit12TaggedStrokeOWObTm_0(v58, v99, type metadata accessor for PKStrokeStruct);
    (*(v100 + 16))(v118, v60, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    v61 = (v94 + 48);
    v62 = (v94 + 8);
    for (i = (v94 + 32); ; (*i)(v29, v21, v27))
    {
      swift_getWitnessTable();
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit15PKDrawingStructVWOhTm_4(v25, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v61)(v21, 1, v27) == 1)
      {
        break;
      }

      (*v62)(v29, v27);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v100 + 8))(v118, v119);
    v64 = v96;
    v56 = v110;
    Ref.subscript.getter();
    (*v62)(v29, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit15PKDrawingStructVWOhTm_4(v64, type metadata accessor for PKStrokeInheritedProperties);
    v65 = v120;
    if (v120)
    {
      [v120 hdrHeadroom];
      v55 = v66;

      _s8PaperKit15PKDrawingStructVWOhTm_4(v99, type metadata accessor for PKStrokeStruct);
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_4(v99, type metadata accessor for PKStrokeStruct);
      v55 = 0.0;
    }

    v57 = v112;
    v54 = v109;
  }

  v67 = v105;
  v68 = v103;
  v69 = v101;
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v69, v68, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v71 = *(v70 - 8);
    (*(v71 + 32))(v67, v68, v70);
    (*(v71 + 56))(v67, 0, 1, v70);
  }

  else
  {
    _s8PaperKit15PKDrawingStructVWOhTm_4(v68, type metadata accessor for TaggedStroke);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    (*(*(v72 - 8) + 56))(v67, 1, 1, v72);
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v67, 1, v73) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  }

  else
  {
    v75 = v97;
    Ref.subscript.getter();
    (*(v74 + 8))(v67, v73);
    (*(v107 + 32))(v106, v75, v108);
    CRSequence.makeIterator()();
    v76 = v117;
    CRSequence.Iterator.next()();
    v77 = v76;
    v78 = v113;
    v79 = (v113 + 48);
    v80 = *(v113 + 48);
    if (v80(v77, 1, v54) != 1)
    {
      v81 = *(v78 + 32);
      v113 = v78 + 32;
      v119 = v81;
      v82 = (v90 + 8);
      v83 = (v78 + 8);
      v84 = v92;
      v85 = v56;
      v86 = v91;
      v118 = v79;
      v87 = v111;
      do
      {
        v119(v86, v77, v54);
        Ref.subscript.getter();
        v88 = CRRegister<>.maxHDRHeadroom<A>(in:)(v87, v57, v85);
        (*v82)(v84, v114);
        (*v83)(v86, v54);
        if (v55 <= v88)
        {
          v55 = v88;
        }

        CRSequence.Iterator.next()();
        v77 = v117;
      }

      while (v80(v117, 1, v54) != 1);
    }

    (*(v98 + 8))(v115, v116);
    (*(v107 + 8))(v106, v108);
  }

  return v55;
}

double PKDrawingStruct.hdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  type metadata accessor for PKDrawingStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  CROrderedSet.makeIterator()();
  v37 = v15;
  v38 = v13;
  CROrderedSet.Iterator.next()();
  v16 = v39;
  v17 = *(v39 + 48);
  v18 = 0.0;
  if (v17(v12, 1, v7) != 1)
  {
    v19 = *(v16 + 32);
    ++v33;
    v34 = v19;
    v39 = v16 + 32;
    v32 = (v16 + 8);
    do
    {
      v34(v9, v12, v7);
      v20 = v9;
      v21 = v6;
      v22 = v4;
      v23 = a1;
      v25 = v35;
      v24 = v36;
      Ref.subscript.getter();
      v26 = v23;
      v27 = v25;
      a1 = v23;
      v4 = v22;
      v6 = v21;
      v9 = v20;
      v28 = CRRegister<>.maxHDRHeadroom<A>(in:)(v26, v27, v24);
      (*v33)(v6, v4);
      (*v32)(v20, v7);
      if (v18 <= v28)
      {
        v18 = v28;
      }

      CROrderedSet.Iterator.next()();
    }

    while (v17(v12, 1, v7) != 1);
  }

  (*(v31 + 8))(v37, v38);
  return v18;
}

double SharedTagged_10<>.hdrHeadroom<A>(in:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  SharedTagged_10.subscript.getter();
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = type metadata accessor for Capsule();
  v8[3] = v4;
  v8[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = (*(*(v3 + 8) + 48))(v8, v2);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t SharedTagged_10<>.asyncHdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](SharedTagged_10<>.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t SharedTagged_10<>.asyncHdrHeadroom<A>(in:)()
{
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  SharedTagged_10.subscript.getter();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = type metadata accessor for Capsule();
  v0[10] = v4;
  v0[11] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1, v4);
  v6 = *(v3 + 8);
  v9 = (*(v6 + 56) + **(v6 + 56));
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = SharedTagged_10<>.asyncHdrHeadroom<A>(in:);

  return v9(v0 + 7, v2, v6);
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);
  v2.n128_u64[0] = *(v0 + 136);

  return v1(v2);
}

uint64_t SharedTagged_10<>.asyncHdrHeadroom<A>(in:)(double a1)
{
  v2 = *v1;
  *(v2 + 136) = a1;

  __swift_destroy_boxed_opaque_existential_0(v2 + 56);

  return MEMORY[0x1EEE6DFA0](SharedTagged_10<>.asyncHdrHeadroom<A>(in:), 0, 0);
}

double Capsule<>.subelementsMaxHDRHeadroom()(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  v10 = *(a1 + 24);
  v18 = *(a1 + 16);
  v9 = v18;
  v19 = v10;
  v20 = a2;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v14 = v9;
  v15 = v10;
  v16 = a2;
  v17 = v2;
  v11 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Capsule<>.subelementsMaxHDRHeadroom(), v13, 0.0);
  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t Capsule<>.drawingHDRHeadroom.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19[0] = v16;
  v19[1] = v17;
  v19[2] = a2;
  swift_getKeyPath();
  Capsule.subscript.getter();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  (*(v13 + 32))(v15, v11, v12);
  Ref.subscript.getter();
  PKDrawingStruct.hdrHeadroom<A>(in:)(v3, v16, v17);
  _s8PaperKit15PKDrawingStructVWOhTm_4(v8, type metadata accessor for PKDrawingStruct);
  return (*(v13 + 8))(v15, v12);
}

void partial apply for closure #1 in Capsule<>.subelementsMaxHDRHeadroom()(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = SharedTagged_10<>.hdrHeadroom<A>(in:)(*(v2 + 40));
  if (v4 > v5)
  {
    v5 = v4;
  }

  *a2 = v5;
}

uint64_t _s8PaperKit15PKDrawingStructVWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Shape.rotation.setter(double a1)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.value.getter();
  if (vabdd_f64(v3, a1) > 0.01)
  {
    return CRRegister.value.setter();
  }

  return result;
}

uint64_t Shape.startLineEnd.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.endLineEnd.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.textResizeBehavior.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.emptyStringAttributes.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
}

BOOL Shape.supportsFill.getter()
{
  v0 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - v4;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit9ShapeTypeOWObTm_0(v5, v2, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return 0;
  }

  _s8PaperKit9ShapeTypeOWOhTm_1(v2, type metadata accessor for ShapeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  return v7[1] == 0;
}

double Shape.strokeWidth.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

BOOL Shape.supportsLineEnds.getter()
{
  v0 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit9ShapeTypeOWObTm_0(v5, v2, type metadata accessor for ShapeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    _s8PaperKit9ShapeTypeOWOhTm_1(v2, type metadata accessor for ShapeType);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t Shape.endLineEnd.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t Shape.startLineEnd.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.getter();
}

double Shape.opacity.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Shape.fillColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd);
}

uint64_t Shape.strokeColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd);
}

uint64_t Shape.opacity.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.init()@<X0>(uint64_t a1@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v28 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v28 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v28 - v10;
  v34 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v28 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v44 = 0u;
  v45 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for Shape(0);
  *&v44 = 0;
  v30 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v28 = a1;
  CRRegister.init(_:)();
  v19 = type metadata accessor for Color(0);
  v29 = *(*(v19 - 8) + 56);
  v29(v18, 1, 1, v19);
  outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd);
  v29(v18, 1, 1, v19);
  outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd);
  *&v44 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v20 = v32;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_3(v20, v33, type metadata accessor for ShapeType);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit9ShapeTypeOWOhTm_1(v20, type metadata accessor for ShapeType);
  *&v44 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v44 = 0;
  BYTE8(v44) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v44 = 0;
  BYTE8(v44) = 0;
  CRRegister.init(wrappedValue:)();
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  outlined init with copy of Date?(v22, v36, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  *&v44 = 0;
  lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  CRRegister.init(wrappedValue:)();
  *&v44 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v23 = type metadata accessor for StrokeStyle(0);
  v24 = v38;
  (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
  outlined init with copy of Date?(v24, v39, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit11StrokeStyleOSgMd);
  v25 = type metadata accessor for Shadow();
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  outlined init with copy of Date?(v26, v42, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit6ShadowVSgMd);
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

uint64_t Shape.strokeWidth.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.strokeStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit11StrokeStyleOSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit11StrokeStyleOSgMd);
}

uint64_t Shape.shadow.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit6ShadowVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit6ShadowVSgMd);
}

void Dictionary<>.scaleBy(_:)(double a1)
{
  if (a1 != 1.0 && a1 != 0.0)
  {
    v2 = *v1;
    if (*(*v1 + 16))
    {
      v4 = *MEMORY[0x1E69DB648];
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB648]);
      if (v6)
      {
        outlined init with copy of Any(*(v2 + 56) + 32 * v5, v12);
        v7 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
        if (swift_dynamicCast())
        {
          v8 = v4;
          [v11 pointSize];
          v10 = [v11 fontWithSize_];
          v12[3] = v7;
          v12[0] = v10;
          specialized Dictionary.subscript.setter(v12, v8);
        }
      }
    }
  }
}

uint64_t (*Shape.textResizeBehavior.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double Shape.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Shape.type.setter(uint64_t a1)
{
  v2 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  _s8PaperKit9ShapeTypeOWOcTm_3(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShapeType);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.setter();
  return _s8PaperKit9ShapeTypeOWOhTm_1(a1, type metadata accessor for ShapeType);
}

Swift::Void __swiftcall Shape.apply(_:)(CGAffineTransform *a1)
{
  ty = a1->ty;
  tx = a1->tx;
  v58 = ty;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Shape(0);
  v13 = *&a1->c;
  v57 = *&a1->a;
  v56 = v13;
  v14 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  a = t1.a;
  v55 = v14 - v18 * 0.0;
  v54 = v16 - v20 * 0.0;
  v63.origin.x = v14;
  v63.origin.y = v16;
  v63.size.width = v18;
  v52 = v18;
  v63.size.height = v20;
  v53 = v20;
  MidX = CGRectGetMidX(v63);
  v64.origin.x = v14;
  v64.origin.y = v16;
  v64.size.width = v18;
  v64.size.height = v20;
  MidY = CGRectGetMidY(v64);
  CGAffineTransformMakeRotation(&t1, a);
  v24 = t1.tx;
  v25 = t1.ty;
  v51 = *&t1.a;
  v50 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v26 = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v30 = t1.tx;
  v31 = t1.ty;
  *&t2.a = v51;
  *&t2.c = v50;
  t2.tx = v24;
  t2.ty = v25;
  CGAffineTransformConcat(&v60, &t1, &t2);
  v32 = v60.tx;
  v33 = v60.ty;
  v51 = *&v60.a;
  v50 = *&v60.c;
  t1.a = v26;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v30;
  t1.ty = v31;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v50;
  *&t1.a = v51;
  t1.tx = v32;
  t1.ty = v33;
  CGAffineTransformConcat(&v60, &t1, &t2);
  t1.a = v52;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v53;
  t1.tx = v55;
  t1.ty = v54;
  t2 = v60;
  CGAffineTransformConcat(&v60, &t1, &t2);
  t2 = v60;
  *&v60.c = v56;
  *&v60.a = v57;
  v60.tx = tx;
  v60.ty = v58;
  CGAffineTransformConcat(&t1, &t2, &v60);
  specialized CanvasElement.coordinateSpace.setter();
  v34 = sqrt(vaddvq_f64(vmulq_f64(*&a1->a, *&a1->a)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v35 = CRRegister.wrappedValue.modify();
  *v36 = v34 * *v36;
  v35(&t2, 0);
  v37 = *(v12 + 52);
  CRAttributedString<>.apply(_:)(&a1->a);
  (*(v9 + 16))(v11, v1 + v37, v8);
  v38 = CRAttributedString.attributedString.getter();
  v39 = [v38 string];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v40 || v42 != 0xE000000000000000)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v9 + 8))(v11, v8);
    if ((v43 & 1) == 0)
    {
      v44 = CRAttributedString.attributedString.getter();
      v45 = [v44 length];

      if (__OFSUB__(v45, 1))
      {
        __break(1u);
      }

      else
      {
        v46 = v48;
        CRAttributedString.attributes(at:effectiveRange:)();
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
        outlined init with copy of Date?(v46, v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      }
    }
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t (*Shape.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double Shape.rotation.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  return v1;
}

uint64_t (*Shape.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path setter for Shape.type : Shape(uint64_t a1)
{
  v2 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  _s8PaperKit9ShapeTypeOWOcTm_3(a1, &v9 - v6, type metadata accessor for ShapeType);
  _s8PaperKit9ShapeTypeOWOcTm_3(v7, v4, type metadata accessor for ShapeType);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.setter();
  return _s8PaperKit9ShapeTypeOWOhTm_1(v7, type metadata accessor for ShapeType);
}

double key path getter for Shape.opacity : Shape@<D0>(double *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Shape.opacity : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

double key path getter for Shape.strokeWidth : Shape@<D0>(double *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Shape.strokeWidth : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

BOOL Shape.supportsStrokeColor.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  return v1 == 0;
}

uint64_t key path getter for Shape.startLineEnd : Shape@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for Shape.startLineEnd : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t key path getter for Shape.endLineEnd : Shape@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for Shape.endLineEnd : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.flags.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t key path getter for Shape.flags : Shape@<X0>(void *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Shape.flags : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.flags.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.pathAndLineEnds(in:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.getter();
  ShapeType.any.getter(&v55);
  _s8PaperKit9ShapeTypeOWOhTm_1(v11, type metadata accessor for ShapeType);
  v12 = v57;
  v13 = v58;
  __swift_project_boxed_opaque_existential_1(&v55, v57);
  v14 = (*(v13 + 8))(a1, v12, v13);
  __swift_destroy_boxed_opaque_existential_0(&v55);
  CGPathRef.endPoints.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.getter();
  v23 = type metadata accessor for Color(0);
  v24 = (*(*(v23 - 8) + 48))(v8, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd);
  v25 = 0.0;
  if (v24 == 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), CRRegister.wrappedValue.getter(), v55 <= 0.0))
  {
    v30 = 0.0;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  CRRegister.wrappedValue.getter();
  if (v56 == 1)
  {
    CRRegister.wrappedValue.getter();
    v26 = v55;
    v27 = 1;
    goto LABEL_5;
  }

  v27 = LOBYTE(v55);
  if (!LOBYTE(v55))
  {
    v30 = 0.0;
    goto LABEL_19;
  }

  CRRegister.wrappedValue.getter();
  v26 = v55;
  if (v27 == 7)
  {
    v28 = 0.25;
    if (v55 < 1.0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (v27 != 8)
  {
LABEL_5:
    v28 = 1.0;
    if (v26 < 1.0)
    {
LABEL_6:
      v29 = v26 * 6.0;
      goto LABEL_15;
    }

LABEL_14:
    v29 = v26 * 3.6 + 2.4;
LABEL_15:
    v31 = v29 * v28;
    if (v27 == 2)
    {
      v32 = 2.73606798;
    }

    else
    {
      v32 = 0.5;
    }

    goto LABEL_18;
  }

  v31 = v55 * 5.0;
  v32 = 0.5;
LABEL_18:
  CRRegister.wrappedValue.getter();
  v30 = (v31 - v32 * v55) * a3;
  v59.size.width = v30 + v30;
  v33 = (v30 + v30) * 0.5;
  v59.origin.x = v16 - v33;
  v59.origin.y = v18 - v33;
  v59.size.height = v30 + v30;
  v34 = CGPathCreateWithEllipseInRect(v59, 0);
  v35 = CGPathRef.lineSubtractingFromStart(_:)(v34);

  v14 = v35;
LABEL_19:
  CRRegister.wrappedValue.getter();
  if (v56 == 1)
  {
    CRRegister.wrappedValue.getter();
    v36 = v55;
    v37 = 1;
    goto LABEL_21;
  }

  v37 = LOBYTE(v55);
  if (!LOBYTE(v55))
  {
    goto LABEL_33;
  }

  CRRegister.wrappedValue.getter();
  v36 = v55;
  if (v37 == 7)
  {
    v38 = 0.25;
    if (v55 < 1.0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  if (v37 != 8)
  {
LABEL_21:
    v38 = 1.0;
    if (v36 < 1.0)
    {
LABEL_22:
      v39 = v36 * 6.0;
      goto LABEL_29;
    }

LABEL_28:
    v39 = v36 * 3.6 + 2.4;
LABEL_29:
    v40 = v39 * v38;
    if (v37 == 2)
    {
      v41 = 2.73606798;
    }

    else
    {
      v41 = 0.5;
    }

    goto LABEL_32;
  }

  v40 = v55 * 5.0;
  v41 = 0.5;
LABEL_32:
  CRRegister.wrappedValue.getter();
  v25 = (v40 - v41 * v55) * a3;
  v60.size.width = v25 + v25;
  v42 = (v25 + v25) * 0.5;
  v60.origin.x = v20 - v42;
  v60.origin.y = v22 - v42;
  v60.size.height = v25 + v25;
  v43 = CGPathCreateWithEllipseInRect(v60, 0);
  v44 = CGPathRef.lineSubtractingFromEnd(_:)(v43);

  v14 = v44;
LABEL_33:
  result = CGPathIsEmpty(v14);
  if (result)
  {
    v46 = sqrt((v20 - v16) * (v20 - v16) + (v22 - v18) * (v22 - v18));
    v47 = (v20 - v16) / v46;
    v48 = (v22 - v18) / v46;
    v49 = v16 + v47 * v30;
    v50 = v18 + v48 * v30;
    v51 = v48 * v25;
    v52 = v20 - v47 * v25;
    v53 = v22 - v51;
  }

  else
  {
    result = CGPathRef.endPoints.getter();
  }

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v49;
  *(a2 + 48) = v50;
  *(a2 + 56) = v52;
  *(a2 + 64) = v53;
  return result;
}

uint64_t key path setter for Shape.strokeStyle : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit11StrokeStyleOSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit11StrokeStyleOSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit11StrokeStyleOSgMd);
}

uint64_t key path setter for Shape.shadow : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit6ShadowVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit6ShadowVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit6ShadowVSgMd);
}

double key path getter for Shape.rotation : Shape@<D0>(double *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Shape.rotation : Shape(double *a1)
{
  v1 = *a1;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.value.getter();
  if (vabdd_f64(v3, v1) > 0.01)
  {
    return CRRegister.value.setter();
  }

  return result;
}

uint64_t key path setter for Shape.strokeColor : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
}

uint64_t key path setter for Shape.emptyStringAttributes : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
}

uint64_t Shape.textResizeBehavior.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t key path getter for Shape.textResizeBehavior : Shape@<X0>(void *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Shape.textResizeBehavior : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$frame : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*Shape.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t key path setter for Shape.fillColor : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
}

uint64_t (*Shape.fillColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.fillColor.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.fillColor : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$fillColor : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$fillColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$fillColor.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t (*Shape.strokeColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.strokeColor.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.strokeColor : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$strokeColor : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$strokeColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$strokeColor.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.strokeWidth.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.$strokeWidth.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$strokeWidth : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$strokeWidth : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$strokeWidth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$strokeWidth.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.type.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.type : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$type : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$type.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$type.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.opacity.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.$opacity.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$opacity : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$opacity : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$opacity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$opacity.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.startLineEnd.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.$startLineEnd.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$startLineEnd : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$startLineEnd : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$startLineEnd.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$startLineEnd.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 44);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.endLineEnd.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t Shape.$endLineEnd.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$endLineEnd : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$endLineEnd : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$endLineEnd.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$endLineEnd.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Shape._text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shape(0) + 52);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shape._text.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shape(0) + 52);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Shape.emptyStringAttributes.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.emptyStringAttributes.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.emptyStringAttributes : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$emptyStringAttributes : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$emptyStringAttributes.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$emptyStringAttributes.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 56);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Shape.$textResizeBehavior.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$textResizeBehavior : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$textResizeBehavior : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}