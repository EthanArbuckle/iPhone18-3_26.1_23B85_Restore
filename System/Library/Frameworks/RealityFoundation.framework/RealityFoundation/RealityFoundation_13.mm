unint64_t lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

uint64_t EmphasizeAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = 0;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v20;
    v17 = 1;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v18;
    v16 = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for EmphasizeAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmphasizeAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void EmphasizeActionHandler.actionStarted(event:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(v1 + 8);
    v19 = *a1;
    v20 = v2;
    v28 = *(a1 + 136);
    v29 = *(a1 + 152);
    v30 = *(a1 + 168);
    v31 = *(a1 + 184);
    v24 = *(a1 + 72);
    v25 = *(a1 + 88);
    v26 = *(a1 + 104);
    v27 = *(a1 + 120);
    v21 = *(a1 + 24);
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);

    v4 = specialized EmphasizeActionHandler.createTransformData(event:targetEntity:)(&v19, v2);
    if (v4)
    {
      v5 = v4;

      *(v1 + 8) = v5;
      *v1 = 1.0 / *(v5 + 2);
      return;
    }

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v32 = &type metadata for EmphasizeAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15EmphasizeActionVmMd, &_s17RealityFoundation15EmphasizeActionVmMR);
    v13 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v13);

    MEMORY[0x1C68F3410](0xD000000000000034, 0x80000001C18E08D0);
    v14 = v19;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static AnimationLogger.logger);

    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, *(&v14 + 1), &v19);
      _os_log_impl(&dword_1C1358000, v9, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1C6902A30](v18, -1, -1);
      MEMORY[0x1C6902A30](v17, -1, -1);
    }
  }

  else
  {
    _StringGuts.grow(_:)(46);

    strcpy(&v19, "Handler for ");
    BYTE13(v19) = 0;
    HIWORD(v19) = -5120;
    v32 = &type metadata for EmphasizeAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15EmphasizeActionVmMd, &_s17RealityFoundation15EmphasizeActionVmMR);
    v6 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v6);

    MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
    v7 = v19;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static AnimationLogger.logger);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, *(&v7 + 1), &v19);
      _os_log_impl(&dword_1C1358000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C6902A30](v12, -1, -1);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }
  }
}

void *EmphasizeActionHandler.actionUpdated(event:)(void *result)
{
  v2 = *(result + 11);
  v52 = *(result + 10);
  v53 = v2;
  v54 = result[24];
  v3 = *(result + 7);
  v48 = *(result + 6);
  v49 = v3;
  v4 = *(result + 9);
  v50 = *(result + 8);
  v51 = v4;
  v5 = *(result + 3);
  v44 = *(result + 2);
  v45 = v5;
  v6 = *(result + 5);
  v46 = *(result + 4);
  v47 = v6;
  v7 = *(result + 1);
  v42 = *result;
  v43 = v7;
  if ((BYTE8(v48) & 1) == 0)
  {
    v8 = *&v48;
    specialized ActionEvent.animationState.getter(&v36);
    if (!*(&v37 + 1))
    {
      return outlined destroy of AnimationStateProtocol?(&v36);
    }

    outlined init with take of ForceEffectBase(&v36, v39);
    v9 = v8 / *v1;
    v10 = floor(v9);
    v11 = v10 + ceil(v9 - v10) + 0.5;
    if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v12 = v11;
        v13 = *(v1 + 8);
        v14 = *(v13 + 16);
        if (v14 > v11)
        {
          if (v12)
          {
            v15 = v12 - 1;
            if (!__OFSUB__(v12, 1))
            {
              if (v15 < v14)
              {
                if ((v12 & 0x8000000000000000) == 0)
                {
                  v16 = (v13 + 32 + 48 * v15);
                  v17 = (v13 + 32 + 48 * v12);
                  v18 = *v16;
                  v19 = v16[1];
                  v20 = v16[2];
                  v21 = v17[1];
                  v22 = v17[2];
                  v23 = *v17;
                  RESRTLerp();
                  v34 = v24;
                  v35 = v25;
                  v33 = v26;
                  if (one-time initialization token for identity == -1)
                  {
LABEL_12:
                    v27 = v40;
                    v28 = v41;
                    __swift_project_boxed_opaque_existential_1(v39, v40);
                    v36 = v34;
                    v37 = v35;
                    v38 = v33;
LABEL_19:
                    (*(v28 + 64))(&v36, &type metadata for Transform, v27, v28);
                    return __swift_destroy_boxed_opaque_existential_1(v39);
                  }

LABEL_28:
                  swift_once();
                  goto LABEL_12;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v27 = v40;
          v28 = v41;
          result = __swift_project_boxed_opaque_existential_1(v39, v40);
          if (!v14)
          {
            __break(1u);
            return result;
          }

          v30 = *(v13 + 32);
          v31 = *(v13 + 48);
          v32 = *(v13 + 64);
LABEL_18:
          v36 = v30;
          v37 = v31;
          v38 = v32;
          goto LABEL_19;
        }

        v27 = v40;
        v28 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        if (v14)
        {
          v29 = (v13 + 48 * v14);
          v30 = *(v29 - 1);
          v31 = *v29;
          v32 = v29[1];
          goto LABEL_18;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

void specialized ActionEvent.animationState.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 184);
  }

  if (*(v1 + 208))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 200);
  }

  v5 = *(v1 + 168);
  if (*(v1 + 176))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 168);
  }

  v7 = *(v1 + 160);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 160);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 352))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 344);
  }

  if (*(v1 + 368))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 360);
  }

  v5 = *(v1 + 328);
  if (*(v1 + 336))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 328);
  }

  v7 = *(v1 + 320);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 320);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 256))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 248);
  }

  if (*(v1 + 272))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 264);
  }

  v5 = *(v1 + 232);
  if (*(v1 + 240))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 232);
  }

  v7 = *(v1 + 224);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 224);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 208))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 200);
  }

  if (*(v1 + 224))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 216);
  }

  v5 = *(v1 + 184);
  if (*(v1 + 192))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 184);
  }

  v7 = *(v1 + 176);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 176);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 88))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 80);
  }

  if (*(v1 + 104))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 96);
  }

  v5 = *(v1 + 64);
  if (*(v1 + 72))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 64);
  }

  v7 = *(v1 + 56);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 56);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 176))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 168);
  }

  if (*(v1 + 192))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 184);
  }

  v5 = *(v1 + 152);
  if (*(v1 + 160))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 152);
  }

  v7 = *(v1 + 144);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 144);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

{
  if (*(v1 + 144))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 136);
  }

  if (*(v1 + 160))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 152);
  }

  v5 = *(v1 + 120);
  if (*(v1 + 128))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v1 + 120);
  }

  v7 = *(v1 + 112);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v1 + 112);
  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v10 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v10 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v10 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v10 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v12 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v10 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v12 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v10 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v12 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v12, v10, v11);
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v7;
}

uint64_t specialized EmphasizeAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746F6DLL && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974696464417369 && a2 == 0xEA00000000006576)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t outlined destroy of AnimationStateProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *specialized EmphasizeActionHandler.createTransformData(event:targetEntity:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  if (v3 > 3)
  {
    if (a1[8] > 5u)
    {
      if (v3 == 6)
      {
        v15 = a1[9];
        v6 = specialized static EmphasizeAnimations.createEmphasizePulseAnimation(style:)(&v15);
      }

      else
      {
        v16 = a1[9];
        v6 = specialized static EmphasizeAnimations.createEmphasizeSpinAnimation(style:)(&v16);
      }
    }

    else if (v3 == 4)
    {
      v13 = a1[9];
      v6 = specialized static EmphasizeAnimations.createEmphasizeFloatAnimation(style:)(&v13);
    }

    else
    {
      v14 = a1[9];
      v6 = specialized static EmphasizeAnimations.createEmphasizeJiggleAnimation(style:)(&v14);
    }
  }

  else if (a1[8] > 1u)
  {
    if (v3 == 2)
    {
      v11 = a1[9];
      v6 = specialized static EmphasizeAnimations.createEmphasizeBounceAnimation(style:)(&v11);
    }

    else
    {
      v12 = a1[9];
      v6 = specialized static EmphasizeAnimations.createEmphasizeFlipAnimation(style:)(&v12);
    }
  }

  else if (a1[8])
  {
    v10 = a1[9];
    v6 = specialized static EmphasizeAnimations.createEmphasizeBlinkAnimation(style:)(&v10);
  }

  else
  {
    v9 = a1[9];
    v6 = specialized static EmphasizeAnimations.createEmphasizePopAnimation(style:)(&v9);
  }

  v7 = specialized static EmphasizeAnimations.bakeEmphasisTransforms(_:transforms:isAdditive:)(a2, v6, v5);

  return v7;
}

uint64_t __RKRuntimeSceneCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t __RKRuntimeSceneCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t __RKRuntimeSceneCoordinator.willSwap(fromEntity:toEntity:anchoringTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v11 = *(v3 + 16);

    do
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v10, v14);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = v15;
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v3, a1, a2, a3, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v14);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t __RKRuntimeSceneCoordinator.didSwap(fromEntity:toEntity:anchoringTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v11 = *(v3 + 16);

    do
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v10, v14);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = v15;
        ObjectType = swift_getObjectType();
        (*(v12 + 16))(v3, a1, a2, a3, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v14);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t __RKRuntimeSceneCoordinator.addObserver(observer:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = *(v2 + 16);

    v9 = 0;
    while (v9 < *(v5 + 16))
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v7, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v7 += 16;
      if (v6 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v17 = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  a1 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v2 + 16) = a1;
  }

  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a1);
  }

  a1[2] = v14 + 1;
  outlined init with take of __RKRuntimeSceneCoordinator.WeakObserver(v16, &a1[2 * v14 + 4]);
  *(v2 + 16) = a1;
  return swift_endAccess();
}

uint64_t __RKRuntimeSceneCoordinator.removeObserver(observer:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = *(v1 + 16);

    v8 = 0;
    while (v8 < *(v4 + 16))
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v6, v10);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v10);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          specialized Array.remove(at:)(v8, v11);
          outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v11);
          return swift_endAccess();
        }
      }

      ++v8;
      v6 += 16;
      if (v5 == v8)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of __RKRuntimeSceneCoordinator.WeakObserver(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 28);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 28) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 160 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    v11 = v8[11];
    a2[8] = v8[10];
    a2[9] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    v13 = v8[7];
    a2[4] = v8[6];
    a2[5] = v13;
    v14 = v8[3];
    *a2 = v8[2];
    a2[1] = v14;
    result = memmove(v8 + 2, v8 + 12, 160 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    *(a2 + 41) = *(v9 + 73);
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

size_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of PhotogrammetrySessionImpl.RequestMap.Entry(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t __RKRuntimeSceneCoordinator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __RKRuntimeSceneCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for __RKRuntimeSceneCoordinator.WeakObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKRuntimeSceneCoordinator.WeakObserver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of PhotogrammetrySessionImpl.RequestMap.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t didAddAnchoringComponentObject(componentRef:)()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  result = RECustomComponentGetObject();
  if (result)
  {
    v13 = result;
    v14 = *(type metadata accessor for __REAnchoring() + 20);
    outlined init with copy of __REAnchoringType?(v13 + v14, v11);
    v15 = type metadata accessor for __REAnchoringType();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v11, 1, v15);
    result = outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    if (v17 == 1)
    {
      v18 = *v13;
      if (*v13)
      {
        v19 = strlen(*v13);
        (*(v1 + 104))(v4, *MEMORY[0x1E6969010], v0);
        v20 = specialized Data.init(bytesNoCopy:count:deallocator:)(v18, v19, v4);
        v22 = v21;
        v23 = type metadata accessor for JSONDecoder();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        (*(v16 + 56))(v8, 0, 1, v15);

        outlined consume of Data._Representation(v20, v22);
      }

      else
      {
        (*(v16 + 56))(v8, 1, 1, v15);
      }

      return outlined assign with take of __REAnchoringType?(v8, v13 + v14);
    }
  }

  return result;
}

uint64_t cloneAnchoringComponent(_:)()
{
  v0 = type metadata accessor for __REAnchoring();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Class = REComponentGetClass();
  v5 = REComponentCreateByClassOpaquePointer_0(Class);
  Object = RECustomComponentGetObject();
  if (Object && (v7 = Object, (v8 = RECustomComponentGetObject()) != 0))
  {
    v9 = v8;
    v10 = *(v0 + 24);
    if (!*(v7 + v10))
    {
      v11 = *v7;
      if (*v7)
      {
        type metadata accessor for IntrospectionDataCleanupHelper();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v7 + v10) = v12;
      }
    }

    outlined init with copy of __REAnchoringType(v7, v3, type metadata accessor for __REAnchoring);
    outlined destroy of __REAnchoringType(v9, type metadata accessor for __REAnchoring);
    outlined init with take of __REAnchoringType(v3, v9, type metadata accessor for __REAnchoring);
  }

  else
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return v5;
}

uint64_t __REAnchoring.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for __REAnchoring();
  outlined init with copy of __REAnchoringType?(v1 + *(v12 + 20), v11);
  v13 = type metadata accessor for __REAnchoringType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    v16 = *v1;
    if (v16)
    {
      v26[0] = v15;
      v17 = strlen(v16);
      (*(v4 + 104))(v7, *MEMORY[0x1E6969010], v3);
      v18 = a1;
      v19 = specialized Data.init(bytesNoCopy:count:deallocator:)(v16, v17, v7);
      v21 = v20;
      v22 = type metadata accessor for JSONDecoder();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*(v14 + 56))(v18, 0, 1, v13);

      outlined consume of Data._Representation(v19, v21);
      v15 = v26[0];
    }

    else
    {
      (*(v14 + 56))(a1, 1, 1, v13);
    }

    result = v15(v11, 1, v13);
    if (result != 1)
    {
      return outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    }
  }

  else
  {
    outlined init with take of __REAnchoringType(v11, a1, type metadata accessor for __REAnchoringType);
    return (*(v14 + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t type metadata accessor for __REAnchoring()
{
  result = type metadata singleton initialization cache for __REAnchoring;
  if (!type metadata singleton initialization cache for __REAnchoring)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for __REAnchoring.type : __REAnchoring(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  outlined init with copy of __REAnchoringType?(a1, &v7 - v4);
  return __REAnchoring.type.setter(v5);
}

uint64_t __REAnchoring.type.setter(uint64_t a1)
{
  v3 = type metadata accessor for __REAnchoringType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSg_ADtMd, &_s10RealityKit17__REAnchoringTypeOSg_ADtMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v53 = type metadata accessor for __REAnchoring();
  v54 = v1;
  v52 = *(v53 + 20);
  outlined init with copy of __REAnchoringType?(v1 + v52, v19);
  v20 = *(v9 + 56);
  v21 = a1;
  outlined init with copy of __REAnchoringType?(a1, v12);
  outlined init with copy of __REAnchoringType?(v19, &v12[v20]);
  v22 = *(v4 + 48);
  if (v22(v12, 1, v3) != 1)
  {
    outlined init with copy of __REAnchoringType?(v12, v17);
    if (v22(&v12[v20], 1, v3) != 1)
    {
      outlined init with take of __REAnchoringType(&v12[v20], v7, type metadata accessor for __REAnchoringType);
      v27 = specialized static __REAnchoringType.== infix(_:_:)(v17, v7);
      outlined destroy of __REAnchoringType(v7, type metadata accessor for __REAnchoringType);
      outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      outlined destroy of __REAnchoringType(v17, type metadata accessor for __REAnchoringType);
      outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      v23 = v21;
      if (v27)
      {
        return outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      }

LABEL_7:
      v24 = type metadata accessor for JSONEncoder();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type __REAnchoringType? and conformance <A> A?();
      v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v30 = v29;

      v32 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        v34 = v53;
        v33 = v54;
        if (v32 != 2)
        {
          goto LABEL_27;
        }

        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (!v37)
        {
LABEL_22:
          if (v38 > 2147483646)
          {
            goto LABEL_41;
          }

          if (v32 != 2)
          {
            v51 = HIDWORD(v28) - v28;
            if (__OFSUB__(HIDWORD(v28), v28))
            {
LABEL_55:
              __break(1u);
              return result;
            }

            result = v51 + 1;
            if (!__OFADD__(v51, 1))
            {
LABEL_29:
              if (result >= 0xFFFFFFFF80000000)
              {
                if (result <= 0x7FFFFFFF)
                {
                  v42 = RECIntrospectionAlloc();
                  if (*v33)
                  {
                    v43 = *(v34 + 24);
                    v44 = *(v33 + v43);

                    *(v33 + v43) = 0;
                  }

                  *v33 = v42;
                  type metadata accessor for IntrospectionDataCleanupHelper();
                  v45 = swift_allocObject();
                  *(v45 + 16) = v42;
                  v46 = *(v34 + 24);
                  v47 = *(v33 + v46);

                  *(v33 + v46) = v45;
                  if (v32 <= 1)
                  {
                    if (!v32)
                    {
                      v48 = BYTE6(v30);
LABEL_44:
                      Data.copyBytes(to:count:)();
LABEL_45:
                      *(v42 + v48) = 0;
                      outlined consume of Data._Representation(v28, v30);
                      return outlined assign with take of __REAnchoringType?(v23, v33 + v52);
                    }

                    if (!__OFSUB__(HIDWORD(v28), v28))
                    {
                      v48 = HIDWORD(v28) - v28;
                      goto LABEL_44;
                    }

                    goto LABEL_54;
                  }

                  v48 = 0;
                  if (v32 != 2)
                  {
                    goto LABEL_44;
                  }

                  if (!__OFSUB__(*(v28 + 24), *(v28 + 16)))
                  {
                    Data.copyBytes(to:count:)();
                    v50 = *(v28 + 16);
                    v49 = *(v28 + 24);
                    v48 = v49 - v50;
                    if (!__OFSUB__(v49, v50))
                    {
                      goto LABEL_45;
                    }

                    __break(1u);
LABEL_41:
                    outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
                    return outlined consume of Data._Representation(v28, v30);
                  }

LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                goto LABEL_51;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v40 = *(v28 + 16);
          v39 = *(v28 + 24);
          v37 = __OFSUB__(v39, v40);
          v41 = v39 - v40;
          if (!v37)
          {
LABEL_28:
            result = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              goto LABEL_29;
            }

            goto LABEL_49;
          }

          __break(1u);
LABEL_27:
          v41 = 0;
          goto LABEL_28;
        }

        __break(1u);
      }

      else
      {
        v34 = v53;
        v33 = v54;
        if (!v32)
        {
          result = BYTE6(v30) + 1;
          if (!__OFADD__(BYTE6(v30), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_49;
        }
      }

      LODWORD(v38) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v38 = v38;
      goto LABEL_22;
    }

    outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    outlined destroy of __REAnchoringType(v17, type metadata accessor for __REAnchoringType);
LABEL_6:
    outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit17__REAnchoringTypeOSg_ADtMd, &_s10RealityKit17__REAnchoringTypeOSg_ADtMR);
    v23 = v21;
    goto LABEL_7;
  }

  outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  if (v22(&v12[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v23 = v21;
  return outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
}

void (*__REAnchoring.type.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  __REAnchoring.type.getter(v4);
  return __REAnchoring.type.modify;
}

void __REAnchoring.type.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    outlined init with copy of __REAnchoringType?(v3, v2);
    __REAnchoring.type.setter(v2);
    outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  else
  {
    __REAnchoring.type.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t __REAnchoring.Registration.init()()
{
  REStructBuilderCreate();
  v2 = type metadata accessor for __REAnchoring();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 64);
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    String.utf8CString.getter();
    v6 = REStructBuilderInit();

    if (v6 && (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v7 = RECIntrospectionStructRegister()) != 0))
    {
      *(v0 + 16) = v7;
      v8 = specialized String.withCString<A>(_:)(0x726F68636E414552, 0xEB00000000676E69, v7);
      if (!v1)
      {
        *(v0 + 24) = v8;
        REStructBuilderDestroy();
        return v0;
      }
    }

    else
    {
      lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
      swift_allocError();
      swift_willThrow();
    }

    REStructBuilderDestroy();
    type metadata accessor for __REAnchoring.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __REAnchoring.Registration.init()@<X0>(uint64_t *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = RECustomComponentTypeCreate();
  if (v2)
  {
    v3 = v2;
    result = REComponentTypeSetCloneCallback();
    *a1 = v3;
  }

  else
  {
    lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
    swift_allocError();
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void @objc createAnchoringComponentObject(componentType:)()
{
  v0 = type metadata accessor for __REAnchoring();
  MEMORY[0x1EEE9AC00](*(*(v0 - 8) + 64));
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v3 = RECIntrospectionAlloc();
    *v2 = 0;
    v4 = *(v0 + 20);
    v5 = type metadata accessor for __REAnchoringType();
    (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
    *&v2[*(v0 + 24)] = 0;
    outlined init with take of __REAnchoringType(v2, v3, type metadata accessor for __REAnchoring);
    return;
  }

  __break(1u);
}

uint64_t @objc destroyAnchoringComponentObject(componentType:rawPointer:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for __REAnchoring();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of __REAnchoringType(a2, v7, type metadata accessor for __REAnchoring);
  if (!*(v7 + *(v4 + 32)) && *v7)
  {
    RECIntrospectionFree();
  }

  outlined destroy of __REAnchoringType(v7, type metadata accessor for __REAnchoring);
  outlined destroy of __REAnchoringType(a2, type metadata accessor for __REAnchoring);
  return RECIntrospectionFree();
}

uint64_t @objc willRemoveAnchoringComponentObject(componentRef:)()
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v1 = result;
    v2 = *(type metadata accessor for __REAnchoring() + 20);
    outlined destroy of BodyTrackingComponent?(v1 + v2, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    v3 = type metadata accessor for __REAnchoringType();
    v4 = *(*(v3 - 8) + 56);

    return v4(v1 + v2, 1, 1, v3);
  }

  return result;
}

uint64_t __REAnchoring.Registration.deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __REAnchoring.Registration.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __REAnchoring.registration.setter(void *a1)
{
  swift_beginAccess();
  static __REAnchoring.registration = a1;
}

uint64_t key path setter for static __REAnchoring.registration : __REAnchoring.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __REAnchoring.registration = v1;
}

uint64_t Scene.__anchoringType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    v3 = *(static __REAnchoring.registration + 3);
    v4 = *(v1 + 16);
    ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
    if (v6)
    {
      v7 = *ComponentsOfCustomType;
      if (RECustomComponentGetObject())
      {
        return __REAnchoring.type.getter(a1);
      }
    }
  }

  v9 = type metadata accessor for __REAnchoringType();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t Scene.__anchoringType.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for __REAnchoringType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!static __REAnchoring.registration)
  {
    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  v15 = *(static __REAnchoring.registration + 3);
  outlined init with copy of __REAnchoringType?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined init with take of __REAnchoringType(v9, v14, type metadata accessor for __REAnchoringType);
    v18 = *(v1 + 16);
    ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
    if (v20 < 1)
    {
      v22 = v1;
      v27 = v1;
      if (Scene.AnchorCollection.endIndex.getter())
      {
        v23 = Scene.AnchorCollection.subscript.getter(0);
      }

      else
      {
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Scene.__anchoringType.setter);
        v25 = specialized AnchorEntity.__allocating_init(world:)(v24);

        specialized Scene.AnchorCollection.append(_:)(v25, v22);

        v23 = v25;
      }

      v26 = v23[2];

      if (!REEntityAddComponentByClass())
      {
LABEL_15:
        outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
        return outlined destroy of __REAnchoringType(v14, type metadata accessor for __REAnchoringType);
      }
    }

    else
    {
      v21 = *ComponentsOfCustomType;
    }

    if (RECustomComponentGetObject())
    {
      outlined init with copy of __REAnchoringType(v14, v7, type metadata accessor for __REAnchoringType);
      (*(v11 + 56))(v7, 0, 1, v10);
      __REAnchoring.type.setter(v7);
      outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      return outlined destroy of __REAnchoringType(v14, type metadata accessor for __REAnchoringType);
    }

    goto LABEL_15;
  }

  outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v16 = *(v1 + 16);
  if (REEntityGetCustomComponent())
  {
    REEntityRemoveComponentByClass();
  }

  return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
}

void (*Scene.__anchoringType.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __REAnchoring.registration && (v9 = *(static __REAnchoring.registration + 3), v10 = *(v1 + 16), ComponentsOfCustomType = RESceneGetComponentsOfCustomType(), v12) && (v13 = *ComponentsOfCustomType, RECustomComponentGetObject()))
  {
    __REAnchoring.type.getter(v8);
  }

  else
  {
    v14 = type metadata accessor for __REAnchoringType();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  return Scene.__anchoringType.modify;
}

uint64_t Entity.__anchoringType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    v3 = *(static __REAnchoring.registration + 3);
    v4 = *(v1 + 16);
    if (REEntityGetCustomComponent())
    {
      if (RECustomComponentGetObject())
      {
        return __REAnchoring.type.getter(a1);
      }
    }
  }

  v6 = type metadata accessor for __REAnchoringType();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t key path setter for Scene.__anchoringType : Scene(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  outlined init with copy of __REAnchoringType?(a1, &v14 - v10);
  v12 = *a2;
  return a5(v11);
}

uint64_t Entity.__anchoringType.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for __REAnchoringType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!static __REAnchoring.registration)
  {
    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  v15 = *(static __REAnchoring.registration + 3);
  outlined init with copy of __REAnchoringType?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    v16 = *(v1 + 16);
    if (REEntityGetCustomComponent())
    {
      v17 = *(v1 + 16);
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  outlined init with take of __REAnchoringType(v9, v14, type metadata accessor for __REAnchoringType);
  v19 = *(v1 + 16);
  if ((REEntityGetCustomComponent() || (v20 = *(v1 + 16), REEntityAddComponentByClass())) && RECustomComponentGetObject())
  {
    outlined init with copy of __REAnchoringType(v14, v7, type metadata accessor for __REAnchoringType);
    (*(v11 + 56))(v7, 0, 1, v10);
    __REAnchoring.type.setter(v7);
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v14, type metadata accessor for __REAnchoringType);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v14, type metadata accessor for __REAnchoringType);
  }
}

void (*Entity.__anchoringType.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __REAnchoring.registration && (v9 = *(static __REAnchoring.registration + 3), v10 = *(v1 + 16), REEntityGetCustomComponent()) && RECustomComponentGetObject())
  {
    __REAnchoring.type.getter(v8);
  }

  else
  {
    v11 = type metadata accessor for __REAnchoringType();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  return Entity.__anchoringType.modify;
}

void Scene.__anchoringType.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of __REAnchoringType?(v6, v5);
    a3(v5);
    outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  else
  {
    a3(v6);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = specialized Data._Representation.init(_:count:)(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for __REAnchoringType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for __REAnchoring()
{
  type metadata accessor for UnsafeMutableRawPointer?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for __REAnchoringType?(319, &lazy cache variable for type metadata for __REAnchoringType?, type metadata accessor for __REAnchoringType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for __REAnchoringType?(319, &lazy cache variable for type metadata for IntrospectionDataCleanupHelper?, type metadata accessor for IntrospectionDataCleanupHelper);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for UnsafeMutableRawPointer?()
{
  if (!lazy cache variable for type metadata for UnsafeMutableRawPointer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnsafeMutableRawPointer?);
    }
  }
}

void type metadata accessor for __REAnchoringType?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError);
  }

  return result;
}

uint64_t outlined init with copy of __REAnchoringType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __REAnchoringType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of __REAnchoringType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __RKEntityDragTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityDragTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t EngineConfiguration.__allocating_init()()
{
  Default = REEngineConfigurationCreateDefault();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = Default;
  return result;
}

uint64_t EngineConfiguration.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t EngineConfiguration.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t EngineConfiguration.instanceID.getter()
{
  v1 = *(v0 + 16);
  v2 = REEngineConfigurationCopyInstanceID();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void key path getter for EngineConfiguration.instanceID : EngineConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = REEngineConfigurationCopyInstanceID();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t key path setter for EngineConfiguration.instanceID : EngineConfiguration(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a2 + 16);
  String.utf8CString.getter();
  REEngineConfigurationSetInstanceID();
}

uint64_t EngineConfiguration.instanceID.setter()
{
  v1 = *(v0 + 16);
  String.utf8CString.getter();

  REEngineConfigurationSetInstanceID();
}

uint64_t (*EngineConfiguration.instanceID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = REEngineConfigurationCopyInstanceID();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return EngineConfiguration.instanceID.modify;
}

uint64_t EngineConfiguration.instanceID.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = *(a1[2] + 16);
  String.utf8CString.getter();
  if (a2)
  {
    REEngineConfigurationSetInstanceID();
  }

  else
  {

    REEngineConfigurationSetInstanceID();
  }
}

uint64_t (*EngineConfiguration.unsafeUserDataPointer.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  *a1 = REEngineConfigurationGetUserData();
  return EngineConfiguration.unsafeUserDataPointer.modify;
}

uint64_t EngineConfiguration.engineClockMode.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEngineConfigurationGetClockMode();
  *a1 = result;
  return result;
}

uint64_t EngineConfiguration.engineClockMode.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REEngineConfigurationSetClockMode();
}

uint64_t (*EngineConfiguration.engineClockMode.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetClockMode();
  return EngineConfiguration.engineClockMode.modify;
}

uint64_t EngineConfiguration.engineClockMode.modify(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 16);
  return REEngineConfigurationSetClockMode();
}

uint64_t EngineConfiguration.engineServicesToCreate.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEngineConfigurationGetServicesToCreate();
  *a1 = result;
  return result;
}

uint64_t EngineConfiguration.engineServicesToCreate.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REEngineConfigurationSetServicesToCreate();
}

uint64_t (*EngineConfiguration.engineServicesToCreate.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetServicesToCreate();
  return EngineConfiguration.engineServicesToCreate.modify;
}

uint64_t EngineConfiguration.engineServicesToCreate.modify(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 16);
  return REEngineConfigurationSetServicesToCreate();
}

uint64_t EngineConfiguration.engineServicesToUpdate.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEngineConfigurationGetServicesToUpdate();
  *a1 = result;
  return result;
}

uint64_t EngineConfiguration.engineServicesToUpdate.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REEngineConfigurationSetServicesToUpdate();
}

uint64_t (*EngineConfiguration.engineServicesToUpdate.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetServicesToUpdate();
  return EngineConfiguration.engineServicesToUpdate.modify;
}

uint64_t EngineConfiguration.engineServicesToUpdate.modify(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 16);
  return REEngineConfigurationSetServicesToUpdate();
}

uint64_t EngineConfiguration.engineStartupOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEngineConfigurationGetStartupOptions();
  *a1 = result;
  return result;
}

uint64_t EngineConfiguration.engineStartupOptions.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REEngineConfigurationSetStartupOptions();
}

uint64_t (*EngineConfiguration.engineStartupOptions.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetStartupOptions();
  return EngineConfiguration.engineStartupOptions.modify;
}

uint64_t EngineConfiguration.engineStartupOptions.modify(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 16);
  return REEngineConfigurationSetStartupOptions();
}

id EngineConfiguration.engineQueue.getter()
{
  v1 = *(v0 + 16);
  EngineQueue = REEngineConfigurationGetEngineQueue();

  return EngineQueue;
}

void EngineConfiguration.engineQueue.setter(void *a1)
{
  v2 = *(v1 + 16);
  REEngineConfigurationSetEngineQueue();
}

void (*EngineConfiguration.engineQueue.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  *a1 = REEngineConfigurationGetEngineQueue();
  return EngineConfiguration.engineQueue.modify;
}

void EngineConfiguration.engineQueue.modify(uint64_t a1)
{
  v2 = *a1;
  v1 = *(*(a1 + 8) + 16);
  REEngineConfigurationSetEngineQueue();
}

id EngineConfiguration.metalDevice.getter()
{
  v1 = *(v0 + 16);
  Device = REEngineConfigurationGetDevice();

  return Device;
}

uint64_t EngineConfiguration.metalDevice.setter()
{
  v1 = *(v0 + 16);
  REEngineConfigurationSetDevice();

  return swift_unknownObjectRelease();
}

uint64_t (*EngineConfiguration.metalDevice.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  *a1 = REEngineConfigurationGetDevice();
  return EngineConfiguration.metalDevice.modify;
}

uint64_t EngineConfiguration.metalDevice.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  REEngineConfigurationSetDevice();

  return swift_unknownObjectRelease();
}

uint64_t (*EngineConfiguration.useMetal.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetUseMetal();
  return EngineConfiguration.useMetal.modify;
}

uint64_t (*EngineConfiguration.forExportOnly.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetForExportOnly();
  return EngineConfiguration.forExportOnly.modify;
}

uint64_t (*EngineConfiguration.enableVideoSupport.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetEnableVideoSupport();
  return EngineConfiguration.enableVideoSupport.modify;
}

uint64_t (*EngineConfiguration.enablePreloadEngineAssets.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetEnablePreloadEngineAssets();
  return EngineConfiguration.enablePreloadEngineAssets.modify;
}

uint64_t (*EngineConfiguration.enablePreloadMXIAssets.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetEnablePreloadMXIAssets();
  return EngineConfiguration.enablePreloadMXIAssets.modify;
}

uint64_t (*EngineConfiguration.useRealityIO.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetUseRealityIO();
  return EngineConfiguration.useRealityIO.modify;
}

uint64_t (*EngineConfiguration.usePhysicsSceneSystem.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetUsePhysicsSceneSystem();
  return EngineConfiguration.usePhysicsSceneSystem.modify;
}

uint64_t (*EngineConfiguration.assetRuntimeSizeLimit.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  *a1 = REEngineConfigurationGetAssetRuntimeSizeLimitForResourceShareClient();
  return EngineConfiguration.assetRuntimeSizeLimit.modify;
}

uint64_t (*EngineConfiguration.disableRenderGraphCaching.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetDisableRenderGraphCaching();
  return EngineConfiguration.disableRenderGraphCaching.modify;
}

uint64_t EngineConfiguration.engineRenderFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  *a1 = result;
  return result;
}

uint64_t EngineConfiguration.engineRenderFlags.setter(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REEngineConfigurationSetRenderFlags();
}

uint64_t (*EngineConfiguration.engineRenderFlags.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetRenderFlags();
  return EngineConfiguration.engineRenderFlags.modify;
}

uint64_t EngineConfiguration.engineRenderFlags.modify(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 16);
  return REEngineConfigurationSetRenderFlags();
}

uint64_t (*EngineConfiguration.isHostingSharedAudioSimulation.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetIsHostingSharedAudioSimulation();
  return EngineConfiguration.isHostingSharedAudioSimulation.modify;
}

uint64_t (*EngineConfiguration.enableInteractions.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetEnableInteractions();
  return EngineConfiguration.enableInteractions.modify;
}

uint64_t (*EngineConfiguration.enableCommitSynchronously.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetEnableCommitSynchronously();
  return EngineConfiguration.enableCommitSynchronously.modify;
}

void EngineConfiguration.setRenderThreadInitCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_4;
  v4 = _Block_copy(v5);

  REEngineConfigurationSetRenderThreadInitCallback();
  _Block_release(v4);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*EngineConfiguration.renderThreadPriority.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetRenderThreadPriority();
  return EngineConfiguration.renderThreadPriority.modify;
}

uint64_t (*EngineConfiguration.renderFrameOverlap.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEngineConfigurationGetRenderFrameOverlap();
  return EngineConfiguration.renderFrameOverlap.modify;
}

uint64_t EngineConfiguration.clone()()
{
  v1 = *(v0 + 16);
  v2 = REEngineConfigurationClone();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t EngineConfiguration.__allocating_init(_:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  v2 = REEngineConfigurationClone();
  RERelease();

  RERetain();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 PreviewSupportComponent.SelectableSourceInfo.position.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  return result;
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.displayListIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

unint64_t PreviewSupportComponent.SelectableSourceInfo.init(identifier:position:size:displayListIDs:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  a4->n128_u64[0] = result;
  a4->n128_u64[1] = a2;
  a4[1] = a5;
  a4[2] = a6;
  a4[3] = a7;
  a4[4].n128_u64[0] = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys()
{
  v1 = 0x696669746E656469;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 0x4C79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PreviewSupportComponent.SelectableSourceInfo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v10;
  v15 = *(v1 + 3);
  v16 = v1[8];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  v12 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v16;
    v20 = v18;
    v21 = v17;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Double> and conformance SIMD3<A>, &_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v15;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = v13;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt32] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v21 = a2;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  v25 = 1;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Double> and conformance SIMD3<A>, &_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v24;
  v20 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v25 = 2;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  v25 = 3;
  lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt32] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v21;
  *v21 = v22;
  v16[1] = v13;
  v17 = v19;
  *(v16 + 1) = v20;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v16[8] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PreviewSupportComponent.selectableSourceInfos.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreviewSupportComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001C18E0A90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreviewSupportComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreviewSupportComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewSupportComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
  lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A], lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PreviewSupportComponent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
    lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A], lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelectableSceneContentIdentifierComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001C18E0AB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelectableSceneContentIdentifierComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelectableSceneContentIdentifierComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelectableSceneContentIdentifierComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SelectableSceneContentIdentifierComponent.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SelectableSceneContentIdentifierComponent(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy72_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewSupportComponent.SelectableSourceInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for PreviewSupportComponent.SelectableSourceInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized PreviewSupportComponent.SelectableSourceInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C79616C70736964 && a2 == 0xEE00734449747369)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for SpatialStereoImageMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 664))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 312);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialStereoImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 664) = 1;
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
      *(result + 312) = (a2 - 1);
      return result;
    }

    *(result + 664) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void SpatialStereoImageMetadata.init(source:)(CGImageSource *a1@<X0>, float *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  if (CGImageSourceGetCount(a1) <= 1)
  {
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    *v14 = 0;
LABEL_29:
    swift_willThrow();

    return;
  }

  v15 = CGImageSourceCopyProperties(a1, 0);
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_12:
    v27 = "[SpatialImage] Unable to copy image source properties.";
LABEL_13:
    v28 = (v27 - 32) | 0x8000000000000000;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v30 = 0xD000000000000036;
    goto LABEL_14;
  }

  v114[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v17 = v114[0];
  if (!v114[0])
  {
    goto LABEL_12;
  }

  v110 = v13;
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a1);
  v18 = *MEMORY[0x1E696DCF8];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_26;
  }

  v107 = v7;
  v108 = v6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v21, v114);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    v41 = 1;
LABEL_28:
    *v40 = v41;
    goto LABEL_29;
  }

  v24 = v115[0];
  v112 = *(v115[0] + 16);
  if (!v112)
  {
LABEL_26:

    goto LABEL_27;
  }

  v104 = a2;
  v25 = 0;
  v111 = *MEMORY[0x1E696DCD8];
  v26 = *MEMORY[0x1E696DCE8];
  v105 = v2;
  v106 = v26;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v17 = *(v24 + 8 * v25 + 32);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (*(v17 + 16))
    {
      v35 = v32;

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
      v3 = v37;

      if (v3)
      {
        outlined init with copy of Any(*(v17 + 56) + 32 * v36, v114);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_17:

    if (v112 == ++v25)
    {

      v28 = 0x80000001C18E0D80;
      lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
      swift_allocError();
      v30 = 0xD000000000000032;
      goto LABEL_14;
    }
  }

  v38 = v115[0];
  v3 = v115[1];
  if (v38 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v3 != v39)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

LABEL_32:

  v42 = specialized static SpatialPhotoStereoAggressor.aggressors(fromStereoPairGroupDictionary:)(v17);
  v43 = *MEMORY[0x1E696DCA8];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

LABEL_41:

    v28 = 0x80000001C18E0B10;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v30 = 0xD00000000000003FLL;
    goto LABEL_14;
  }

  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
    goto LABEL_41;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v46, v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v3 = v115[0];
  v49 = *MEMORY[0x1E696DCC0];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

LABEL_44:

    v28 = 0x80000001C18E0B50;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v30 = 0xD000000000000040;
    goto LABEL_14;
  }

  v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_44;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v52, v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v111 = v115[0];
  v112 = v42;
  if (v3 == v115[0])
  {

    v27 = "[SpatialImage] Stereo pair image indexes are the same.";
    goto LABEL_13;
  }

LABEL_46:
  v55 = v3;
  v56 = *MEMORY[0x1E696DCB0];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_55;
  }

  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0 || (outlined init with copy of Any(*(v17 + 56) + 32 * v59, v114), (swift_dynamicCast() & 1) == 0))
  {
LABEL_55:
    v70 = a1;
    v71 = CGImageSourceGetPrimaryImageIndex(v70);
    v72 = v105;
    v73 = specialized MonoImageMetadata.init(imageSource:index:location:)(v70, v71);
    v105 = v74;
    v106 = v73;
    v103 = v75;
    v76 = v72;
    if (v72)
    {

      goto LABEL_57;
    }

LABEL_65:
    v82 = *MEMORY[0x1E696DC98];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      v85 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
      v87 = v86;

      if (v87)
      {
        outlined init with copy of Any(*(v17 + 56) + 32 * v85, v114);

        if (swift_dynamicCast())
        {
          v88 = v115[0];
          v89 = a1;
          specialized StereoPairImageMetadata.init(imageSource:atIndex:)(v89, v55);
          if (v76)
          {

            goto LABEL_58;
          }

          memcpy(v117, v118, sizeof(v117));

          a1 = v89;
          specialized StereoPairImageMetadata.init(imageSource:atIndex:)(a1, v111);
          memcpy(v116, v119, sizeof(v116));

          if (*(v118 + 8) == *(v119 + 8))
          {
            if (DWORD2(v118[1]) == DWORD2(v119[1]))
            {
              v121[2] = v118[13];
              v121[3] = v118[14];
              v121[4] = v118[15];
              v121[5] = v118[16];
              v121[0] = v118[11];
              v121[1] = v118[12];
              v120[2] = v119[13];
              v120[3] = v119[14];
              v120[4] = v119[15];
              v120[5] = v119[16];
              v120[0] = v119[11];
              v120[1] = v119[12];
              if (specialized static CameraMath.intrinsicsAreEqual(left:right:toleranceInPixel:)(v121, v120, 6.0))
              {
                static SpatialStereoImageMetadata.extractBaselineAndValidateExtrinsics(leftImageMetadata:rightImageMetadata:)(v118, v119);
                v90 = [objc_opt_self() millimeters];
                v91 = v108;
                Measurement<>.converted(to:)();

                Measurement.value.getter();
                v93 = v92;
                v94 = *(v107 + 8);
                v94(v10, v91);
                if (v93 <= 0.0)
                {

                  outlined destroy of StereoPairImageMetadata(v119);
                  outlined destroy of StereoPairImageMetadata(v118);
                  lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
                  swift_allocError();
                  *v101 = 0xD000000000000050;
                  v101[1] = 0x80000001C18E0C60;
                  swift_willThrow();

                  v94(v110, v108);
                }

                else
                {
                  v95 = v105;
                  v96 = HIDWORD(v105);
                  v94(v110, v108);

                  v98 = v118[18];
                  memcpy(&v115[1], v117, 0x124uLL);
                  memcpy(&v114[1] + 4, v116, 0x124uLL);
                  v100 = v103;
                  v99 = v104;
                  v113 = BYTE4(v103) & 1;
                  v97 = v93;
                  *v104 = v97;
                  v99[1] = v88 / 10000.0;
                  *(v99 + 2) = v98;
                  *(v99 + 2) = PrimaryImageIndex;
                  memcpy(v99 + 6, v115, 0x12CuLL);
                  memcpy(v99 + 81, v114, 0x130uLL);
                  *(v99 + 79) = v106;
                  *(v99 + 640) = v95;
                  *(v99 + 161) = v96;
                  *(v99 + 162) = v100;
                  *(v99 + 652) = v113;
                  *(v99 + 82) = v112;
                }

                return;
              }

              outlined destroy of StereoPairImageMetadata(v119);
              outlined destroy of StereoPairImageMetadata(v118);
              lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
              swift_allocError();
              v41 = 16;
              goto LABEL_28;
            }

            outlined destroy of StereoPairImageMetadata(v119);
            outlined destroy of StereoPairImageMetadata(v118);
            v28 = 0x80000001C18E0C10;
            lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
            swift_allocError();
            v30 = 0xD000000000000044;
          }

          else
          {

            outlined destroy of StereoPairImageMetadata(v119);
            outlined destroy of StereoPairImageMetadata(v118);
            v28 = 0x80000001C18E0BD0;
            lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
            swift_allocError();
            v30 = 0xD00000000000003DLL;
          }

LABEL_14:
          *v29 = v30;
          v29[1] = v28;
          goto LABEL_29;
        }

LABEL_72:

        v28 = 0x80000001C18E0BA0;
        lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
        swift_allocError();
        v30 = 0xD00000000000002CLL;
        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_72;
  }

  v62 = v115[0];
  v63 = *MEMORY[0x1E696DCD0];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_61;
  }

  v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
  v68 = v67;

  if ((v68 & 1) == 0 || (outlined init with copy of Any(*(v17 + 56) + 32 * v66, v114), (swift_dynamicCast() & 1) == 0))
  {
LABEL_61:

    v69 = "[SpatialImage] Missing monoscopic image location.";
LABEL_62:
    v28 = (v69 - 32) | 0x8000000000000000;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v30 = 0xD000000000000031;
    goto LABEL_14;
  }

  if (specialized MonoImageMetadata.Location.init(imageIOString:)() == 4)
  {

    v69 = "[SpatialImage] Unknown monoscopic image location.";
    goto LABEL_62;
  }

  v77 = a1;
  v78 = v105;
  v79 = specialized MonoImageMetadata.init(imageSource:index:location:)(v77, v62);
  v105 = v80;
  v106 = v79;
  v103 = v81;
  v76 = v78;
  if (!v78)
  {
    goto LABEL_65;
  }

LABEL_57:

LABEL_58:
}

unint64_t lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError()
{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

uint64_t static SpatialStereoImageMetadata.extractBaselineAndValidateExtrinsics(leftImageMetadata:rightImageMetadata:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 112);
  v6 = *(a1 + 128);
  v7 = *(a1 + 144);
  v8 = *(a1 + 160);
  v78 = *(a1 + 80);
  v79 = v4;
  v80 = v5;
  v81 = v6;
  v82 = v7;
  v83 = v8;
  simd_quaternion(&v78, &v76);
  v71 = v77;
  v73 = v76;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = *(a2 + 144);
  v13 = *(a2 + 160);
  v78 = *(a2 + 80);
  v79 = v9;
  v80 = v10;
  v81 = v11;
  v82 = v12;
  v83 = v13;
  simd_quaternion(&v78, &v76);
  v14 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(v73, v73), vmulq_f64(v71, v71)));
  v15 = vmulq_n_f64(vmulq_f64(v71, xmmword_1C18A2BC0), v14);
  v16 = vmulq_n_f64(vnegq_f64(v73), v14);
  v17 = vnegq_f64(v16);
  v18 = vextq_s8(v15, vnegq_f64(v15), 8uLL);
  v70 = vextq_s8(v16, v17, 8uLL);
  v72 = v16;
  v74 = v15;
  v69 = vextq_s8(v17, v16, 8uLL);
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v76, 1), v18, v76.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v16, v77, 1), v69, v77.f64[0]));
  v20 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v17, v76, 1), v70, v76.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v15, v77, 1), v18, v77.f64[0]));
  v21 = atan2(sqrt(vmulq_f64(v20, v20).f64[0] + vaddvq_f64(vmulq_f64(v19, v19))), v20.f64[1]);
  *&v21 = v21 + v21;
  v22 = (fabsf(*&v21) * 180.0) / 3.1416;
  if (v22 > 2.0)
  {
    v23 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v24 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v78 = v26;
      *v25 = 134218242;
      *(v25 + 4) = v22;
      *(v25 + 12) = 2080;
      LODWORD(v76.f64[0]) = 0x40000000;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v78);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1C1358000, v24, v23, "[SpatialImage] Error: Stereo Views are not parallel. Angle difference: %f, error threshold: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C6902A30](v26, -1, -1);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    v30 = 8;
LABEL_13:
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    *v59 = v30;
    return swift_willThrow();
  }

  if (v22 > 0.5)
  {
    v31 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v32 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v78 = v34;
      *v33 = 134218242;
      *(v33 + 4) = v22;
      *(v33 + 12) = 2080;
      LODWORD(v76.f64[0]) = 1056964608;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v78);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1C1358000, v32, v31, "[SpatialImage] Stereo Views are not parallel. Angle difference: %f, tolerance: %s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1C6902A30](v34, -1, -1);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }
  }

  v38 = *(a2 + 48);
  v39 = *(a1 + 48);
  v40 = v38.f64[0] - v39.f64[0];
  v41 = vsubq_f64(v38, v39);
  v39.f64[0] = *(a2 + 64) - *(a1 + 64);
  v42 = vmulq_f64(v74, xmmword_1C18A2BC0);
  v43 = vextq_s8(v42, vnegq_f64(v42), 8uLL);
  v44 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v42, v41, 1), v43, v40), v70, v39.f64[0]);
  v45 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v72, v41, 1), v69, v40), v43, v39.f64[0]);
  v46 = vnegq_f64(v44);
  v47 = vextq_s8(v45, vnegq_f64(v45), 8uLL);
  v48 = vmlaq_n_f64(vmulq_laneq_f64(v45, v72, 1), v47, v72.f64[0]);
  v49 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v45, v74, 1), v47, v74.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v46, v72, 1), vextq_s8(v44, v46, 8uLL), v72.f64[0]));
  v75 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v44, v74, 1), vextq_s8(v46, v44, 8uLL), v74.f64[0]), v48);
  v50 = atan(sqrt(vaddq_f64(vdupq_laneq_s64(vmulq_f64(v75, v75), 1), vmulq_f64(v49, v49)).f64[0]) / v75.f64[0]);
  v51 = (v50 * 180.0) / 3.1416;
  if (v51 > 10.0)
  {
    v52 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v53 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v78 = v55;
      *v54 = 136315138;
      *v76.f64 = v51;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v78);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1C1358000, v53, v52, "[SpatialImage] Error: Significant deviation of camera separation off axis of left camera's x-axis, degrees off axis: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1C6902A30](v55, -1, -1);
      MEMORY[0x1C6902A30](v54, -1, -1);
    }

    v30 = 9;
    goto LABEL_13;
  }

  if (v51 > 2.5)
  {
    v61 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v62 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v62, v61))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v78 = v64;
      *v63 = 136315138;
      *v76.f64 = v51;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v78);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1C1358000, v62, v61, "[SpatialImage] Significant deviation of camera separation off axis of left camera's x-axis, degrees off axis: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1C6902A30](v64, -1, -1);
      MEMORY[0x1C6902A30](v63, -1, -1);
    }
  }

  v68 = [objc_opt_self() meters];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSUnitLength, 0x1E696B058);
  return Measurement.init(value:unit:)();
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError;
  if (!lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError;
  if (!lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError);
  }

  return result;
}

double *simd_quaternion@<X0>(double *result@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 2);
  v4 = *(result + 2);
  v5 = *(result + 6);
  v6 = result[5];
  v7 = *(result + 8);
  v8 = *(result + 5);
  v9 = *result + v6 + *&v8;
  if (v9 >= 0.0)
  {
    v15 = sqrt(v9 + 1.0);
    v16 = v15 + v15;
    v17.f64[0] = 1.0 / v16;
    v26 = vmulq_n_f64(vsubq_f64(vzip1q_s64(v5, v7), vextq_s8(v7, v2, 8uLL)), 1.0 / v16);
    v17.f64[1] = v16;
    __asm { FMOV            V1.2D, #0.25 }

    _Q1.f64[0] = *(&v3 + 1) - *&v4;
    v28 = vmulq_f64(v17, _Q1);
  }

  else if (*&v3 < v6 || *&v3 < *&v8)
  {
    v11 = 1.0 - *&v3;
    if (v6 >= *&v8)
    {
      v29 = sqrt(v6 + v11 - *&v8);
      v30 = v29 + v29;
      v31.f64[0] = 1.0 / v30;
      v28 = vmulq_n_f64(vextq_s8(vaddq_f64(v7, vdupq_lane_s64(v5.i64[0], 0)), vsubq_f64(v7, v2), 8uLL), 1.0 / v30);
      v31.f64[1] = v30;
      __asm { FMOV            V1.2D, #0.25 }

      _Q1.f64[0] = *(&v3 + 1) + *&v4;
      v26 = vmulq_f64(v31, _Q1);
    }

    else
    {
      v12 = sqrt(v11 - v6 + *&v8);
      v13.f64[0] = v12 + v12;
      v26 = vmulq_n_f64(vaddq_f64(vzip1q_s64(v2, v5), v7), 1.0 / v13.f64[0]);
      v13.f64[1] = *(&v3 + 1) - *&v4;
      __asm { FMOV            V0.2D, #0.25 }

      _Q0.f64[1] = 1.0 / v13.f64[0];
      v28 = vmulq_f64(v13, _Q0);
    }
  }

  else
  {
    v19 = sqrt(*&v3 + 1.0 - v6 - *&v8);
    v20.f64[0] = v19 + v19;
    v20.f64[1] = *(&v3 + 1) + *&v4;
    __asm { FMOV            V2.2D, #0.25 }

    _Q2.f64[1] = 1.0 / v20.f64[0];
    v25 = vdupq_lane_s64(v5.i64[0], 0);
    v26 = vmulq_f64(v20, _Q2);
    *&v27.f64[0] = *&vaddq_f64(v2, v7);
    v27.f64[1] = vsubq_f64(v25, v7).f64[1];
    v28 = vmulq_n_f64(v27, 1.0 / v20.f64[0]);
  }

  *a2 = v26;
  a2[1] = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type Degrees and conformance Degrees()
{
  result = lazy protocol witness table cache variable for type Degrees and conformance Degrees;
  if (!lazy protocol witness table cache variable for type Degrees and conformance Degrees)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Degrees and conformance Degrees);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Degrees and conformance Degrees;
  if (!lazy protocol witness table cache variable for type Degrees and conformance Degrees)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Degrees and conformance Degrees);
  }

  return result;
}

uint64_t __REAnchoringType.createAnchorEntity(realityAssetFileName:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AnchoringComponent.Target(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __REAnchoringType();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of __REAnchoringType(v2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AnchorEntity();
      swift_allocObject();
      return AnchorEntity.init(_:)(v8);
    }

    (*(v10 + 32))(v13, v17, v9);
    v22 = __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(v13, a1, a2, 0);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v17;
      v24 = v17[1];
      v25 = v19;
      return __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:)(&v25, &v24);
    }

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
    (*(v10 + 32))(v13, v17, v9);
    v22 = __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(v13, a1, a2, 1);
    (*(v10 + 8))(v13, v9);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    (*(*(v23 - 8) + 8))(v17 + v21, v23);
  }

  return v22;
}

uint64_t outlined init with copy of __REAnchoringType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAnchoringType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  if (*a1)
  {
    if ((qword_1F40BD1C0 & ~v8) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = byte_1F40BD1C8;
    }

    v11 = qword_1F40BD1D0 & ~v8;
    if ((byte_1F40BD1D8 & ~v10) != 0 && v11 == 0)
    {
      v13 = byte_1F40BD1D8;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v10;
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_41:
    v28 = -1;
    goto LABEL_42;
  }

  v14 = -1;
  if (!v9)
  {
    goto LABEL_41;
  }

LABEL_12:
  if ((qword_1F40BD200 & ~v9) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = unk_1F40BD208;
  }

  if ((unk_1F40BD218 & ~v15) != 0 && (qword_1F40BD210 & ~v9) == 0)
  {
    v17 = unk_1F40BD218;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v15;
  if ((unk_1F40BD228 & ~v18) != 0 && (qword_1F40BD220 & ~v9) == 0)
  {
    v20 = unk_1F40BD228;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v18;
  if ((unk_1F40BD238 & ~v21) != 0 && (qword_1F40BD230 & ~v9) == 0)
  {
    v23 = unk_1F40BD238;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | v21;
  v25 = qword_1F40BD240 & ~v9;
  if ((unk_1F40BD248 & ~v24) != 0 && v25 == 0)
  {
    v27 = unk_1F40BD248;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | v24;
LABEL_42:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:));
  *v7 = v14;
  *(v7 + 1) = v28;
  *(v7 + 2) = v29;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v7);
}

uint64_t __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[3] = a4;
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = URL.lastPathComponent.getter();
  v12 = v11;
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, &v23);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v14 = static __RealityFileURLResolver.instances;
  v15 = v24;
  v16 = v25;
  v17 = __swift_project_boxed_opaque_existential_1(&v23, v24);

  specialized AssetServiceScopedRegistry.instance(for:)(v17, v14, v15, v16);

  __swift_destroy_boxed_opaque_existential_1(&v23);
  *&v23 = 0x2F737465737361;
  *(&v23 + 1) = 0xE700000000000000;
  MEMORY[0x1C68F3410](v10, v12);

  v18 = v23;
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v23 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](a2, a3);
  v19 = *(&v23 + 1);
  *v9 = v23;
  *(v9 + 1) = v19;
  *(v9 + 1) = v18;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  v20 = AnchorEntity.init(_:)(v9);

  return v20;
}

uint64_t closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 16);
  v14 = String.utf8CString.getter();
  v15 = a8(v13, v14 + 32, a1, a2, a3, a4);

  return v15;
}

uint64_t MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  return specialized MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:customNames:)(a1, a2, a3, v6);
}

Swift::Void __swiftcall MeshDefinition.setIndices(_:)(Swift::OpaquePointer a1)
{
  MeshDefinition.setIndices(_:)(a1._rawValue, _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt16V_Tt0g5, MEMORY[0x1E6998A20]);
}

{
  MeshDefinition.setIndices(_:)(a1._rawValue, _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5, MEMORY[0x1E6998A28]);
}

uint64_t _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt16V_Tt0g5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = 2 * a2;
      if (2 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, (v2 + result));
        }

        else
        {
          v4 = type metadata accessor for __DataStorage();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 33;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, (v2 + result));
        }

        else
        {
          v4 = type metadata accessor for __DataStorage();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void MeshDefinition.setIndices(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, Class))
{
  v5 = *(v3 + 16);
  v6 = a2(a1 + 32, *(a1 + 16));
  v8 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v8);
  a3(v5, isa);
}

void MeshDefinition.setAttribute(_:data:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();
}

uint64_t MeshDefinition.setAttribute(_:name:data:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();
}

uint64_t MeshDefinition.setAttribute(_:positions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, void), void (*a5)(uint64_t, void, __int128 *, uint64_t *))
{
  v10 = *(a1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *(a2 + 16);
  v13 = a4(v10, a2 + 32, v12, 0, 0);
  v21 = specialized Data.init(count:)(v13);
  v22 = v14;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v21, a5, v11, a2 + 32, v12, a2);
  v15 = v21;
  v16 = v22;

  v17 = *(v5 + 16);
  v18 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v15, v16);
}

uint64_t MeshDefinition.setAttribute(_:colors:)(uint64_t a1, uint64_t a2)
{
  return MeshDefinition.setAttribute(_:positions:)(a1, a2, &unk_1F40F3220, MEMORY[0x1E69989C0], partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:));
}

{
  return MeshDefinition.setAttribute(_:positions:)(a1, a2, &unk_1F40F3248, MEMORY[0x1E69989C8], partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:));
}

uint64_t MeshDefinition.setAttribute(_:custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989D0], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989D8], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989E0], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

uint64_t MeshDefinition.setAttribute(_:custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void), void (*a6)(uint64_t, void, __int128 *, uint64_t *))
{
  v22[2] = a1;
  v22[3] = a3;
  v22[4] = a4;
  v11 = *(a2 + 16);
  v12 = *(a1 + 16);
  v13 = String.utf8CString.getter();
  v14 = a5(v12, v13 + 32, a2 + 32, v11, 0, 0);

  v23 = specialized Data.init(count:)(v14);
  v24 = v15;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v23, a6, v22, a2 + 32, v11, a2);
  v16 = v23;
  v17 = v24;
  v18 = *(v6 + 16);
  v19 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();

  return outlined consume of Data._Representation(v16, v17);
}

uint64_t MeshModelDefinition.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t MeshModelDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t MeshModelDefinition.__allocating_init()()
{
  v0 = REMeshModelDefinitionCreate();
  type metadata accessor for MeshModelDefinition();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

void key path getter for MeshModelDefinition.name : MeshModelDefinition(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = REMeshModelDefinitionCopyName();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t key path setter for MeshModelDefinition.name : MeshModelDefinition(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a2 + 16);
  String.utf8CString.getter();
  REMeshModelDefinitionSetName();
}

uint64_t MeshModelDefinition.name.getter()
{
  v1 = *(v0 + 16);
  v2 = REMeshModelDefinitionCopyName();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t MeshModelDefinition.name.setter()
{
  v1 = *(v0 + 16);
  String.utf8CString.getter();

  REMeshModelDefinitionSetName();
}

uint64_t (*MeshModelDefinition.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = REMeshModelDefinitionCopyName();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return MeshModelDefinition.name.modify;
}

uint64_t MeshModelDefinition.name.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = *(a1[2] + 16);
  String.utf8CString.getter();
  if (a2)
  {
    REMeshModelDefinitionSetName();
  }

  else
  {

    REMeshModelDefinitionSetName();
  }
}

Swift::Void __swiftcall MeshModelDefinition.append(levelOfDetail:minScreenArea:maxViewDepth:)(Swift::Int levelOfDetail, Swift::Float minScreenArea, Swift::Float maxViewDepth)
{
  if (levelOfDetail < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(levelOfDetail))
  {
    v4 = *(v3 + 16);
    goto LABEL_6;
  }

  __break(1u);
LABEL_6:
  JUMPOUT(0x1C68FC2A0);
}

uint64_t MeshModelDefinition.append(triangles:materialIndex:levelOfDetail:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    v4 = *(v3 + 16);
    v5 = *(result + 16);
    return REMeshModelDefinitionAppendTrianglesWithName();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MeshModelDefinition.append(triangles:materialIndex:levelOfDetail:name:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 | a2) < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 16);
  v5 = *(result + 16);
  String.utf8CString.getter();
  REMeshModelDefinitionAppendTrianglesWithName();
}

void MeshInstanceDefinition.__allocating_init(name:modelIndex:transform:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    String.utf8CString.getter();

    v3 = REMeshInstanceDefinitionCreate();

    type metadata accessor for MeshInstanceDefinition();
    *(swift_allocObject() + 16) = v3;
    return;
  }

  __break(1u);
}

uint64_t MeshAttributeDescriptor.makeData(jointIndices:weights:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  v6 = MEMORY[0x1C68FBD90](*(v2 + 16), a1 + 32, a2 + 32, v3, 0, 0);
  v9[0] = specialized Data.init(count:)(v6);
  v9[1] = v7;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v9, v2, a1 + 32, v3, a2 + 32, v3, a1);
  return v9[0];
}

uint64_t MeshDefinition.setAttribute(_:skinJointIndices:skinWeights:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MeshAttributeDescriptor.makeData(jointIndices:weights:)(a2, a3);
  v8 = v7;
  v9 = *(v4 + 16);
  v10 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v6, v8);
}

uint64_t MeshDefinition.setAttribute(_:jointInfluences:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1C68FBDA0](*(a1 + 16), a2 + 32, v5, 0, 0);
  v14 = specialized Data.init(count:)(v6);
  v15 = v7;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v14, a1, a2 + 32, v5, a2);
  v8 = v14;
  v9 = v15;
  v10 = *(v2 + 16);
  v11 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v8, v9);
}

char *MeshDefinition.setAttribute(_:influencesPerVert:vertCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3 & ~(a3 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (a3 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v8 = result;
  v25 = v3;
  v9 = a1;
  if (a3)
  {
    v10 = 1;
    while (1)
    {
      v11 = v10 * a2;
      if ((v10 * a2) >> 64 != (v10 * a2) >> 63)
      {
        break;
      }

      if (v11 < 0xFFFFFFFF80000000)
      {
        goto LABEL_14;
      }

      if (v11 > 0x7FFFFFFF)
      {
        goto LABEL_15;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 4 * v13 + 32) = v11;
      if (++v10 - a3 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v14 = v9;
  v15 = *(v9 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = *(v8 + 16);
  v18 = MEMORY[0x1C68FBDD0](v15, v8 + 32, v17, 0, 0);
  v26 = specialized Data.init(count:)(v18);
  v27 = v19;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v26, implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(skinInfluenceEndIndices:)partial apply, v16, v8 + 32, v17, v8);
  v20 = v26;
  v21 = v27;

  v22 = *(v25 + 16);
  v23 = *(v14 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v20, v21);
}

Swift::Void __swiftcall MeshDefinition.setSkeletonName(_:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  String.utf8CString.getter();
  REMeshDefinitionSetSkeletonName();
}

uint64_t static MeshAttributeDescriptor.positionFloat3.getter(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MeshAttributeDescriptor();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t MeshDefinition.setAttribute(_:blendShapeOffsets:name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1C68FBD60](v5, a2 + 32, v7, 0, 0);
  v16 = specialized Data.init(count:)(v8);
  v17 = v9;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v16, partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(blendShapeOffsets:), v6, a2 + 32, v7, a2);
  v10 = v16;
  v11 = v17;

  v12 = *(v2 + 16);
  v13 = *(a1 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();

  return outlined consume of Data._Representation(v10, v11);
}

uint64_t *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  v33 = *MEMORY[0x1E69E9840];
  v11 = *result;
  v10 = result[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      if (a3)
      {
        if (a5)
        {
          MEMORY[0x1C68FBD90](*(a2 + 16), a3, a5, *(a7 + 16), &v32, 0);

          goto LABEL_29;
        }

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    outlined consume of Data._Representation(v11, v10);
    *&v32 = v11;
    *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *v9 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v15 = *(v32 + 16);
    v16 = *(v32 + 24);
    if (!__DataStorage._bytes.getter())
    {
LABEL_37:

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!__OFSUB__(v15, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v16, v15))
      {
        result = MEMORY[0x1C68F2040]();
        if (!a3)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (!a5)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(a7 + 16);
        MEMORY[0x1C68FBD90](*(a2 + 16));

        v18 = *(&v32 + 1) | 0x8000000000000000;
        *v9 = v32;
LABEL_28:
        v9[1] = v18;
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v12)
  {

    result = outlined consume of Data._Representation(v11, v10);
    *&v32 = v11;
    WORD4(v32) = v10;
    BYTE10(v32) = BYTE2(v10);
    BYTE11(v32) = BYTE3(v10);
    BYTE12(v32) = BYTE4(v10);
    BYTE13(v32) = BYTE5(v10);
    BYTE14(v32) = BYTE6(v10);
    if (a3)
    {
      if (a5)
      {
        v13 = *(a7 + 16);
        MEMORY[0x1C68FBD90](*(a2 + 16));
        v14 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);

        *v9 = v32;
        v9[1] = v14;
LABEL_29:

        v27 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v19 = v10 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v11, v10);
  outlined consume of Data._Representation(v11, v10);
  *v9 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v21 < v11)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v11, __DataStorage._offset.getter()))
    {
LABEL_35:
      __break(1u);
    }

    v22 = type metadata accessor for __DataStorage();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v19 = v25;
    v21 = v11 >> 32;
  }

  if (v21 < v11)
  {
    goto LABEL_31;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (__OFSUB__(v11, __DataStorage._offset.getter()))
  {
    goto LABEL_33;
  }

  result = MEMORY[0x1C68F2040]();
  if (!a3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a5)
  {
    v26 = *(a7 + 16);
    MEMORY[0x1C68FBD90](*(a2 + 16));
    swift_bridgeObjectRelease_n();

    v18 = v19 | 0x4000000000000000;
    *v9 = v11;
    goto LABEL_28;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  v29 = *MEMORY[0x1E69E9840];
  v9 = *result;
  v8 = result[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v28 + 7) = 0;
      *&v28 = 0;
      if (a3)
      {
        MEMORY[0x1C68FBDA0](*(a2 + 16), a3, *(a5 + 16), &v28, 0);

        goto LABEL_24;
      }

      goto LABEL_33;
    }

    outlined consume of Data._Representation(v9, v8);
    *&v28 = v9;
    *(&v28 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (!__DataStorage._bytes.getter())
    {
LABEL_32:

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v13, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v14, v13))
      {
        result = MEMORY[0x1C68F2040]();
        if (!a3)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v15 = *(a5 + 16);
        MEMORY[0x1C68FBDA0](*(a2 + 16));

        v16 = *(&v28 + 1) | 0x8000000000000000;
        *v7 = v28;
LABEL_21:
        v7[1] = v16;
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v10)
  {

    outlined consume of Data._Representation(v9, v8);
    *&v28 = v9;
    WORD4(v28) = v8;
    BYTE10(v28) = BYTE2(v8);
    BYTE11(v28) = BYTE3(v8);
    BYTE12(v28) = BYTE4(v8);
    BYTE13(v28) = BYTE5(v8);
    BYTE14(v28) = BYTE6(v8);
    if (a3)
    {
      MEMORY[0x1C68FBDA0](*(a2 + 16), a3, *(a5 + 16), &v28, BYTE6(v8));
      v11 = v28;
      v12 = DWORD2(v28) | ((WORD6(v28) | (BYTE14(v28) << 16)) << 32);

      *v7 = v11;
      v7[1] = v12;
LABEL_24:

      v25 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_32;
  }

  v17 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v9, v8);
  *v7 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v9 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v19 < v9)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_30:
      __break(1u);
    }

    v20 = type metadata accessor for __DataStorage();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v17 = v23;
    v19 = v9 >> 32;
  }

  if (v19 < v9)
  {
    goto LABEL_26;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (__OFSUB__(v9, __DataStorage._offset.getter()))
  {
    goto LABEL_28;
  }

  result = MEMORY[0x1C68F2040]();
  if (a3)
  {
    v24 = *(a5 + 16);
    MEMORY[0x1C68FBDA0](*(a2 + 16));
    swift_bridgeObjectRelease_n();

    v16 = v17 | 0x4000000000000000;
    *v7 = v9;
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t *_s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C24LL6values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(uint64_t *result, void (*a2)(uint64_t, void, __int128 *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v41 = *MEMORY[0x1E69E9840];
  v9 = *result;
  v8 = result[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v40 + 7) = 0;
      *&v40 = 0;
      if (a4)
      {
        a2(a4, *(a6 + 16), &v40, 0);
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    outlined consume of Data._Representation(v9, v8);
    *&v40 = v9;
    *(&v40 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(&v40 + 1);
    v15 = *(v40 + 16);
    v14 = *(v40 + 24);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_38:

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    v19 = v15 - v18;
    if (!__OFSUB__(v15, v18))
    {
      v20 = __OFSUB__(v14, v15);
      v21 = v14 - v15;
      if (!v20)
      {
        result = MEMORY[0x1C68F2040]();
        if (a4)
        {
          if (result >= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = result;
          }

          a2(a4, *(a6 + 16), (v19 + v17), v22);

          *v7 = v40;
          v7[1] = v13 | 0x8000000000000000;
          goto LABEL_30;
        }

        goto LABEL_41;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    outlined consume of Data._Representation(v9, v8);
    *&v40 = v9;
    WORD4(v40) = v8;
    BYTE10(v40) = BYTE2(v8);
    BYTE11(v40) = BYTE3(v8);
    BYTE12(v40) = BYTE4(v8);
    BYTE13(v40) = BYTE5(v8);
    BYTE14(v40) = BYTE6(v8);
    if (a4)
    {
      a2(a4, *(a6 + 16), &v40, BYTE6(v8));
      v11 = v40;
      v12 = DWORD2(v40) | ((WORD6(v40) | (BYTE14(v40) << 16)) << 32);

      *v7 = v11;
      v7[1] = v12;
LABEL_30:

      v35 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

  v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v9, v8);
  *v7 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  v24 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v24 < v9)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_36:
      __break(1u);
    }

    v25 = type metadata accessor for __DataStorage();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v23 = v28;
  }

  v29 = v24 < v9;
  v30 = v24 - v9;
  if (v29)
  {
    goto LABEL_32;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = result;
  v32 = __DataStorage._offset.getter();
  v33 = v9 - v32;
  if (__OFSUB__(v9, v32))
  {
    goto LABEL_34;
  }

  result = MEMORY[0x1C68F2040]();
  if (a4)
  {
    if (result >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = result;
    }

    a2(a4, *(a6 + 16), (v31 + v33), v34);
    swift_bridgeObjectRelease_n();

    *v7 = v9;
    v7[1] = v23 | 0x4000000000000000;
    goto LABEL_30;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:customNames:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_16:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_3:
  v31 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_29;
  }

  v8 = v31;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = *(MEMORY[0x1C68F41F0](i, a1) + 16);
      swift_unknownObjectRelease();
      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      *(v31 + 16) = v12 + 1;
      *(v31 + 8 * v12 + 32) = v10;
    }
  }

  else
  {
    v13 = *(v31 + 16);
    v14 = 32;
    do
    {
      v15 = *(*(a1 + v14) + 16);
      v16 = *(v31 + 24);
      if (v13 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v13 + 1, 1);
      }

      *(v31 + 16) = v13 + 1;
      *(v31 + 8 * v13 + 32) = v15;
      v14 += 8;
      ++v13;
      --v6;
    }

    while (v6);
  }

LABEL_17:
  v17 = *(v8 + 16);
  result = REMeshAttributesDescriptorCreate();
  v18 = 0;
  v19 = 1 << *(a4 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a4 + 64);
  for (j = (v19 + 63) >> 6; v21; result = )
  {
    v23 = v18;
LABEL_25:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = v24 | (v23 << 6);
    v26 = *(*(a4 + 48) + 8 * v25);
    v27 = (*(a4 + 56) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    String.utf8CString.getter();
    REMeshAttributeDescriptorArraySetCustomName();
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= j)
    {

      v30 = REMeshDefinitionCreateWithAttributes();
      RERelease();

      type metadata accessor for MeshDefinition();
      result = swift_allocObject();
      *(result + 16) = v30;
      return result;
    }

    v21 = *(a4 + 64 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:)()
{
  v1 = *(v0 + 16);
  JUMPOUT(0x1C68FBD70);
}

{
  v1 = *(v0 + 16);
  JUMPOUT(0x1C68FBD80);
}

uint64_t partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989D0]);
}

{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989D8]);
}

{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989E0]);
}

uint64_t dispatch thunk of MeshDefinition.setIndices(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

uint64_t dispatch thunk of MeshDefinition.setAttribute(_:colors:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of MeshDefinition.setAttribute(_:custom:name:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t *_s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C24LL6values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(uint64_t *a1, void (*a2)(uint64_t, void, __int128 *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x1E69E9840];
  result = sub_1C1360160(a1, a2, a3, a4, a5, a6);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 BillboardAction.Transition.timingFunction.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  v3 = v1[2].n128_u8[4];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.Transition.timingFunction.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u8[4];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u32[0] = v2;
  v1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.Transition.init(duration:timingFunction:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  a2->n128_f64[0] = a3;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u32[0] = v3;
  a2[2].n128_u8[4] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BillboardAction.Transition.CodingKeys()
{
  if (*v0)
  {
    result = 0x7546676E696D6974;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BillboardAction.Transition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7546676E696D6974 && a2 == 0xEE006E6F6974636ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BillboardAction.Transition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BillboardAction.Transition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BillboardAction.Transition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = v1[2];
  v17 = v1[3];
  v11 = *(v1 + 8);
  v15 = *(v1 + 36);
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v19 = v10;
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v18 = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

uint64_t BillboardAction.Transition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17[15] = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v13 = v19;
    v14 = v20;
    v15 = v18;
    *a2 = v12;
    *(a2 + 16) = v15;
    *(a2 + 32) = v13;
    *(a2 + 36) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 BillboardAction.transitionIn.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  v3 = v1[2].n128_u8[4];
  a1->n128_u64[0] = v1->n128_u64[0];
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionIn.setter(__n128 *a1)
{
  v2 = a1[2].n128_u32[0];
  v3 = a1[2].n128_u8[4];
  v1->n128_u64[0] = a1->n128_u64[0];
  result = a1[1];
  v1[1] = result;
  v1[2].n128_u32[0] = v2;
  v1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionOut.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u32[0];
  v3 = v1[5].n128_u8[4];
  a1->n128_u64[0] = v1[3].n128_u64[0];
  result = v1[4];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionOut.setter(__n128 *a1)
{
  v2 = a1[2].n128_u32[0];
  v3 = a1[2].n128_u8[4];
  v1[3].n128_u64[0] = a1->n128_u64[0];
  result = a1[1];
  v1[4] = result;
  v1[5].n128_u32[0] = v2;
  v1[5].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.init(transitionIn:transitionOut:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = a2->n128_u64[0];
  v6 = a2[2].n128_u32[0];
  v7 = a2[2].n128_u8[4];
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v3;
  *(a3 + 36) = v4;
  *(a3 + 48) = v5;
  result = a2[1];
  *(a3 + 64) = result;
  *(a3 + 80) = v6;
  *(a3 + 84) = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BillboardAction.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xED000074754F6E6FLL;
  }

  else
  {
    v2 = 0xEC0000006E496E6FLL;
  }

  if (*a2)
  {
    v3 = 0xED000074754F6E6FLL;
  }

  else
  {
    v3 = 0xEC0000006E496E6FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BillboardAction.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BillboardAction.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BillboardAction.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BillboardAction.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BillboardAction.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BillboardAction.CodingKeys(void *a1@<X8>)
{
  v2 = 0xEC0000006E496E6FLL;
  if (*v1)
  {
    v2 = 0xED000074754F6E6FLL;
  }

  *a1 = 0x697469736E617274;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BillboardAction.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BillboardAction.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BillboardAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BillboardAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Float __swiftcall BillboardAction.transitionInValue(initialValue:normalizedTime:eventDuration:)(Swift::Float initialValue, Swift::Double normalizedTime, Swift::Double eventDuration)
{
  if (normalizedTime > 0.0)
  {
    v4 = initialValue;
    initialValue = 1.0;
    if (normalizedTime <= 1.0 && eventDuration > 0.0)
    {
      v5 = *(v3 + 16);
      v6 = normalizedTime / (*v3 / eventDuration);
      if (v6 <= 0.0)
      {
        v6 = 0.0;
      }

      v11 = *(v3 + 16);
      if (v6 <= 1.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 1.0;
      }

      v12 = *(v3 + 32);
      v13 = *(v3 + 36);
      AnimationTimingFunction.coreEasingFunction.getter();
      if (*(v8 + 16))
      {
        v9 = *(v8 + 16);
        REEasingFunctionEvaluateEx();
        v7 = v10;
      }

      return v7 + ((1.0 - v7) * v4);
    }
  }

  return initialValue;
}

Swift::Float __swiftcall BillboardAction.transitionOutValue(initialValue:normalizedTime:eventDuration:)(Swift::Float initialValue, Swift::Double normalizedTime, Swift::Double eventDuration)
{
  if (normalizedTime < 1.0)
  {
    v4 = initialValue;
    initialValue = 1.0;
    if (normalizedTime >= 0.0 && eventDuration > 0.0)
    {
      v5 = *(v3 + 64);
      v6 = (*(v3 + 48) / eventDuration + normalizedTime + -1.0) / (*(v3 + 48) / eventDuration);
      if (v6 <= 0.0)
      {
        v6 = 0.0;
      }

      v11 = *(v3 + 64);
      if (v6 <= 1.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 1.0;
      }

      v12 = *(v3 + 80);
      v13 = *(v3 + 84);
      AnimationTimingFunction.coreEasingFunction.getter();
      if (*(v8 + 16))
      {
        v9 = *(v8 + 16);
        REEasingFunctionEvaluateEx();
        v7 = v10;
      }

      return (1.0 - v7) + (v7 * v4);
    }
  }

  return initialValue;
}

uint64_t BillboardAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMR);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v9 = v1[2];
  v8 = v1[3];
  v10 = *(v1 + 8);
  v28 = *(v1 + 36);
  v11 = v1[6];
  v12 = v1[8];
  v19 = v1[9];
  v20 = v12;
  LODWORD(v12) = *(v1 + 20);
  v17 = *(v1 + 84);
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v27 = v28;
  v29 = 0;
  lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition();
  v14 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v23 = v11;
    v24 = v20;
    v25 = v19;
    v26 = v18;
    v27 = v17;
    v29 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v22 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition()
{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition);
  }

  return result;
}

uint64_t BillboardAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v22 = 0;
    lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v23;
    v21 = *(&v24 + 1);
    v12 = v24;
    v19 = v26;
    v20 = v25;
    v22 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v13 = v23;
    v14 = v25;
    v15 = v26;
    *a2 = v11;
    v16 = v21;
    *(a2 + 16) = v12;
    *(a2 + 24) = v16;
    LOBYTE(v16) = v19;
    *(a2 + 32) = v20;
    *(a2 + 36) = v16;
    *(a2 + 48) = v13;
    *(a2 + 64) = v24;
    *(a2 + 80) = v14;
    *(a2 + 84) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy85_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 85))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 36);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BillboardAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy37_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardAction.Transition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 37))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 36);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BillboardAction.Transition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

void *BillboardActionHandler.actionStarted(event:)(void *__src)
{
  result = memcpy(v36, __src, sizeof(v36));
  v3 = v36[13];
  if (v36[13])
  {
    v27[0] = v1;

    specialized ActionEvent.animationState.getter(&v30);
    if (v31)
    {
      v28 = v3;
      outlined init with take of ForceEffectBase(&v30, v33);
      v4 = v34;
      v5 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v6 = *(v5 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v8 = type metadata accessor for Optional();
      v27[1] = v27;
      v9 = *(v8 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v12 = v27 - v11;
      v6(v4, v5);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
      {

        (*(v9 + 8))(v12, v8);
      }

      else
      {
        v31 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
        (*(v13 + 32))(boxed_opaque_existential_1, v12, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
        if (swift_dynamicCast())
        {
          v15 = *(v28 + 16);

          if (REEntityGetComponent())
          {
            REBillboardComponentGetBlendFactor();
            v17 = v16;

            v18 = v27[0];
            *v27[0] = v17;
            *(v18 + 4) = 0;

            specialized Entity.ComponentSet.set<A>(_:)(v19, v17);
          }

          else
          {

            *&v30 = 0;
            *(&v30 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(60);
            MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
            v29 = &type metadata for BillboardAction;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
            v20 = String.init<A>(describing:)();
            MEMORY[0x1C68F3410](v20);

            MEMORY[0x1C68F3410](0xD00000000000002ELL, 0x80000001C18E0F50);
            v21 = v30;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            __swift_project_value_buffer(v22, static AnimationLogger.logger);

            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              *&v30 = v26;
              *v25 = 136315138;
              *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, *(&v21 + 1), &v30);
              _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v26);
              MEMORY[0x1C6902A30](v26, -1, -1);
              MEMORY[0x1C6902A30](v25, -1, -1);
            }
          }
        }

        else
        {
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {

      return outlined destroy of BodyTrackingComponent?(&v30, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t specialized Entity.ComponentSet.set<A>(_:)(uint64_t a1, float a2)
{
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v23)
  {
    swift_unknownObjectRelease();
    v4 = *(a1 + 16);
    result = REEntityGetComponent();
    if (result)
    {
      REBillboardComponentGetBlendFactor();
      v7 = v6;
      v8 = MEMORY[0x1E69E7CC0];
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);
      v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

      KeyPath = swift_getKeyPath();
      if (v7 == a2)
      {
      }

      else
      {
        v12 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMR);
        v13 = swift_allocObject();
        *(v13 + 16) = v7;
        *(v13 + 24) = v12;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v12, isUniquelyReferenced_nonNull_native);
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        *(v15 + 24) = v12;

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v10;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v12, v16);
      }

      if ((_s17RealityFoundation23ComponentAnimatableDataV2eeoiySbACyxG_AEtFZAA09BillboardC0V_Tt1B5(v9, v10) & 1) != 0 || (TaskLocal.get()(), !v23))
      {
      }

      else
      {
        v17 = *(a1 + 16);
        result = REEntityGetComponent();
        if (result)
        {
          REBillboardComponentGetBlendFactor();
          v21 = v18;
          v22 = 0;
          ObjectType = swift_getObjectType();
          v23 = v9;
          v20 = v10;
          (*(v24 + 8))(a1, &v21, &v23, &v20, &type metadata for BillboardComponent, &protocol witness table for BillboardComponent, ObjectType, v24);

          return swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation09BillboardD0V_TtB5Tf4ndn_n(LODWORD(a2), a1);
  }

  return result;
}

void BillboardActionHandler.actionUpdated(event:)(char *__src)
{
  memcpy(v51, __src, sizeof(v51));
  v3 = *(__src + 4);
  v55 = *(__src + 3);
  v56 = v3;
  v57[0] = *(__src + 5);
  *(v57 + 13) = *(__src + 93);
  v4 = *(__src + 2);
  v53 = *(__src + 1);
  v54 = v4;
  v5 = v51[13];
  v52 = v51[13];
  if (v51[13])
  {
    v6 = *(v51[13] + 16);
    outlined init with copy of Entity?(&v52, v48);
    if (REEntityGetComponent())
    {
      REBillboardComponentGetBlendFactor();
      if ((v51[24] & 1) == 0)
      {
        v7 = *&v51[23];
        specialized ActionEvent.animationState.getter(&v45);
        if (!v46)
        {
          outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
          outlined destroy of BodyTrackingComponent?(&v45, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
          return;
        }

        outlined init with take of ForceEffectBase(&v45, v48);
        if (*(v1 + 4) != 1)
        {
          v26 = *v1;
          v27 = v49;
          v28 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = *(v28 + 24);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v30 = type metadata accessor for Optional();
          v44 = &v42;
          v31 = *(v30 - 8);
          v32 = *(v31 + 64);
          MEMORY[0x1EEE9AC00](v30);
          v34 = &v42 - v33;
          v43(v27, v28);
          v35 = *(AssociatedTypeWitness - 8);
          if ((*(v35 + 48))(v34, 1, AssociatedTypeWitness) == 1)
          {
            outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
            (*(v31 + 8))(v34, v30);
            goto LABEL_21;
          }

          v46 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
          (*(v35 + 32))(boxed_opaque_existential_1, v34, AssociatedTypeWitness);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
          if (swift_dynamicCast())
          {
            v37 = *&v51[16];
            v38 = BillboardAction.transitionInValue(initialValue:normalizedTime:eventDuration:)(v26, v7, *&v51[16]);
            v39 = v38 * BillboardAction.transitionOutValue(initialValue:normalizedTime:eventDuration:)(v26, v7, v37);
            v40 = v49;
            v41 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            *&v45 = v39;
            (*(v41 + 64))(&v45, MEMORY[0x1E69E6448], v40, v41);
          }
        }

        outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1(v48);
        return;
      }
    }

    else
    {
      v48[0] = 0;
      v48[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
      *&v45 = &type metadata for BillboardAction;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
      v16 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v16);

      MEMORY[0x1C68F3410](0xD00000000000003DLL, 0x80000001C18E0F10);
      v17 = *(v5 + 16);
      REEntityGetName();
      v18 = String.init(cString:)();
      MEMORY[0x1C68F3410](v18);

      MEMORY[0x1C68F3410](39, 0xE100000000000000);
      v20 = v48[0];
      v19 = v48[1];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static AnimationLogger.logger);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v48);
        _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1C6902A30](v25, -1, -1);
        MEMORY[0x1C6902A30](v24, -1, -1);
      }
    }

    outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
    return;
  }

  _StringGuts.grow(_:)(46);

  strcpy(v48, "Handler for ");
  BYTE5(v48[1]) = 0;
  HIWORD(v48[1]) = -5120;
  *&v45 = &type metadata for BillboardAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
  v8 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
  v10 = v48[0];
  v9 = v48[1];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static AnimationLogger.logger);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v48);
    _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C6902A30](v15, -1, -1);
    MEMORY[0x1C6902A30](v14, -1, -1);
  }
}

void BillboardActionHandler.actionEnded(event:)(uint64_t a1)
{
  if (*(a1 + 104))
  {
    if ((*(v1 + 4) & 1) == 0)
    {
      v2 = *v1;
      v3 = *(a1 + 104);

      specialized Entity.ComponentSet.set<A>(_:)(v4, v2);
    }
  }

  else
  {
    _StringGuts.grow(_:)(46);

    strcpy(v13, "Handler for ");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
    v5 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v5);

    MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
    v7 = v13[0];
    v6 = v13[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static AnimationLogger.logger);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v13);
      _os_log_impl(&dword_1C1358000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C6902A30](v12, -1, -1);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }
  }
}

uint64_t outlined init with copy of Entity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardActionHandler(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BillboardActionHandler(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t specialized static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 105, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #0 of static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 89, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowScaleDownAnimation.createVisibilityShowScaleDownAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    __makeXfos(_:_:)(v7, &v56);
  }

  else
  {
    v56._rawValue = MEMORY[0x1E69E7CC0];
  }

  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_10:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_41;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 127, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 124, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #2 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 53, 0, MEMORY[0x1E69E7CC0]);
    v7 = &outlined read-only object #0 of static __RKVisibilityShowScaleAnimation.createVisibilityShowScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v7, &v56);
  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_9:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_40;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PhysicsJoint.addToSimulation()(uint64_t a1, uint64_t a2)
{
  v7[4] = a2;
  v7[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v5 = specialized static PhysicsJointCreator.addToSimulation(_:)(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t PhysicsFixedJoint.init(pin0:pin1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 160) = 0;
  outlined init with take of GeometricPin(a1, a3);

  return outlined init with take of GeometricPin(a2, a3 + 80);
}

uint64_t static PhysicsFixedJoint.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0])
  {
    v4 = a1[10].i8[1] ^ a2[10].i8[1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhysicsFixedJoint(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0])
  {
    v4 = a1[10].i8[1] ^ a2[10].i8[1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PhysicsRevoluteJoint.angularLimit.getter()
{
  result = *(v0 + 164);
  v2 = *(v0 + 172);
  return result;
}

uint64_t PhysicsRevoluteJoint.angularLimit.setter(uint64_t result, char a2)
{
  *(v2 + 164) = result;
  *(v2 + 172) = a2 & 1;
  return result;
}

uint64_t PhysicsSphericalJoint.init(pin0:pin1:angularLimitInYZ:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 161) = 0;
  outlined init with take of GeometricPin(a1, a6);
  result = outlined init with take of GeometricPin(a2, a6 + 80);
  *(a6 + 164) = a3;
  *(a6 + 172) = a4 & 1;
  *(a6 + 160) = a5;
  return result;
}

float PhysicsDistanceJoint.distanceLimit.getter()
{
  result = *(v0 + 164);
  v2 = *(v0 + 168);
  return result;
}

uint64_t PhysicsDistanceJoint.init(pin0:pin1:distanceLimit:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  *(a4 + 161) = 0;
  *(a4 + 172) = 1008981770;
  outlined init with take of GeometricPin(a1, a4);
  result = outlined init with take of GeometricPin(a2, a4 + 80);
  *(a4 + 164) = a5;
  *(a4 + 168) = a6;
  *(a4 + 160) = a3;
  return result;
}

BOOL static PhysicsCustomJoint.MotionLimit.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = v2 == 0;
    if (v2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v4)
    {
      v3 = 0;
    }

    if (*a1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    return v6 & 1;
  }

  else if (a2[1])
  {
    return 0;
  }

  else
  {
    v8 = *a2;
    return COERCE_FLOAT(HIDWORD(*a1)) == *(&v2 + 1) && COERCE_FLOAT(*a1) == *&v2;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PhysicsCustomJoint.MotionLimit(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = v2 == 0;
    if (v2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v4)
    {
      v3 = 0;
    }

    if (*a1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    return v6 & 1;
  }

  else if (a2[1])
  {
    return 0;
  }

  else
  {
    v8 = *a2;
    return COERCE_FLOAT(HIDWORD(*a1)) == *(&v2 + 1) && COERCE_FLOAT(*a1) == *&v2;
  }
}

void PhysicsCustomJoint.linearMotionAlongX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 172);
  *a1 = *(v1 + 164);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongX.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 164) = *result;
  *(v1 + 172) = v2;
  return result;
}

void PhysicsCustomJoint.linearMotionAlongY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongY.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 176) = *result;
  *(v1 + 184) = v2;
  return result;
}

void PhysicsCustomJoint.linearMotionAlongZ.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 196);
  *a1 = *(v1 + 188);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.linearMotionAlongZ.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 188) = *result;
  *(v1 + 196) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundX.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 200) = *result;
  *(v1 + 208) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 220);
  *a1 = *(v1 + 212);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundY.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 212) = *result;
  *(v1 + 220) = v2;
  return result;
}

void PhysicsCustomJoint.angularMotionAroundZ.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
}

uint64_t PhysicsCustomJoint.angularMotionAroundZ.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 224) = *result;
  *(v1 + 232) = v2;
  return result;
}

uint64_t PhysicsCustomJoint.init(pin0:pin1:linearMotionAlongX:linearMotionAlongY:linearMotionAlongZ:angularMotionAroundX:angularMotionAroundY:angularMotionAroundZ:checksForInternalCollisions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *a6;
  v18 = *(a6 + 8);
  v19 = *a7;
  v23 = *(a7 + 8);
  v22 = *a8;
  v21 = *(a8 + 8);
  *(a9 + 161) = 0;
  outlined init with take of GeometricPin(a1, a9);
  result = outlined init with take of GeometricPin(a2, a9 + 80);
  *(a9 + 164) = v11;
  *(a9 + 172) = v12;
  *(a9 + 176) = v13;
  *(a9 + 184) = v14;
  *(a9 + 188) = v15;
  *(a9 + 196) = v16;
  *(a9 + 200) = v17;
  *(a9 + 208) = v18;
  *(a9 + 212) = v19;
  *(a9 + 220) = v23;
  *(a9 + 224) = v22;
  *(a9 + 232) = v21;
  *(a9 + 160) = a10;
  return result;
}

RealityFoundation::PhysicsJoints __swiftcall PhysicsJoints.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  v0[1] = v1;
  return result;
}

uint64_t PhysicsJoints.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

uint64_t PhysicsJoints.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  v10 = Array.init<A>(_:)();
  *a2 = 0;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int __swiftcall PhysicsJoints.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PhysicsJoints.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t PhysicsJoints.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      return outlined init with copy of __REAssetService(v3 + 40 * result + 32, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for PhysicsJoints.subscript(_:) : PhysicsJoints@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    if (v3 < *(v4 + 16))
    {
      return outlined init with copy of __REAssetService(v4 + 40 * v3 + 32, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PhysicsJoints.subscript(_:) : PhysicsJoints(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  outlined init with copy of __REAssetService(a1, v8);
  v5 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(v8, (v7 + 4));
    *(a2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t PhysicsJoints.subscript.setter(__int128 *a1, unint64_t a2)
{
  v5 = *(v2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v7 = &v5[5 * a2];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(a1, (v7 + 4));
    *(v2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*PhysicsJoints.subscript.modify(void (**a1)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  *a1 = result;
  *(result + 10) = a2;
  *(result + 11) = v2;
  v6 = *(v2 + 8);
  *(result + 12) = v6;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    outlined init with copy of __REAssetService(v6 + 40 * a2 + 32, result);
    return PhysicsJoints.subscript.modify;
  }

  __break(1u);
  return result;
}

void PhysicsJoints.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    outlined init with copy of __REAssetService(*a1, v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v2 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(*(v2 + 96));
    }

    v6 = *(v2 + 80);
    if (v5[2] > v6)
    {
      v7 = *(v2 + 88);
      v8 = &v5[5 * v6];
      __swift_destroy_boxed_opaque_existential_1(v8 + 4);
      outlined init with take of ForceEffectBase((v2 + 40), (v8 + 4));
      *(v7 + 8) = v5;
      __swift_destroy_boxed_opaque_existential_1(v2);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = *(*a1 + 96);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 96);
  if ((v10 & 1) == 0)
  {
LABEL_13:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v11 = *(v2 + 80);
  if (v5[2] <= v11)
  {
    __break(1u);
    return;
  }

  v12 = *(v2 + 88);
  v13 = &v5[5 * v11];
  __swift_destroy_boxed_opaque_existential_1(v13 + 4);
  outlined init with take of ForceEffectBase(v2, (v13 + 4));
  *(v12 + 8) = v5;
LABEL_9:

  free(v2);
}

uint64_t PhysicsJoints.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation12PhysicsJoint_pGMd, &_sSay17RealityFoundation12PhysicsJoint_pGMR);
  return Array.replaceSubrange<A>(_:with:)();
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance PhysicsJoints(__int128 *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(a1, (v7 + 4));
    *(v2 + 8) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PhysicsJoints(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = PhysicsJoints.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance PhysicsJoints(uint64_t a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PhysicsJoints(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance PhysicsJoints@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void protocol witness for RangeReplaceableCollection.init() in conformance PhysicsJoints(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance PhysicsJoints(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  PhysicsJoints.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance PhysicsJoints@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v6[0] = a2;
    outlined init with take of ForceEffectBase(result, v6 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v6);
    v4 = v7;
    v5 = v8;
LABEL_5:
    *a3 = v4;
    a3[1] = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance PhysicsJoints(__int128 *a1)
{
  v2 = *(*(v1 + 8) + 16);
  outlined init with take of ForceEffectBase(a1, v5);
  outlined init with copy of CollectionOfOne<PhysicsJoint>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of BodyTrackingComponent?(v5, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
}

_OWORD *specialized RangeReplaceableCollection.append<A>(contentsOf:)(_OWORD *result)
{
  v2 = result[1];
  v12[0] = *result;
  v12[1] = v2;
  v12[2] = result[2];
  v13 = 0;
  v3 = *&v12[0];
  if (!*&v12[0])
  {
    return outlined destroy of BodyTrackingComponent?(v12, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMd, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMR);
  }

  if (*&v12[0] >= 1)
  {
    v8 = *&v12[0];
    v9 = v1;
    v4 = *(v1 + 8);
    while (v3)
    {
      v6 = v4[2];
      outlined init with copy of __REAssetService(v12 + 8, v11);
      outlined init with copy of CollectionOfOne<PhysicsJoint>(v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v6 >= v4[3] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v4);
      }

      v5 = &v4[5 * v6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
      swift_arrayDestroy();
      memmove(v5 + 9, v5 + 4, 40 * (v4[2] - v6));
      ++v4[2];
      outlined init with copy of __REAssetService(v10, (v5 + 4));
      outlined destroy of BodyTrackingComponent?(v10, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
      result = outlined destroy of BodyTrackingComponent?(v11, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
      if (!--v3)
      {
        *(v9 + 8) = v4;
        v13 = v8;
        return outlined destroy of BodyTrackingComponent?(v12, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMd, &_ss16IndexingIteratorVys8RepeatedVy17RealityFoundation12PhysicsJoint_pGGMR);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance PhysicsJoints(__int128 *a1, unint64_t *a2)
{
  v2 = *a2;
  outlined init with take of ForceEffectBase(a1, v5);
  outlined init with copy of CollectionOfOne<PhysicsJoint>(v5, v4);
  specialized Array.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of BodyTrackingComponent?(v5, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
}

unint64_t *protocol witness for RangeReplaceableCollection.remove(at:) in conformance PhysicsJoints@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = *(v3 + 16);
  if (*v2 == v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < v4)
  {
    outlined init with copy of __REAssetService(v3 + 40 * v5 + 32, a2);
    return specialized Array.replaceSubrange<A>(_:with:)(v5, v5 + 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance PhysicsJoints@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t specialized RangeReplaceableCollection.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1 == v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < v4)
  {
    outlined init with copy of __REAssetService(v3 + 40 * v2 + 32, a1);
    return specialized Array.replaceSubrange<A>(_:with:)(v2, v2 + 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t protocol witness for RangeReplaceableCollection.removeFirst(_:) in conformance PhysicsJoints(int64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(*v1, result, *(v1[1] + 16));
      if (v3)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if (result >= v2)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(v2, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance PhysicsJoints(char a1)
{
  if (a1)
  {
    result = *v1;
    v3 = *(v1[1] + 16);
    if (v3 < *v1)
    {
      __break(1u);
    }

    else
    {
      return specialized Array.replaceSubrange<A>(_:with:)(result, v3);
    }
  }

  else
  {
    v4 = v1[1];

    v5 = MEMORY[0x1E69E7CC0];
    *v1 = 0;
    v1[1] = v5;
  }

  return result;
}

int64_t protocol witness for RangeReplaceableCollection.removeAll(where:) in conformance PhysicsJoints(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
  if (!v3)
  {
    v5 = *(*(v2 + 8) + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return specialized Array.replaceSubrange<A>(_:with:)(result, v5);
    }
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhysicsJoints@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance PhysicsJoints(void (**a1)(uint64_t **a1), unint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 8);
    if (v6 < *(v7 + 16))
    {
      outlined init with copy of __REAssetService(v7 + 40 * v6 + 32, result);
      return protocol witness for Collection.subscript.read in conformance PhysicsJoints;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance PhysicsJoints(uint64_t **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance PhysicsJoints@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = v2[1];
  v6 = *(result + 16);
  if (v6 < *v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *a1;
  if (*a1 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[1];
  if (v6 >= v8)
  {
    a2[2] = v5;
    a2[3] = result;
    *a2 = v7;
    a2[1] = v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance PhysicsJoints@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v4 = *(v2 + 16);
  a1[2] = v3;
  a1[3] = v4;
}

void protocol witness for Sequence.makeIterator() in conformance PhysicsJoints(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v2;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance PhysicsJoints()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v5 = a2;
  v7 = v2[1];
  v8 = specialized Collection.firstIndex(where:)(a1, a2, *v2, v7);
  if (!v3)
  {
    if (v9)
    {
      return v7[2];
    }

    v4 = v8;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_27:
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_6:
      v16 = v2;
      v2[1] = v7;
      v11 = v7[2];
      if (v10 == v11)
      {
LABEL_7:
        v16[1] = v7;
        return v4;
      }

      v19 = v7 + 4;
      v13 = &v7[5 * v4 + 9];
      while (1)
      {
        if (v10 >= v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        outlined init with copy of __REAssetService(v13, v18);
        v2 = v5;
        v14 = a1(v18);
        __swift_destroy_boxed_opaque_existential_1(v18);
        if ((v14 & 1) == 0)
        {
          if (v10 != v4)
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v2 = v5;
            v5 = v7[2];
            if (v4 >= v5)
            {
              goto LABEL_25;
            }

            v15 = &v19[5 * v4];
            outlined init with copy of __REAssetService(v15, v18);
            if (v10 >= v5)
            {
              goto LABEL_26;
            }

            outlined init with copy of __REAssetService(v13, v17);
            __swift_destroy_boxed_opaque_existential_1(v15);
            outlined init with take of ForceEffectBase(v17, v15);
            if (v10 >= v7[2])
            {
              __break(1u);
              v16[1] = v7;
              __swift_destroy_boxed_opaque_existential_1(v18);
              return v4;
            }

            __swift_destroy_boxed_opaque_existential_1(v13);
            outlined init with take of ForceEffectBase(v18, v13);
            v5 = v2;
          }

          ++v4;
        }

        ++v10;
        v11 = v7[2];
        v13 += 5;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    goto LABEL_6;
  }

  return v4;
}

uint64_t specialized static PhysicsJoints.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  v7 = v3 + 32;
  do
  {
    v8 = v4 == v5;
    if (v4 == v5)
    {
      break;
    }

    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    ++v5;
    result = outlined init with copy of __REAssetService(v6, v11);
    if (v5 - 1 >= *(v3 + 16))
    {
      goto LABEL_11;
    }

    v6 += 40;
    outlined init with copy of __REAssetService(v7, v10);
    v9 = areJointDefinitionsEqual(_:_:)(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v7 += 40;
  }

  while ((v9 & 1) != 0);
  return v8;
}

uint64_t specialized static PhysicsCustomJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  v5 = *(a1 + 164);
  v6 = *(a2 + 164);
  v7 = *(a2 + 172);
  if (*(a1 + 172) == 1)
  {
    if (v5)
    {
      if (v6)
      {
        v8 = *(a2 + 172);
      }

      else
      {
        v8 = 0;
      }

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = *(a2 + 172);
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 172))
    {
      return 0;
    }

    result = 0;
    if (*&v5 != *&v6 || *(&v5 + 1) != *(&v6 + 1))
    {
      return result;
    }
  }

  v10 = *(a1 + 176);
  v11 = *(a2 + 176);
  v12 = *(a2 + 184);
  if (*(a1 + 184) == 1)
  {
    if (v10)
    {
      if (v11)
      {
        v13 = *(a2 + 184);
      }

      else
      {
        v13 = 0;
      }

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v11)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v14 = *(a2 + 184);
      }

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      return 0;
    }

    result = 0;
    if (*&v10 != *&v11 || *(&v10 + 1) != *(&v11 + 1))
    {
      return result;
    }
  }

  v15 = *(a1 + 188);
  v16 = *(a2 + 188);
  v17 = *(a2 + 196);
  if (*(a1 + 196) == 1)
  {
    if (v15)
    {
      if (v16)
      {
        v18 = *(a2 + 196);
      }

      else
      {
        v18 = 0;
      }

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16)
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        v19 = *(a2 + 196);
      }

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 196))
    {
      return 0;
    }

    result = 0;
    if (*&v15 != *&v16 || *(&v15 + 1) != *(&v16 + 1))
    {
      return result;
    }
  }

  v20 = *(a1 + 200);
  v21 = *(a2 + 200);
  v22 = *(a2 + 208);
  if (*(a1 + 208) == 1)
  {
    if (v20)
    {
      if (v21)
      {
        v23 = *(a2 + 208);
      }

      else
      {
        v23 = 0;
      }

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v21)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        v24 = *(a2 + 208);
      }

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 208))
    {
      return 0;
    }

    result = 0;
    if (*&v20 != *&v21 || *(&v20 + 1) != *(&v21 + 1))
    {
      return result;
    }
  }

  v25 = *(a1 + 212);
  v26 = *(a2 + 212);
  v27 = *(a2 + 220);
  if (*(a1 + 220) == 1)
  {
    if (v25)
    {
      if (v26)
      {
        v28 = *(a2 + 220);
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v26)
      {
        LOBYTE(v29) = 0;
      }

      else
      {
        v29 = *(a2 + 220);
      }

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_82:
    v30 = *(a1 + 224);
    v31 = *(a2 + 224);
    if (*(a1 + 232) == 1)
    {
      if (v30)
      {
        if (*(a2 + 232))
        {
          return v31 != 0;
        }
      }

      else if (*(a2 + 232))
      {
        return v31 == 0;
      }
    }

    else if ((*(a2 + 232) & 1) == 0 && *&v30 == *&v31 && *(&v30 + 1) == *(&v31 + 1))
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 220))
  {
    return 0;
  }

  result = 0;
  if (*&v25 == *&v26 && *(&v25 + 1) == *(&v26 + 1))
  {
    goto LABEL_82;
  }

  return result;
}